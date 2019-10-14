-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 11 Octobre 2019 à 18:17
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
-- Version de PHP :  7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Quoi_boire_ce_soir?`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `override` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id`, `title`, `question_id`, `category_id`, `override`, `created_at`, `updated_at`) VALUES
(1, '... stressé!', 1, 6, 0, '2019-10-08 14:31:01', NULL),
(2, '... mou...', 1, 4, 0, '2019-10-08 14:33:35', NULL),
(3, '... saoul.', 1, 1, 1, '2019-10-08 14:35:25', NULL),
(4, 'Des cacahuètes!', 2, 4, 0, '2019-10-08 14:37:59', NULL),
(5, 'Du sifflard!', 2, 3, 0, '2019-10-08 14:37:59', NULL),
(6, 'Des olives!', 2, 2, 0, '2019-10-08 14:38:56', NULL),
(7, 'Du fromage!', 2, 3, 0, '2019-10-08 14:38:56', NULL),
(8, 'Des chips!', 2, 6, 0, '2019-10-08 14:39:33', NULL),
(9, 'Des bonbons haribo.', 2, 1, 0, '2019-10-08 14:43:23', NULL),
(10, 'D\'HUMEUR FESTIVE!', 1, 2, 0, '2019-10-08 14:45:02', NULL),
(11, 'frigorifié!', 1, 3, 0, '2019-10-08 14:52:16', NULL),
(12, 'Des amis.', 3, 6, 0, '2019-10-08 14:54:20', NULL),
(13, 'Des collègues.', 3, 2, 0, '2019-10-08 14:54:20', NULL),
(14, 'Tes parents.', 3, 1, 0, '2019-10-08 14:55:13', NULL),
(15, 'Tout(e) seul(e).', 3, 1, 0, '2019-10-08 14:55:13', NULL),
(18, 'Une connaissance', 3, 4, 0, '2019-10-08 14:59:26', NULL),
(19, 'Ton amoureux(se).', 3, 3, 0, '2019-10-08 14:59:26', NULL),
(20, 'Sue Hellen', 4, 1, 1, '2019-10-08 15:06:45', NULL),
(21, 'Guybrush Threepwood, Mighty Pirate ™', 4, 5, 1, '2019-10-08 15:15:15', NULL),
(22, 'Christian Dior', 4, 4, 0, '2019-10-08 15:15:15', NULL),
(23, 'Jean-Claude Van Damme', 4, 1, 0, '2019-10-08 15:19:49', NULL),
(24, 'Martin Luther', 4, 6, 0, '2019-10-08 15:19:49', NULL),
(25, 'Le Roi Robert Baratheon', 4, 3, 0, '2019-10-08 15:21:29', NULL),
(26, 'Margaret Tatcher', 4, 2, 0, '2019-10-08 15:21:29', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `winning_category_text` varchar(600) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `winning_category_text`, `created_at`, `updated_at`) VALUES
(1, 'softs', 'Wahouh! Regarde toutes ces couleurs! Ce magnifique cocktail sans alcool te mettra en joie sans pour autant aggraver ton problème de boisson!\r\n\r\nP.S: Vous pouvez joindre Alcool info service au 0 980 980 930, de 8h à 2h, 7 jours sur 7. Votre appel est anonyme et non surtaxé (coût d’une communication locale depuis un poste fixe ou inclus dans les forfaits des box et des mobiles).', '2019-10-08 10:35:30', NULL),
(2, 'cocktails', 'Ce cocktail élégant et sophistiqué te va au tient! Il sera parfait en cette occasion festive!', '2019-10-08 10:43:51', NULL),
(3, 'vins rouges', 'Sobre et classe, le gros rouge qui tâche est idéal pour accompagner un bon gros clacos ou de la cochonnaille du terroir!', '2019-10-08 10:43:51', NULL),
(4, 'vins blancs', 'Avec sa robe dorée et son goût acidulé, ce vin vous aidera (à petites doses) à lutter contre l\'envie d\'aller vous coucher.', '2019-10-08 10:57:44', NULL),
(5, 'boissons de pirates', 'C\'est sans nul doute le remontant dont vous avez besoin. Mais compte tenu de votre air juvénile et du fait que vous avez oublié votre carte d\'identité dans votre autre pantalon le patron vous propose un diabolo fraise...', '2019-10-08 10:57:44', NULL),
(6, 'bières', 'Légère et décontractée, la bière est une valeur sûre et créatrice de liens sociaux depuis 6000 avant Jésus-Christ.\r\nLe patron vous suggère la', '2019-10-08 11:09:18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `drink`
--

CREATE TABLE `drink` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(500) NOT NULL,
  `alcohol_volume` decimal(20,0) UNSIGNED NOT NULL,
  `description` varchar(500) NOT NULL,
  `sell_fast` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `drink`
--

INSERT INTO `drink` (`id`, `name`, `category_id`, `picture`, `alcohol_volume`, `description`, `sell_fast`, `created_at`, `updated_at`) VALUES
(1, 'Grog', 5, 'grog.png', '7', 'Du rhum ambré, du miel, de la cannelle et du citron.', 0, '2019-10-08 11:47:04', NULL),
(4, 'Eau A La Menthe', 1, 'eau-menthe.png', '0', 'De l\'eau et puis de la menthe!', 0, '2019-10-08 11:55:55', NULL),
(5, 'Diabolo Fraise', 1, 'diabolo-fraise.png', '0', 'De la limonade et du sirop de fraise.', 0, '2019-10-08 11:55:55', NULL),
(6, 'Cuddles On The Beach', 1, 'cuddles-on-the-beach.png', '0', 'Jus d\'ananas, de cranberry et de pêche.', 0, '2019-10-08 12:01:10', NULL),
(7, 'NOjito', 1, 'nojito.png', '0', 'Eau gazeuse sucrée aromatisée au citron vert et à la menthe.', 0, '2019-10-08 12:04:00', NULL),
(8, 'Château Godet, Saint-Émilion 2016', 3, 'red-wine.png', '13', 'Bordeaux ample et fruité.', 0, '2019-10-08 12:18:00', NULL),
(9, 'Gentillette', 6, 'beer.png', '3', 'Blanche douce et fruitée.', 1, '2019-10-08 13:22:26', NULL),
(10, 'Duff', 6, 'beer.png', '7', 'Grisâtre, aucun goût, que du sucre.', 0, '2019-10-08 13:24:06', NULL),
(11, 'Louffe', 6, 'beer.png', '7', 'Bière blonde d\'Abbaye, un classique incontournable.', 0, '2019-10-08 13:27:51', NULL),
(12, 'Skull', 6, 'beer.png', '6', 'Bière blonde nordique aux notes de vodka et d\'agrumes.', 0, '2019-10-08 13:30:22', NULL),
(13, 'Edelwaste', 6, 'beer.png', '5', 'Bière blanche aux arômes fleuris élaborée avec les fonds de cuves des précédents brassages.', 1, '2019-10-08 13:36:42', NULL),
(14, 'Domaine Colombo, Sauvignon, 2015', 4, 'white-wine.png', '11', 'Goût simple et frais!', 0, '2019-10-08 13:42:16', NULL),
(15, 'Crémoux de Limans 2019', 4, 'white-wine.png', '13', 'Aux agrumes d\'arômes!', 1, '2019-10-08 13:46:40', NULL),
(16, 'Domaine Chancelant, Pouilly-Fumé AOC, 2018', 4, 'white-wine.png', '12', 'Goût de pierre à fusil prononcé et arôme minéral, senteur poivrée.', 1, '2019-10-08 13:55:34', NULL),
(17, 'Château Sainte-Micheline, Chardonnay 2016', 4, 'white-wine.png', '13', 'Vin-beurré, vieillît en fût de chêne, riche et aromatique.  ', 0, '2019-10-08 14:02:07', NULL),
(18, 'Marc Dupain, Bourgogne AOC 2015', 3, 'red-wine.png', '12', 'Bouche ronde et charnue!', 1, '2019-10-08 14:06:08', NULL),
(19, 'Blue Lagoon', 2, 'blue-lagoon.png', '9', 'Gin, curaçao, eau gazeuse et citrons verts.', 1, '2019-10-08 14:16:01', NULL),
(20, 'Bloody Mary', 2, 'bloody-mary.png', '7', 'Vodka, tomate, pointe de sel de céleris.', 0, '2019-10-08 14:16:01', NULL),
(21, 'Green Pond', 1, 'green-pond.png', '0', 'Citronnade au curaçao sur lit de purée de myrtille.', 1, '2019-10-08 14:21:37', NULL),
(22, 'Piña Colada', 2, 'pina-colada.png', '8', 'Ananas, citron vert, coco et rhum.', 0, '2019-10-08 14:24:40', NULL),
(23, 'Casilliero del camarero, Cabernet Sauvignon 2017', 3, 'red-wine.png', '12', 'Vin ensoleillé venu d\'Argentine.', 1, '2019-10-08 15:05:09', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` tinytext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'En ce moment, tu te sens plutôt...', '2019-10-08 09:42:02', NULL),
(2, 'Tu grignotes quelque chose avec?', '2019-10-08 09:42:02', NULL),
(3, 'Avec qui est-ce-que tu traînes au bar?', '2019-10-08 09:48:19', NULL),
(4, 'Auquel de ces personnages célèbres est-ce-que tu t\'identifies?', '2019-10-08 09:48:19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `result`
--

CREATE TABLE `result` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `drink_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(115) NOT NULL,
  `password` varchar(300) NOT NULL,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `picture` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstname`, `lastname`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'o.j.l.fayer@gmail.com', 'passwordounet', 'Orane', 'Fayer', '/profile-pic.png', '2019-10-08 15:28:42', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `drink_id` (`drink_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `drink`
--
ALTER TABLE `drink`
  ADD CONSTRAINT `drink_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`drink_id`) REFERENCES `drink` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
