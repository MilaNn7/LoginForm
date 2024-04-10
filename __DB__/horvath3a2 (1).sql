-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 10.Apr 2024, 13:22
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `horvath3a2`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_table`
--

CREATE TABLE `t_table` (
  `id` int(11) NOT NULL,
  `nazov` varchar(100) NOT NULL,
  `zaner` varchar(100) NOT NULL,
  `datum_vydania` year(4) NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_table`
--

INSERT INTO `t_table` (`id`, `nazov`, `zaner`, `datum_vydania`, `cena`) VALUES
(1, 'The Witcher 3', 'RPG', '2015', 49.99),
(2, 'Hollow Knight', 'Action Adventure', '2017', 14.99),
(3, 'Cyberpunk 2077', 'RPG', '2020', 29.99);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `password`, `email`) VALUES
(0, 'jano', '$2y$10$JFfGFkYmzdv92DS3NINOqOP3uuqTGImEhfQfmWWxM6BzEXBMIUoge', 'jano@gmail.com');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `t_table`
--
ALTER TABLE `t_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `t_table`
--
ALTER TABLE `t_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
