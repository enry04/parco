-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Gen 12, 2023 alle 13:05
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
-- Database: `parcovisentin`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `tAnimale`
--

CREATE TABLE `tAnimale` (
  `id` int(11) NOT NULL,
  `idParco` int(30) NOT NULL,
  `idSpecieFauna` int(30) NOT NULL,
  `generazione` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sesso` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stato` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dataNascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tAnimale`
--

INSERT INTO `tAnimale` (`id`, `idParco`, `idSpecieFauna`, `generazione`, `sesso`, `stato`, `dataNascita`) VALUES
(31, 12, 29, 'anziano', 'femmina', 'malato', '2014-08-15'),
(35, 12, 32, 'adulto', 'femmina', 'malato', '2022-12-06'),
(36, 12, 32, 'cucciolo', 'femmina', 'in salute', '2018-06-09'),
(37, 20, 2, 'anziano', 'maschio', 'malato', '2023-01-05'),
(38, 21, 4, 'anziano', 'maschio', 'in salute', '2014-09-10'),
(39, 18, 29, 'cucciolo', 'maschio', 'malato', '2023-01-08'),
(40, 19, 33, 'adulto', 'femmina', 'malato', '2022-12-30'),
(41, 19, 33, 'anziano', 'femmina', 'malato', '2018-06-10'),
(42, 32, 33, 'adulto', 'femmina', 'in salute', '2022-12-28'),
(43, 32, 33, 'adulto', 'femmina', 'malato', '2010-07-10'),
(44, 32, 33, 'adulto', 'maschio', 'malato', '2022-12-31'),
(45, 32, 33, 'anziano', 'femmina', 'malato', '1997-06-10'),
(46, 32, 20, 'cucciolo', 'femmina', 'malato', '2019-01-10'),
(47, 32, 34, 'adulto', 'femmina', 'in salute', '1985-11-10'),
(48, 33, 33, 'anziano', 'maschio', 'malato', '2022-08-04'),
(49, 11, 33, 'adulto', 'femmina', 'malato', '2023-01-06'),
(50, 37, 35, 'anziano', 'femmina', 'malato', '2023-01-11'),
(51, 37, 36, 'adulto', 'femmina', 'in salute', '2015-11-11'),
(52, 37, 37, 'adulto', 'maschio', 'malato', '2022-12-30'),
(53, 37, 38, 'adulto', 'femmina', 'malato', '2023-01-04'),
(54, 36, 39, 'cucciolo', 'femmina', 'in salute', '2023-01-11'),
(55, 30, 40, 'adulto', 'femmina', 'malato', '2022-12-03'),
(56, 24, 41, 'adulto', 'femmina', 'malato', '2022-12-28');

-- --------------------------------------------------------

--
-- Struttura della tabella `tFamigliaFlora`
--

CREATE TABLE `tFamigliaFlora` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tFamigliaFlora`
--

INSERT INTO `tFamigliaFlora` (`id`, `nome`) VALUES
(1, 'arbusto'),
(2, 'pianta erbacea'),
(3, 'albero');

-- --------------------------------------------------------

--
-- Struttura della tabella `tMessaggio`
--

CREATE TABLE `tMessaggio` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `messaggio` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `tOrdineAppartenenzaFauna`
--

CREATE TABLE `tOrdineAppartenenzaFauna` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tOrdineAppartenenzaFauna`
--

INSERT INTO `tOrdineAppartenenzaFauna` (`id`, `nome`) VALUES
(1, 'anfibio'),
(2, 'uccello '),
(3, 'felino'),
(4, 'pesce'),
(5, 'mollusco'),
(6, 'canide'),
(7, 'insetto'),
(8, 'rettile'),
(9, 'roditore'),
(10, 'aracnide'),
(11, 'mammifero');

-- --------------------------------------------------------

--
-- Struttura della tabella `tParco`
--

CREATE TABLE `tParco` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idRegione` int(10) NOT NULL,
  `descrizione` varchar(1000) NOT NULL,
  `immagine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tParco`
--

INSERT INTO `tParco` (`id`, `nome`, `idRegione`, `descrizione`, `immagine`) VALUES
(1, 'Parco Monte Barro', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-barro-img.jpeg'),
(2, 'Parco di Monza', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-di-Monza.jpeg\r\n'),
(3, 'Parco Valle del Treja', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Valle-del-Treja.jpeg'),
(4, 'Parco dei Castelli Romani', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-dei-Castelli-romani.jpeg'),
(5, 'Parco San Michele', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-San-Michele.jpeg'),
(6, 'Parco Nassirya', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Nassirya.jpeg'),
(7, 'Parco Arcobaleno', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-arcobaleno.jpeg'),
(8, 'Parco Laghi Blu', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Laghi-Blu.jpeg'),
(9, 'Parco dei Nebrodi', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-dei-Nebrodi.jpeg'),
(10, 'Parco delle Madonie', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-delle-Madonie.jpeg'),
(11, 'Parco Delta del Po', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Delta-del-Po.jpeg'),
(12, 'Parco della Chiusa', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-della-Chiusa.jpeg'),
(13, 'Parco La Mandria', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-La-Mandria.jpeg'),
(14, 'Parco Del Laghetti', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-dei-Laghetti.jpeg'),
(15, 'Parco Nazionale dell\'Alta Murgia\r\n', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Nazionale-dell-Alta-Murgia.jpeg'),
(16, 'Parco naturale regionale Porto Selvaggio\r\n', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-naturale-regionale-Porto-Selvaggio.jpeg'),
(17, 'Parco Gallorose', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Gallorose.jpeg'),
(18, 'Parco Alpi Apuane', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Alpi-Apuane.jpeg'),
(19, 'Parco Nazionale della Sila', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Nazionale-della-Sila.jpeg'),
(20, 'Parco Nazionale dell\'Aspromonte', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Nazionale-dell-Aspromonte.jpeg'),
(21, 'Parco Aymerich', 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Aymerich.jpeg'),
(22, 'Parco della Giara', 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-della-Giara.jpeg'),
(23, 'Parco Regionale di Portofino', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-regionale-di-Portofino.jpeg'),
(24, 'Parco Naturale Regionale dell\'Antola', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Naturale-Regionale-dell-Antola.jpeg'),
(25, 'Parco Naturale Regionale del Conero', 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Naturale-Regionale-del-Conero.jpeg'),
(26, 'Parco Naturale Monte San Bartolo', 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Naturale-Monte-San-Bartolo.jpeg'),
(27, 'Parco Lavino', 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Lavino.jpeg'),
(28, 'Parco Naturale Majella', 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Naturale-Majella.jpeg'),
(29, 'Parco Piuma-Isonzo', 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Piuma-Isonzo.jpeg'),
(30, 'Parco Bosco Romagno', 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Bosco-Romagno.jpeg'),
(31, 'Parco di Gocciadoro', 16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-di-Gocciadoro.png'),
(32, 'Parco di Melta', 16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-di-Melta.jpeg'),
(33, 'Parco Regionale del Monte Cucco', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Regionale-del-Monte-Cucco.jpeg'),
(34, 'Parco Fluviale del Nera', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Fluviale-del-Nera.jpeg'),
(35, 'Parco Nazionale del Pollino', 18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Nazionale-del-Pollino.jpeg'),
(36, 'Parco delle Stelle', 18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-delle-Stelle.jpeg'),
(37, 'Il Mulino', 19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Il-Mulino.jpeg'),
(38, 'Prato Gentile', 19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-prato-gentile.jpeg'),
(39, 'Parco Saumont', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Saumont.jpeg'),
(40, 'Parco Naturale del Monte Avic', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.', 'images/parks-images/parco-Naturale-del-Monte-Avic.jpeg');

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
  `idOrdineAppartenenzaFauna` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tSpecieFauna`
--

INSERT INTO `tSpecieFauna` (`id`, `nome`, `idOrdineAppartenenzaFauna`) VALUES
(1, 'rospo', 1),
(2, 'aquila', 2),
(3, 'condor', 2),
(4, 'falco', 2),
(5, 'tigre', 3),
(6, 'gatto', 3),
(7, 'tigre bianca', 3),
(8, 'squalo bianco', 4),
(9, 'squalo martello', 4),
(10, 'falco reale', 2),
(11, 'sanguisuga', 5),
(12, 'colomba', 2),
(13, 'balenottera azzurra', 4),
(14, 'lupo', 6),
(15, 'cane', 6),
(16, 'zanzara', 7),
(17, 'drago di komodo', 8),
(18, 'ratto', 9),
(19, 'topo', 9),
(20, 'gabbiano', 2),
(21, 'ragno', 10),
(22, 'scimmia', 11),
(23, 'pantigana', 9),
(24, 'pesce palla', 4),
(25, 'squalo balena', 4),
(26, 'gorilla', 11),
(27, 'orca', 11),
(28, 'scimpanze', 11),
(29, 'lucertola', 8),
(32, 'medusa', 4),
(33, 'elefante', 11),
(34, 'tartaruga', 8),
(35, 'tartaruga gigante', 8),
(36, 'rana', 1),
(37, 'cavallo', 11),
(38, 'mucca', 11),
(39, 'orso', 11),
(40, 'coccinella gialla ', 7),
(41, 'tigre delle nevi', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `tSpecieFlora`
--

CREATE TABLE `tSpecieFlora` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `idFamigliaFlora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tSpecieFlora`
--

INSERT INTO `tSpecieFlora` (`id`, `nome`, `idFamigliaFlora`) VALUES
(1, 'viola', 2),
(2, 'pino', 3),
(3, 'pino bianco', 3),
(4, 'lavanda', 1),
(5, 'rosmarino', 1),
(6, 'rododendro', 1),
(7, 'pino rosso', 3),
(8, 'quercia', 3),
(9, 'pero', 3),
(10, 'melo', 3),
(11, 'castagno', 3),
(12, 'baobab', 3),
(13, 'margherita', 1),
(14, 'primula', 2),
(15, 'acacia', 3),
(16, 'rosa', 2),
(17, 'abelia', 1),
(18, 'aglaia', 1),
(19, 'agrifoglio', 1),
(20, 'scialino', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `tVegetale`
--

CREATE TABLE `tVegetale` (
  `id` int(11) NOT NULL,
  `idParco` int(11) NOT NULL,
  `idSpecieFlora` int(11) NOT NULL,
  `stagioneFioritura` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tVegetale`
--

INSERT INTO `tVegetale` (`id`, `idParco`, `idSpecieFlora`, `stagioneFioritura`) VALUES
(1, 36, 2, 'estate'),
(2, 36, 3, 'estate'),
(3, 36, 2, 'primavera'),
(4, 4, 4, 'estate'),
(5, 27, 5, 'inverno'),
(6, 27, 6, 'primavera'),
(7, 30, 2, 'estate'),
(8, 30, 5, 'primavera'),
(9, 4, 3, 'primavera'),
(10, 4, 7, 'primavera'),
(11, 4, 2, 'primavera'),
(12, 27, 2, 'primavera'),
(13, 27, 8, 'estate'),
(14, 27, 9, 'estate'),
(15, 4, 10, 'primavera'),
(16, 4, 11, 'primavera'),
(17, 4, 7, 'estate'),
(18, 4, 7, 'estate'),
(19, 4, 1, 'primavera'),
(20, 12, 12, 'primavera'),
(21, 4, 6, 'estate'),
(22, 4, 6, 'primavera'),
(23, 4, 13, 'estate'),
(24, 4, 14, 'primavera'),
(25, 4, 15, 'primavera'),
(26, 4, 7, 'primavera'),
(27, 4, 16, 'estate'),
(28, 17, 10, 'primavera'),
(29, 17, 8, 'inverno'),
(30, 21, 13, 'estate'),
(31, 32, 2, 'primavera'),
(32, 32, 3, 'estate'),
(33, 32, 7, 'primavera'),
(34, 32, 17, 'primavera'),
(35, 32, 18, 'autunno'),
(36, 32, 19, 'estate'),
(37, 32, 19, 'primavera'),
(38, 20, 20, 'autunno'),
(39, 24, 7, 'autunno'),
(40, 24, 2, 'primavera'),
(41, 24, 10, 'primavera'),
(42, 24, 9, 'estate'),
(43, 24, 8, 'autunno');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tAnimale`
--
ALTER TABLE `tAnimale`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tFamigliaFlora`
--
ALTER TABLE `tFamigliaFlora`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tMessaggio`
--
ALTER TABLE `tMessaggio`
  ADD PRIMARY KEY (`id`);

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
-- Indici per le tabelle `tSpecieFlora`
--
ALTER TABLE `tSpecieFlora`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tVegetale`
--
ALTER TABLE `tVegetale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tAnimale`
--
ALTER TABLE `tAnimale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT per la tabella `tFamigliaFlora`
--
ALTER TABLE `tFamigliaFlora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `tMessaggio`
--
ALTER TABLE `tMessaggio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tOrdineAppartenenzaFauna`
--
ALTER TABLE `tOrdineAppartenenzaFauna`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT per la tabella `tSpecieFlora`
--
ALTER TABLE `tSpecieFlora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `tVegetale`
--
ALTER TABLE `tVegetale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
