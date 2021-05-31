-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Maj 2021, 20:34
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracz`
--

CREATE TABLE `gracz` (
  `id_gracz` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(50) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `gracz`
--

INSERT INTO `gracz` (`id_gracz`, `nazwa`, `email`, `haslo`, `punkty`) VALUES
(1, 'michallo', 'michallo@ahsfghas.pl', 'lolololololololol123123', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategoria` int(11) NOT NULL,
  `kategoria` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id_kategoria`, `kategoria`) VALUES
(4, 'dodawnie'),
(1, 'modyfikowanie'),
(2, 'teoria'),
(3, 'usuwanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedz_na_pytanie`
--

CREATE TABLE `odpowiedz_na_pytanie` (
  `id_odpowiedz_na_pytanie` int(11) NOT NULL,
  `id_pytanie` int(11) NOT NULL,
  `id_gracz` int(11) NOT NULL,
  `odpowiedz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `odpowiedz_na_pytanie`
--

INSERT INTO `odpowiedz_na_pytanie` (`id_odpowiedz_na_pytanie`, `id_pytanie`, `id_gracz`, `odpowiedz`) VALUES
(1, 6, 1, 1),
(2, 13, 1, 1),
(3, 20, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id_pytania` int(11) NOT NULL,
  `id_kategoria` int(11) NOT NULL,
  `pytanie` varchar(150) NOT NULL,
  `odp1` varchar(150) NOT NULL,
  `odp2` varchar(150) NOT NULL,
  `odp3` varchar(150) NOT NULL,
  `odp4` varchar(150) NOT NULL,
  `poprawna_odp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id_pytania`, `id_kategoria`, `pytanie`, `odp1`, `odp2`, `odp3`, `odp4`, `poprawna_odp`) VALUES
(1, 4, 'Jakie polecenie utworzy tabelę o nazwie uczniowie?', 'NEW TABLE uczniowie', 'CREATE uczniowie', 'CREATE TABLE uczniowie', 'ADD uczniowie', 3),
(2, 1, 'Jakie polecenie służy do wprowadzania danych do tabeli?', 'INSERT INTO', 'ADD', 'ADD NEW DANE', 'ATLER', 1),
(3, 4, 'Jakie polecenie utworzy tabelę o nazwie Nauczyciele', 'ADD NEW TABLE Nauczyciele', 'ALTER TABLE Nauczyciele', 'CREATE TABLE Nauczyciele', 'DROP DATABASE', 3),
(4, 2, 'Jaki typ danych użyć aby zapisać liczbe z przecinkiem?', 'DECIMAL', 'INT', 'TEXT', 'Nie ma takiego', 1),
(5, 2, 'Która funkcja zwróci losową liczbę?', 'COUNT', 'SELECT', 'ADD', 'RAND()', 4),
(6, 2, 'Co oznacza skrót SQL?', 'Szkola', 'Structured Query Language', 'Super Quick Language', 'Super Quantum Language', 1),
(7, 2, 'Kiedy pojawił się SQL?', '1999', '1998', '1996', '1974', 4),
(8, 2, 'Czym jest baza danych?', 'nie wiem', 'nie ma takiego czegos', 'ciezkie pytanie', 'zorganizowana forma danych', 4),
(9, 2, 'Jaka jest różnica pomiedzy Delete a Truncate', 'nie wiem', 'Truncate usuwa cala zawartosc tabeli, Delete usuwa jeden lub wiecej rekordow', 'nie ma takiego czegos jak TRUNCATE', '2 odpowiedz tylko na odwrot', 2),
(10, 2, 'Jak zliczyc ilosc rekordow w tabeli uczniowie?', 'SUM', 'SELECT COUNT(*) FROM uczniowie;', 'SELECT AND ADD FROM uczniowie;', 'nie da sie', 2),
(11, 1, 'Polecenie ALTER TABLE nauczyciele... ma za zadanie', 'modyfikacje tabeli', 'utworzenie tabeli', 'usuniecie tabeli', 'nic sie nie stanie', 1),
(12, 2, 'SELECT imie, nazwisko, FROM dane... spowoduje wybranie?', 'imion', 'nie wiem', 'imion i nazwisk', 'nazwisk', 3),
(13, 3, 'Jakie polecenie usunie tabele o nazwie uczniowie?', 'DROP TABLE uczniowie;', 'DROP DATABASE', 'DELETE uczniowie;', 'TRUNCATE uczniowie;', 1),
(14, 2, 'Funkcja zwracajaca liczbe rekordow jest?', 'SELECT', 'COUNT', 'NIE WIEM', 'NIE DA SIE', 2),
(15, 4, 'Wskaz polecenie dodajace pole nauczyciele do istniejacej tabeli kadranauczycielska', 'ALTER TABLE nauczyciele ADD kadranauczycielska', 'INSERT INTO nauczyciele', 'ALTER TABLE kadranauczycielska ADD nauczyciele', 'NIE DA SIE', 3),
(16, 2, 'Klucz który musi zawierać każda tabela', 'Klucz obcy', 'Klucz do drzwi', 'Klucz do auta', 'Klucz podstawowy', 4),
(17, 2, 'Nazwa programu umożliwiajacy prace w MySQL', 'PHOTOSHOP', 'AVAST', 'XAMPP', 'XAMMP', 3),
(18, 2, 'Przyznajac uzytkownikowi wszystkie uprawnienia uzyjemy?', 'GIVE ADMIN TO nazwa;', 'GRANT ALL PRIVILEGES', 'ADMIN nazwa', 'nie wiem', 2),
(19, 2, 'Kto jest koksem z baz danych?', 'ja', 'tworca tego quizu', 'Osoba z wzrostem 187cm oraz brazowymi trampkami', 'lol', 3),
(20, 4, 'Utworzenie nowego uzytkownika pozwoli na polecenie', 'NEW USER', 'ADD NEW USER', 'USER NEW ADD', 'CREATE USER NEW', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gracz`
--
ALTER TABLE `gracz`
  ADD PRIMARY KEY (`id_gracz`),
  ADD UNIQUE KEY `unique1` (`nazwa`),
  ADD UNIQUE KEY `unique2` (`email`),
  ADD KEY `index1` (`haslo`),
  ADD KEY `index3` (`punkty`);

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategoria`),
  ADD KEY `index5` (`kategoria`);

--
-- Indeksy dla tabeli `odpowiedz_na_pytanie`
--
ALTER TABLE `odpowiedz_na_pytanie`
  ADD PRIMARY KEY (`id_odpowiedz_na_pytanie`),
  ADD KEY `index6` (`id_pytanie`),
  ADD KEY `index7` (`id_gracz`),
  ADD KEY `asd` (`odpowiedz`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id_pytania`),
  ADD KEY `dasgad` (`id_kategoria`),
  ADD KEY `ashddsaf` (`pytanie`),
  ADD KEY `sadfs` (`odp1`),
  ADD KEY `dfgjfgdh` (`odp2`),
  ADD KEY `sfdhdshfdsg` (`odp3`),
  ADD KEY `sdfgsdfg` (`odp4`),
  ADD KEY `dfsgsdfgsd` (`poprawna_odp`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `gracz`
--
ALTER TABLE `gracz`
  MODIFY `id_gracz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `odpowiedz_na_pytanie`
--
ALTER TABLE `odpowiedz_na_pytanie`
  MODIFY `id_odpowiedz_na_pytanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id_pytania` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `odpowiedz_na_pytanie`
--
ALTER TABLE `odpowiedz_na_pytanie`
  ADD CONSTRAINT `odpowiedz_na_pytanie_ibfk_1` FOREIGN KEY (`id_gracz`) REFERENCES `gracz` (`id_gracz`),
  ADD CONSTRAINT `odpowiedz_na_pytanie_ibfk_2` FOREIGN KEY (`id_pytanie`) REFERENCES `pytania` (`id_pytania`);

--
-- Ograniczenia dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id_kategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
