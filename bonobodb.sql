-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 03 Octobre 2017 à 19:06
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bonobodb`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'rami', 'rami', 'rami.sassi@esprit.tn', 'rami.sassi@esprit.tn', 1, NULL, '$2y$13$0pveb6xDuI5i3NbeqL5KMeZzILoqWRY8KRVO3S4VpJpJyjFIz6dtu', '2017-10-03 00:05:39', NULL, NULL, 'a:0:{}'),
(2, 'test2', 'test2', 'test2@yahoo.fr', 'test2@yahoo.fr', 1, NULL, '$2y$13$MRcWfB7WSUFLtPu7vjio9OHBdlsx5KpnT8FqNl/xZIPAbmfPQ2SY.', '2017-09-08 10:56:39', NULL, NULL, 'a:0:{}'),
(3, 'test3', 'test3', 'test3@yahoo.fr', 'test3@yahoo.fr', 1, NULL, '$2y$13$Dhw2lBAjH6cRz8RpBjsfWeOdliIKK6FKYkCNoREfTvX76iAXTDM8C', '2017-09-08 11:15:13', NULL, NULL, 'a:0:{}'),
(4, 'test', 'test', 'test@yahoo.fr', 'test@yahoo.fr', 1, NULL, '$2y$13$lFEWY6exfBaY1S2ySty5ju2noTfSbZLvpgvfjQA3vS9zQaEyv0.KK', '2017-09-08 11:22:26', NULL, NULL, 'a:0:{}'),
(5, 'test5', 'test5', 'test5@yahoo.fr', 'test5@yahoo.fr', 1, NULL, '$2y$13$xZU5m/f.n9pwNupZKV/1jeEJQoEllS6s35CroAuYHRigwnbskWwD.', '2017-09-08 11:29:10', NULL, NULL, 'a:0:{}'),
(6, 'test8', 'test8', 'test8@test8.de', 'test8@test8.de', 1, NULL, '$2y$13$qQBqssRaciYsued.wm9Qj.un.BM/ADAh.PjQ46AdABtHyggd7Vu3e', '2017-09-08 11:48:12', NULL, NULL, 'a:0:{}'),
(7, 'test10', 'test10', 'test10@gmail.com', 'test10@gmail.com', 1, NULL, '$2y$13$vQisFBo0BFEo2Kia7nfE4eISdG3OaYg9WxMtogyRDKLtfaR3WbBLC', '2017-09-08 12:16:48', NULL, NULL, 'a:0:{}'),
(8, 'test11', 'test11', 'mail11@gmail.com', 'mail11@gmail.com', 1, NULL, '$2y$13$mxi8MAkIlBSg8SUt3BJ42.xv12JcJMgokP8zghOIIoKbkzlMR38OW', '2017-10-02 21:47:56', NULL, NULL, 'a:0:{}'),
(10, 'bonobo', 'bonobo', 'rami.sassi.pro@gmail.com', 'rami.sassi.pro@gmail.com', 1, NULL, '$2y$13$izquuj0RMTCrCumxRf/87OjCdz4ml.CEogRK9EuadsWf5lZSNjzeW', '2017-10-02 17:45:27', NULL, NULL, 'a:0:{}'),
(11, 'bono12', 'bono12', 'baoo@gmail.com', 'baoo@gmail.com', 1, NULL, '$2y$13$jbK7t5/JQgGzRts1IpCX9.db1w./MLh402MvGw5HgZ96apDvWi1b2', '2017-10-03 18:50:14', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `friend`
--

CREATE TABLE IF NOT EXISTS `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `famille` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `race` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nourriture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_55EEAC61A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Contenu de la table `friend`
--

INSERT INTO `friend` (`id`, `Name`, `age`, `famille`, `race`, `nourriture`, `user_id`) VALUES
(9, 'test2', 25, 'bbb', 'test2', 'fraise', 2),
(13, 'bono', 21, 'aaa', 'race', 'pomme', 7),
(14, 'bonob11', 25, 'tri', 'racio', 'banane', 4),
(20, 'zzzyt', 99, 'aaaaz', 'ddr', 'rr', 6),
(21, 'mpp', 666, 'sss', 'zee', 'pain', 3),
(22, 'xxx', 99, 'ccc', 'ddd', 'kk', 8);

-- --------------------------------------------------------

--
-- Structure de la table `user_friend`
--

CREATE TABLE IF NOT EXISTS `user_friend` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `IDX_30BCB75CA76ED395` (`user_id`),
  KEY `IDX_30BCB75C6A5458E8` (`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_friend`
--

INSERT INTO `user_friend` (`user_id`, `friend_id`) VALUES
(1, 13),
(1, 21),
(11, 13),
(11, 14);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `FK_55EEAC61A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `user_friend`
--
ALTER TABLE `user_friend`
  ADD CONSTRAINT `FK_30BCB75C6A5458E8` FOREIGN KEY (`friend_id`) REFERENCES `friend` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_30BCB75CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
