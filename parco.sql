-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 24, 2022 alle 11:06
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
-- Struttura della tabella `tOrdineAppartenenzaFauna`
--

CREATE TABLE `tOrdineAppartenenzaFauna` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 'Parco delle Madonie', 5),
(11, 'Parco Delta del Po', 6),
(12, 'Parco della Chiusa', 6),
(13, 'Parco La Mandria', 7),
(14, 'Parco Del Laghetti', 7),
(15, 'Parco Nazionale dell\'Alta Murgia\r\n', 8),
(16, 'Parco naturale regionale Porto Selvaggio\r\n', 8),
(17, 'Parco Gallorose', 9),
(18, 'Parco Alpi Apuane', 9),
(19, 'Parco Nazionale della Sila', 10),
(20, 'Parco Nazionale dell\'Aspromonte', 10),
(21, 'Parco Aymerich', 11),
(22, 'Parco della Giara', 11),
(23, 'Parco Regionale di Portofino', 12),
(24, 'Parco Naturale Regionale dell\'Antola', 12),
(25, 'Parco Naturale Regionale del Conero', 13),
(26, 'Parco Naturale Monte San Bartolo', 13),
(27, 'Parco Lavino', 14),
(28, 'Parco Naturale Majella', 14),
(29, 'Parco Piuma-Isonzo', 15),
(30, 'Ingresso Parco Bosco Romagno', 15),
(31, 'Parco di Gocciadoro', 16),
(32, 'Parco di Melta', 16),
(33, 'Parco Regionale del Monte Cucco', 17),
(34, 'Parco Fluviale del Nera', 17),
(35, 'Parco Nazionale del Pollino', 18),
(36, 'Parco delle Stelle', 18),
(37, 'Il Mulino', 19),
(38, 'Prato Gentile', 19),
(39, 'Parco Saumont', 20),
(40, 'Parco Naturale del Monte Avic', 20);

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
(20, 'Valle d\' Aosta');

-- --------------------------------------------------------

--
-- Struttura della tabella `tSpecieFauna`
--

CREATE TABLE `tSpecieFauna` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idOrdineAppartenenzaFauna` int(30) NOT NULL,
  `stato` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tOrdineAppartenenzaFauna`
--
ALTER TABLE `tOrdineAppartenenzaFauna`
  ADD PRIMARY KEY (`id`);

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
-- Indici per le tabelle `tSpecieFauna`
--
ALTER TABLE `tSpecieFauna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tOrdineAppartenenzaFauna`
--
ALTER TABLE `tOrdineAppartenenzaFauna`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tParco`
--
ALTER TABLE `tParco`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `tRegione`
--
ALTER TABLE `tRegione`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `tSpecieFauna`
--
ALTER TABLE `tSpecieFauna`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
