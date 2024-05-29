-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 29.Máj 2024, 21:07
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
-- Štruktúra tabuľky pre tabuľku `t_categories`
--

CREATE TABLE `t_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_categories`
--

INSERT INTO `t_categories` (`id`, `name`) VALUES
(1, 'RPG'),
(2, 'Action Adventure'),
(3, 'Survival'),
(4, 'Simulator');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_table`
--

CREATE TABLE `t_table` (
  `id` int(11) NOT NULL,
  `nazov` varchar(100) NOT NULL,
  `datum_vydania` year(4) NOT NULL,
  `cena` double NOT NULL,
  `zaner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_table`
--

INSERT INTO `t_table` (`id`, `nazov`, `datum_vydania`, `cena`, `zaner`) VALUES
(1, 'The Witcher 3', '2015', 29.99, '1'),
(2, 'Cyberpunk 2077', '2020', 59.99, '2'),
(3, 'Stardew Valley', '2015', 13.99, '1'),
(4, 'Rust', '2018', 39.99, '3'),
(5, 'Baldurs Gate 3', '2023', 59.99, '1'),
(6, 'Planet Coaster', '2016', 38.99, '4'),
(7, 'Dave The Diver', '2023', 19.99, '1'),
(8, 'The Forest', '2018', 16.79, '3'),
(9, 'Elden Ring', '2021', 59.99, '1'),
(10, 'DayZ', '2018', 48.99, '3');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'Jano', '$2y$10$7bfMVQi2biHfEg2QjqgWZOyoThwXIV5YN3NhAIpNzbHkWWKlqEhrq', 'jano@gmail.com');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `t_table`
--
ALTER TABLE `t_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `t_table`
--
ALTER TABLE `t_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
