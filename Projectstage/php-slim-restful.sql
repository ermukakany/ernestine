-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 11 mai 2018 à 17:56
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `php-slim-restful`
--

-- --------------------------------------------------------

--
-- Structure de la table `emailusers`
--

CREATE TABLE `emailusers` (
  `user_id` int(11) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `emailusers`
--

INSERT INTO `emailusers` (`user_id`, `email`, `name`) VALUES
(1, 'stephane.potin@ingerop.com', 'spotin	POTIN'),
(2, 'catherine.kourthine@ingerop.com', '	Catherine	Kourthine'),
(3, '	claire.magnier@ingerop.com', '	Magnier	Claire'),
(4, 'aubignat.virginie@ingerop.com', '	Aubignat	Virginie'),
(5, 'honore.bizagwira@ingerop.com', 'BIZ HONORE');

-- --------------------------------------------------------

--
-- Structure de la table `feed`
--

CREATE TABLE `feed` (
  `feed_id` int(11) NOT NULL,
  `feed` text,
  `user_id_fk` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `imagesdata`
--

CREATE TABLE `imagesdata` (
  `img_id` int(11) NOT NULL,
  `b64` text,
  `user_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_statut` int(2) NOT NULL,
  `user_st` int(2) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `niveau` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `user_st`, `nom`, `slug`, `niveau`) VALUES
(0, 5, 'unknown', 'inconnu', NULL),
(1, 1, 'Directeur general', 'DG', 1),
(2, 2, 'Assistante', 'Assist', 2),
(3, 3, 'Ressources humaines', 'RH', 3),
(4, 4, 'Ressources humaines', 'RH', 3),
(5, 1, 'Administrateur', 'admin', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`, `email`) VALUES
(1, 'Tinarya', 'd8e52de37d49947a35fe964a9ec2dce145faca41eceb587b12ce37c52a8f3d8d', 'Tina Mk', 'ernestrory08@yahoo.fr'),
(2, 'minarya', '171916af23fc5b47fe2adbb67da3a0b7365bd86869a8db20f0ebc439b96473c1', 'Umurya', 'ryiana10@yahoo.fr'),
(3, 'totoadm', '15d84cb0bfa0bd9e1851182f26f1b16b27a23ae7b0fb5944a1ff9ad3eb2bf2c5', 'Toto', 'toto@g.info'),
(4, 'Tinara', 'b28a2586b2868721623b223e61d572301fc100a0fc544bc64ae4518db0acc1de', 'Tina UMk', 'ernestrory04@yahoo.fr'),
(5, 'dmini', '5c0db59995b0935755cca73b34fe1feabd855ca69b3257597f2e5dc1ae98d5be', 'Tina Mukakanyenzi', 'ernestror01@yahoo.fr'),
(6, 'madmin', '5c0db59995b0935755cca73b34fe1feabd855ca69b3257597f2e5dc1ae98d5be', 'Tina Mukakanyenzi', 'madmin@yahoo.fr'),
(7, 'padmin', 'f6563e1e2754534fb3417d34e100197eeb01b39146952ea02e85ce538d0a6dbd', 'Tina Mukakanyenzi', 'madmin@ingerop.com'),
(8, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'Tina Mukakanyenzi', 'ernes.admin@ingerop.com'),
(9, 'admint', '25f43b1486ad95a1398e3eeb3d83bc4010015fcc9bedb35b432e00298d5021f7', 'Tina Mukakanyenzi', 'ernest.admin@ingerop.com'),
(10, 'admine', 'fb118ff846721feae4ecc60a43e8b7a27511e67eacab2818117d74e6c3fbbbba', 'Tina Mukakanyenzi', 'ernesp.admin@ingerop.com'),
(11, 'adminre', '25f43b1486ad95a1398e3eeb3d83bc4010015fcc9bedb35b432e00298d5021f7', 'Tina Mukakanyenzi', 'ernesre.admin@ingerop.com'),
(12, 'spotin', '3efff810be0fe66dda322aece324d0ff325e8464cb1ef52e030b25a1fe75a940', 'Stephane POTIN', 'stephane.potin@ingerop.com'),
(13, 'futfjdvg', 'ac6a29a8857a16ee5ec8d84a2ac8ac58073014b25b201afbc621cff8accfcbe6', 'gfkfghgu@gbfkh.fff', 'gaminr'),
(14, 'titi', 'f4f0fee8073c757e2391c5e0dde8a180d6a3a8b16ad961d88af0ed8b3003de6c', 'orneure', 'arbnre@ingerop.com'),
(15, 'uwahehe', 'eae658e2e0d8a2fa2146c03a7f9912417b0864c6a6aa9648dbfeb7412b310cc4', 'uwahehe', 'mkuwajeje@ingerop.com'),
(22, 'dgohgueog', '52620ff46b66c95fb58de63ffe4b4741f93c32e64bd4e7c37bd9489dbfddf71b', 'aerzztrutz', 'uydg;fyd;ykhd@gmail.vuhf'),
(25, 'uwanejeje', '708175eb6e1260f977af31cb506be186a053b222c07beb3c2a6fb2ff217a02e5', 'uwajene', 'uuwanejeje@gmail.vuhf'),
(26, 'uwanejeje', '708175eb6e1260f977af31cb506be186a053b222c07beb3c2a6fb2ff217a02e5', 'Claire Magnier', '	\r\nclaire.magnier@ingerop.com'),
(27, 'aubignat', '2a3743b10036f80e0ed7cd66fec26ce373ba4957cc1f44d34383b94f1363fd2a', 'Virginie Aubignat', 'aubignat.virginie@ingerop.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emailusers`
--
ALTER TABLE `emailusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`feed_id`);

--
-- Index pour la table `imagesdata`
--
ALTER TABLE `imagesdata`
  ADD PRIMARY KEY (`img_id`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_statut`),
  ADD KEY `user_st` (`user_st`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emailusers`
--
ALTER TABLE `emailusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `feed`
--
ALTER TABLE `feed`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `imagesdata`
--
ALTER TABLE `imagesdata`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `statut`
--
ALTER TABLE `statut`
  ADD CONSTRAINT `statut_ibfk_1` FOREIGN KEY (`user_st`) REFERENCES `emailusers` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
