-- XAMPP-Lite
-- version 8.4.1
-- https://xampplite.sf.net/
--
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 mars 2025 à 11:51
-- Version du serveur : 11.4.4-MariaDB-log
-- Version de PHP : 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd963258`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `idmem` int(11) NOT NULL,
  `idpar` int(11) NOT NULL,
  `datedeb` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jardin`
--

CREATE TABLE `jardin` (
  `idjar` varchar(2) NOT NULL,
  `nomjar` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jardin`
--

INSERT INTO `jardin` (`idjar`, `nomjar`, `adresse`) VALUES
('J1', 'Résidence des Pins', 'Cité des pins'),
('R3', 'Eden des roses', 'Rue des martyrs');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idmem` int(11) NOT NULL,
  `nommem` varchar(50) NOT NULL,
  `genre` char(1) NOT NULL check (genre in ("H","F")),
  `datenais` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(6) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Structure de la table `parcelle`
--

CREATE TABLE `parcelle` (
  `idpar` int(11) NOT NULL,
  `numpar` int(11) NOT NULL,
  `idjar` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parcelle`
--

INSERT INTO `parcelle` (`idpar`, `numpar`, `idjar`) VALUES
(1, 1, 'R3'),
(2, 2, 'R3'),
(3, 3, 'R3'),
(4, 4, 'R3'),
(5, 1, 'J1'),
(6, 2, 'J1'),
(7, 3, 'J1'),
(8, 4, 'J1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`idmem`,`idpar`),
  ADD KEY `idpar` (`idpar`);

--
-- Index pour la table `jardin`
--
ALTER TABLE `jardin`
  ADD PRIMARY KEY (`idjar`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`idmem`),
  ADD UNIQUE KEY `un` (`mdp`);

--
-- Index pour la table `parcelle`
--
ALTER TABLE `parcelle`
  ADD PRIMARY KEY (`idpar`),
  ADD KEY `cc` (`idjar`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `idmem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parcelle`
--
ALTER TABLE `parcelle`
  MODIFY `idpar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`idmem`) REFERENCES `membre` (`idmem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`idpar`) REFERENCES `parcelle` (`idpar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `parcelle`
--
ALTER TABLE `parcelle`
  ADD CONSTRAINT `parcelle_ibfk_1` FOREIGN KEY (`idjar`) REFERENCES `jardin` (`idjar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
