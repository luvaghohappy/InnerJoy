-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 mai 2024 à 16:45
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mental`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(10) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `profil` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `passwords`, `profil`) VALUES
(1, 'bless', '$2y$10$8xCQQMWDaocAt', 'b'),
(2, 'happy', '$2y$10$Sa06tRkJSdLXx', 'h'),
(3, 'ali', '$2y$10$3cqesrcDbv68q', 'a'),
(4, 'alimasi', '$2y$10$/1hioiXYUPogq', 'a'),
(5, 'mwisa', '$2y$10$EcBevq6PsrAb6', 'm'),
(6, 'muhesi', '$2y$10$oB1h87F6Veibh', 'm');

--
-- Déclencheurs `users`
--
DELIMITER $$
CREATE TRIGGER `update_profile` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
     SET NEW.profil = LEFT(NEW.pseudo, 1);
 END
$$
DELIMITER ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
