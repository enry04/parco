-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 23, 2022 alle 16:45
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parco`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `tParco`
--

CREATE TABLE `tParco` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idRegione` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tParco`
--

INSERT INTO `tParco` (`id`, `nome`, `idRegione`) VALUES
(1, 'Parco Monte Barro', 1),
(2, 'Parco di Monza', 1),
(3, 'Parco Valle del Treja', 2),
(4, 'Parco dei Castelli Romani', 2),
(5, 'Parco San Michele', 3),
(6, 'Parco Nassirya', 3),
(7, 'Parco Arcobaleno', 4),
(8, 'Parco Laghi Blu', 4),
(9, 'Parco dei Nebrodi', 5),
(10, 'Parco delle Madonie', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `tRegione`
--

CREATE TABLE `tRegione` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tRegione`
--

INSERT INTO `tRegione` (`id`, `nome`) VALUES
(1, 'Lombardia'),
(2, 'Lazio'),
(3, 'Campania'),
(4, 'Veneto'),
(5, 'Sicilia'),
(6, 'Emilia-Romagna'),
(7, 'Piemonte'),
(8, 'Puglia'),
(9, 'Toscana'),
(10, 'Calabria'),
(11, 'Sardegna'),
(12, 'Liguria'),
(13, 'Marche'),
(14, 'Abruzzo'),
(15, 'Friuli-Venezia Giulia'),
(16, 'Trentino-Alto Adige'),
(17, 'Umbria'),
(18, 'Basilicata'),
(19, 'Molise'),
(20, 'Valle d\' Aosta'),
(31, 'Sardegna'),
(32, 'Liguria'),
(33, 'Marche'),
(34, 'Abruzzo'),
(35, 'Friuli-Venezia Giulia'),
(36, 'Trentino-Alto Adige'),
(37, 'Umbria'),
(38, 'Basilicata'),
(39, 'Molise'),
(40, 'Valle d\'Aosta');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tParco`
--
ALTER TABLE `tParco`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tRegione`
--
ALTER TABLE `tRegione`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tParco`
--
ALTER TABLE `tParco`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `tRegione`
--
ALTER TABLE `tRegione`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
