-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 09 Février 2018 à 10:33
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Dog_Racing`
--
CREATE DATABASE IF NOT EXISTS `Dog_Racing` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Dog_Racing`;

-- --------------------------------------------------------

--
-- Structure de la table `chien`
--

CREATE TABLE `chien` (
  `idCh` bigint(20) UNSIGNED NOT NULL,
  `nomCh` varchar(30) NOT NULL,
  `descCh` varchar(50) DEFAULT NULL,
  `nationCh` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chien`
--

INSERT INTO `chien` (`idCh`, `nomCh`, `descCh`, `nationCh`) VALUES
(1, 'Bill', 'ami de Boule', 'BE'),
(2, 'Milou', 'compagnon de Tintin', 'BE'),
(3, 'Idefix', 'le gaulois', 'FR'),
(4, 'Pif', NULL, NULL),
(5, 'Snoopy', NULL, 'US'),
(6, 'Gai-Luron', NULL, 'FR'),
(7, 'Rantanplan', 'plus bête que son ombre', 'BE'),
(8, 'Pluto', NULL, 'US'),
(9, 'Lassie', NULL, NULL),
(10, 'Crockdur', NULL, 'UK');

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `idC` int(3) UNSIGNED ZEROFILL NOT NULL,
  `nomC` varchar(30) NOT NULL,
  `dateC` date NOT NULL,
  `lieuC` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `course`
--

INSERT INTO `course` (`idC`, `nomC`, `dateC`, `lieuC`) VALUES
(001, 'IEPSCF, du C308 au C313', '2013-01-10', 'BE'),
(002, 'Paris en motocrotte', '2014-05-25', 'FR'),
(003, 'Trophée du Père Noël', '2014-12-25', 'BE'),
(013, 'de la niche au bol', '2017-01-09', 'US'),
(018, 'Trophée Frolic', '2017-12-24', 'FR'),
(019, 'Attrap\'Chat', '2017-11-19', 'BE');

-- '

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `codeP` char(2) NOT NULL,
  `nomP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`codeP`, `nomP`) VALUES
('BE', 'Belgique'),
('US', 'Etats-Unis'),
('FR', 'France'),
('IT', 'Italie'),
('UK', 'Royaume-Uni');

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE `resultat` (
  `idC` int(3) UNSIGNED ZEROFILL NOT NULL,
  `idCh` bigint(20) UNSIGNED NOT NULL,
  `temps` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `resultat`
--

INSERT INTO `resultat` (`idC`, `idCh`, `temps`) VALUES
(002, 1, '00:05:35'),
(001, 3, '00:01:37'),
(002, 3, '01:00:00'),
(013, 3, '00:00:03'),
(002, 4, '00:04:12'),
(013, 4, '00:00:10'),
(001, 5, '00:01:04'),
(002, 5, '00:03:59'),
(001, 7, '00:02:03'),
(013, 7, '00:00:07'),
(001, 8, '00:02:31'),
(002, 8, '00:04:26'),
(001, 10, '00:01:25'),
(002, 10, '00:04:10');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chien`
--
ALTER TABLE `chien`
  ADD PRIMARY KEY (`idCh`),
  ADD KEY `nationCh` (`nationCh`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `lieuC` (`lieuC`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`codeP`),
  ADD UNIQUE KEY `nomP` (`nomP`);

--
-- Index pour la table `resultat`
--
ALTER TABLE `resultat`
  ADD PRIMARY KEY (`idCh`,`idC`),
  ADD KEY `idC` (`idC`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chien`
--
ALTER TABLE `chien`
  MODIFY `idCh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `idC` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `chien`
--
ALTER TABLE `chien`
  ADD CONSTRAINT `chien_ibfk_1` FOREIGN KEY (`nationCh`) REFERENCES `pays` (`codeP`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`lieuC`) REFERENCES `pays` (`codeP`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `resultat`
--
ALTER TABLE `resultat`
  ADD CONSTRAINT `resultat_ibfk_1` FOREIGN KEY (`idCh`) REFERENCES `chien` (`idCh`) ON UPDATE CASCADE,
  ADD CONSTRAINT `resultat_ibfk_2` FOREIGN KEY (`idC`) REFERENCES `course` (`idC`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
