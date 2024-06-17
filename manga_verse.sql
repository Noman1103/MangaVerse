-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 11 juin 2023 à 22:53
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manga_verse`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idAdmin` varchar(10) NOT NULL,
  `passAdmin` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `idAdmin`, `passAdmin`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `chapitre`
--

DROP TABLE IF EXISTS `chapitre`;
CREATE TABLE IF NOT EXISTS `chapitre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manga_id` varchar(11) NOT NULL,
  `nb_chap` int(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `first` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manga_id` (`manga_id`),
  KEY `nb_chap` (`nb_chap`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chapitre`
--

INSERT INTO `chapitre` (`id`, `manga_id`, `nb_chap`, `page`, `first`) VALUES
(1, 'OP', 1, '01.jpg', 1),
(2, 'OP', 1, '02.jpg', 0),
(3, 'OP', 1, '03.jpg', 0),
(9, 'OP', 1, '06.jpg', 0),
(8, 'OP', 1, '05.jpg', 0),
(7, 'OP', 1, '04.jpg', 0),
(10, 'OP', 1, '07.jpg', 0),
(13, 'OP', 1, '08.jpg', 0),
(14, 'OP', 1, '09.jpg', 0),
(15, 'OP', 1, '10.jpg', 0),
(16, 'OP', 1, '11.jpg', 0),
(17, 'OP', 1, '12.jpg', 0),
(18, 'OP', 1, '13.jpg', 0),
(19, 'OP', 1, '14.jpg', 0),
(20, 'OP', 1, '15.jpg', 0),
(21, 'OP', 1, '16.jpg', 0),
(22, 'OP', 1, '17.jpg', 0),
(23, 'OP', 1, '18.jpg', 0),
(24, 'OP', 1, '19.jpg', 0),
(25, 'OP', 1, '20.jpg', 0),
(26, 'OP', 1, '21.jpg', 0),
(27, 'OP', 1, '22.jpg', 0),
(28, 'OP', 1, '23.jpg', 0),
(29, 'OP', 1, '24.jpg', 0),
(30, 'OP', 1, '25.jpg', 0),
(31, 'OP', 1, '26.jpg', 0),
(32, 'OP', 1, '27.jpg', 0),
(33, 'OP', 1, '28.jpg', 0),
(34, 'OP', 1, '29.jpg', 0),
(35, 'OP', 1, '30.jpg', 0),
(36, 'OP', 1, '31.jpg', 0),
(37, 'OP', 1, '32.jpg', 0),
(38, 'OP', 1, '33.jpg', 0),
(39, 'OP', 1, '34.jpg', 0),
(40, 'OP', 1, '35.jpg', 0),
(41, 'OP', 1, '36.jpg', 0),
(42, 'OP', 1, '37.jpg', 0),
(43, 'OP', 1, '38.jpg', 0),
(44, 'OP', 1, '39.jpg', 0),
(45, 'OP', 1, '40.jpg', 0),
(46, 'OP', 1, '41.jpg', 0),
(47, 'OP', 1, '42.jpg', 0),
(48, 'OP', 1, '43.jpg', 0),
(49, 'OP', 1, '44.jpg', 0),
(50, 'OP', 1, '45.jpg', 0),
(51, 'OP', 1, '46.jpg', 0),
(52, 'OP', 1, '47.jpg', 0),
(53, 'OP', 1, '48.jpg', 0),
(54, 'OP', 1, '49.jpg', 0),
(55, 'OP', 1, '50.jpg', 0),
(56, 'OP', 1, '51.jpg', 0),
(57, 'OP', 1, '52.jpg', 0),
(58, 'OP', 1, '53.jpg', 0),
(60, 'MHA', 1, '02.jpg', 0),
(61, 'MHA', 1, '01.jpg', 1),
(63, 'MHA', 1, '03.jpg', 0),
(64, 'MHA', 1, '04.jpg', 0),
(65, 'MHA', 1, '05.jpg', 0),
(66, 'MHA', 1, '06.jpg', 0),
(67, 'MHA', 1, '07.jpg', 0),
(68, 'MHA', 1, '08.jpg', 0),
(69, 'MHA', 1, '09.jpg', 0),
(70, 'MHA', 1, '10.jpg', 0),
(71, 'MHA', 1, '11.jpg', 0),
(72, 'MHA', 1, '12.jpg', 0),
(73, 'MHA', 1, '13.jpg', 0),
(74, 'MHA', 1, '14.jpg', 0),
(75, 'MHA', 1, '15.jpg', 0),
(76, 'MHA', 1, '16.jpg', 0),
(77, 'MHA', 1, '17.jpg', 0),
(78, 'MHA', 1, '18.jpg', 0),
(79, 'MHA', 1, '19.jpg', 0),
(80, 'MHA', 1, '20.jpg', 0),
(81, 'MHA', 1, '21.jpg', 0),
(82, 'MHA', 1, '22.jpg', 0),
(83, 'MHA', 1, '23.jpg', 0),
(84, 'MHA', 1, '24.jpg', 0),
(85, 'MHA', 1, '25.jpg', 0),
(86, 'MHA', 1, '26.jpg', 0),
(87, 'MHA', 1, '27.jpg', 0),
(88, 'MHA', 1, '28.jpg', 0),
(89, 'MHA', 1, '29.jpg', 0),
(90, 'MHA', 1, '30.jpg', 0),
(91, 'MHA', 1, '31.jpg', 0),
(92, 'MHA', 1, '32.jpg', 0),
(93, 'MHA', 1, '33.jpg', 0),
(94, 'MHA', 1, '34.jpg', 0),
(95, 'MHA', 1, '35.jpg', 0),
(96, 'MHA', 1, '36.jpg', 0),
(97, 'MHA', 1, '37.jpg', 0),
(98, 'MHA', 1, '38.jpg', 0),
(99, 'MHA', 1, '39.jpg', 0),
(100, 'MHA', 1, '40.jpg', 0),
(101, 'MHA', 1, '41.jpg', 0),
(102, 'MHA', 1, '42.jpg', 0),
(103, 'MHA', 1, '43.jpg', 0),
(104, 'MHA', 1, '44.jpg', 0),
(105, 'MHA', 1, '45.jpg', 0),
(106, 'MHA', 1, '46.jpg', 0),
(107, 'MHA', 1, '47.jpg', 0),
(108, 'MHA', 1, '48.jpg', 0),
(109, 'MHA', 1, '49.jpg', 0),
(110, 'MHA', 1, '50.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

DROP TABLE IF EXISTS `manga`;
CREATE TABLE IF NOT EXISTS `manga` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `manga_img` varchar(100) DEFAULT NULL,
  `manga_nom` varchar(20) NOT NULL,
  `manga_text` varchar(1000) NOT NULL,
  `manga_id` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`ID`, `manga_img`, `manga_nom`, `manga_text`, `manga_id`) VALUES
(1, 'one_piece.jpg', 'One Piece', 'L\'histoire de One Piece se dÃ©roule dans un monde fictif dominÃ© par les ocÃ©ans, oÃ¹ certains pirates aspirent Ã  une Ã¨re de libertÃ© et d\'aventure connue comme Â« l\'Ã¢ge d\'or de la piraterie Â». Cette Ã©poque fut inaugurÃ©e Ã  la suite des derniers mots prononcÃ©s par le roi des pirates, Gol D. Roger, surnommÃ© Gold Roger avant son exÃ©cution. Roger annonce au monde que ses habitants Ã©taient libres de chercher toutes les richesses qu\'il avait accumulÃ©es durant sa vie entiÃ¨re, le Â« One Piece. Â»', 'OP'),
(2, 'MHA.jpg', 'My Hero Acedemia', 'Dans un monde oÃ¹ 80 % de la population mondiale possÃ¨de des super-pouvoirs, nommÃ©s Â« Alters Â», on suit les aventures de Izuku Midoriya, l\'un des rares humains ne possÃ©dant pas d\'Alter. MalgrÃ© cela, Izuku rÃªve pourtant de rejoindre la filiÃ¨re super-hÃ©roÃ¯que de la grande acadÃ©mie Yuei et de devenir un jour un des plus grands hÃ©ros de son Ã©poque.', 'MHA'),
(3, 'naruto_shippuden.jpg', 'Naruto Shippuden', 'L\'histoire commence pendant l\'adolescence de Naruto, vers ses douze ans. Orphelin cancre et grand farceur, il fait toutes les bÃªtises possibles pour se faire remarquer. Son rÃªve : devenir le meilleur Hokage afin d\'Ãªtre reconnu par les habitants de son village. En effet, le dÃ©mon renard Ã  neuf queues scellÃ© en lui a attisÃ© la crainte et le mÃ©pris des autres villageois, qui, avec le temps, ne font plus de diffÃ©rence entre KyÃ»bi et Naruto. MalgrÃ© cela, Naruto s\'entraÃ®ne dur afin de devenir genin, le premier niveau chez les ninjas. AprÃ¨s avoir ratÃ© l\'examen genin 3 fois, il arrive finalement Ã  recevoir son bandeau frontal de Konoha. Il est alors inclus dans une Ã©quipe de trois apprentis ninjas, avec Sakura Haruno et le talentueux Sasuke Uchiwa qui veut venger les personnes chÃ¨res Ã  ses yeux, en tuant son frÃ¨re Itachi Uchiwa. Peu aprÃ¨s, ils rencontrent leur jōnin (ninja de classe supÃ©rieure), celui qui s\'occupera de leur formation : le mystÃ©rieux Kakashi Hatake. ', 'NS'),
(4, 'JJk.jpg', 'Jujutsu Kaisen', 'L\'intrigue de Jujutsu Kaisen se dÃ©roule dans un monde oÃ¹ des flÃ©aux sont crÃ©Ã©s Ã  partir des Ã©motions nÃ©gatives des Humains. Ainsi, pour protÃ©ger les lieux avec une forte concentration de ces Ã©motions comme les Ã©coles ou les hÃ´pitaux, ces infrastructures possÃ¨dent une relique, rÃ©ceptacle d\'un flÃ©au, car l\'on ne peut lutter contre les flÃ©aux qu\'avec un flÃ©au plus puissant. Ceux-ci sont invisibles aux yeux des humains sauf pour une poignÃ©e de personnes, par exemple les exorcistes. Le mÃ©tier d\'exorciste consiste Ã  Ã©liminer les flÃ©aux et ainsi protÃ©ger le peuple de ces derniers, mais cela n\'est pas sans risques, car ces flÃ©aux peuvent Ãªtre plus ou moins puissants. ', 'JJK'),
(5, 'blue_lock.jpg', 'Blue Lock', 'Le manga commence avec l\'Ã©limination de la Coupe du monde 2018 du Japon, ce qui incite l\'Union japonaise de football Ã  lancer un programme de surveillance dans les Ã©coles secondaires afin de sÃ©lectionner les joueurs qui vont s\'entraÃ®ner et se prÃ©parer pour la Coupe du monde 2022. Le protagoniste Yoichi Isagi, un membre avancÃ© de son Ã©quipe de lycÃ©e perd le match qui aurait pu qualifier son Ã©quipe pour la finale de Saitama, faute de pouvoir jouer dans les championnats nationaux. Alors qu\'il croyait que tout Ã©tait perdu, Yoichi reÃ§oit une invitation Ã  rejoindre le programme Blue Lock.', 'BL'),
(6, 'demon_slayer', 'Demon Slayer ', 'Depuis les temps anciens, il existe des rumeurs concernant des dÃ©mons mangeurs d\'hommes qui se cachent dans les bois. Pour cette raison, les citadins locaux ne s\'y aventurent jamais la nuit. La lÃ©gende raconte aussi qu\'un tueur dÃ©ambule la nuit, chassant ces dÃ©mons assoiffÃ©s de sang. Depuis la mort de son pÃ¨re, Tanjiro a pris sur lui pour subvenir aux besoins de sa famille. MalgrÃ© cette tragÃ©die, ils rÃ©ussissent Ã  trouver un peu de bonheur au quotidien. Cependant, ce peu de bonheur se retrouve dÃ©truit le jour oÃ¹ Tanjiro dÃ©couvre que sa famille s\'est fait massacrer et que la seule survivante, sa sÃ¨ur Nezuko, est devenue un dÃ©mon. Ã€ sa grande surprise, Nezuko montre encore des signes d\'Ã©motion et de pensÃ©es humaines. Ainsi, commence la dure tÃ¢che de Tanjiro, celle de combattre les dÃ©mons et de faire redevenir sa sÃ¨ur humaine.', 'DM'),
(7, 'tokyo_revengers', 'Tokyo Revengers', 'En 2017, Takemichi Hanagaki, un jeune freeter de 26 ans Ã  la vie morose, apprend que son ex-petite amie du collÃ¨ge, Hinata Tachibana, est dÃ©cÃ©dÃ©e dans un conflit impliquant le gang du Â« Tokyo Manji-kai Â». Le lendemain, alors qu\'il revient d\'un travail Ã  temps partiel, Takemichi se fait pousser du quai de mÃ©tro par quelqu\'un. Alors qu\'il est sur le point d\'Ãªtre percutÃ©, il fait un bond dans le temps, de douze ans en arriÃ¨re. Il se trouve Ãªtre retournÃ© l\'annÃ©e de sa 4e, l\'annÃ©e oÃ¹ il sortait avec Hinata. Takemichi prend la dÃ©cision de tout faire pour empÃªcher la mort d\'Hinata.', 'TR'),
(8, 'black_clover', 'Black Clover', 'Asta et Yuno sont deux adolescents de 15 ans qui ont grandi ensemble dans un petit village du royaume de Clover. Leur but ultime Ã  tous les deux est de devenir le prochain empereur-mage !\r\nÃ‰trangement, dans ce royaume, Asta est le seul qui soit incapable de produire la moindre Ã©tincelle magique. Loin d\'Ãªtre dÃ©couragÃ©, il participe tout de mÃªme avec son ami (et rival) Yuno Ã  la cÃ©rÃ©monie annuelle de remise des grimoires qui rassemble les jeunes de 15 ans dans tout le royaume de Clover. Lors de cette cÃ©rÃ©monie, Yuno recevra un grimoire lÃ©gendaire. Ce qui n\'est pas le cas d\'Asta car malheureusement pour lui, aucun grimoire ne lui sera attribuÃ© ce jour lÃ . Mais Asta ne se laissera pas abattre, peut importe les efforts qu\'il aura Ã  fournir, il compte bien rivaliser avec Yuno pour aller au bout de son rÃªve....', 'BC'),
(9, 'chainsaw_man.jpg', 'Chainsaw Man', 'Pour rembourser ses dettes, Denji, jeune homme dans la dÃ¨che la plus totale, est exploitÃ© en tant que Devil Hunter avec son chien-dÃ©mon-tronÃ§onneuse, \"Pochita\". Mais suite Ã  une cruelle trahison, il voit enfin une possibilitÃ© de se tirer des bas-fonds oÃ¹ il croupit ! Devenu surpuissant aprÃ¨s sa fusion avec Pochita, Denji est recrutÃ© par une organisation et part Ã  la chasse aux dÃ©mons...', 'CM'),
(10, 'one_punch_man.jpg', 'One Punch Man', 'Lorsque le super-hÃ©ros Saitama se prÃ©sente Ã  ses ennemis, ces derniers ne le prennent jamais au sÃ©rieux. Il faut dire qu\'entre sa carrure (plutÃ´t banale) et son allure dÃ©sinvolte, il n\'y a pas vraiment de quoi avoir peur... surtout pour un Ãªtre surpuissant qui a dÃ©jÃ  causÃ© d\'impressionnants ravages. Toutefois, il faut toujours se mÃ©fier des apparences car Saitama possÃ¨de une puissance colossale, qui lui permet de terrasser ses adversaires en un seul coup !\r\n\r\nCette puissance est dÃ» Ã un entrainement trÃ¨s intensif (au point que Saitama en ait perdu ses cheveux) de 3 ans. Le problÃ¨me, c\'est que depuis, il s\'ennuie. Personne n\'a encore pu rivaliser avec lui et il cherche dÃ©sespÃ©rÃ©ment celui qui pourra lui offrir un vrai combat.', 'OPM');

-- --------------------------------------------------------

--
-- Structure de la table `scan`
--

DROP TABLE IF EXISTS `scan`;
CREATE TABLE IF NOT EXISTS `scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manga_id` varchar(11) NOT NULL,
  `nb_chap` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manga_id` (`manga_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `scan`
--

INSERT INTO `scan` (`id`, `manga_id`, `nb_chap`) VALUES
(1, 'OP', 1),
(2, 'OP', 2),
(4, 'MHA', 1),
(6, 'JJK', 1),
(7, 'NS', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
