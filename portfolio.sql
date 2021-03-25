-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 25 mars 2021 à 13:37
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloc_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B87555155582E9C0` (`bloc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`id`, `bloc_id`, `code`, `libelle`) VALUES
(1, 1, 'A1.1', 'Gestion du patrimoine informatique'),
(2, 1, 'A1.2', 'Réponse aux incidents et aux demandes d\'assistance et d\'évolution'),
(3, 1, 'A1.3', 'Développement de la présence en ligne de l\'organisation'),
(4, 1, 'A1.4', 'Travail en mode projet'),
(5, 1, 'A1.5', 'Mise à disposition des utilisateurs d\'un service informatique'),
(6, 1, 'A1.6', 'Organisation de son développement professionnel'),
(7, 2, 'A2.1', 'Conception d\'une solution d\'infrastructure'),
(8, 2, 'A2.2', 'Installation, test et déploiement d\'une solution d\'infrastructure réseau'),
(9, 2, 'A2.3', 'Exploitation, dépannage et supervision d\'une solution d\'infrastructure réseau'),
(10, 3, 'B2.1', 'Conception et développement d\'une solution applicative'),
(11, 3, 'B2.2', 'Maintenance corrective ou évolutive d\'une solution applicative'),
(12, 3, 'B2.3', 'Gestion des données'),
(13, 4, 'A3.1', 'Protection des données à caractère personnel'),
(14, 4, 'A3.2', 'Préservation de l\'identité numérique de \'organisation'),
(15, 4, 'A3.3', 'Sécurisation des équipements et des usages des utilisateurs '),
(16, 4, 'A3.4', 'Garantie de la disponibilité, de l\'intégrité et de la confidentialité des services informatiques et des données de l\'organisation face à des cyberattaques'),
(17, 4, 'A3.5', 'Cybersécurisation d\'une infrastructure réseau, d\'un système, d\'un service'),
(18, 4, 'B3.5', 'Cybersécurisation d\'une solution applicative et de son développement');

-- --------------------------------------------------------

--
-- Structure de la table `bloc`
--

DROP TABLE IF EXISTS `bloc`;
CREATE TABLE IF NOT EXISTS `bloc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bloc`
--

INSERT INTO `bloc` (`id`, `code`, `libelle`) VALUES
(1, 'B1', 'Support et mise à disposition de services informatiques'),
(2, 'B2A', 'SISR : Administration des systèmes et des réseaux'),
(3, 'B2B', 'SLAM : Conception et développement d’applications'),
(4, 'B3', 'Cybersécurité des services informatiques');

-- --------------------------------------------------------

--
-- Structure de la table `cadre`
--

DROP TABLE IF EXISTS `cadre`;
CREATE TABLE IF NOT EXISTS `cadre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cadre`
--

INSERT INTO `cadre` (`id`, `libelle`) VALUES
(1, 'Équipe'),
(2, 'Seul');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enseignant_id` int(11) DEFAULT NULL,
  `rp_id` int(11) NOT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_commentaire` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_67F068BCE455FCC0` (`enseignant_id`),
  KEY `IDX_67F068BCB70FF80C` (`rp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=820 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `enseignant_id`, `rp_id`, `commentaire`, `date_commentaire`) VALUES
(287, 4, 1, 'Situation à préciser, manque des reformulations', '2017-01-30'),
(291, 4, 1, 'Valide OK', '2017-01-30'),
(293, 4, 255, 'Rédaction à corriger', '2017-01-31'),
(340, 2, 990, 'Revoir le titre.\nPréciser l\'environnement technologique', '2017-03-02'),
(341, 2, 975, 'Alimenter avec des productions', '2017-03-02'),
(420, 4, 739, 'Le contexte doit définir l\'intention de l\'entreprise et pas simplement citer son nom', '2017-03-21'),
(502, 4, 1300, 'dans l\'intitulé, préfixer par [STAGE1]', '2017-06-12'),
(503, 4, 1300, 'Dès qu\'il y a installation et configuration, il doit y avoir du A321', '2017-06-12'),
(504, 4, 1300, 'Ce n\'est pas très clair : tu parles de serveur de messagerie et dans les difficultés tu parles de thunderbird qui est un client', '2017-06-12'),
(505, 4, 1300, 'Le besoin doit indiquer l\'objectif qui t\'es fix&eacute; : que dois tu faire et pourquoi ? ', '2017-06-12'),
(513, 4, 1305, 'Il faut reformuler en indiquant précisément ce que tu as fait. ', '2017-06-12'),
(540, 6, 1311, 'Reformulation du contexte, vous ne devez pas laisser &quot;TP SISR1&quot; ', '2017-06-20'),
(541, 6, 1101, 'Situation de SI2', '2017-06-20'),
(548, 6, 599, 'Vous devez compl&eacute;ter l \'ensemble des onglets ', '2017-06-22'),
(554, 6, 1279, 'Utilisation du PDO', '2017-06-22'),
(563, 6, 983, 'revoir si cela correspond &agrave; du SISR1', '2017-06-22'),
(584, 2, 1122, 'Quelques reformulations &agrave; revoir', '2017-11-28'),
(586, 2, 1147, 'Revoir la d&eacute;finition du besoin', '2017-11-28'),
(589, 2, 1290, 'Revoir les reformulations', '2017-11-28'),
(638, 4, 1304, 'Les reformulations ne doivent pas seulement reprendre l\'activité mais dire concrètement ce que tu as fait. Tes recherches sur internet portaient sur quel thème exactement....', '2018-02-02'),
(646, 4, 1304, 'Tests : quelles vérifications étaient prévues (tests unitaires ? validation des fonctionnalités ? ...) ', '2018-02-05'),
(647, 4, 1304, 'A133 : ce que tu d&eacute;cris correspond plut&ocirc;t &agrave; de la gestion de projet (A141)', '2018-02-05'),
(648, 4, 1305, 'Il ne faut m\'informer de ta situation que lorsque tu penses que tout est bien pr&ecirc;t, pas &agrave; chaque modification', '2018-02-05'),
(649, 4, 739, 'dans les moyens, indiquer plutôt le serveur de virtualisation proxmox', '2018-02-05'),
(659, 6, 1279, 'Tu dois préciser que tu as mis en place des requêtes préparées avec le PDO, pour alimenter la BDD', '2018-02-12'),
(661, 4, 1206, 'Il faut toujours reformuler les activités avant d\'informer l\'enseignant', '2018-02-13'),
(704, 2, 1146, 'Cette situation doit absolument &ecirc;tre compl&eacute;t&eacute;e par une autre mettant en oeuvre les mat&eacute;riels physiques (routeurs).', '2018-03-08'),
(705, 2, 1288, 'Aurais-tu des exemplaires de fiche d\'incident et/ou de fiche d\'intervention ?', '2018-03-08'),
(706, 2, 969, 'RAS', '2018-03-08'),
(714, 2, 1290, 'Vérifier l\'accès aux productions', '2018-04-02'),
(738, 4, 1206, 'A124 concerne du test de bon fonctionnement, toi tu d&eacute;cris de l\'installation (A321)', '2018-04-04'),
(752, 2, 1314, 'D&eacute;clarer l\'activit&eacute; ayant trait aux autorisations d\'acc&egrave;s', '2018-04-10'),
(753, 2, 1148, 'Productions &agrave; mentionner : fichiers Excel', '2018-04-10'),
(782, 4, 970, 'le reste est bon', '2018-04-12'),
(808, 2, 1150, 'A424 : activit&eacute; &agrave; supprimer, elle ne fait pas partie des activit&eacute;s sisr', '2018-04-18'),
(809, 2, 881, 'Je ne pense pas que cette situation soit pertinente. L\'activit&eacute; mentionn&eacute;e peut se retrouver dans d\'autres situations.', '2018-04-18'),
(818, 4, 1144, 'A424 : cela n\'a pas de sens, c\'est seulement la documentation que tu as produite, il n\'y a pas eu de mise jour d\'un existant. A retirer', '2018-04-18'),
(819, 2, 1290, 'Supprimer A411 (solution applicative) et A414', '2018-04-18');

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activite_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_94D4687F9B0F88B1` (`activite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`id`, `activite_id`, `code`, `libelle`) VALUES
(1, 1, 'C1.1.1', 'Recensement et identification des ressources numériques'),
(2, 1, 'C1.1.2', 'Exploitation des référentiels, normes et standards adoptés par le prestataire informatique'),
(3, 1, 'C1.1.3', 'Mise en place et vérification des niveaux d\'habilitation associés à un service'),
(4, 1, 'C1.1.4', 'Vérification des conditions de la continuité d\'un service informatique'),
(5, 1, 'C1.1.5', 'Gestion des sauvegardes'),
(6, 1, 'C1.1.6', 'Vérification du respect des règles d\'utilisation des ressources numériques'),
(7, 2, 'C1.2.1', 'Collecte, suivi et orientation des demandes'),
(8, 2, 'C1.2.2', 'Traitement des demandes concernant les applicatifs, services réseau et système'),
(9, 2, 'C1.2.3', 'Traitement des demandes concernant les applications'),
(10, 3, 'C1.3.1', 'Participation à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques'),
(11, 3, 'C1.3.2', 'Référencement des services en ligne de l\'organisation et mesure de leur visibilité'),
(12, 3, 'C1.3.4', 'Participation à l\'évolution d\'un site Web exploitant les données de l\'organisation'),
(13, 4, 'C1.4.1', 'Analyse des objectifs et des modalités d\'organisation d\'un projet'),
(14, 4, 'C1.4.2', 'Planification des activités'),
(15, 5, 'C1.5.1', 'Test d\'intégration et d\'acceptation d\'un service'),
(16, 5, 'C1.5.2', 'Déploiement d\'un service'),
(17, 5, 'C1.5.3', 'Accompagnement des utilisateurs dansla mise en place d\'un service'),
(18, 6, 'C1.6.1', 'Mise en place de son environnement d\'apprentissage personnel'),
(19, 6, 'C1.6.2', 'Mise en œuvre d\'outils et de stratégie veille informationnelle'),
(20, 6, 'C1.6.3', 'Gestion de son identité professionnelle'),
(21, 7, 'C2.1.1', 'Analyse d\'un besoin exprimé et de son contexte juridique'),
(22, 7, 'C2.1.2', 'Étude de l\'impact d\'une évolution d\'un élément d\'infrastructure sur le système informatique'),
(23, 7, 'C2.1.3', 'Élaboration d\'un dossier de choix d\'une solution d\'infrastructure et rédaction des spécifications techniques'),
(24, 7, 'C2.1.4', 'Choix des éléments nécessaires pour assurer la qualité et la disponibilité d\'un service'),
(25, 7, 'C2.1.5', 'Maquettage et prototypage d\'une solution d\'infrastructure permettant d\'atteindre la qualité de service attendue'),
(26, 7, 'C2.1.6', 'Détermination et préparation des tests nécessaires à la validation de la solution d\'infrastructure retenue'),
(27, 8, 'C2.2.1', 'Installation et configuration d\'éléments d\'infrastructure'),
(28, 8, 'C2.2.2', 'Installation et configuration des éléments nécessaires pour assurer la continuité des services'),
(29, 8, 'C2.2.3', 'Installation et configuration des éléments nécessaires pour assurer la qualité de service(QoS)'),
(30, 8, 'C2.2.4', 'Rédaction ou mise à jour de la documentation technique et utilisateur d\'une solution d\'infrastructure'),
(31, 8, 'C2.2.5', 'Test d\'intégration et d\'acceptation d\'une solution d\'infrastructure'),
(32, 8, 'C2.2.6', 'Déploiement d\'une solution d\'infrastructure'),
(33, 9, 'C2.3.1', 'Administration sur site et à distance des éléments d\'une infrastructure'),
(34, 9, 'C2.3.2', 'Automatisation des tâches d\'administration'),
(35, 9, 'C2.3.3', 'Gestion des indicateurs et des fichiers d\'activité des éléments d\'une infrastructure'),
(36, 9, 'C2.3.4', 'Identification, qualification, évaluation et réaction face à un incident ou à un problème'),
(37, 9, 'C2.3.5', 'Évaluation, maintien et amélioration de la qualité d\'un service'),
(38, 10, 'B2.1.1', 'Analyse d\'un besoin exprimé et de son contexte juridique'),
(39, 10, 'B2.1.2', 'Participation à la conception de l\'architecture d\'une solution applicative'),
(40, 10, 'B2.1.3', 'Modélisation d\'une solution applicative'),
(41, 10, 'B2.1.4', 'Exploitation des ressources du cadre applicatif(framework)'),
(42, 10, 'B2.1.5', 'Identification, développement, utilisation ou adaptation de composants logiciels'),
(43, 10, 'B2.1.6', 'Exploitation des technologies Web et mobile pour mettre en œuvre les échanges entre applications'),
(44, 10, 'B2.1.7', 'Utilisation de composants d\'accès aux données'),
(45, 10, 'B2.1.8', 'Intégration continue des versions d\'une solution applicative'),
(46, 10, 'B2.1.9', 'Réalisation des tests nécessaires à la validation ou à la mise en production d\'éléments adaptés ou développés'),
(47, 10, 'B2.1.10', 'Rédaction des documentations technique et d\'utilisation d\'une solution applicative'),
(48, 10, 'B2.1.11', 'Exploitation des fonctionnalités d\'un environnement de développement et de tests'),
(49, 11, 'B2.2.1', 'Évaluation de la qualité d\'une solution applicative'),
(50, 11, 'B2.2.2', 'Recueil, analyse et mise à jour d\'informations sur une version d\'une solution applicative'),
(51, 11, 'B2.2.3', 'Analyse et correction d\'un dysfonctionnement'),
(52, 11, 'B2.2.4', 'Mise à jour de documentations technique et d\'utilisation d\'une solution applicative'),
(53, 11, 'B2.2.5', 'Élaboration et réalisation de tests des éléments mis à jour'),
(54, 12, 'B2.3.1', 'Exploitation de données à l\'aide d\'un langage de requêtes'),
(55, 12, 'B2.3.2', 'Développement de fonctionnalités applicatives au sein d\'un SGBD'),
(56, 12, 'B2.3.3', 'Conception ou adaptation d\'une base de données'),
(57, 12, 'B2.3.4', 'Administration et déploiement d\'une base de données'),
(58, 13, 'C3.1.1', 'Recensement des traitements sur les données à caractère personnel au sein de l\'organisation'),
(59, 13, 'C3.1.2', 'Identification des risques liés à la collecte, au traitement, au stockage et à la diffusion des données à caractère personne'),
(60, 13, 'C3.1.3', 'Application de la réglementation en matière de collecte, de traitement et de conservation des données à caractère personnel'),
(61, 13, 'C3.1.4', 'Sensibilisation des utilisateurs à la protection des données à caractère personnel '),
(62, 14, 'C3.2.1', 'Protection de l\'identité numérique d\'une organisation'),
(63, 14, 'C3.2.2', 'Déploiement de moyens appropriés de preuve électronique'),
(64, 15, 'C3.3.1', 'Information des utilisateurs sur les risques associés à l\'utilisation d\'une ressource numérique et promotion des bons usages à adopter'),
(65, 15, 'C3.3.2', 'Identification des menaces et mise en œuvre des défenses appropriées'),
(66, 15, 'C3.3.3', 'Gestion des accès et des privilèges appropriés'),
(67, 15, 'C3.3.4', 'Vérification de l\'efficacité de la protection'),
(68, 16, 'C3.4.1', 'Caractérisation des risques liés à l\'utilisation malveillante d\'un service informatique'),
(69, 16, 'C3.4.2', 'Recensement des conséquences d\'une perte de disponibilité, d\'intégrité ou de confidentialité'),
(70, 16, 'C3.4.3', 'Identification des obligations légales qui s\'imposent en matière d\'archivage et de protection des données de l\'organisation'),
(71, 16, 'C3.4.4', 'Organisation de la collecte et de la conservation de la preuve électronique'),
(72, 16, 'C3.4.5', 'Application des procédures garantissant le respect des obligations légales'),
(73, 17, 'C3.5.1', 'Vérification des éléments contribuant à la sûreté d\'une infrastructure informatique'),
(74, 17, 'C3.5.2', 'Prise en compte de la sécurité dans un projet de mise en œuvre d\'une solution dinfrastructure'),
(75, 17, 'C3.5.3', 'Mise en œuvre et vérification de la conformité d\'une infrastructure à un référentiel, une norme ou un standard participant à la sécurité'),
(76, 17, 'C3.5.4', 'Prévention des attaques'),
(77, 17, 'C3.5.5', 'Détection des actions malveillantes'),
(78, 17, 'C3.5.6', 'Analyse d\'incidents de sécurité, proposition et mise en œuvrede contre-mesures'),
(79, 18, 'B3.5.1', 'Vérification des éléments contribuant à la qualité d\'un développement informatique'),
(80, 18, 'B3.5.2', 'Prise en compte de la sécurité dans un projet de développement d\'une solution applicative'),
(81, 18, 'B3.5.3', 'Mise en œuvre et vérification de la conformité d\'une solution applicative et de son développement à un référentiel, une norme ou un standard de sécurité'),
(82, 18, 'B3.5.4', 'Prévention des attaques'),
(83, 18, 'B3.5.5', 'Analyse des connexions (logs)'),
(84, 18, 'B3.5.6', 'Analyse d\'incidents de sécurité, proposition et mise en œuvre de contre-mesures');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201119145228', '2020-11-19 14:52:35', 16110),
('DoctrineMigrations\\Version20201119153741', '2020-11-19 15:37:55', 3060),
('DoctrineMigrations\\Version20201126085646', '2020-11-26 08:56:52', 1737),
('DoctrineMigrations\\Version20201126092409', '2020-11-26 09:32:58', 191),
('DoctrineMigrations\\Version20201126093352', '2020-11-26 09:34:06', 1346);

-- --------------------------------------------------------

--
-- Structure de la table `domaine_taches`
--

DROP TABLE IF EXISTS `domaine_taches`;
CREATE TABLE IF NOT EXISTS `domaine_taches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options_id` int(11) DEFAULT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_341B7CB63ADB05F1` (`options_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `domaine_taches`
--

INSERT INTO `domaine_taches` (`id`, `options_id`, `libelle`) VALUES
(1, 1, 'Administration'),
(2, 3, 'Analyse du besoin'),
(3, 3, 'Auto-formation, suivre une formation'),
(4, 3, 'Automatisation de t&acirc;che'),
(5, 2, 'Base de données'),
(6, 1, 'Configuration'),
(7, 3, 'Déploiement'),
(8, 2, 'Développement'),
(9, 3, 'Documentation'),
(10, 3, 'Exploitation'),
(11, 3, 'Formation utilisateurs'),
(12, 1, 'Gestion de parc'),
(13, 3, 'Gestion de projet'),
(14, 3, 'Help-Desk / Support'),
(15, 1, 'Installation'),
(16, 2, 'Interface'),
(17, 1, 'Inventaire'),
(18, 3, 'Mise au point'),
(19, 1, 'Matériel'),
(20, 1, 'Migration'),
(21, 1, 'Maintenance'),
(22, 2, 'Modélisation'),
(23, 3, 'Observation'),
(24, 3, 'Planification '),
(25, 3, 'Recherche d\'informations'),
(26, 3, 'Réunion, concertation, conférence'),
(27, 3, 'Sauvegarde, restauration'),
(28, 1, 'Sécurisation'),
(29, 3, 'Tests, démarche de tests'),
(30, 3, 'Gestion des utilisateurs'),
(31, 3, 'Validation');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niveau` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_81A72FA1F46CD258` (`matiere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `mail`, `niveau`, `statut`, `matiere_id`) VALUES
(1, 'admin', '', 'btsinfo.rostand@laposte.net', '0', 'valide', NULL),
(2, 'MAILHE', 'Patrick', 'patrick.mailhe@ac-caen.fr', '1', 'valide', 1),
(3, 'ANNOUCHE', 'Zakina', 'zakina.cauvin@ac-caen.fr', '1', 'valide', 1),
(4, 'GUERINET', 'Serge', 'serge.guerinet@ac-caen.fr', '1', 'valide', 1),
(6, 'VIGOT', 'Anne-Marie', 'anne-marie.vigot@ac-caen.fr', '1', 'valide', 1),
(7, 'NGO', 'Paul', 'chevalier-paul.ngo@ac-caen.fr', '1', 'valide', 1),
(8, 'prof', 'prof', 'prof@prof.fr', '1', 'archive', NULL),
(38, 'DUPONT', 'Thomas', 'thomas.dupont@ac-caen.fr', '1', 'valide', 2),
(39, 'CATROS', 'Anne', 'anne.catros@ac-caen.fr', '1', 'valide', 3),
(44, 'GAUMER', 'Jérôme', 'jerome.gaumer@ac-caen.fr', '1', 'valide', 5),
(45, 'LERICHE', 'Mireille', 'mireille.leriche@ac-caen.fr', '1', 'valide', NULL),
(46, 'PAGESY', 'Margaret', 'margaret.pagesy@ac-caen.fr', '1', 'valide', 4),
(47, 'YOUF', 'Dominique', 'dominique.youf@ac-caen.fr', '1', 'valide', 5),
(50, 'juryslam2019', 'e6', 'juryslam2019@inforostand14.net', '1', 'archive', NULL),
(51, 'BLIMER', 'Marie', 'marie.blimer@ac-caen.fr', '1', 'valide', NULL),
(52, 'TIRARD', 'Corinne', 'corinne.tirard@ac-caen.fr', '1', 'valide', 6),
(54, 'jurysisr2019', 'jury', 'jurysisr2019@inforostand14.net', '1', 'archive', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ens_promo`
--

DROP TABLE IF EXISTS `ens_promo`;
CREATE TABLE IF NOT EXISTS `ens_promo` (
  `ens_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  KEY `enseignant_promo` (`ens_id`),
  KEY `promo_enseignant` (`promo_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datenaiss` date NOT NULL,
  `sexe` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adrperso` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copos` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_717E22E3139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `promotion_id`, `nom`, `prenom`, `mail`, `mobile`, `photo`, `datenaiss`, `sexe`, `adrperso`, `ville`, `copos`, `statut`) VALUES
(1, 3, 'COUDRAY', 'Mathilde', 'COUDRAY.Mathilde@lycee.fr', '678985632', NULL, '1997-03-02', 'F', 'adrPerso', NULL, NULL, 'archive'),
(2, 3, 'CYPRE', 'Patrice', 'CYPRE.Patrice@lycee.fr', '678985633', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(3, 3, 'GROULT', 'Thomas', 'GROULT.Thomas@lycee.fr', '678985634', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(4, 3, 'Ardillon', 'Aurelien', 'Ardillon.Aurelien@lycee.fr', '678985635', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(5, 3, 'BIGEON', 'Bryan', 'BIGEON.Bryan@lycee.fr', '678985636', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(6, 3, 'BOYD', 'Alan', 'BOYD.Alan@lycee.fr', '678985637', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(7, 3, 'CATHERINE-MEZERAY', 'Alexandre', 'CATHERINE-MEZERAY.Alexandre@lycee.fr', '678985638', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(8, 3, 'CORNILLAC', 'Nicolas', 'CORNILLAC.Nicolas@lycee.fr', '678985639', NULL, '1999-06-16', 'H', 'adrPerso', NULL, NULL, 'archive'),
(9, 3, 'DOUCHIN', 'sebastien', 'DOUCHIN.sebastien@lycee.fr', '678985640', NULL, '1999-06-17', 'H', 'adrPerso', NULL, NULL, 'archive'),
(10, 3, 'GAUTIER', 'Adrien', 'GAUTIER.Adrien@lycee.fr', '678985641', NULL, '1999-06-18', 'H', 'adrPerso', NULL, NULL, 'archive'),
(11, 3, 'GODHEUX', 'jeremie', 'GODHEUX.jeremie@lycee.fr', '678985642', NULL, '1999-06-19', 'H', 'adrPerso', NULL, NULL, 'archive'),
(12, 3, 'GUILBERT', 'Axel', 'GUILBERT.Axel@lycee.fr', '678985643', NULL, '1999-06-20', 'H', 'adrPerso', NULL, NULL, 'archive'),
(13, 3, 'HAMEL', 'Cyrille', 'HAMEL.Cyrille@lycee.fr', '678985644', NULL, '1999-06-21', 'H', 'adrPerso', NULL, NULL, 'archive'),
(14, 3, 'HAREL', 'Hugo', 'HAREL.Hugo@lycee.fr', '678985645', NULL, '1999-06-22', 'H', 'adrPerso', NULL, NULL, 'archive'),
(15, 3, 'HIREL', 'Mathieu', 'HIREL.Mathieu@lycee.fr', '678985646', NULL, '1999-06-23', 'H', 'adrPerso', NULL, NULL, 'archive'),
(16, 3, 'JOURDAN', 'Melveen', 'JOURDAN.Melveen@lycee.fr', '678985647', NULL, '1999-06-24', 'H', 'adrPerso', NULL, NULL, 'archive'),
(17, 3, 'KOZAK', 'Dimitri', 'KOZAK.Dimitri@lycee.fr', '678985648', NULL, '1999-06-25', 'H', 'adrPerso', NULL, NULL, 'archive'),
(18, 3, 'LE MARCHAND', 'Marvin', 'LE MARCHAND.Marvin@lycee.fr', '678985649', NULL, '1999-06-26', 'H', 'adrPerso', NULL, NULL, 'archive'),
(19, 3, 'LEBATARD', 'Julien', 'LEBATARD.Julien@lycee.fr', '678985650', NULL, '1999-06-27', 'H', 'adrPerso', NULL, NULL, 'archive'),
(20, 3, 'LEMELLETIER', 'Simon', 'LEMELLETIER.Simon@lycee.fr', '678985651', NULL, '1999-06-28', 'H', 'adrPerso', NULL, NULL, 'archive'),
(21, 3, 'MEROUZE', 'frederic', 'MEROUZE.frederic@lycee.fr', '678985652', NULL, '1999-06-29', 'H', 'adrPerso', NULL, NULL, 'archive'),
(22, 3, 'MORNIER', 'sebastien', 'MORNIER.sebastien@lycee.fr', '678985653', NULL, '1999-06-30', 'H', 'adrPerso', NULL, NULL, 'archive'),
(23, 3, 'PINEAU', 'aurelien', 'PINEAU.aurelien@lycee.fr', '678985654', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(24, 3, 'POUPARD', 'Yoann', 'POUPARD.Yoann@lycee.fr', '678985655', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(25, 3, 'RICHE', 'jeremy', 'RICHE.jeremy@lycee.fr', '678985656', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(26, 3, 'RIMBAULT', 'Sullivan', 'RIMBAULT.Sullivan@lycee.fr', '678985657', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(27, 3, 'TANNER', 'Adrien', 'TANNER.Adrien@lycee.fr', '678985658', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(28, 3, 'TSIFANAVI', 'Moukimou', 'TSIFANAVI.Moukimou@lycee.fr', '678985659', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(29, 3, 'VANHEDDEGEM', 'Nicolas', 'VANHEDDEGEM.Nicolas@lycee.fr', '678985660', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(30, 3, 'VAUTTIER', 'Mathilde', 'VAUTTIER.Mathilde@lycee.fr', '678985661', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(31, 3, 'YOUSOUF', 'idrakben', 'YOUSOUF.idrakben@lycee.fr', '678985662', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(32, 3, 'sio2', 'sio2', 'sio2.sio2@lycee.fr', '678985663', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(33, 3, 'etudsio', 'sio', 'etudsio.sio@lycee.fr', '678985664', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(34, 3, 'etudsio2017', 'etud', 'etudsio2017.etud@lycee.fr', '678985665', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(35, 3, 'carbord', 'netde', 'carbord.netde@lycee.fr', '678985666', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(36, 3, 'sio2018', 'a', 'sio2018.a@lycee.fr', '678985667', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(37, 3, 'ASSEMAT-LE-BRETON', 'Auriane', 'ASSEMAT-LE-BRETON.Auriane@lycee.fr', '678985668', NULL, '1996-07-08', 'F', 'adrPerso', NULL, NULL, 'archive'),
(38, 3, 'BLANCHET', 'Valentin', 'BLANCHET.Valentin@lycee.fr', '678985669', NULL, '1999-06-26', 'H', 'adrPerso', NULL, NULL, 'archive'),
(39, 3, 'BONNESOEUR', 'Benjamin', 'BONNESOEUR.Benjamin@lycee.fr', '678985670', NULL, '1999-06-27', 'H', 'adrPerso', NULL, NULL, 'archive'),
(40, 3, 'BOSSIN', 'Maxence', 'BOSSIN.Maxence@lycee.fr', '678985671', NULL, '1999-06-28', 'H', 'adrPerso', NULL, NULL, 'archive'),
(41, 3, 'BOTTON', 'L&eacute', 'a', '678985672', NULL, '1999-06-29', 'H', '', NULL, NULL, 'archive'),
(42, 3, 'BRIAND', 'Gwendal', 'BRIAND.Gwendal@lycee.fr', '678985673', NULL, '1999-06-30', 'H', '', NULL, NULL, 'archive'),
(43, 3, 'CAILLAUD', 'Erwin', 'CAILLAUD.Erwin@lycee.fr', '678985674', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(44, 3, 'COLLET', 'Paul', 'COLLET.Paul@lycee.fr', '678985675', NULL, '1997-03-03', 'H', '', NULL, NULL, 'archive'),
(45, 3, 'HOUSSAYE', 'Dorian', 'HOUSSAYE.Dorian@lycee.fr', '678985676', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(46, 3, 'JACQUES', 'Florian', 'JACQUES.Florian@lycee.fr', '678985677', NULL, '1997-03-02', 'H', '', NULL, NULL, 'archive'),
(47, 3, 'JORE', 'L&eacute', 'o', '678985678', NULL, '1997-03-03', 'H', '', NULL, NULL, 'archive'),
(48, 3, 'JOUBERT', 'Thibaut', 'JOUBERT.Thibaut@lycee.fr', '678985679', NULL, '1998-04-01', 'H', 'adrPerso', NULL, NULL, 'archive'),
(49, 3, 'LECAPITAINE', 'Quentin', 'LECAPITAINE.Quentin@lycee.fr', '678985680', NULL, '1998-04-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(50, 3, 'LECONTE', 'Brian', 'LECONTE.Brian@lycee.fr', '678985681', NULL, '1998-04-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(51, 3, 'LEMERRE', 'Corentin', 'LEMERRE.Corentin@lycee.fr', '678985682', NULL, '1998-04-04', 'H', 'adrPerso', NULL, NULL, 'archive'),
(52, 3, 'LENEVEU', 'Thibaut', 'LENEVEU.Thibaut@lycee.fr', '678985683', NULL, '1998-04-05', 'H', 'adrPerso', NULL, NULL, 'archive'),
(53, 3, 'LOUET', 'Simon', 'LOUET.Simon@lycee.fr', '678985684', NULL, '1998-04-06', 'H', 'adrPerso', NULL, NULL, 'archive'),
(54, 3, 'LUONG', 'Minh Ki&ecirc', 'u', '678985685', NULL, '1998-04-07', 'H', '', NULL, NULL, 'archive'),
(55, 3, 'MAILLARD', 'Nicolas', 'MAILLARD.Nicolas@lycee.fr', '678985686', NULL, '1998-04-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(56, 3, 'MARTIN', 'Justine', 'MARTIN.Justine@lycee.fr', '678985687', NULL, '1998-04-09', 'F', 'adrPerso', NULL, NULL, 'archive'),
(57, 3, 'MERCIER', 'L&eacute', 'o', '678985688', NULL, '1998-04-10', 'H', 'adrPerso', NULL, NULL, 'archive'),
(58, 3, 'PAGEOT', 'Corentin', 'PAGEOT.Corentin@lycee.fr', '678985689', NULL, '1998-04-11', 'H', 'adrPerso', NULL, NULL, 'archive'),
(59, 3, 'PLOCINICZAK', 'Nicolas', 'PLOCINICZAK.Nicolas@lycee.fr', '678985690', NULL, '1998-04-12', 'H', 'adrPerso', NULL, NULL, 'archive'),
(60, 3, 'RAPILLY', 'Nils', 'RAPILLY.Nils@lycee.fr', '678985691', NULL, '1998-04-13', 'H', 'adrPerso', NULL, NULL, 'archive'),
(61, 3, 'SAVELLI', 'Baptiste', 'SAVELLI.Baptiste@lycee.fr', '678985692', NULL, '1998-04-14', 'H', 'adrPerso', NULL, NULL, 'archive'),
(62, 3, 'VINCENT', 'Corentin', 'VINCENT.Corentin@lycee.fr', '678985693', NULL, '1998-04-15', 'H', 'adrPerso', NULL, NULL, 'archive'),
(63, 3, 'ZBORA', 'Paul-Antoine', 'ZBORA.Paul-Antoine@lycee.fr', '678985694', NULL, '1998-04-16', 'H', '', NULL, NULL, 'archive'),
(64, 3, 'sio1', '2018', 'sio1.2018@lycee.fr', '678985695', NULL, '1998-04-17', 'H', 'adrPerso', NULL, NULL, 'archive'),
(65, 3, 'LOUIS', 'Mathis', 'LOUIS.Mathis@lycee.fr', '678985696', NULL, '1998-04-18', 'H', 'adrPerso', NULL, NULL, 'archive'),
(66, 3, 'ADAM', 'Ronan', 'ADAM.Ronan@lycee.fr', '678985697', NULL, '1998-04-19', 'H', 'adrPerso', NULL, NULL, 'archive'),
(67, 3, 'ANGOT', 'William', 'ANGOT.William@lycee.fr', '678985698', NULL, '1998-04-20', 'H', 'adrPerso', NULL, NULL, 'archive'),
(68, 3, 'ATEMANI', 'Younes', 'ATEMANI.Younes@lycee.fr', '678985699', NULL, '1998-04-21', 'H', 'adrPerso', NULL, NULL, 'archive'),
(69, 3, 'AUBERT', 'Corentin', 'AUBERT.Corentin@lycee.fr', '678985700', NULL, '1998-04-22', 'H', 'seau', NULL, NULL, 'archive'),
(70, 3, 'AUBRIS', 'Tom', 'AUBRIS.Tom@lycee.fr', '678985701', NULL, '1998-04-23', 'H', 'adrPerso', NULL, NULL, 'archive'),
(71, 1, 'BOISSONADE', 'Eric', 'BOISSONADE.Eric@lycee.fr', '678985702', NULL, '1998-04-24', 'H', 'adrPerso', NULL, NULL, 'archive'),
(72, 3, 'BRIONNE', 'Axel', 'BRIONNE.Axel@lycee.fr', '678985703', NULL, '1998-04-25', 'H', 'adrPerso', NULL, NULL, 'archive'),
(73, 3, 'CAPDEPON', 'Lucas', 'CAPDEPON.Lucas@lycee.fr', '678985704', NULL, '1998-04-26', 'H', 'adrPerso', NULL, NULL, 'archive'),
(74, 3, 'CAUCHARD', 'Th&eacute', 'o', '678985705', NULL, '1998-04-27', 'H', 'adrPerso', NULL, NULL, 'archive'),
(75, 3, 'CHOPLIN', 'Charly', 'CHOPLIN.Charly@lycee.fr', '678985706', NULL, '1998-04-28', 'H', 'adrPerso', NULL, NULL, 'archive'),
(76, 3, 'DELAIGUE', 'Briac', 'DELAIGUE.Briac@lycee.fr', '678985707', NULL, '1998-04-29', 'H', 'adrPerso', NULL, NULL, 'archive'),
(77, 3, 'ELLEAUME', 'Thibault', 'ELLEAUME.Thibault@lycee.fr', '678985708', NULL, '1998-04-30', 'H', 'adrPerso', NULL, NULL, 'archive'),
(78, 3, 'GEGOUT', 'Theo', 'GEGOUT.Theo@lycee.fr', '678985709', NULL, '1999-06-26', 'H', 'adrPerso', NULL, NULL, 'archive'),
(79, 3, 'GROULT', 'Killian', 'GROULT.Killian@lycee.fr', '678985710', NULL, '1999-06-27', 'H', 'adrPerso', NULL, NULL, 'archive'),
(80, 3, 'LALIN', 'Quentin', 'LALIN.Quentin@lycee.fr', '678985711', NULL, '1999-06-28', 'H', 'adrPerso', NULL, NULL, 'archive'),
(81, 3, 'LANDES', 'Alexandre', 'LANDES.Alexandre@lycee.fr', '678985712', NULL, '1999-06-29', 'H', 'adrPerso', NULL, NULL, 'archive'),
(82, 3, 'LARVOR', 'Bastien', 'LARVOR.Bastien@lycee.fr', '678985713', NULL, '1999-06-30', 'H', 'adrPerso', NULL, NULL, 'archive'),
(83, 3, 'LECONTE', 'Thomas', 'LECONTE.Thomas@lycee.fr', '678985714', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(84, 3, 'LEROUX', 'Alexis', 'LEROUX.Alexis@lycee.fr', '678985715', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(85, 3, 'LEVANNIER', 'Tanguy', 'LEVANNIER.Tanguy@lycee.fr', '678985716', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(86, 3, 'LEVINAIS', 'Yoann', 'LEVINAIS.Yoann@lycee.fr', '678985717', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(87, 3, 'METZ', 'Julien', 'METZ.Julien@lycee.fr', '678985718', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(88, 3, 'OSMONT', 'Valentine', 'OSMONT.Valentine@lycee.fr', '678985719', NULL, '1996-07-08', 'F', 'adrPerso', NULL, NULL, 'archive'),
(89, 3, 'PERRIER', 'Hugues', 'PERRIER.Hugues@lycee.fr', '678985720', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(90, 3, 'PICOT', 'Baptiste', 'PICOT.Baptiste@lycee.fr', '678985721', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(91, 3, 'PIOLINE', 'Sarah', 'PIOLINE.Sarah@lycee.fr', '678985722', NULL, '1996-07-08', 'F', 'adrPerso', NULL, NULL, 'archive'),
(92, 3, 'REUX', 'Antoine', 'REUX.Antoine@lycee.fr', '678985723', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(93, 3, 'RIVALLANT', 'Stanislas', 'RIVALLANT.Stanislas@lycee.fr', '678985724', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'archive'),
(94, 3, 'RIVIERE', 'Nolwenn', 'RIVIERE.Nolwenn@lycee.fr', '678985725', NULL, '1996-07-08', 'F', 'adrPerso', NULL, NULL, 'archive'),
(95, 3, 'SAMSON', 'Theo', 'SAMSON.Theo@lycee.fr', '678985726', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'archive'),
(96, 3, 'SZELEMEY', 'Chloe', 'SZELEMEY.Chloe@lycee.fr', '678985727', NULL, '1997-03-03', 'F', 'adrPerso', NULL, NULL, 'archive'),
(97, 3, 'TORRENS', 'William', 'TORRENS.William@lycee.fr', '678985728', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'archive'),
(98, 3, 'TRANCHANT', 'Jessy', 'TRANCHANT.Jessy@lycee.fr', '678985729', NULL, '1999-06-26', 'H', 'adrPerso', NULL, NULL, 'archive'),
(99, 1, 'ADALA', 'Yanis', 'ADALA.Yanis@lycee.fr', '678985730', NULL, '1999-06-27', 'H', 'adrPerso', NULL, NULL, 'valide'),
(100, 1, 'AUBRIS', 'Leo', 'AUBRIS.Leo@lycee.fr', '678985731', NULL, '1999-06-28', 'H', 'adrPerso', NULL, NULL, 'valide'),
(101, 1, 'BEAUFILS', 'Vincent', 'BEAUFILS.Vincent@lycee.fr', '678985732', NULL, '1999-06-29', 'H', 'adrPerso', NULL, NULL, 'valide'),
(102, 1, 'BIGOT', 'Valentin', 'BIGOT.Valentin@lycee.fr', '678985733', NULL, '1999-06-30', 'H', 'adrPerso', NULL, NULL, 'valide'),
(103, 1, 'BREBION', 'Thibault', 'BREBION.Thibault@lycee.fr', '678985734', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(104, 1, 'CANET', 'Hugo', 'CANET.Hugo@lycee.fr', '678985735', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(105, 1, 'CATHERINE', 'Jules', 'CATHERINE.Jules@lycee.fr', '678985736', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(106, 1, 'CHAUVIN', 'Tom', 'CHAUVIN.Tom@lycee.fr', '678985737', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(107, 1, 'CHERUEL', 'Quentin', 'CHERUEL.Quentin@lycee.fr', '678985738', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(108, 1, 'CRESTE', 'Jerome', 'CRESTE.Jerome@lycee.fr', '678985739', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(109, 1, 'CLEMENT', 'Hugo', 'CLEMENT.Hugo@lycee.fr', '678985740', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(110, 1, 'DAUTHUILLE', 'Clement', 'DAUTHUILLE.Clement@lycee.fr', '678985741', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(111, 1, 'DUBOSQ', 'Noe', 'DUBOSQ.Noe@lycee.fr', '678985742', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(112, 1, 'DUPREZ', 'Valentine', 'DUPREZ.Valentine@lycee.fr', '678985743', NULL, '1997-03-02', 'F', 'adrPerso', NULL, NULL, 'valide'),
(113, 1, 'GREGOIRE', 'Paul', 'GREGOIRE.Paul@lycee.fr', '678985744', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(114, 1, 'GROULT', 'Clement', 'GROULT.Clement@lycee.fr', '678985745', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(115, 1, 'HOHN', 'Benjamin', 'HOHN.Benjamin@lycee.fr', '678985746', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(116, 1, 'KOCHERGIN', 'Nikita', 'KOCHERGIN.Nikita@lycee.fr', '678985747', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(117, 1, 'LEGEARD', 'Hugo', 'LEGEARD.Hugo@lycee.fr', '678985748', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(118, 1, 'MANGION', 'Pablo', 'MANGION.Pablo@lycee.fr', '678985749', NULL, '1999-06-26', 'H', 'adrPerso', NULL, NULL, 'valide'),
(119, 1, 'MOREL', 'Alexis', 'MOREL.Alexis@lycee.fr', '678985750', NULL, '1999-06-27', 'H', 'adrPerso', NULL, NULL, 'valide'),
(120, 1, 'MUTHS', 'Melvyn', 'MUTHS.Melvyn@lycee.fr', '678985751', NULL, '1999-06-28', 'H', 'adrPerso', NULL, NULL, 'valide'),
(121, 1, 'NOEL', 'Alois', 'NOEL.Alois@lycee.fr', '678985752', NULL, '1999-06-29', 'H', 'adrPerso', NULL, NULL, 'valide'),
(122, 1, 'NOEL', 'Clara', 'NOEL.Clara@lycee.fr', '678985753', NULL, '1999-06-30', 'F', 'adrPerso', NULL, NULL, 'valide'),
(123, 1, 'PEPIN', 'Valentin', 'PEPIN.Valentin@lycee.fr', '678985754', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(124, 1, 'PICOT', 'Theo', 'PICOT.Theo@lycee.fr', '678985755', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(125, 1, 'PICOT', 'Noam', 'PICOT.Noam@lycee.fr', '678985756', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(126, 1, 'PROVOST', 'Romain', 'PROVOST.Romain@lycee.fr', '678985757', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(127, 1, 'RAMETTE', 'Erwan', 'RAMETTE.Erwan@lycee.fr', '678985758', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide'),
(128, 1, 'SANTOIAN', 'Serghei', 'SANTOIAN.Serghei@lycee.fr', '678985759', NULL, '1996-07-08', 'H', 'adrPerso', NULL, NULL, 'valide'),
(129, 1, 'TOURNON', 'Nicolas', 'TOURNON.Nicolas@lycee.fr', '678985760', NULL, '1997-03-02', 'H', 'adrPerso', NULL, NULL, 'valide'),
(130, 1, 'UCAR', 'Ismail', 'UCAR.Ismail@lycee.fr', '678985761', NULL, '1997-03-03', 'H', 'adrPerso', NULL, NULL, 'valide');

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

DROP TABLE IF EXISTS `jour`;
CREATE TABLE IF NOT EXISTS `jour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jour`
--

INSERT INTO `jour` (`id`, `code`, `libelle`) VALUES
(1, 'Lu', 'Lundi'),
(2, 'Ma', 'Mardi'),
(3, 'Me', 'Mercredi'),
(4, 'Je', 'Jeudi'),
(5, 'Ve', 'Vendredi'),
(6, 'Sa', 'Samedi');

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
CREATE TABLE IF NOT EXISTS `localisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`id`, `libelle`) VALUES
(1, 'Centre de formation'),
(2, 'Organisation');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `code`, `libelle`) VALUES
(1, 'MTI', 'Méthodes et techniques informatiques'),
(2, 'AEMJ', 'Analyse économique, managériale et juridique'),
(3, 'JUR', 'Juridique'),
(4, 'ANG', 'Anglais'),
(5, 'MAT', 'Mathématiques'),
(6, 'EFR', 'Culture Générale et expression');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id`, `libelle`) VALUES
(1, 'Observé'),
(2, 'Mis en oeuvre'),
(3, 'Pratiqué'),
(4, 'Maîtrisé'),
(5, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `optioni`
--

DROP TABLE IF EXISTS `optioni`;
CREATE TABLE IF NOT EXISTS `optioni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sigle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `optioni`
--

INSERT INTO `optioni` (`id`, `sigle`, `libelle`) VALUES
(1, 'SLAM', 'Solutions Logicielles et Applications Métier'),
(2, 'SISR', 'Solutions d’infrastructure, systèmes et réseaux'),
(3, '***', 'Indifférencié');

-- --------------------------------------------------------

--
-- Structure de la table `pointage`
--

DROP TABLE IF EXISTS `pointage`;
CREATE TABLE IF NOT EXISTS `pointage` (
  `id` int(11) NOT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `semaine_id` int(11) DEFAULT NULL,
  `datepoint` date DEFAULT NULL,
  `heurepoint` time DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_point_stage` (`stage_id`),
  KEY `FK_point_semaine` (`semaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pointage`
--

INSERT INTO `pointage` (`id`, `stage_id`, `semaine_id`, `datepoint`, `heurepoint`, `ip`) VALUES
(1, 119, 21, '2019-05-17', '06:03:48', '172.27.2.202'),
(2, 112, 20, '2019-05-18', '06:04:58', '172.27.0.241'),
(3, 105, 20, '2019-05-17', '07:31:35', '172.27.0.224'),
(4, 105, 20, '2019-05-16', '07:32:12', '172.27.0.224');

-- --------------------------------------------------------

--
-- Structure de la table `production`
--

DROP TABLE IF EXISTS `production`;
CREATE TABLE IF NOT EXISTS `production` (
  `id` int(11) NOT NULL,
  `rp_id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_prod_rp` (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `production`
--

INSERT INTO `production` (`id`, `rp_id`, `designation`, `url`) VALUES
(1, 1, 'amn DHCP', '/PARTAGE_SIO1/ETUDIANTS/CYPRE_patrice/SISR2'),
(2, 1, 'COURTEILLE_CYPRE_02', '/PARTAGE_SIO1/ETUDIANTS/CYPRE_patrice/SI5'),
(3, 255, 'test.doc', '/PARTAGE_SIO1/ETUDIANTS/CYPRE_patrice/SI5'),
(4, 256, 'Projet-AMN.pdf', '/PARTAGE_SIO1/ETUDIANTS/CYPRE_patrice/SI5'),
(5, 258, 'decision', 'sur le NAS'),
(6, 261, 'Site de netvibes.com afin d\'&eacute;ffectuer la veille t&eacute;chnologique', 'http://www.netvibes.com/fr'),
(7, 265, 'Utilisation d\'un outil de veille pour faire de la veille .', 'www.netvibes.com/fr '),
(8, 345, 'Diffusé des articles pertinant en rapport à la veille éffectuer.', 'www.pearltrees.com'),
(9, 347, '[TP SISR] mise en place de l\'interconnection dans un reseau', '/PARTAGE_SIO2/ETUDIANTS/JOURDAN_Melveen/Porte_feuille'),
(10, 597, 'compte rendu du projet', '/PARTAGE_SIO1/MATIERES/PPE/DEPOT/PPE_RESEAU/YOUSSOUF_KOZAK_POUPARD_VH'),
(11, 597, 'Compte rendu du TP SISR VOYASIO', '/PARTAGE_SIO1/ETUDIANTS/GROULT_Thomas/PorteFeuille'),
(12, 598, 'S\'organiser pour une réunion. Récapituler le contenue d\'une réunion.', 'https://docs.google.com/document/d/1Bt6y1sROozx7aJPeOSrC3xtdaBZYqkmxCSrml5KAAC0/edit?usp=sharing'),
(13, 599, '[PPE]GROULT_JOURDAN_MEROUZE_LE_MARCHAND', '/PARTAGE_SIO2/ETUDIANTS/JOURDAN_Melveen/Porte_feuille/'),
(14, 605, '/PARTAGE_SIO1/ETUDIANTS/MORNIER_S&eacute;bastien/www/wordpress', ''),
(15, 605, 'NAS/ETUDIANTS/RIMBAULT_Sullivan/PPE_GPO.odt', ''),
(16, 2, 'Le serveur DHCP', 'http://www.mediafire.com/file/icrx9am87zgr3t4/image-%C3%A9cran-Packet.png'),
(17, 2, 'document PPE configuration manuelle switchs et routeur', 'http://www.mediafire.com/file/03980vwk2w5znj8/CONFIGURATION_SWITCHS_JANVIER_2017.docx'),
(18, 1, 'Fiche technique avec les diff&eacute;rentes commandes', 'nas/partag_sio1/etudiants/Lemelletier_Simon/Porte-feuille/Configuration d\'un routeur/SISR2-10-TD1 commandes pour routeurs'),
(19, 683, 'Plan Packet Tracer', 'nas/partag_sio1/etudiants/Lemelletier_Simon/Porte-feuille/Configuration d\'un routeur/configuration routage cisco packet tacer'),
(20, 660, 'compte rendu', 'PARTAGE_SIO1/ETUDIANTS/KOZAK_Dimitri/SISR2/productioncisco'),
(21, 731, 'Infrastructure r&eacute;seau faite sur packet tracer', 'https://docs.google.com/document/d/18RiQ0vngfQ-_zfvqVeMUbG0LspCshGRaS1xWKmVz2XY/edit?usp=sharing'),
(22, 751, 'compte rendu sisr2 10 TD1.odt', 'PARTAGE_SIO1/ETUDIANTS/VAUTTIER_Mathilde/SISR2');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_i_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpromo_opt` (`option_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `nom`, `option_i_id`) VALUES
(1, 'SIO_2019-2021', 3),
(2, 'SIO_2020-2022', 3),
(3, 'ANCIEN_ETU', 3),
(4, 'SIOSLAM_2019-2021', 1),
(5, 'SIOSISR_2019-2021', 2);

-- --------------------------------------------------------

--
-- Structure de la table `rp`
--

DROP TABLE IF EXISTS `rp`;
CREATE TABLE IF NOT EXISTS `rp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localisation_id` int(11) DEFAULT NULL,
  `statut_id` int(11) DEFAULT NULL,
  `source_id` int(11) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `enseignant_id` int(11) DEFAULT NULL,
  `libcourt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contexte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `environnement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moyen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  `cadre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD578B7C68BE09C` (`localisation_id`),
  KEY `IDX_CD578B7F6203804` (`statut_id`),
  KEY `IDX_CD578B7953C1C61` (`source_id`),
  KEY `IDX_CD578B7DDEAB1A3` (`etudiant_id`),
  KEY `IDX_CD578B7E455FCC0` (`enseignant_id`),
  KEY `IDX_CD578B79308DA90` (`cadre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rp`
--

INSERT INTO `rp` (`id`, `localisation_id`, `statut_id`, `source_id`, `etudiant_id`, `enseignant_id`, `libcourt`, `descriptif`, `contexte`, `date_debut`, `date_fin`, `environnement`, `moyen`, `date_modif`, `cadre_id`) VALUES
(1, 2, 1, 3, 30, 3, '[PPE1]Situation Wifi  Toutissus', 'D&eacute;ploiement d\'une solution Wifi ', 'L\'entreprise Toutissus souhaite ouvrir un acc&egrave;s sans fil &agrave; ses utilisateurs', '2015-04-08', '2015-06-13', 'Borne Netgear, infrastructure ', 'Borne Wifi, comptes d\'acc&egrave;s aux &eacute;quipements', '2018-02-18', 1),
(2, 2, 1, 2, 30, 2, '[SI6]D&eacute;veloppement biblioth&egrave;que contr&ocirc;le ', '[SI4] D&eacute;veloppement d\'une biblioth&egrave;que Javascript utilisant les expressions r&eacute;guli&egrave;res et contr&ocirc;lant les saisies &quot;typ&eacute;es&quot; (dates, heures, adresses, l\'encodage, etc) ', 'Module SI4', '2014-10-13', '2014-10-23', 'Langage Javascript, &eacute;diteur Notepad++', 'Ressource sur les expressions r&eacute;guli&egrave;res, outil de test en ligne', '2017-03-26', 2),
(255, 2, 1, 3, 30, 3, '[PPE]Mise en oeuvre d\'une solution WI-FI', 'Mise en place d\'une borne WI-FI', 'Suite a l\'évolution de la société AMN, a fallut crée un serveur de sauvegarde pour la sécurité des données.  ', '2016-01-04', '2016-01-07', 'Borne linksys', 'Borne WI-FI', '2017-10-13', 1),
(256, 1, 1, 3, 56, 4, '[PPE1] Gestion politique d\'adressage', '&bull;	Calculs des r&eacute;seaux\n&bull;	Adressage dynamique\n&bull;	Optimisation des flux\n&bull;	Documentation des modifications\n&bull;	Sch&eacute;ma r&eacute;seau / Maquette', 'Soci&eacute;t&eacute; AMN.', '2015-12-10', '2015-12-17', 'Packet Tracer, sch&eacute;ma informatique existant.', '', '2017-05-01', 1),
(258, 1, 1, 3, 70, 6, '[PROJET] Creation d\'un site vivant', 'Le projet &eacute;tant de cr&eacute;e un site vivant ainsi que la base de donn&eacute;e avec un contexte expliqu&eacute;.\nCr&eacute;ation de l\'arborescence du site web back office et du web front office.', 'ONG LEFEVE', '2016-01-04', '2016-01-08', 'Windows 7\nNotepad++\nWAMP', 'En groupe avec l\'aide de l\'enseignant et internet', '2018-04-17', 1),
(261, 2, 1, 3, 57, 7, '[PPE1] Projet AMN', 'int&eacute;gration du nouveau service \nmise en oeuvre d\'un adressage dynamique\nmise en place d\'un script pour ajouter des utilisateurs\nmise en place du serveur DHCP', 'entreprise assurance AMN', '2016-01-04', '2016-01-07', 'pacquet tracer', 'windows server 2008 R2\ncahier des charges\nstation de travail', '2018-04-18', 1),
(265, 1, 2, 3, 56, 6, '[PPE1] Param&eacute;trage borne Wifi', 'Mise en place d\'une borne Wifi.', 'Suite &agrave; l\'evolution de la soci&eacute;t&eacute; AMN, cr&eacute;ation d\'un point d\'acc&egrave;s Wifi.', '2016-01-04', '2016-01-07', 'Borne linksys.', 'Borne wifi.', '2017-05-04', 1),
(345, 2, 2, 2, 57, 7, ' [PPE1] AMN DHCP', 'retranscription du r&eacute;seau AMN sur Packet Tracer avec configuration DHCP', 'AMN', '2016-01-28', '2016-02-04', 'packet Tracer', 'Station', '2018-04-18', 1),
(347, 2, 2, 2, 56, 6, '[V][TP] Installation d\'un MediaWiki sur serveur ', 'Nous avons install&eacute; un serveur M&eacute;diaWiki sur un serveur Linux avec les extensions suppl&eacute;mentaires (PHP, apache, MySQL,...) en ligne de commande. ', 'Installation d\'un MediaWiki sur serveur Linux pour un lyc&eacute;e pour l\'&eacute;change de documents entre professeurs/ &eacute;l&egrave;ves ', '2016-01-25', '2016-02-03', 'Linux debian 7.', 'Putty, Linus, filezilla.', '2017-05-03', 1),
(597, 1, 2, 1, 70, 7, '[STAGE1] Masterisation d\'un poste client', 'Afin de pr&eacute;parer un poste pour un client au sein de mon stage Capgemini, il faut emmener les machines &agrave; &quot;masteriser&quot; afin de les param&eacute;trer et les int&eacute;grer au r&eacute;seaux Areva', 'Demande du client au service poste de travail', '2016-05-17', '2016-06-17', 'PC portable Lenovo, PC fixe Lenovo, Station Lenovo,\nWindows 7 entreprise', 'Avec l\'&eacute;quipe informatique\nUtilisation d\'un KVM', '2018-04-17', 2),
(598, 2, 2, 3, 70, 3, '[PPE]Creation et gestion d un serveur Active Directory', 'Dans le cadre d\'un projet personnalis&eacute; encadr&eacute; nous avons cr&eacute;er et param&eacute;tr&eacute; un serveur DHCP int&eacute;grant la technologie Active Directory', 'En classe, par groupe de deux.\nPlusieurs s&eacute;ances de 4 heures.', '2016-01-07', '2016-01-21', 'Windows 7 pour le poste client, Windows Server pour le serveur.', 'Poste fixe pour le serveur et poste client pour le client.', '2018-04-20', 1),
(599, 2, 2, 2, 70, 3, '[V][SISR1] Prise de controle a distance d une STA', 'Ttrouver et test&eacute; des solutions de prise de contr&ocirc;le &agrave; distance de STA puis, rendre compte et comparer au moins trois solutions sur un document.', 'PPE par groupe de deux, s&eacute;ance de 4 heures.', '2016-05-31', '2016-05-31', 'Windows 7\nTeamViewer \nAnydesk\nVNC', 'Recherche sur le web', '2018-03-28', 1),
(605, 1, 2, 1, 70, 4, '[STAGE1] Utilisation d\'une application agree Entreprise', 'Utilisation d\'une application agr&eacute;e et certifier par l\'entreprise Capgemini, c\'est une script automatiser permettant de copier les donn&eacute;es d\'un profil utilisateur d\'un ancien poste &agrave; un nouveau.', 'Au sein des sites ou l\'utilisateur doit avoir recours &agrave; un changement de poste de travail.', '2016-05-17', '2016-06-17', 'Windows 7 entreprise.', 'Adaptateur SATA et alimentation pour disque dur interne vers port USB.', '2018-04-17', 2),
(611, 1, 3, 1, 70, 4, '[STAGE1] Remplacement d elements obsoletes', 'Gestion des remplacements des machines obsol&egrave;tes, toute les machines informatique de plus de 4 ans sont &agrave; remplacer.\nDe m&ecirc;me pour certain &eacute;quipement informatique comme les &eacute;crans HS ou une demande de remplacement d\'&amp;', 'Au sein du stage, d&eacute;placement sur plusieurs site travaillant avec Capgemini afin d\'effectuer des remplacement/renouvellement d\'&eacute;quipement pour le client', '2016-05-17', '2016-06-17', '&Eacute;quipement informatique de marque Lenovo\nWindows 7 entreprise', 'Logiciel de gestion Winparc ', '2018-03-28', 2),
(621, 1, 3, 1, 70, 4, '[STAGE1] Installation d outils', 'Installation de software et d\'&eacute;quipement informatique pour r&eacute;pondre &agrave; la demande du client.', 'Sur place ou sur le site ou ce trouve le client.', '2016-05-17', '2016-06-17', 'Windows 7 entreprise', 'Invit&eacute; de commande\nSource sur serveur', '2018-04-23', 2),
(660, 1, 3, 1, 57, 7, '[stage1] importation , exportation de base de donn&eacute;es', 'exporter une base de donn&eacute;es puis l\'importer vers un autre site en local', 'migration:toutes les donn&eacute;es sont import&eacute;es vers l\'autre site.', '2016-06-20', '2016-06-20', 'prestashop,phpmyadmin,wamp,mamp', 'stations', '2018-04-18', 2),
(683, 1, 3, 1, 56, 6, '[V][STAGE1] D&eacute;ploiement anti-virus', 'Installation et configuration de l\'anti-virus ESET sur les machines utilisateurs de l\'entreprise.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-05-17', '2016-05-17', 'antivirus ; ESET Install&eacute; ; panneau de configuration.', 'cl&eacute; usb avec ESET install&eacute; 32 et 64 bits + cl&eacute; de licence entreprise.', '2017-05-03', 1),
(688, 1, 3, 1, 56, 4, '[V][STAGE1] Inventaire Hardware et software', 'Cr&eacute;ation d\'un inventaire des postes connect&eacute;s sur le parc informatique, demand&eacute; par mon tuteur.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-05-18', '2016-05-18', 'Excel et Mac OS.', 'Excel cahier des charges .', '2017-05-03', 1),
(690, 1, 3, 1, 56, 4, '[V][STAGE1] Analyse des droits utilisateurs', 'Gestion et analyse des droits utilisateurs (manquants) qui n\'&eacute;taient pas &agrave; jour. Demande de mise &agrave; jour des droits utilisateurs et d\'un adaptation pour certains utilisateurs.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-05-19', '2016-05-19', 'Excel Active directory.', 'Windows serveur.', '2017-05-03', 1),
(698, 1, 1, 1, 56, 4, '[V][STAGE1] Installation VPN', 'Mise en place du logiciel &quot;signal entreprise&quot; d&eacute;velopp&eacute; par SIEGE 27. Param&eacute;trage du VPN entre Team r&eacute;seaux et SIEGE 27.\n4 utilisateurs de l\'entreprise Team r&eacute;seaux n\'ont plus acc&egrave;s au logiciel. ', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-05-24', '2016-05-25', 'Install&eacute;, site du SIEGE 27.', 'Logiciel signal entreprise, internet', '2017-05-02', 2),
(731, 1, 1, 1, 56, 4, '[V][STAGE1] Projet r&eacute;seau (nouveaux locaux)', 'D&eacute;finition d\'un cahier des charges. Mise en place de prises ethernet, t&eacute;l&eacute;phone IP, Fax, imprimantes, visioconf&eacute;rence, vid&eacute;o projecteur. Test de la ligne pour conna&icirc;tre le d&eacute;bit et ainsi choisir le FAI', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-05-30', '2016-06-09', 'Windows 7 et Mac OS.', 'Autocad.', '2017-05-02', 1),
(733, 1, 2, 1, 57, 3, '[stage1] montage PC', 'int&eacute;grer des composants dans une tour', 'changer le composant qui a &eacute;t&eacute; d&eacute;faillant dans la tour du client', '2016-06-21', '2016-06-21', 'ASUS(tour)', 'outils ', '2018-04-18', 2),
(736, 1, 1, 2, 57, 3, '[V][SI5] deploiement d\'un service', 'installer glpi sur un serveur', 'GLPI', '2016-06-21', '2016-06-21', 'putty', 'station', '2018-04-18', 1),
(739, 1, 3, 2, 57, 3, '[SI5] d&eacute;ploiement de plusieurs services', 'installer un serveur intranet et mettre en place plusieurs services ', 'AMN', '2016-06-21', '2016-06-21', 'puttyinforostand14.net', 'Serveur de virtualisation Proxmox', '2018-04-18', 1),
(751, 1, 3, 1, 56, 7, '[V][STAGE1] Clients l&eacute;gers', 'Assistance sur le serveur, changement de ressources d&eacute;di&eacute;es au serveur. Les clients l&eacute;gers subissent des ralentissements inattendus lors de leurs p&eacute;riodes de travail.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-06-21', '2016-06-21', 'Windows serveur, windows 7, client l&eacute;ger.', 'Windows serveur 2012.', '2017-05-03', 1),
(753, 1, 3, 1, 56, 7, '[V][STAGE1] Serinya visio conf&eacute;rence', 'RDV avec serinya pour d&eacute;finir le cahier des charges. L\'entreprise souhaite int&eacute;grer un syst&egrave;me de visio conf&eacute;rence pour communiquer avec les 2 autres sites (Beaumont le Roger et Le Havre) ainsi que vers l\'ext&eacute;rieur.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-06-01', '2016-06-02', 'RDV avec un technico commercial.', 'Entretiens, prise de notes. ', '2017-05-01', 1),
(861, 2, 3, 3, 56, 7, '[R] [PPE2] Sauvegarde infrastructure SIO', 'Sauvegarde de la configuration des &eacute;quipements sur le r&eacute;seau de la section SIO (switch, routeur, serveurs virtuelles sur les proxmox).', 'Centre de formation SIO.', '2017-02-28', '2017-02-28', 'Windows 10, MacOS.\n', 'PuTTY, ligne de commandes sous windows et mac.', '2017-05-04', 1),
(866, 2, 3, 3, 100, 7, '[PPE1] Outils Bureautique', 'Mise en page d\'un documents Word ou utilisation de excel.', '', '2016-11-07', '2016-11-07', '', 'Outils Bureautique', '2018-04-25', 1),
(867, 1, 3, 3, 89, 2, '[PPE] Candidature', 'Mise en Å“uvre d\'un CV et d\'une lettre de motivation', '', '2016-11-07', '2016-11-07', '', 'Outils Bureautique', '2017-01-12', 1),
(868, 2, 3, 3, 86, 2, '[PPE] Candidature', 'Mise en oeuvre du C.V. et de la lettre de motivation.', '', '2016-11-07', '2016-11-07', '', 'Outils bureautiques', '2017-11-21', 2),
(870, 2, 3, 3, 101, 2, '[PPE] Candidature', 'Mise en Å“uvre du C.V et de la lettre de motivation ', '', '2016-09-22', '2016-09-22', '', 'Outils Bureautiques', '2019-02-11', 2),
(873, 2, 3, 3, 106, 3, '[V][V][PPE] candidature', 'mise en Å“uvre de CV et de la lettre de motivation', '', '2016-11-07', '2016-11-07', '', 'outil bureautique', '2016-11-07', 2),
(881, 2, 1, 3, 89, 4, '[PPE] Découverte des outils bureautiques', 'Utilisation des logiciels de bureautiques de manière à automatiser son usage afin de faire des recherches sur les métiers de l\'informatique.', 'Dans le cadre d\'un TP sur les métiers de l\'informatique en groupe.', '2016-11-07', '2016-11-07', 'Libre, Office, Excel, Drive, Nas', 'Internet', '2017-01-12', 1),
(882, 2, 1, 3, 101, 2, '[PPE] Les métiers', 'Etudié 4 métiers dans le domaine informatique ', '', '2016-11-07', '2016-11-07', '', 'Burautique', '2016-11-07', 1),
(883, 2, 1, 3, 99, 3, '[PPE] Outils bureautique', 'Initiation et utilisation des outils de bureautique Excel et Word dans le cadre du PPE', 'PPE', '2016-10-06', '2016-10-13', 'Utilisation d\'outils bureautique .', 'Word et Excel', '2018-04-18', 1),
(885, 2, 2, 3, 101, 2, '[sio1] Veille technologique', 'Informations sur les outils pour la veille technologique', 'Suivre l\'actualit&eacute; du domaine informatique avec netvibes , ', '2016-11-07', '2016-11-07', '', 'Burautique', '2018-04-18', 2),
(887, 2, 2, 3, 89, 3, '[V][SI1]  decouverte Veille technologique', 'Utilisation d\'application permettant l\'acc&egrave;s rapide &agrave; l\'information dans un domaine pr&eacute;cis. netvibes et pearltrees', 'Fait en classe', '2016-11-07', '2016-11-07', '', '', '2018-04-18', 2),
(888, 2, 2, 3, 94, 4, '[V][SI1] Veille technologique.', 'Appropriation des diff&eacute;rents outils de veille technologique de mani&egrave;re &agrave; assurer un suivi des &eacute;volutions technologiques du m&eacute;tier.', '[SI1] S&eacute;ance de TP. ', '2016-10-10', '2016-10-10', '', 'Netvibes et pearltrees.', '2018-04-17', 2),
(891, 2, 1, 3, 75, 6, '[PPE]Veille Technologique', 'Découverte de la veille technologique efficace', 'Découverte de l\'outil pearltrees', '2016-11-07', '2016-11-07', 'pearltrees', '', '2016-11-07', 2),
(892, 2, 1, 3, 82, 7, '[PPE] Veille Technologique', 'Mettre en place un dispositif efficace de veille technologique.', '', '2016-09-01', '2019-06-30', 'Pearltrees', '', '2018-04-18', 2),
(893, 2, 1, 3, 87, 6, '[PPE] mise en place d\'outils de veille technologique', 'mise en place d\'outils de veille', 'D&eacute;couverte et initiation a l\'utilisation d\'outils d&rsquo;agr&eacute;gation et de syndication, et mise en place d\'un travail de veille technologique.', '2016-09-29', '2016-09-29', '', 'agr&eacute;gateur de flux RSS', '2017-11-21', 2),
(945, 1, 1, 1, 56, 7, '[V][STAGE1] Int&eacute;gration de TeamViewer', 'Mise en place d\'un syst&egrave;me de d&eacute;pannage &agrave; distance des postes utilisateurs dans l\'entreprise pour les sites de Beaumont le Roger et Le Havre. ', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2016-06-08', '2016-06-09', 'Word ; mac OS; www.teamviewer.com.', 'Teamviewer.', '2017-05-01', 1),
(958, 2, 1, 2, 102, 6, 'Veille technologique ', 'Veille technologique sur l\'informatique : sur le r&eacute;seau, d&eacute;veloppement, &eacute;volutions des syst&egrave;mes d\'exploitation, technologiques et mat&eacute;rielles, pour soi, pour la formation ou le stage', 'Pour les cours et en stage, utile de se renseigner sur les outils et technologies que l\'on va mettre en place, qui font l\'actualit&eacute; ...  ', '2016-10-12', '2017-01-12', 'Postes de travail', '', '2018-01-16', 2),
(959, 2, 2, 3, 96, 7, '[PPE] Réalisation d\'un site en CMS', 'Création d\'un site web CMS à l\'occasion du festival du Père la pouque devant présenter le programme, les différents artistes, les repas,...', 'Création d\'un site web à l\'occasion du festival le Père la pouque', '2016-11-21', '2016-12-02', 'Wordpress', 'Un ordinateur', '2018-04-18', 1),
(962, 2, 2, 2, 83, 3, '[SI1]Veille Technologique', 'Se tenir informer sur les technologie.', 'Mise en Å“uvre de Veille technologique.', '2016-10-12', '2017-01-12', '', 'Utilisation d\'un outil de veille Netvibes et de partage pearltrees .', '2017-01-12', 2),
(963, 2, 2, 3, 101, 3, '[PPE]CMS', 'Création d\'un site avec Wordpress afin de représenter le festival Père la Pouque avec les informations données.', 'Père la Pouque', '2017-01-12', '2017-01-12', 'bureautique', 'CMS,WORDPRESS', '2017-01-12', 1),
(964, 2, 2, 2, 70, 4, '[TP SISR] Instalation et configuration d\'un reseau', 'Cr&eacute;ation d\'une maquette r&eacute;seaux avec deux commutateurs et quatres machines dans diff&eacute;rent VLAN', 'EN TP au sein de lu contexte VOYASIO par groupe de 3 personnes', '2017-01-04', '2017-01-05', '2 commutateurs cisco\n4 Machines sous linux', 'Putty', '2018-03-28', 1),
(965, 1, 2, 2, 103, 4, '[TP1] Cr&eacute;ation d\'une machine virtuelle(windows 2008)', 'Manipulation des commandes du syst&egrave;me d&rsquo;exploitation\nIdentification des diff&eacute;rents p&eacute;riph&eacute;riques pr&eacute;sent\nCr&eacute;ation des partitions\n', '', '2016-11-21', '2016-11-21', '', 'Oracle VirtualBox', '2018-03-20', 1),
(967, 2, 3, 3, 106, 4, '[PPE]Serveurs DHCP', 'd\'installer une gestion dynamique des adresses du service DHCP', 'entreprise SIO-Voyage on avait pour but de faire des adressage ', '2016-12-01', '2017-01-19', 'Serveur virtuel (virtual box), Windows serveur 2008', 'service DHCP', '2017-01-12', 1),
(969, 2, 3, 3, 102, 7, '[V][PPE1]Etude du cahier des charge et &eacute;volution ', '&Eacute;tude d\'un cahier des charges, de la demande, et tavail en groupe pour faire &eacute;voluer le r&eacute;seau.', 'Travail en PPE : r&eacute;seau de SIOvoyage au 1er trimestre 2016 et durant les autres PPE de l\'ann&eacute;e. &Eacute;volution physique du r&eacute;seau de l\'entreprise, il faut faire un devis avec les &eacute;l&eacute;ments &agrave; acheter et justifier.', '2016-12-01', '2016-12-16', 'Postes de travail sur Ubuntu et Windows 7', '', '2018-03-13', 1),
(970, 1, 3, 2, 90, 6, '[V][SISR] mise en place de l\'interconnection dans un reseau', 'Cr&eacute;ation d\'une maquette pour la soci&eacute;t&eacute; SIO VOYAGE, suite &agrave; la proposition que l\'on a faite pour le nouveau service &quot;Experience&quot;, et param&eacute;trage des mat&eacute;riels d&rsquo;interconnexion  \n', 'Au sein de ma classe en Tp SISR  ', '2017-01-02', '2017-01-06', 'Switch ATI - Cisco\nRouter Cisco\n', 'Vlan\nputty', '2018-04-13', 1),
(971, 2, 3, 3, 91, 4, '[PPE1] SIO-Voyage installation et gestion de active directory ', 'Int&eacute;gration du nouveau service de SIO-Voygage dans l\'infrastructure, gestion des droits acc&egrave;s et cr&eacute;ation des comptes utilisateur.', 'Dans le cadre du projet PPE SIO-Voyage, on du g&eacute;r&eacute; l\'infrastructure de l\'entreprise et des diff&eacute;rents services.', '2016-11-12', '2016-11-13', 'Utilisation de VirtualBox, du syst&egrave;me exploitation Windows serveur 2008 virtualis&eacute; et gestion gr&acirc;ce &iuml;&iquest;&frac12;  active directory.', 'STA', '2018-03-29', 1),
(973, 2, 1, 2, 106, 4, '[SI1]Service ACTIVE DIRECTORY', 'De créer les utilisateurs, afin de permettre la connexion et l\'authentification', 'installation Windows 2008', '2016-11-07', '2016-11-14', 'Windows 2008', 'ACTIVE DIRECTROY', '2017-01-12', 2),
(974, 2, 1, 3, 101, 4, '[Projet]Installation d\'un réseau avec des V-lans', 'Le besoin était de gérer le réseau avec le logiciel putty . Par exemple , mettre en place des adresses Ip sur les ports des switchs .', 'Sio-Voyages', '2017-01-12', '2017-01-12', 'Classe', 'Bureautique,switchs,routeur', '2017-01-12', 1),
(975, 2, 1, 3, 89, 4, '[PPE] Gestion de l\'authentification des utilisateurs', 'Nous devions mettre en place la gestion d\'authentification, la gestion d\'utilisateur (Active Directory) et la cr&eacute;ation d\'un nouveau service dans l\'entreprise appel&eacute;e &quot;experience&quot;.', 'fait pour l\'entreprise fictive SIO-Voyage pour le 1er Projet R&eacute;seau.', '2017-01-12', '2017-01-12', 'Windows server 2008 sur virtual Box\n', 'Active Directory', '2018-04-18', 1),
(976, 2, 2, 3, 83, 3, '[PPE]Etude d\'un cahier des charges. ', 'Analys&eacute; des besoins cit&eacute; dans un cahier des charges.', 'PPE contexte Le p&egrave;re la pouque , et le contexte SIO Voyage .', '2016-10-03', '2016-12-16', 'Poste de travail &agrave; 4 avec un pc par personnes.', 'Lecture', '2018-03-20', 1),
(977, 1, 2, 3, 105, 3, '[PPE] P&eacute;re la Pouque', 'Cr&eacute;ation d\'un site &agrave; l\'aide de WordPress pour une interface, ajout de photos, vid&eacute;os sur les &eacute;v&eacute;nements du P&eacute;re la Pouque', 'Le site du P&eacute;re la Pouque avait besoin d\'un site avec diff&eacute;rentes informations regroup&eacute;es afin d\'informer les gens sur l\'&eacute;v&eacute;nement', '2016-11-10', '2016-11-24', 'Notepad++\nWordPress\nLIbreOfficeImpress', '', '2018-04-20', 1),
(978, 2, 2, 3, 101, 3, '[PPE]Projet r&eacute;seau infrastructure (Administration du r&ea', 'Active directory nous a permis dans le r&eacute;seau de se connecter avec des comptes diff&eacute;rents (invit&eacute; , administrateur) , ensuite d\'attribuer des droits sur les divers comptes et enfin la cr&eacute;ation des unit&eacute;s d\'organisations ', 'Administration du r&eacute;seau ', '2017-01-12', '2017-01-12', 'Bureautique', 'active directory , Windows server 2008 (machine virtuelle)', '2019-02-11', 1),
(979, 2, 1, 2, 103, 7, '[TP1] Configuration des mat&eacute;riels r&eacute;seau', 'mise en &oelig;uvre des VLAN pour s&eacute;curiser le r&eacute;seau ', 'Dans le cadre de l\'initiation des mat&eacute;riels d\'interconnexion dans le projet SIO_voyage', '2017-01-12', '2017-01-12', 'le r&eacute;seau SIO_voyage, machine virtuelle', 'switchs(cisco,ATI), routeur', '2018-04-18', 1),
(980, 2, 1, 3, 75, 7, '[PPE]Realisation d\'un site avec un CMS', 'Réalisation d\'un site avec un CMS pour le festival du &quot;Père la Pouque&quot;, le site internet avait besoin d\'un espace de présentation des différents artiste ainsi qu\'une page sur la restauration et la programmation', 'Festival du père la pouque', '2016-11-01', '2016-11-30', 'Wordpress', 'Serveur WEB, Serveur MYSQL, Navigateur WEB', '2017-01-12', 1),
(983, 2, 1, 2, 106, 7, '[SISR1]installation Switch, Routeur', 'installer les Vlan au Switch pour se communiquer', 'Ajouter les adresses IP dans les Vlan et de paramétrer le switch et routeur', '2017-01-04', '2017-01-05', 'Les Switch, les routeur, les STA', 'Vlan, configuration de switch/routeur', '2017-01-12', 1),
(985, 2, 1, 3, 101, 7, '[PPE]Projet réseau infrastructure (Sécuriser le réseau)', 'Communication interdite entre les services , aucune perte de données en cas de panne matériel et assurer la continuité du service .', 'Sio-voyage', '2016-12-08', '2016-12-22', 'Bureautique', 'Visio', '2017-01-12', 1),
(986, 1, 1, 3, 105, 2, '[PPE]Outils bureautique', 'Utilisation d\'outils bureautique de mani&egrave;re &agrave; effectuer une communication efficace et &agrave; mettre en oeuvre des proc&eacute;dures de traitement de l\'information automatis&eacute;es.', 'Recherches sur les m&eacute;tiers de l\'informatique  pour une entreprise qui souhaite disposer d\'un bilan d\'activit&eacute; du service informatique en vue d\'analyser la performance du S.I.', '2016-09-22', '2016-09-29', 'LibreOffrice Writer, Excel, Google Drive, Mozilla', 'Internet', '2018-04-18', 1),
(987, 2, 2, 3, 91, 2, '[PPE2] Mise en place de Vlan, configuration switch/routeur CISCO', 'Mise en place de quatre VLAN, en utilisant Putty.\nConfiguration en TELNET du port fastethernet 0/1 pour pouvoir un acc&egrave;s administrateur sans c&acirc;ble console.', 'Pendant la semaine de projet r&eacute;seau, On a d&ucirc; configurer 2 switchs, 1 routeur et les diff&eacute;rents stations pour pouvoir g&eacute;rer la communication via l\'installation de VLAN.', '2017-01-03', '2017-01-05', 'TELNET, Putty, cmd', 'Switch, routeur, STA, c&acirc;ble console', '2018-03-29', 1),
(989, 2, 2, 3, 96, 2, '[V][PPE1] Mise en place du service Active Directory', 'Installation de Windows Server et du service Active Directory &agrave; l\'occasion de l\'int&eacute;gration d\'un nouveau service dans SIO-Voyages. Cr&eacute;ation des UO et int&eacute;gration et &eacute;tablissement des droits des utilisateurs. ', 'Int&eacute;gration d\'un nouveau service dans SIO Voyages', '2016-12-01', '2016-12-01', 'deux ordinateurs, c&acirc;bles rj45', 'Windows Server', '2018-04-18', 1),
(990, 2, 2, 2, 79, 3, '[V][SI1] L\'unité centrale', 'Recensement des différents matériels et composants d\'une STA.', '', '2016-10-10', '2016-10-10', '', 'une STA', '2017-01-12', 1),
(991, 2, 2, 2, 83, 4, '[SI1]Identification des composants d\'une STA', 'Savoir identifier les composant d\'une unité centrale ancienne et moins ancienne.', 'Cours de SI1', '2017-01-12', '2017-01-12', '', 'STA', '2017-01-12', 1),
(992, 2, 2, 3, 106, 2, '[PPE] des outils bureautiques', 'utilisation des logiciels de bureautique de manière à automatiser son usage de faire des recherches sur les métiers de l\'informatique.', 'Dans le cadre d\'un IP sur les métiers de l\'informatique en équipe', '2017-01-12', '2017-01-12', '', '', '2017-01-12', 1),
(993, 2, 3, 3, 75, 3, '[PPE]Installation d\'un Active Directory + Client', 'Besoin d\'installation d\'un active directory lors d\'un ppe avec un client reliée a l\'active directory.', 'PPE Reseaux dans le contexte de SIO-VOYAGES.fr', '2016-12-01', '2017-01-16', 'Windows Server 2008, Virtual BOX', 'Machine virtuel', '2017-01-12', 1),
(995, 2, 3, 2, 79, 2, '[SI1]Veille technologique', 'Se tenir informer des évolutions des différentes technologies.', 'Mise en Å“uvre d\'une veille technologique', '2017-01-12', '2017-01-12', 'Internet', 'netvibes, pearltrees', '2017-01-12', 2),
(996, 2, 3, 3, 101, 3, '[PPE]Projet réseau infrastructure (Politique d\'adressage )', 'Intégration du nouveau service &quot;Expériences&quot; de l\'entreprise SIO-Voyages.\nOptimiser les flux d\'informations.\nGestion dynamique des adresses IP au sein du site', 'SIO-Voyages', '2017-01-12', '2017-01-12', 'bureautique', 'Visio', '2017-01-12', 1),
(997, 1, 3, 3, 105, 4, '[PPE] LEVEVE', 'Pouvoir ajouter une esp&egrave;ce menac&eacute;e, la modifier et la supprimer\nS\'authentifier comme b&eacute;n&eacute;voles pour donner des dons, ils pourront se cr&eacute;er un compte &agrave; l\'aide d\'un mail et d\'un mot de passe', 'Cr&eacute;ation d\'une application\nweb pour la soci&eacute;t&eacute; LEVEVE afin de :\n- g&eacute;rer les esp&egrave;ces menac&eacute;es\n- g&eacute;rer les b&eacute;n&eacute;voles\n- g&eacute;rer les missions\n- g&eacute;rer les dons et les r&eacute;duct', '2017-01-05', '2017-01-05', 'Notepad++ SublimeText, wamp, ', '', '2018-04-18', 1),
(999, 2, 1, 2, 96, 6, '[V][SI1] Veille technologique', 'Utilisation de deux sites web (Netvibes, Pearltrees) permettant de suivre l\'&eacute;volution des technologies &agrave; travers des flux r&eacute;f&eacute;ren&ccedil;ant les articles des diff&eacute;rents sites.', 'Suivre l\'&eacute;volution technologiques r&eacute;guli&egrave;rement', '2017-01-12', '2017-01-12', 'netvibes, pearltrees', 'Ordinateur', '2018-03-13', 2),
(1000, 2, 1, 3, 91, 7, '[PEE1] Cr&eacute;ation d\'un site internet CMS ', 'Le festival p&egrave;re lapouque n&eacute;cessit&eacute; la cr&eacute;ation d\'un site internet pour pr&eacute;sent&eacute; les diff&eacute;rents activit&eacute; pr&eacute;sente. ', 'Le projet d&eacute;veloppement, nous as donn&eacute; comme travail, de cr&eacute;er un site internet CMS, avec les diff&eacute;rentes rubrique, &eacute;v&eacute;nement et chanteur pr&eacute;sent pendant le festival.', '2017-01-12', '2017-01-12', 'Utilisation de CMS, t&eacute;l&eacute;chargement de template et un peu de retouche d\'image avec photofiltre', 'CMS, Photofiltre, wamp', '2017-06-20', 1),
(1001, 1, 1, 3, 90, 6, '[V][PPE1] Cr&eacute;ation d\'un site internet avec wordpress', 'Cr&eacute;ation d\'un site web &agrave; l\'aide de WordPress pour une association, ajout de photos, vid&eacute;os sur les &eacute;v&eacute;nements du P&eacute;re la Pouque.\n', 'Demande de cr&eacute;ation de site internet par l\'association p&egrave;re la pouque ', '2017-01-12', '2017-01-12', '', '', '2018-04-18', 1),
(1002, 2, 2, 3, 79, 7, '[PPE] CMS Père la pouque', 'Création d\'un site web avec un CMS.', 'Le festival du père la pouque a besoin d\'un site web pour améliorer sa communication.', '2016-11-10', '2016-11-24', '', 'CMS Wordpress', '2017-01-12', 1),
(1004, 2, 2, 3, 103, 6, '[PPE1] R&eacute;alisation d\'un site internet P&egrave;re La Pouq', 'am&eacute;liorer, structurer un site d\'un client', '  ', '2017-01-12', '2017-01-12', '', 'CMS', '2017-06-20', 1),
(1005, 1, 2, 3, 105, 7, '[PPE] SIO VOYAGES', 'Proposer des offres compl&eacute;mentaires &agrave; l&rsquo;h&eacute;bergement dans le cadre des s&eacute;jours dans la ville visit&eacute;e. Cela va de la visite de lieux particuliers &agrave; des stages sp&eacute;cifiques, le tout r&eacute;pertori&amp;e', 'La soci&eacute;t&eacute; SIO-VOYAGES veut &eacute;largir son offre pour r&eacute;pondre aux besoins des clients', '2016-12-08', '2017-01-26', 'Excel', '', '2018-04-18', 1),
(1033, 1, 1, 1, 30, 3, '[V]test', 'besoin', 'entreprise', '2017-02-08', '2017-02-08', '', '', '2017-02-08', 1),
(1082, 1, 1, 1, 56, 3, '[Stage 2] Gestion et d&eacute;ploiement de GPO', 'D&eacute;ploiement d\'application, raccourci ou autre logiciel informatique sur l\'int&eacute;gralit&eacute; des postes informatiques de l\'entreprise, ainsi que la suppression de logiciels. S&eacute;curisation de logiciels sur le r&eacute;seau.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2017-01-04', '2017-01-06', 'Serveur AD sous Windows serveur 2012.\n45 postes fixes sous Windows 7.', '&quot;Gestion des strat&eacute;gies de groupe&quot; sous Windows serveur 2012.\nTeamViewer 11 entreprises.', '2017-05-03', 2),
(1083, 1, 1, 1, 56, 4, '[R] [Stage 2] Maintenance / d&eacute;pannage du serveur Exchange', 'Int&eacute;gration de comptes messagerie Exchange et configuration sur poste client via Outlook.\nD&eacute;pannage de la messagerie n\'ayant plus d\'acc&egrave;s vers le Webmail. ', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2017-01-09', '2017-01-12', 'Windows serveur 2008, windows 7.', 'Serveur AD sous Windows serveur 2012.\n45 postes fixes sous Windows 7.', '2017-05-02', 1),
(1086, 1, 1, 1, 56, 4, '[R] [Stage 2] Gestion des ACL sur le NAS', 'Mise en place du nouvel espace de stockage dans l\'entreprise avec l\'int&eacute;gration des droits suivant les services.', 'Soci&eacute;t&eacute; TEAM RESEAUX : La configuration ainsi que la structuration du NAS n\'&eacute;taient pas optimales. ', '2017-02-28', '2017-02-28', 'Interface web Synology.', 'NAS, windows 10, Mac OS.', '2017-05-03', 2),
(1090, 1, 1, 1, 56, 4, '[R] [Stage 2] Maintenance du parc informatique', 'L\'entreprise souhaite avoir une maintenance rapide sur les diff&eacute;rentes demandes des utilisateurs. ', 'Soci&eacute;t&eacute; TEAM RESEAUX.', '2017-02-28', '2017-02-28', 'Teamviewer 11, windows 7/8/10, mac OS.', 'GPO, GLPI.', '2017-05-01', 1),
(1092, 1, 2, 1, 56, 7, '[R] [Stage 2] Gestion de pare-feu ZyXEL', 'Pouvoir identifier les diff&eacute;rents trafics utilis&eacute;s par les salari&eacute;s afin d\'optimiser les flux inutiles.\nV&eacute;rification des r&egrave;gles de filtrages du pare-feu. ', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2017-02-28', '2017-02-28', 'interface web ZyXEL.', 'Windows serveur; interface web.', '2017-05-04', 1),
(1093, 1, 2, 1, 56, 6, '[R] [Stage 2] Gestion utilisateurs sur serveur AD', 'Optimisation de la base de donn&eacute;es des utilisateurs sur ActiveDirectory.\nGestion des groupes via script PowerShell.\nAm&eacute;lioration des GPO.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2017-02-28', '2017-02-28', 'Serveur AD sous Windows serveur 2012.\n45 postes fixes sous Windows 7.', 'Connexion au serveur Active directory via &quot;Remote desktop manager&quot;.', '2017-05-02', 1),
(1095, 1, 2, 1, 56, 4, '[R] [Stage 2] Gestion des sauvegardes Backup Exec', 'Gestion des sauvegardes sur les serveurs NAS via le logiciel de sauvegarde Backup Exec.\nSauvegardes partielle + totale.', 'Soci&eacute;t&eacute; TEAM RESEAUX ; si&egrave;ge social bas&eacute; &agrave; Evreux avec 35 postes informatiques, un site &agrave; Beaumont-Le-Roger avec 8 postes ainsi que 2 postes au Havre. ', '2017-02-28', '2017-02-28', 'Windows serveur 2012, windows 10.', 'Supervision, remote desktop.', '2017-05-03', 2),
(1097, 1, 2, 3, 101, 4, '[PPE]Strat&eacute;gies de groupe', 'Environnement commun de plusieurs utilisateurs.', 'SIO VOYAGE , soci&eacute;t&eacute; r&eacute;alisant ', '2017-03-02', '2017-03-02', 'R&amp;seau de la section SIO.', 'Bureautique/ Active directory / GPO.', '2017-06-21', 1),
(1098, 1, 2, 3, 106, 4, '[PPE] création de stratégie de groupe', 'nous devrions crée une stratégie de groupe pour le domaine SIO-VOyage', '', '2017-03-02', '2017-03-02', '', '', '2017-03-02', 1),
(1099, 2, 3, 3, 91, 4, '[SISR2] Gestion des strat&eacute;gies de groupe', 'G&eacute;rer les strat&eacute;gies de groupe, afin que les utilisateur sois soumis &iuml;&iquest;&frac12;  des r&egrave;gles.', 'PPE GPO', '2017-03-02', '2017-03-02', 'Station de travail', 'Active directory, GPO', '2018-03-29', 1),
(1100, 2, 3, 3, 83, 3, '[PPE]Stratégie de groupe', 'Le but était de créer une stratégie de groupe afin de définir des règles d\'autorisation et des restriction d\'accès des utilisateur d\'un Active directory', 'contexte SIO Voyage ', '2017-03-02', '2017-03-02', 'Bureautique', 'Bureautique', '2017-03-02', 1),
(1101, 2, 3, 2, 102, 3, '[V][SI2] Installation d\'un serveur DHCP ', 'Installation des DHCP pour adressage dynamique des machines en redondance ', 'Lors de la cr&eacute;ation d\'un r&eacute;seau sur une entreprise il a fallut installer un DHCP .', '2017-03-02', '2017-03-02', 'Test sur le simulateur packet tracer et windows 2008 serveur en PPE puis configuration de db8 en SI2', 'Configuration de debian8', '2018-01-09', 2),
(1122, 2, 3, 3, 102, 3, '[V] [SISR2] Configuration switchs, VLANs et mode trunk', 'Lors du PPE il fallait cr&eacute;er une maquette r&eacute;elle d\'un r&eacute;seau avec des postes, un routeur et deux switchs pour simuler deux r&eacute;seaux diff&eacute;rents. ', 'Lors du TP en r&eacute;seau tout d&eacute;but janvier 2017, par groupe nous avions eu deux switchs et un routeur et nous avons du cr&eacute;er un structure r&eacute;seau demand&eacute;e. Nous avons &eacute;galement fait des VLAN sur packet tracer en test.', '2017-01-02', '2017-03-07', 'Pour le PPE nous avions des postes pour les brancher sur les switchs et configurer les switchs pour faire des VLANs et le mode Trunk.', 'Nous avons utilis&eacute; 2 switchs, 1 routeur 4 postes de travail et des c&acirc;bles ethernet.', '2018-04-19', 1),
(1123, 2, 1, 2, 102, 7, '[V][SI1] Etude composants d\'un ordinateur', 'Nous avons ouvert une unit&eacute; centrale .\nLors de cours et TP/TD', 'Lors des cours nous avons &eacute;tudi&eacute; les composants d\'un ordinateur et leur fonctionnement.', '2017-03-14', '2017-03-14', 'Cours sur feuille et ordinateur et ouverture d\'une unit&eacute; centrale par groupe de 2 personnes.', '', '2018-03-13', 1),
(1124, 2, 1, 3, 102, 7, '[V][PPE1] R&eacute;seau : Choix de solution technique et couts ', 'Lors du PPE en r&eacute;seau de premier trimestre 2016 nous devions faire &eacute;voluer le r&eacute;seau de l\'entreprise en ajoutant un service (serveurs et postes) et am&eacute;liorer la tol&eacute;rance de panne.  ', 'Nous devions faire &eacute;voluer le r&eacute;seau existant en gardant un co&ucirc;t raisonnable, m&ecirc;me si il n\'y avait pas de r&eacute;elle limite.', '2016-09-01', '2017-03-15', 'En groupe sur des postes de travail et un cahier des changes qui explique le r&eacute;seau en place et ce qui est attendu.', 'Utilisation de logiciels de traitement de texte pour le compte rendu et un visio pour repr&eacute;senter le r&eacute;seau &agrave; l\'oral.', '2018-03-20', 1),
(1127, 2, 1, 2, 102, 7, '[V][SI5]Mise en place d\'un serveur wiki', 'Lors de l\'installation d\'un serveur WIKI sur proxmox il a fallut installer un service SSH pour pouvoir l\'administrer &agrave; distance sur un autre poste du r&eacute;seau, pour r&eacute;duire l\'impact sur les performances et augmenter la s&eacute;curit&am', 'Installation serveur WIKI et administration &agrave; distance avec le protocole SSH.', '2017-03-16', '2017-03-16', 'Utilisation de Linux et Debian 8 pour le serveur &agrave; installer.', 'Nous avions &agrave; disposition des fiches sur le wiki du BTS ainsi que des fiches dans le cours.', '2018-02-09', 1),
(1143, 1, 2, 1, 30, 7, '[V][SI5] Services en production', 'Mettre en place le service pour la section', '', '2017-03-21', '2017-03-21', '', '', '2018-02-18', 1),
(1144, 2, 2, 2, 57, 2, '[SI5] S&eacute;curisation d\'un service', 's&eacute;curiser la machine serveur manipul&eacute;e lors des TP pr&eacute;c&eacute;dents.', 'emp&ecirc;cher l\'interception des donn&eacute;es', '2017-03-09', '2017-03-23', 'proxmox ', 'putty en SSH', '2018-04-18', 1),
(1145, 2, 2, 3, 91, 2, '[PPE1] Configuration r&eacute;seau packet tracer', 'Mise en place d\'un r&eacute;seau sur packet tracer + param&eacute;trage des routes ', 'projet PPE SISR-10-TD-1', '2017-03-23', '2017-03-23', '', '', '2017-06-20', 2),
(1146, 2, 1, 3, 94, 2, '[V][PPE]Parametrage de routeurs.', 'Configuration de routeurs afin d\'assurer la communication entre les diff&eacute;rents r&eacute;seaux de l\'entreprise.', 'Une entreprise dispose d\'un sch&eacute;ma d\'un r&eacute;seau et elle nous demande d\'assurer la communication entre ses diff&eacute;rents r&eacute;seaux. ', '2017-03-23', '2017-03-23', 'Environnement windows', 'Logiciel : Cisco Packet Tracer', '2017-05-31', 2),
(1147, 2, 1, 2, 102, 3, '[V][Sisr2] Param&eacute;trage routeur et routage', 'Lors du PPE il fallait cr&eacute;er un r&eacute;seau en fonction du sch&eacute;ma et connecter les diff&eacute;rents sous r&eacute;seaux entre eux et configurer des routeurs et switch ainsi que fournir la documentation', 'Cr&eacute;ation d\'un r&eacute;seau selon la demande avec un routeur et deux commutateurs avec des Vlans', '2017-03-23', '2017-03-23', 'Windows 7 et packet tracer', 'Utilisation de switchs, routeurs et du simulateur packet tracer', '2018-02-05', 2),
(1148, 2, 1, 3, 94, 4, '[V][PPE] Etude d\'un cahier des charges et mise en place d\'un bud', 'L\'entreprise SIO souhaite ouvrir un nouveau service. Pour cela, elle nous fournis un cahier des charges et nous demande de fournir un budget pour les nouveaux mat&eacute;riels informatique de l\'entreprise. ', 'L\'entreprise SIO voyage ouvre un nouveau service et a donc besoin de nouveaux mat&eacute;riels informatiques.', '2017-03-23', '2017-03-23', 'Environnement windows', 'Fournisseur : LDLC pro\nLogicel exel', '2017-06-14', 1),
(1149, 2, 1, 3, 83, 2, '[SISR2]TD03', 'Dans cette situation l&rsquo;objectif &eacute;tait de permettre la communication des diff&eacute;rent r&eacute;seau gr&acirc;ce aux routeurs', 'A l\'aide du sch&eacute;ma de l\'architecture du r&eacute;seau et du plan d\'adresse ci-dessous, vous &ecirc;tes charg&eacute;(e)\nd&rsquo;analyser le plan d&rsquo;adressage de la soci&eacute;t&eacute;.\nVous &ecirc;tes &eacute;galement charg&eacute;(e) de t', '2017-03-23', '2017-03-23', 'Salle 303', 'Cisco packet tracer', '2017-03-23', 2),
(1150, 2, 1, 2, 89, 3, '[SISR2] Routage', 'Configuration des routeur afin d\'assurer la communication sur des r&eacute;seaux', 'Un TP &agrave; r&eacute;aliser sur Cisco Packet Tracer', '2017-03-23', '2017-03-23', '- Windows sur machine virtuelle\n- Cisco Packet Tracer', '', '2018-04-18', 2),
(1151, 1, 2, 2, 105, 2, 'SISR2 ROUTAGE', 'Configurer les routeurs de plusieurs r&eacute;seaux afin d\'assurer la communication', 'Le sch&egrave;ma repr&eacute;sent&eacute; &agrave; &eacute;t&eacute; pris depuis un TP pr&eacute;c&eacute;dent\nR&eacute;alis&eacute; sur Cisco Packet Tracer', '2017-03-23', '2017-03-23', 'Windows, Cisco Packet Tracer, ', '', '2018-04-18', 2),
(1152, 2, 2, 3, 103, 3, '[V][PPE1]configuration des routeurs', 'Faire communiquer des r&eacute;seau diff&eacute;rents gr&acirc;ce &agrave; des routeurs  ', 'Analyser le plan d\'adressage de la soci&eacute;t&eacute; \nConception infrastructure r&eacute;seau ', '2017-03-23', '2017-03-23', 'salle C303', 'Packet tracer', '2018-03-13', 2),
(1170, 1, 2, 3, 56, 4, '[R] [PPE2] Supervison de l\'infrastructure AMN', 'Le r&eacute;seau AMN a besoin de mettre en place un outil de supervison. Il faut les remont&eacute;es de chaque &eacute;quipement r&eacute;seau, leur &eacute;tat de fonctionnement en temps r&eacute;el. ', 'Contexte AMN. ', '2017-04-13', '2017-04-13', 'Eyes Of Network (EON)..', 'Windows 7, PuTTY, proxmox.', '2017-05-04', 1),
(1176, 2, 2, 3, 104, 6, '[PPE] Mise en production d\'un Wordpress', 'Mettre un place un site gr&acirc;ce &agrave; l\'outil Wordpress afin pr&eacute;senter l&rsquo;&eacute;v&eacute;nement du P&egrave;re la Pouque', 'Festival du P&egrave;re la Pouque', '2016-10-27', '2016-11-17', 'CMS', 'Documentation, Sites internet', '2018-04-17', 1),
(1177, 2, 2, 3, 82, 7, '[PPE] PRESTASHOP AMAP', 'Cr&eacute;ation d\'un site de e-commerce avec le CMS Prestashop.', 'Une association a besoin d\'un site de e-commerce pour vendre ses produits.', '2017-02-02', '2017-02-28', 'Prestashop', 'PHP HTML, CSS', '2018-04-18', 1),
(1178, 2, 3, 3, 95, 6, '[PPE] Mise en production Wordpress', 'Mise en place d\'un site pour la pr&eacute;sentation du festival du &quot;p&egrave;re la pouque&quot; avec l\'aide du cms Wordpress', 'festival du P&egrave;re la pouque', '2016-10-27', '2016-11-17', 'CMS', 'documentation, site ', '2018-04-18', 1),
(1179, 2, 3, 3, 93, 7, ' [PPE] Pere la Pouque', 'Faire un site pour pr&eacute;senter le festival du p&egrave;re la Pouque. Cr&eacute;ation d\'une page d&eacute;taillant les concerts, l\'emplacement les boissons/nourritures disponibles et une page de contact. ', 'Chaque ann&eacute;e &agrave; la saint Nicolas, l&rsquo;&eacute;glise Saint-Nicolas de Caen h&eacute;berge un &eacute;v&eacute;nement culturel &laquo; le P&egrave;re la Pouque &raquo;.', '2017-04-12', '2017-12-16', 'windows, phpmyadmin, wamp', 'CMS Wordpress, HTML, CSS', '2018-04-20', 1),
(1180, 2, 3, 3, 88, 6, '[PPE]WordPress', 'Cr&eacute;e un site web avec WordPress ', 'Cr&eacute;e un site web avec WordPress pour &quot;le p&egrave;re la pouque&quot; qui est un festivals de musique avec galerie de photo,vid&eacute;o,description des artistes et page de contacte.', '2018-10-13', '2018-10-13', 'Sur machine virtuel sous windows 7\nWordpress\n', '', '2017-11-21', 1),
(1181, 2, 3, 3, 99, 7, '[PPE] Initiation &agrave; l\'outil CMS Wordpress', 'Concevoir un site &agrave; l\'aide de l&rsquo;outil Wordpress.', 'Cr&eacute;er un site pour le festival du p&egrave;re la pouque.', '2016-10-13', '2016-11-03', '', '', '2018-04-18', 1),
(1182, 2, 1, 3, 100, 3, '[SLAM1]CMS Prestashop', 'Cr&eacute;ation d\'un site web pour la vente de fruit &amp; legumes bio , gr&acirc;ce a l\'outil de creation de site internet Prestashop.', 'Pour une entreprise de fruit et legumes bio  nous devons cr&eacute;e un site internet , vendre des fruit bio.', '2017-02-16', '2017-03-10', 'CMS', 'Prestashop', '2018-04-25', 1),
(1183, 2, 1, 3, 86, 3, '[PPE] CMS WordPress', 'Cr&eacute;ation d\'un site web pour le p&egrave;re la pouque gr&acirc;ce a l\'outil de cr&eacute;ation de  site internet WORDPRESS', 'Pr&eacute;sentation du festival du p&egrave;re la pouque', '2016-10-27', '2016-11-17', 'CMS', 'Wordpress', '2018-04-18', 1),
(1184, 2, 1, 3, 98, 4, '[PPE] Mise en place de CMS', 'N&eacute;cessit&eacute; de mettre en place un site web pour l\'organisation &quot;le p&egrave;re la pouque&quot; gr&acirc;ce &agrave; Wordpress.', 'Mettre en place un site pour l\'&eacute;v&egrave;nement du P&egrave;re la Pouque &agrave; Caen montrant les diff&eacute;rents concerts, groupes, musiques et produits disponible pendant l\'&eacute;v&egrave;nement. ', '2016-10-13', '2016-11-03', 'Sous machine virtuelle, Windows 7 \n', 'Wordpress', '2018-04-18', 1),
(1185, 2, 2, 3, 87, 4, '[PPE] creation d\'un site vitrine via un CMS', 'augmenter la visibilit&eacute; du festival par un site vitrine', 'Le festival culturel &quot;Le P&egrave;re la pouque&quot; souhaite poss&eacute;der un site vitrine pour pr&eacute;senter son &eacute;dition annuel, pour pouvoir facillement gerer le contenu, il souhaite que celui-ci soit r&eacute;aliser avec le CMS Wordpr', '2016-10-13', '2016-11-03', 'machine virtuel(sous windows 7) avec serveur web( WAMP )', '', '2017-06-21', 1),
(1186, 2, 2, 3, 92, 4, '[PPE] Prestashop AMAP', 'Cr&eacute;ation d\'un site E-commerce sous le CMS prestashop', 'Dans le cadre du d&eacute;veloppement de l\'association, L\'AMAP souhaite r&eacute;aliser un site e-commerce via\nPrestashop pour proposer l&rsquo;ensemble de leur produit et de leur panier, de pouvoir g&eacute;rer et mettre &agrave; jour\nle site web eux-m', '2017-03-02', '2017-04-27', 'Prestashop', '', '2018-04-19', 2),
(1187, 1, 2, 2, 81, 7, '[SLAM1] Contexte STAGESIO', 'D&eacute;velopper plusieurs modules permettant d\'ajouter, modifier ou supprimer des &eacute;tudiants ainsi que leurs stages en s&rsquo;appuyant sur une base de donn&eacute;es.', 'La section SIO souhaite pouvoir g&eacute;rer les informations des stages de ses &eacute;tudiants.', '2017-03-29', '2017-04-06', 'PC Windows', 'IDE : Visual Studio, SQL SERVER', '2018-04-15', 1),
(1188, 2, 1, 3, 77, 6, '[PPE]Apprentissage du CMS', 'Cr&eacute;er un site Internet avec un CMS et form&eacute; le client a l\'utiliser.', 'Cr&eacute;er un site permettant d\'afficher toutes les informations au sujet du festival.', '2016-10-20', '2016-11-03', '', 'Wordpress', '2018-04-03', 1),
(1189, 1, 1, 3, 100, 4, '[PPE1]CMS Wordpress', 'Cr&eacute;ation d\'un site web pour un festival de musique  , gr&acirc;ce a l\'outil de creation de site internet Wordpress.', 'Cr&eacute;e un site vitrine d\'un festival de musique', '2017-04-24', '2017-04-24', 'CMS,', 'Wordpress, serveur de  mise en production ', '2017-06-21', 1),
(1190, 2, 1, 3, 76, 4, '[PPE1] - Prestashop', 'Cr&eacute;ation de site vitrine pour un particulier qui vends des fruits et des l&eacute;gumes.', 'L\' AMAP Jean Rostand est une association pour le maintien d\'une agriculture paysanne ou AMAP, est en France, un partenariat de proximit&eacute; entre un groupe de consommateurs et une exploitation locale(g&eacute;n&eacute;ralement une ferme).', '2016-03-01', '2017-03-31', 'Poste de travaille et serveur distant.\nWindows 7(Machine virtuel)', 'L&rsquo;utilitaire pour la cr&eacute;ation de CMS: Prestashop.', '2018-04-18', 1),
(1192, 1, 1, 2, 100, 4, '[SLAM1]Cr&eacute;ation Plugin Wordpress', 'Cr&eacute;ation de plugin Wordpress', 'Cr&eacute;e un plugin de formulaire de contact ', '2017-03-23', '2017-03-23', 'CMS', 'Wordpress', '2018-04-18', 2),
(1194, 1, 1, 2, 100, 4, '[PPE1]Bilan Slam/SISR', 'Cr&eacute;e un site web ', 'Il fallait cr&eacute;e en groupe un site web pour g&eacute;rer l\'association LVEVE , qui partait de g&eacute;rer l\'ajout /modification/la suppression d\'animaux prot&eacute;g&eacute; .', '2017-01-05', '2017-01-13', 'HTML', 'atom', '2018-04-18', 1),
(1195, 2, 2, 3, 98, 3, '[PPE] Cr&eacute;ation d\'un site en Php/Html', 'Cr&eacute;er un site r&eacute;pertoriant les esp&egrave;ces animales menac&eacute;es et leurs informations personnelles, permettant l\'ajout de celle-ci, leur suppression et leur modification.', 'Dans le cadre d\'une ONG r&eacute;pertoriant les esp&egrave;ces animales.', '2017-01-12', '2017-01-19', 'Windows 7 (machine virtuelle), wamp, serveur professeur', 'Editeur de texte (PhP, CSS et HTML)', '2018-04-18', 1),
(1196, 2, 2, 3, 95, 3, '[PPE] Plugin wordpress', 'r&eacute;alisation d\'un plugin de formulaire de contact pour le CMS wordpress', 'd&eacute;couverte de la programmation pour la r&eacute;alisation de plugin', '2017-03-23', '2017-03-23', 'wordpress', 'documentation, site internet', '2018-04-18', 2),
(1197, 1, 2, 3, 100, 3, '[SLAM2]Projet C# gestion stage', 'Cr&eacute;e une application en C#', 'Cr&eacute;e une application pour g&eacute;rer les Stage des &eacute;l&egrave;ves de sio ', '2017-03-09', '2017-04-24', 'Visual Studio', 'C#', '2017-06-21', 1),
(1198, 1, 2, 2, 88, 7, '[SLAM1]Cas leveve', 'Cr&eacute;ation d\'une application pour lister les esp&egrave;ces en voient de disparition', 'Une association veut pouvoir lister les esp&egrave;ce en voient de disparition et aussi avoir des adh&eacute;rent pour faire des missions ou des dons pour aid&eacute;e c\'est esp&egrave;ce', '2017-01-11', '2017-01-19', 'VM Windows 7 \nserveur', '', '2017-06-21', 1);
INSERT INTO `rp` (`id`, `localisation_id`, `statut_id`, `source_id`, `etudiant_id`, `enseignant_id`, `libcourt`, `descriptif`, `contexte`, `date_debut`, `date_fin`, `environnement`, `moyen`, `date_modif`, `cadre_id`) VALUES
(1199, 2, 2, 3, 82, 7, '[PPE] C#', 'R&eacute;aliser une application de gestion de stage avec le langage C# et une base de donn&eacute;es SQL Server.', 'Un lyc&eacute;e demande la cr&eacute;ation d\'une application pour g&eacute;rer leurs stagiaires.', '2017-03-01', '2017-03-31', 'Framework .NET, SQL Server, Microsoft Visual Studio', 'C#, SQL', '2018-04-18', 1),
(1200, 2, 3, 3, 86, 7, '[PPE] CMS PrestaShop', 'Site web e-commerce de vente de fruits et de l&eacute;gumes en ligne.', '', '2017-04-24', '2017-04-24', '', '', '2018-04-18', 1),
(1201, 2, 3, 3, 104, 7, '[PPE] Plugins Wordpress', 'R&eacute;alisation d\'un plugin de formulaire de contact pour le CMS Wordpress', 'D&eacute;couverte de la programmation et mise en place d\'un formulaire de contact sous forme de plugin', '2017-03-23', '2017-03-23', 'Wordpress', '', '2018-04-18', 2),
(1202, 2, 3, 3, 86, 2, '[PPE] Plugin Wordpress', 'Cr&eacute;ation de plugin wordpress', 'Cr&eacute;er un plugin de formulaire de contact', '2017-03-23', '2017-03-23', 'CMS', 'Wordpress', '2018-04-18', 2),
(1203, 2, 3, 2, 86, 2, 'Bilan SLAM/SISR', 'Cr&eacute;er un site web', 'Cr&eacute;er un groupe de quatre afin de r&eacute;aliser un site web pour l\'association LEVEVE', '2017-04-24', '2017-04-24', '', '', '2018-04-18', 1),
(1204, 1, 1, 3, 78, 2, '[PPE] LEVEVE', 'Cr&eacute;ation d\'un site web interne pour la gestion des donn&eacute;es.', '', '2017-01-02', '2017-04-12', 'Notpad++', '', '2018-04-18', 1),
(1205, 1, 1, 2, 100, 3, '[SI5]SSL&nbsp;TLS SSH', 'Installation de SSH , SSL , TLS , LAMP , etc ...', 'Mise en place de diff&eacute;rences service pour le CAS SIO voyage ', '2017-03-17', '2017-04-24', 'Linux', 'Terminal', '2017-06-21', 1),
(1206, 1, 1, 2, 86, 4, '[SI5] S&eacute;curisation d\'un site internet avec SSL, SSH, TLS', 'Installation de SSH, SSL, TLS, LAMP, ...', 'Mise en place de diff&eacute;rents services pour serveur', '2017-03-17', '2017-04-24', 'LInux', 'Terminal', '2018-04-18', 1),
(1208, 2, 2, 3, 99, 2, '[PPE] Evolution d\'un r&eacute;seau', 'Faire &eacute;voluer le r&eacute;seau en fonction de nouveaux crit&egrave;res ou de probl&egrave;mes rencontr&eacute;s.', 'Faire &eacute;voluer le r&eacute;seau de l\'entreprise SIO-VOYAGE afin d\'ajouter le service \'Exp&eacute;riences\'.', '2016-11-24', '2016-12-15', '', '', '2018-04-19', 1),
(1209, 2, 2, 3, 77, 3, '[PPE]Creation d\'un jeu', 'Cr&eacute;er un jeu a l\'aide de Visual Studio et apprendre a relier un serveur a une application', 'Cr&eacute;er un jeu pour la porte ouverte', '2017-01-26', '2017-02-15', 'Visual Studio, Microsoft Server', '', '2018-04-04', 2),
(1210, 2, 2, 3, 78, 2, '[PPE] Petit chevaux', 'Conception d\'un jeu en C# ', 'Apprentissage au langage C#', '2017-01-26', '2017-02-09', 'VisualStudio', '', '2018-04-14', 1),
(1211, 2, 1, 3, 98, 3, '[PPE] D&eacute;veloppement d\'un jeu en C#', 'Cr&eacute;ation d\'un jeu au choix (ici &quot;2048&quot;) en C# avec une petite interface graphique et une liaison en base de donn&eacute;e.', 'Aucun contexte particulier. TP de prise en main du C#. ', '2017-01-26', '2017-03-02', 'Windows 7', 'Visual Studio pour le programme en C#.\nSQL Server pour le base de donn&eacute;e.\nWin\'Design pour le sch&eacute;ma de la base de donn&eacute;e.', '2018-04-19', 1),
(1214, 2, 1, 3, 95, 4, '[PPE] Prestashop', 'r&eacute;alisation d\'un site e-commerce pour la cooperative de l&eacute;gume (AMAP)', 'la coop&eacute;rative propose plusieurs produits qu\'il faudra catalogu&eacute;', '2017-04-24', '2017-04-24', 'CMS prestashop', 'documentation, site', '2018-04-18', 1),
(1215, 1, 1, 2, 100, 6, '[SLAM2]IMAGEIN Java', 'G&eacute;rer une caserne de pompier ', 'G&eacute;rer une caserne de pompier ', '2017-03-13', '2017-04-24', 'Java', 'Netbeans', '2018-04-18', 2),
(1216, 2, 1, 2, 86, 7, '[SLAM2] Java IMAGEIN', 'G&eacute;rer une caserne de pompier', 'G&eacute;rer une caserne de pompier', '2017-03-13', '2017-04-24', 'Java', 'NetBeans', '2018-04-18', 2),
(1217, 2, 1, 3, 104, 6, '[PPE] Prestashop', 'R&eacute;alisation d\'un site de commerce pour une coop&eacute;rative (AMAP) ', 'La coop&eacute;rative (AMAP) propose diff&eacute;rent produit qu\'il faut cataloguer', '2017-03-02', '2017-03-16', 'Prestashop', 'Documentation sites', '2018-04-17', 1),
(1218, 2, 2, 3, 86, 7, '[SLAM1] C# projet', 'Cr&eacute;er une application en c#', 'Cr&eacute;er une application pour g&eacute;rer les stages des &eacute;l&eacute;ves de SIO', '2017-03-09', '2017-04-24', 'VisualStudio', 'C#', '2018-04-18', 2),
(1219, 2, 2, 3, 77, 6, '[PPE]Plugin Wordpress', 'Installer des plugins Wordpress.', '', '2017-03-23', '2017-03-23', 'Wordpress', '', '2018-04-09', 2),
(1220, 2, 2, 3, 98, 7, '[PPE] Int&eacute;gration d\'un service dans un reseau', 'Int&eacute;gration d\'un service dans un r&eacute;seau gr&acirc;ce &agrave; une simulation.', 'Int&eacute;gration d\'un service &quot;Exp&eacute;rience&quot; (suppl&eacute;mentaire) dans le r&eacute;seau d\'une grande entreprise. ( Exp&eacute;rience-R&eacute;seau) ', '2016-11-10', '2016-12-01', 'Windows 7 (machine virtuelle), r&eacute;seau ', 'Mod&egrave;le Cisco, Gestion des membres du r&eacute;seau gr&acirc;ce &agrave; Active Directory.', '2018-04-18', 1),
(1221, 1, 2, 3, 88, 3, '[PPE]SIO voyage R&eacute;seaux ajouter un service', 'Ajouter un service informatique dans une agence de voyage', 'SIO voyage s&rsquo;agrandit et a besoin d\'un nouveaux service il faut donc r&eacute;aliser un r&eacute;seaux pour cette entreprise', '2016-11-09', '2016-12-07', 'packet tracer\nDiagramme de gantt', '', '2017-06-21', 1),
(1222, 2, 2, 3, 93, 3, '[PPE] SIO-voyage', 'Il faut &eacute;quiper les salari&eacute;s d\'une nouvelle section d\'outils informatique.', 'Une entreprise veut se d&eacute;velopper et cr&eacute;er une nouvelle section. Elle nous demande donc de commander les &eacute;quipements n&eacute;cessaires &agrave; son d&eacute;ploiement.', '2017-04-24', '2017-04-24', 'windows, windows server, LDLC', '', '2018-04-19', 1),
(1224, 2, 3, 3, 76, 4, '[PPE1] - Wordpress - P&egrave;re la pouque', 'Cr&eacute;ation d\'un site vitrine pour le festival du p&egrave;re la pouque, afin de pr&eacute;sentait l\'int&eacute;gralit&eacute; du festival.', 'Personnage de l&eacute;gende, le P&egrave;re La Pouque est l&rsquo;homologue normand du P&egrave;re Fouettard. Dans son grand sac de toile, il enl&egrave;ve les enfants oubli&eacute;s par le marchand de sable.\n\nLe P&egrave;re La Pouque s&rsquo;est fait', '2016-09-05', '2016-12-31', 'Poste de travail et serveur distant.\nWindows 7 (Machine virtuel)', 'CMS Wordpress', '2018-04-18', 1),
(1225, 1, 3, 3, 82, 4, '[PPE] WORDPRESS', 'R&eacute;alisation d\'un site internet avec le CMS Wordpress.', 'Une association souhaite r&eacute;aliser un site pour faire la communication de leur &eacute;v&eacute;nement.', '2016-09-10', '2016-10-31', 'MySQL, Apache', 'PHP, SQL, HTML', '2018-04-18', 1),
(1227, 2, 3, 3, 92, 4, '[PPE] P&egrave;re la Pouque', 'Demande d\'un site li&eacute; &agrave; un &eacute;v&egrave;nement.', 'Chaque ann&eacute;e &agrave; la saint Nicolas, l&rsquo;&eacute;glise Saint-Nicolas de Caen h&eacute;berge un &eacute;v&eacute;nement culturel &laquo; le P&egrave;re la Pouque &raquo; (PLP)', '2017-04-24', '2017-04-24', 'Wordpress, CMS', 'documentation, site du festival,', '2018-04-18', 1),
(1229, 1, 3, 3, 98, 7, '[PPE] Ma&icirc;trise des outils bureautiques', 'Ma&icirc;triser les outils bureautiques tel que Libre office (traitement de texte) et Excel (Tableur).', 'Aucun contexte sp&eacute;cifique. TP de base pour ma&icirc;triser les outils bureautiques.', '2017-04-24', '2017-04-24', 'Windows 7 (machine virtuelle)', 'Logiciel de traitement de texte : Libre Office\nLogiciel de gestion / tableur : Excel', '2018-04-19', 1),
(1230, 2, 1, 3, 99, 6, '[PPE] Conception d\'un site pour une r&eacute;serve animaliere', 'Conception d\'une base de donn&eacute;es ainsi qu\'un site contenant des formulaires et des requ&ecirc;tes vers la base de donn&eacute;es.', 'Cr&eacute;ation du site et de sa base de donn&eacute;es pour l\'association leveve.', '2017-04-24', '2017-04-24', '', '', '2018-04-18', 1),
(1233, 2, 1, 2, 98, 4, '[SLAM2] D&eacute;veloppement d\'application en Java', 'D&eacute;velopper l&rsquo;application en Java permettant la gestion des salari&eacute;s et des projets de la soci&eacute;t&eacute; Imagin.\n', 'La soci&eacute;t&eacute; IMAGE&rsquo;IN est sp&eacute;cialis&eacute;e dans la conception, le d&eacute;veloppement et la mise en r&eacute;seau d&rsquo;applications de gestion.\n', '2017-01-09', '2017-01-23', 'Windows 7', 'D&eacute;veloppement java sur Notepad++.\nInvite de commande pour d&eacute;-compiler.\nNetbeans', '2018-04-19', 2),
(1234, 1, 1, 3, 81, 4, '[S7] Veille technologique', 'Garder ses connaissances technologiques &agrave; jour.', '', '2016-11-07', '2016-11-09', '', '', '2018-05-22', 2),
(1267, 1, 2, 1, 109, 4, 'fqsfd', 'cbxwcxbw', 'bwxcxcb', '2017-05-04', '2017-05-04', 'bwxc', 'sgdg', '2017-05-04', 1),
(1277, 1, 2, 3, 103, 4, '[V][PPE1] segmentation par Vlan', 'segmenter le r&eacute;seau par diff&eacute;rents services pour assurer une meilleur s&eacute;curit&eacute; ', 'Pr&eacute;parer le terrain en montant un prototype op&eacute;rationnel bas&eacute; sur des &eacute;quipements &eacute;quivalent &agrave; ceux utilis&eacute;s par le client Gestalia ', '2017-05-04', '2017-05-12', 'salle C303', 'prototype: switch(Cisco,ATI), poste de travail ', '2018-04-18', 1),
(1278, 2, 2, 2, 94, 3, '[V][SISR1] Suivis et r&eacute;solution d\'incidents avec GLPI', 'Suivis des incidents dans l\'entreprise avec le syst&egrave;me de ticket sur GLPI. Apr&egrave;s prise en compte du ticket, il faut r&eacute;soudre le probl&egrave;me qu\'il soit logiciel ou mat&eacute;riel.', 'L\'entreprise &agrave; besoin d\'un suivis de ses probl&egrave;mes informatique et fait appel &agrave; nous.', '2017-04-19', '2017-04-19', 'Environnement linux et windows. GLPI.', 'GLPI Outils d\'administration r&eacute;seau', '2017-06-20', 1),
(1279, 2, 1, 2, 94, 3, '[V][SI6] Cr&eacute;ation d\'une BDD avec PHPmyAdmin', 'Cr&eacute;ation d\'une base de donn&eacute;e sous PHPmyAdmin pour la gestion des clients de l\'entreprise. Et cr&eacute;ation de l\'interface utilisateur du site.', 'Cas trouvetou. L\'entreprise a besoin de refaire son site et de cr&eacute;er une nouvelle base de donn&eacute;e', '2016-10-10', '2016-10-10', 'Environnement Windows - Wamp - PHPMyAdmin - PDO', '', '2017-11-28', 2),
(1280, 2, 1, 2, 94, 3, '[V][SI5] Configuration d\'un serveur DHCP', 'Nous devions configurer un serveur DHCP secondaire afin de pouvoir effectuer de la tol&eacute;rance de panne.', 'Section SIO', '2017-04-13', '2017-04-13', 'Serveur Linux sous Debian 8\nservice : isc-DHCP-server', 'Serveur proxmox pour le nouveau serveur\nFichier de configuration du premier serveur DHCP', '2017-12-05', 1),
(1287, 1, 1, 1, 90, 7, '[V][Stage 1] Installation wifi', 'Installation de wifi dans un b&acirc;timent d&eacute;j&agrave; connect&eacute;, &agrave; l\'aide d\'un portail captif ', 'Un h&ocirc;tel a fait appel &agrave; l\'entreprise prestataire ITCN o&ugrave; je suis stagiaire, pour installer la wi-fi dans l\'h&ocirc;tel avec un portail captif et des bornes wifi dans les couloirs  ', '2017-05-18', '2017-05-19', 'Switch et borne Ubiquiti, routeur Mikrotik, et controleur Lc+ ', '', '2018-04-11', 1),
(1288, 1, 1, 1, 102, 7, '[V][Stage1] D&eacute;pannage et &eacute;volution des postes', 'Les postes ont besoins d\'&ecirc;tres remplac&eacute;s ou r&eacute;par&eacute;s. Les postes sont remplac&eacute;s par des machines ou il faut installer windows selon les normes de l&rsquo;h&ocirc;pital avec les logiciels sp&eacute;cifiques. ', 'Il m\'&eacute;tait donn&eacute; de participer &agrave; l\'entretient du parc informatique, il faut donc remplacer, mettre &agrave; jour et r&eacute;parer des postes.', '2017-05-15', '2017-06-16', 'Ordinateurs sous windows XP pro, windows 7 pro et certains peu nombreux sous windows 10.', 'Utilisation de CDs d\'installation avec les pilotes et le syst&egrave;me d\'exploitation. Diagnostique de panne ou de probl&egrave;mes.', '2018-04-25', 1),
(1289, 2, 1, 3, 88, 7, '[PPE]AMAP Prestashop', 'R&eacute;aliser un site d\'E-commerce pour Une AMAP', 'L\'AMAP du lyc&eacute;e a besoin d\'un site d\'e-commerce pour vendre des fruits et l&eacute;gumes', '2017-03-22', '2017-04-20', 'Virtual box windows\n', 'Prestashop', '2017-11-21', 1),
(1290, 1, 2, 1, 101, 7, '[V][STAGE1] Donner des droits sur des groupes d\'AD', 'Le responsable d\'&eacute;tude m\'a demand&eacute; d\'avoir une session sp&eacute;cifique pour modifier et &eacute;crire dans le r&eacute;pertoire CAO-FEVI et que leurs sessions personnelles auront le droit de uniquement lire les fichiers afin de pas modifie', 'Bureau d\'&eacute;tudes de la soci&eacute;t&eacute; NEU FEV, le dossier CAO-FEVI contient les descriptions des pi&egrave;ces standard', '2017-05-24', '2017-05-24', 'R&eacute;seau Micro sous environnement Windows Server 2008R2.', 'Active Directory.', '2019-03-05', 2),
(1292, 1, 2, 1, 103, 2, '[V][STAGE1]  Maintenance ', 'Demande d\'assistance d\'un client suite &agrave; un dysfonctionnement de sa machine', 'entreprise de maintenance', '2017-05-29', '2017-05-29', 'ateliers de maintenance informatique ', 'outils de maintenance, logiciels', '2018-04-18', 2),
(1294, 2, 2, 3, 104, 2, '[PPE] Android Studio', 'Cr&eacute;e une application afin de se familiariser avec Android Studio', 'Cr&eacute;ation d\'un Morpion Joueur vs IA', '2017-05-04', '2017-05-12', 'Windows', 'Android studio', '2018-04-17', 2),
(1295, 1, 2, 1, 94, 2, '[V][Stage1] R&eacute;solution d\'incidents et formation utilisate', 'Nettoyage mat&eacute;riel et logiciel du poste client. Formation de pr&eacute;vention sur les danger que l\'on trouve sur internet (fishing notamment).', 'L\'entreprise fourni une prestation de maintenance et de formation sur la s&eacute;curit&eacute; informatique &agrave; un client professionnel.', '2017-05-25', '2017-05-27', 'Environnement windows.', '', '2018-02-06', 2),
(1296, 1, 2, 1, 94, 3, '[V][Stage 1] Remplacement d\'un syst&egrave;me de sauvegarde', 'Le clients a besoin d\'une sauvegarde de son syst&egrave;me qu\'il effectue sur un disque dur externe. Le disque &eacute;tant vieux et d&eacute;fectueux nous devons le changer.', 'L\'entreprise assure la maintenance du syst&egrave;me de sauvegarde d\'un client professionnel.', '2017-05-30', '2017-05-30', 'Environnement Windows.\nDeux disques dur externe de 2To\nLogiciel Corbian Backup 11\nRAID 1', '', '2018-02-05', 2),
(1300, 1, 3, 1, 103, 4, '[V][STAGE1] Installation d\'un serveur de messagerie', 'Mettre en place un moyen de communication g&eacute;rer en interne entre les clients et l\'entreprise pour faciliter la communication ', 'entreprise de maintenance souhaitant avoir un moyen de communication autonome ', '2017-05-22', '2017-05-23', 'serveur de messagerie sur Ubuntu (Mozilla thunderbird)', 'S.E (Ubuntu, thunderbird)', '2018-02-15', 2),
(1302, 1, 3, 2, 105, 2, '[TP]  SSL', 'Besoin de s&eacute;curit&eacute; des applications, cr&eacute;ation des &eacute;l&eacute;ments de s&eacute;curit&eacute;s, cl&eacute;s et certificats', 'S&eacute;curiser un service Apache avec les outils SSL', '2017-03-23', '2017-04-06', '', 'Commandes LINUX', '2018-04-20', 1),
(1303, 1, 3, 2, 105, 3, '[TP] Installations LuSG', 'Cr&eacute;er un serveur DNS \nEt installer des services comme Bind9 gr&acirc;ce aux commandes Linux.', 'Acc&egrave;s &agrave; l&rsquo;ensemble des machines par un FQDN en proto.voyage1 ou proto.voyage2 selon le groupe gr&acirc;ce &agrave; un serveur d&eacute;di&eacute; &agrave; la r&eacute;solution de noms ', '2017-05-31', '2017-05-31', 'Linux', '', '2018-04-20', 1),
(1304, 1, 1, 1, 105, 2, '[STAGE1]D&eacute;veloppement sur page web', 'Afin de faire des mises &agrave; jour rapidement, Le site FOUSSIER LBA thivel a besoin d\'une simplification de code\n', 'Le site FOUSSIER LBA thivel comporte une page de t&eacute;moignages des diff&eacute;rents clients, ainsi que des vid&eacute;os de leur t&eacute;moignage ', '2017-05-19', '2017-05-24', 'sublime text, php, css, serveur windows', 'site avec compte, authentification avec une adresse mail', '2018-04-20', 2),
(1305, 1, 1, 1, 105, 3, '[STAGE1]Int&eacute;gration de sites et avis', 'Int&eacute;gration d\'avis sous forme de donn&eacute;es structur&eacute;es et ajout de sites \nrefaire la page t&eacute;moignages en langage PHP en utilisant des boucles.D&eacute;cr&eacute;mentation avec compteurs', 'Le site FOUSSIER LBA thivel souhaite int&eacute;grer de nouveaux sites de clients ainsi que leur avis &agrave; ajouter ', '2017-05-29', '2017-06-02', 'sublime text, php', 'serveur windows, utilisation de donn&eacute;es structur&eacute;es gr&acirc;ce &agrave; search.google.com', '2018-04-20', 2),
(1306, 1, 1, 1, 90, 4, '[V][Stage 1]Supervision PRTG', 'ITCN utilise le logiciel de supervision PRTG. Il a fallu que j\'installe cobian et que je fasse une v&eacute;rification des capteurs et de l\'ajout de capteurs, pour surveiller les sauvegardes des clients ', 'La soci&eacute;t&eacute; dans laquelle j\'ai fais mon stage utilise PRTG pour supervis&eacute; le bon d&eacute;roulement des sauvegardes', '2017-06-01', '2017-06-01', 'PRTG, VNC, XIBO, cobian ', '', '2018-04-17', 2),
(1307, 1, 2, 1, 70, 6, '[V][STAGE1] Param&eacute;trage d\'une borne WIFI', 'Un utilisateur avec un poste ce trouvant dans un r&eacute;seau sp&eacute;cifique de l\'entreprise, souhaite avoir acc&egrave;s &agrave; un autre r&eacute;seau sans manipuler de c&acirc;ble.', 'En stage au sein de la CCI un utilisateur souhaite une connexion sans fil.', '2017-05-31', '2017-05-31', 'Windows 10\nPortail Web D-Link', 'D-Link DAP-2360', '2018-04-23', 2),
(1308, 1, 2, 1, 101, 7, '[V][STAGE1] Definir un &eacute;cran d&rsquo;accueil personnalise', 'Definir un &eacute;cran d&rsquo;accueil de poste d\'utilisateur personnalis&eacute; pour un utilisateur sp&eacute;cifique.', 'Bureau d\'&eacute;tudes de NEU FEVI.', '2017-06-02', '2017-06-02', 'R&eacute;seau micro dans le bureau d\'&eacute;tudes.', 'Active Directory / application bginfo / poste.', '2019-02-07', 1),
(1309, 1, 2, 1, 101, 6, '[V][STAGE1]Configuration r&ocirc;le WSUS 4 sur Windows Server 20', 'Automatisation du d&eacute;ploiement des mises &agrave; jour windows sur l\'ensemble du r&eacute;seau de l\'entreprise NEU FEVI.', 'NEU FEVI', '2017-06-02', '2017-06-02', ' r&eacute;seau de l\'entreprise NEU FEVI , les machines sont g&eacute;r&eacute;es dans le domaine AD.', 'R&eacute;seau NEU FEVI et WSUS.', '2018-04-17', 2),
(1310, 2, 1, 3, 94, 7, '[PPE]S\'adapter en fonction de ses ressouces pour respeter le CDC', 'Le Festival du P&egrave;re la Pouque &agrave; besoin d\'un site internet. Nous somme par &eacute;quipe de quatre pour effectuer cette mission. Lors de certaine de nos cessions de travail, un voir plusieurs membre de l\'&eacute;quipe ont &eacute;t&eacute; ab', 'Le festival du P&egrave;re la Pouque', '2016-11-17', '2016-11-24', 'Environnement windows - CMS - Wamp', '', '2017-12-05', 1),
(1311, 2, 1, 3, 94, 6, '[V][SISR1] D&eacute;tection r&eacute;solution de probl&egrave;me', 'L\'entreprise &agrave; mis en place GLPI afin de faciliter la prise en charge des intervention, notamment avec le syst&egrave;me de ticket. Je prend en charge le ticket d\'intervention puis r&eacute;sous le probl&egrave;me &agrave; distance.', 'TP SISIR1', '2017-04-12', '2017-04-12', 'Environnement windows', 'GLPI - Team viewer', '2018-01-17', 2),
(1312, 1, 1, 1, 102, 7, '[V][Stage1] Clonage windows avec disques durs', 'Il fallait rendre les pc portables actuels plus rapides pour qu\'ils puissent &ecirc;tres utilis&eacute;s encore un moment et anticiper la migration sur Windows 10 sur le long terme. on a donc clon&eacute; Windows avec un disque dur', 'Lors du stage il fallait faire &eacute;voluer une vingtaine d\'ordinateurs portables identiques en les passants de w7 &agrave; w10. ', '2017-06-06', '2017-06-06', 'Utilisation d\'un pc portable pour installer w10 puis le copier sur un dock.', 'Un dock de clonage et le disque dur du pc cible', '2018-03-13', 2),
(1314, 1, 1, 1, 102, 3, '[V][Stage1]Installation scanners, sauvegarde sur le r&eacute;sea', 'Installation de 12 scanners pour pouvoir scanner des factures et les enregistrer avec un nom sur le serveur de sauvegarde des scans. Chaque utilisateur &agrave; un dossier &agrave; son nom', 'Installation de scanner pour disposer des factures plus rapidement et les stocker sur un lecteur r&eacute;seau.', '2017-06-07', '2017-06-07', 'Windows xp pro sp3 et windows 7 pro sp1', 'utilisation d\'un cd d\'installation des pilotes puis configuration', '2018-04-18', 1),
(1315, 1, 1, 1, 91, 3, '[V][STAGE1] Mise en place Proxmox et param&eacute;trage des vm', 'Installation d\'un serveur de virtualisation, avec des machines virtuelles Windows 7 et 10', 'un serveur de virtualisation de machines clientes doit permettre la connexion depuis des clients l&eacute;gers', '2017-05-15', '2017-06-16', 'Proxmox, Windows 7 et Windows 10', 'Un serveur HP, des clients l&eacute;gers HP', '2018-04-18', 2);

-- --------------------------------------------------------

--
-- Structure de la table `rpactivite`
--

DROP TABLE IF EXISTS `rpactivite`;
CREATE TABLE IF NOT EXISTS `rpactivite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `niveau_id` int(11) DEFAULT NULL,
  `activite_id` int(11) NOT NULL,
  `rp_id` int(11) NOT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_3CC2747AB3E9C81` (`niveau_id`),
  KEY `IDX_3CC2747A9B0F88B1` (`activite_id`),
  KEY `IDX_3CC2747AB70FF80C` (`rp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rpactivite`
--

INSERT INTO `rpactivite` (`id`, `niveau_id`, `activite_id`, `rp_id`, `commentaire`) VALUES
(1, 1, 1, 255, '&Eacute;tude du CDC pour rep&eacute;rer les informations SSID et cl&eacute; de s&eacute;curit&eacute; d\'avant'),
(2, 3, 1, 261, 'A partir du cahier des charges, installer le nouveau service.'),
(3, 4, 1, 265, 'Mise en place dans un endroit strat&eacute;gique permettant d\'avoir la couverture la plus importante. Configuration via Mac (OSX). Configuration de la borne sur l\'interface web.'),
(4, 5, 1, 347, 'Etude des objectifs attendus par le MediaWiki ainsi que la proc&eacute;dure d\'installation.'),
(5, 2, 1, 660, '&agrave; partir du cahier donn&eacute; par le client, exporter/importer les donn&eacute;es vers un autres site.'),
(6, 2, 1, 683, 'Mise en place d\'un nouvel anti virus permettant de s&eacute;curiser les postes de l\'entreprise avec une fonctionnalit&eacute; anti malware et ransomware.'),
(7, 3, 1, 688, 'Cr&eacute;ation d\'un inventaire des potes utilisateurs avec leurs &eacute;quipements ainsi qu\'un inventaire hardware de chaque PC (config).'),
(8, 3, 1, 690, 'D&eacute;finition du cahier des charges par le directeur afin de d&eacute;finir les nouvelles restrictions de droits utilisateurs.'),
(9, 4, 1, 733, '&agrave; partir d\'une fiche de proc&eacute;dure, d&eacute;monter le PC client '),
(10, 4, 1, 736, '&agrave; partir du cahier des charges, installer les services demand&eacute;s'),
(11, 1, 1, 739, 'A partir du cahier des charges, r&eacute;pondre au besoin.'),
(12, 1, 1, 861, 'Lister les taches r&eacute;alisables &agrave; effectuer, trouver une autre solution en cas d\'impossibilit&eacute;.'),
(13, 2, 1, 881, 'lecture des demandes\nécrit d\'un compte rendu sur les métiers\ncréation d\'un tableau Excel'),
(14, 2, 1, 883, 'Cahier des charges nous pr&eacute;sentant chaque fonctions &agrave; utiliser sous Word ou Excel.'),
(15, 2, 1, 959, 'Analyse du cahier des charges pour réaliser le site avec les différentes catégories demandés (artistes, programmes, boisson,...)'),
(16, 3, 1, 969, 'Lors des PPE nous avons construit un groupe et analys&eacute; le cahier des charges pour installer les fonctionnalit&eacute;s attendues. Ensuite nous avons r&eacute;partit les charges entre les membres du groupe. '),
(17, 3, 1, 971, 'Dans le cas de du projet SIO-Voyage, une documentation nous a été remis.\nNous nous sommes concerté sur les attentes de l\'entreprise, et nous nous sommes répartie les tâches.'),
(18, 3, 1, 975, 'Nous avions un document recensant les demandes de l\'entreprise fictive ainsi que la description de l\'installation d&eacute;j&agrave; existante. Nous avons proc&eacute;der &agrave; un Brainstorming.'),
(19, 1, 1, 976, 'Identifier le contexte et les besoins.\nidentifier les attentes pour le services.\nS\'organiser pour une réunion.\nRécapituler le contenue d\'une réunion.'),
(20, 1, 1, 977, 'Production d\'un cahier des charges'),
(21, 2, 1, 980, NULL),
(22, 3, 1, 983, NULL),
(23, 1, 1, 985, 'Interdire les services qu\'ils communiquent entre eux .\nAssurer la continuité du service .\n'),
(24, 1, 1, 986, 'Produire un cahier des charges'),
(25, 3, 1, 989, 'Analyse du sch&eacute;ma fournit en annexe ainsi que du contexte.'),
(26, 4, 1, 993, ''),
(27, 5, 1, 996, 'Rendre dynamique la gestion des adresses IP'),
(28, 2, 1, 997, 'Production d\'un cahier des charges avec captures d\'&eacute;cran'),
(29, 2, 1, 1000, 'En groupe on a étudié les besoins pour le site, et répartie les différentes tâche entre les membres du groupe'),
(30, 3, 1, 1001, 'Un association &agrave; demand&eacute; un site internet pour un petit festival, et nous a donn&eacute; un cahier des charges.'),
(31, 3, 1, 1002, NULL),
(32, 4, 1, 1005, 'Analyse du sujet pour r&eacute;pondre aux besoins '),
(33, 4, 1, 1082, 'Demande d\'int&eacute;gration d\'une base documentaire, un anti-ransomware et raccourci pour l\'ensemble des postes utilisateurs du domaine.'),
(34, 1, 1, 1090, 'Souhait de l\'entreprise : Mise en place d\'un outil permettant d\'avoir un suivi sur la maintenance des postes utilisateurs. Faciliter le d&eacute;pannage et le rendre plus efficace tout en restant simple pour les utilisateurs. '),
(35, 1, 1, 1097, 'Param&eacute;trer le domaine avec des GPO'),
(36, 2, 1, 1127, 'Travail de groupe de mise en place et de documentation'),
(37, 2, 1, 1148, 'Nous avons analyser le cahier des charges de l\'entreprise pour identifier correctement les besoin de l\'entreprise. Pour cela nous nous somme r&eacute;unis pour r&eacute;fl&eacute;chir collectivement.'),
(38, 2, 1, 1150, 'Nous devions analyser le sujet du TP pour pouvoir r&eacute;aliser au mieux notre t&acirc;che'),
(39, 3, 1, 1151, 'Identifier le besoin '),
(40, 3, 1, 1170, 'Superviser l\'ensemble des &eacute;quipements r&eacute;seau AMN via zabbix.'),
(41, 3, 1, 1176, 'Analyse du projet en groupe &agrave; l\'aide du cahier des charges fournis initialement '),
(42, 1, 1, 1177, 'Lecture du cahier des charges fournis par l\'association.'),
(43, 1, 1, 1178, 'analyse du projet avec le cahier des charges fournit initialement'),
(44, 2, 1, 1179, 'Prise en compte du cahier des charges, organisation du site selon les besoin  des utilisateurs et de l\'entreprise. Organisation des r&ocirc;les au sein du groupe.\nR&eacute;daction d\'un compte rendu individuel apr&egrave;s chaque PPE.'),
(45, 3, 1, 1180, 'Bien comprendre les &eacute;l&eacute;ments n&eacute;cessaire au site et r&eacute;pondre au demande comme par exemple r&eacute;pondre a la demande de faire la localisation et un page avec les photos .'),
(46, 1, 1, 1181, 'Il fallait &eacute;tudier un cahier des charges qui nous permettait de savoir le contenu du site, des pages, etc ...'),
(47, 3, 1, 1182, 'Analyser le projet avec le cahier des charges '),
(48, 4, 1, 1183, 'analyse du cahier des charges du projets'),
(49, 5, 1, 1184, 'Analyser les besoins du site li&eacute;s &agrave; l\'&eacute;v&egrave;nement (boissons, concert, musique) '),
(50, 2, 1, 1185, 'D&eacute;terminer a partir du cahier des charges, les fonctionnalit&eacute; du site, les acteur concerner par celui-ci et le contexte dans lequel s\'inscrit son utilisation.'),
(51, 2, 1, 1186, 'Recensement des demandes afin de pr&eacute;senter une solution coh&eacute;rente sur l&rsquo;ensemble du site e-commerce avec respect des diff&eacute;rentes normes'),
(52, 3, 1, 1187, 'D&eacute;finition des fonctionnalit&eacute;s de l\'application et de ses utilisateurs.'),
(53, 3, 1, 1188, 'Il fallait &eacute;tudier la commande du client'),
(54, 4, 1, 1189, 'Analyser le projet avec le cahier des charges'),
(55, 4, 1, 1190, 'Prendre en compte toute les demande du cahier des charges et les retranscrire dans le CMS.'),
(56, 1, 1, 1192, 'lire la documentation pour l\'application du code'),
(57, 1, 1, 1194, 'Lire le cahier des charges en groupe et assimiler les taches &agrave; chaque personne'),
(58, 2, 1, 1195, '&Eacute;valuer les besoins d\'un site web (les informations qu\'il contiendra sur les animaux et les actions &agrave; effectuer)'),
(59, 2, 1, 1196, 'Analyse de la demande '),
(60, 2, 1, 1197, NULL),
(61, 3, 1, 1198, 'Comprend tout les besoins comme une page de dont,de missions,d\'adh&eacute;rent.'),
(62, 3, 1, 1199, 'Analyse du cahier des charges fournis par le lyc&eacute;e.'),
(63, 3, 1, 1200, 'Restrictions et demandes du client'),
(64, 1, 1, 1201, 'Recherche des directives, des besoins du client'),
(65, 1, 1, 1202, 'Restrictions et demande du clienta respecter'),
(66, 2, 1, 1203, NULL),
(67, 3, 1, 1204, 'Le cahier des charges nous demandait de faire une application interne pour que l&rsquo;association puisse g&eacute;rer leur base de donn&eacute;es.'),
(68, 1, 1, 1205, 'lire les documents technique '),
(69, 3, 1, 1206, 'analyse et compr&eacute;hension du cahier des charge fourni pour le TP'),
(70, 4, 1, 1208, 'Cahier des charges regroupant la production attendues sur ce projet'),
(71, 5, 1, 1209, 'Il fallait rep&eacute;rer les exigences du client.'),
(72, 2, 1, 1211, 'Concevoir les besoins et les contraintes du jeu &agrave; mettre en place'),
(73, 2, 1, 1214, 'Analyse de la demande du client'),
(74, 3, 1, 1215, 'Analyse du cahier des charges '),
(75, 3, 1, 1216, NULL),
(76, 4, 1, 1217, ''),
(77, 4, 1, 1218, NULL),
(78, 1, 1, 1219, 'Identification des diff&eacute;rents plugins &agrave; installer.'),
(79, 1, 1, 1221, 'compr&eacute;hension des besoins et d&eacute;composition des taches demander analyse compr&eacute;hension des besoins comme les STA a mettre en place\n'),
(80, 2, 1, 1224, 'Connaitre les besoins et les appliquer &agrave; la solution.'),
(81, 2, 1, 1225, 'Lecture du cahier des charges fournis par l\'association.'),
(82, 2, 1, 1227, NULL),
(83, 3, 1, 1230, 'Indique les divers besoins du client pour le contenu du site.'),
(84, 3, 1, 1289, NULL),
(85, 3, 1, 1290, 'Changement d\'environnement de l\'entreprise au niveau du bureau d\'&eacute;tudes.'),
(87, 1, 1, 1302, 'Analyse de la documentation afin de r&eacute;aliser les t&acirc;ches demand&eacute;es'),
(88, 2, 1, 1303, 'Analyse du cahier des charges et r&eacute;pondre aux besoins'),
(89, 3, 1, 1310, 'Apr&egrave;s constatation de l\'absence d\'un des membres de l\'&eacute;quipe, nous avons fait une r&eacute;union pour planifier le travail de chacun. J\'ai ensuite en temps que chef de projet r&eacute;diger un compte rendu de cette r&eacute;union.');

-- --------------------------------------------------------

--
-- Structure de la table `semaine_stage`
--

DROP TABLE IF EXISTS `semaine_stage`;
CREATE TABLE IF NOT EXISTS `semaine_stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stage_id` int(11) DEFAULT NULL,
  `num_semaine` int(11) DEFAULT NULL,
  `apprentissage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bilan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_877C1C32298D193` (`stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `semaine_stage`
--

INSERT INTO `semaine_stage` (`id`, `stage_id`, `num_semaine`, `apprentissage`, `bilan`) VALUES
(20, 17, 1, '', 'Très positif, beaucoup de choses apprises (méthodes d\'authentification, cryptage..)'),
(21, 17, 2, '', 'Semaine très longue à cause de cette authentification par certificats qui ne voulait pas fonctionner mais positive néanmoins car j\'ai vu la mise en place d\'une autorité de certification qui m\'a appris beaucoup de choses.'),
(22, 17, 3, '', 'Semaine très enrichissante, compréhension approfondie de la méthode mise en place notamment sur l\'aspect Autorité de certification et certificats.'),
(23, 17, 4, '', 'Semaine très enrichissante,second projet qui avance bien, malgré quelques problèmes réglés petit à petit, le serveur EMM avance.'),
(24, 17, 5, '', 'La configuration du serveur et assez compliqué, je trouve, du fait que ce soit sur Linux et en Open Source. Je ne sais pas si le serveur fonctionnera à la fin du stage mais ça avance petit à petit.'),
(25, 17, 6, '', 'Semaine enrichissante et très intéressante grâce à la mise en production de la solution. Mais je reste sceptique sur la solution qui ne me parait pas fiable à 100%.'),
(26, 17, 7, 'Semaine assez compliqué au niveau de WSO2 IoT et de l\'application système. Sentiment de ne pas avoir fini complètement un travail. Sinon, stage très enrichissant, beaucoup de connaissances apprises et très bon lieu de stage avec des personnes compét', ''),
(34, 24, 1, '-	Prise en main de l\'outil VSphere\n-	Fonctionnement des imprimantes Konica\n-	Utilisation du logiciel de restauration Acronis True Image 2017\n-	Configuration basique du réseau\n-	Commandes pour TFTP &amp; mise à jour de l\'iOS du switch\n', 'Première semaine permettant de prendre connaissance de l\'environnement du stage. \nLe projet switch permet de compléter les éléments vus en cours\nDifficulté au niveau de la maj du switch : prise de conscience quant à la gestion du temps '),
(35, 24, 2, '-Prise en main MacOS\n-Configuration imprimante Konica\n-Fichier de configuration pour switch\n-Gérer la suppression/restauration d\'un fichier de configuration sur les switchs cisco\n', '-Utilisation de MacOS permet de s\'adapter à un nouvel environnement\n-Plus d\'indépendance\n\nTuteur absent \n-Contact avec les utilisateurs\n-Plus grande connaissance des services et des locaux\n-Adaptation et intégration\n'),
(36, 24, 3, '- Brassage et repérage au niveau de différentes baies pour savoir à quel prise correspond aux ports \n- Transfert via xmodem\n- fonctionnement des lecteurs de carte vitale', 'Des difficultés au niveau du repérage concernant le brassage - presque aucune prise n\'est étiqueté et très peu de documents sont fournis quant au positionnement et à l\'organisation des baies de brassages présentes sur le site\n\nTuteur absent'),
(37, 24, 4, 'Paramétrer une machine virtuelle en ligne de commande derrière un proxy\nInstallation du logiciel métier Eris ', 'Semaine chargée, organisation du travail satisfaisante - tuteur absent '),
(38, 24, 5, 'Fonctionnement du logiciel TrueAcronis Image', 'Intéressant - projet de déploiement avançant très rapidement, il reste certaines choses à finaliser'),
(39, 24, 6, 'Compétences augmentées concernant la création d\'un script batch', 'La configuration wapt et le déploiement des agents wapt requièrent plus de paramétrages lorsqu\'un proxy est utilisé - le projet est testé et validé'),
(40, 24, 7, 'Fonctionnement Nagios/centreon\nLogiciel Network topology mapper - solarwinds\nFonctionnement hyper-v', 'Utiliser Hyper-V sur un hyperviseur - des manipulations sont à faire sur la configuration de la vm et ses fichiers de configuration'),
(48, 23, 1, 'Appropriation des commandes de switching HP et de la technologie IRF.', 'Impossible de configurer un port IRF sous les switchs HP 5120, sans un module physique en plus. J\'ai donc configuré les nouveaux switchs 5130, qui sont eux compatibles.\nTrès bonne semaine, un projet qui va être mené de A à Z et qui avance.'),
(49, 23, 2, 'Apprentissage des fonctionnalités des switchs HP. Plus particulièrement, la configuration des ACLs pour la communication inter-VLANs. ', 'Un début de semaine productif qui a permis de finir le premier projet, mené de bout en bout, et de construire une documentation complète.Le reste de la semaine m\'a permis de commencer un autre projet, mais une erreur bloque l\'avancement.'),
(50, 23, 3, '', ''),
(51, 23, 4, 'Méthode de déploiement et de désinstallation sur un parc, difficulté avec Java et la désinstallation des versions obsolètes.\nErreur de déploiement d\'image système avec clonezilla, le STP doit être désactivé sur le vlan ou ports.', 'Une semaine très intéressante, des projets concrets avec des erreurs résolues, qui permettent d\'aller jusqu\'au bout de la démarche, et d\'approfondir mes connaissances.'),
(52, 23, 5, '', ''),
(53, 23, 6, 'Recherche sur comment paramétrer efficacement les déclencheurs Zabbix, par port, sur une pile IRF.', 'Finalisation de mes projets, bilan de stage avec mon tuteur qui me transmets les clés pour la dernière semaine.'),
(54, 23, 7, 'Solution de configuration des déclencheurs Zabbix trouvée. Autonomie et indépendance durant cette dernière semaine.', 'Dernière semaine très enrichissante avec une autonomie complète, des dépannages utilisateurs, ainsi que des incidents qui sont résolus. Permet vraiment d\'intégrer la charge de travail d\'un administrateur.'),
(55, 16, 1, 'Prendre des repère dans le nouveau réseau de l\'entreprise qui a beaucoup évolué.  Apprivoiser l\'ensemble des serveurs et services présents. ', 'Semaine de reprise, avec beaucoup de choses à faire découverte de l\'évolution de l\'entreprise et de son réseau informatique. Des nouvelles politiques mises en place.'),
(56, 16, 2, 'Prise en main d\'une &quot;vraie&quot; console antivirus', 'Bonne semaine, bon projet sur les ransomware avec une possible evolitode l\'antivirus de l\'entreprise donc peut être une remise à niveau à faire dans une nouvelle technologie d\'antivirus'),
(57, 16, 3, 'Découverte de la technologie Microsoft Azure\nDécouverte de l\'utilisation de Windows Datacenter et de Vmware sur un datacenter\nMise en place d\'une ferme de serveur', 'Semaine avec la découverte de la création d\'une ferme de serveur. L\'apprentissage d\'un nouveau type de serveur (Broker). La gestion du projet (avec l\'aide mon tuteur).'),
(58, 16, 4, 'Migration d\'une forêt et d\'un domaine très intéressante, et assez &quot;rare&quot; puisque cette opération n\'est pas réalisée régulièrement ', 'Apprentissage de la migration de domaine et foret et du CD. Début de la création d\'un livret, tâche très intéressante.'),
(59, 16, 5, '', 'La réunion avec Proginov (entreprise qui gère le datacenter) était très instructive, elle m\'a permis de comprendre comment était organisé le datacenter vis-à-vis de l\'entreprise, et de voir les dernières technologies et fonctionnalités proposées'),
(60, 16, 6, 'Rigueur dans la rédaction du LUI, qui doit pouvoir être accessible à n\'importe quel utilisateur.\nMise en place d\'une GPO par clé de registre, je ne savais pas que cela était possible', 'Découvertes chaque jour de nouvelles choses ! '),
(61, 16, 7, '', ''),
(76, 25, 1, 'Comprendre le code de l\'application existante. Il y avait beaucoup de fonctions qui se recoupaient. Le tout n\'était pas développé en POO (car c\'est ma mission). De plus, le code n\'était pas beaucoup commenté.', 'Première semaine satisfaisante, je pense avoir retrouvé mes repères sur certains points techniques essentiels à la réalisation du projet. Je pense notamment à l\'utilisation et manipulation des tableaux PHP.'),
(77, 25, 2, 'Approfondissement de mes connaissances en JavaScript.', 'Semaine intéressante, ponctuée de quelques difficultées qui m\'ont permis d\'approfondir mes connaissances en JS.'),
(78, 25, 3, 'Quelques fonctions de JQuery utiles pour faire le datepicker sur un champ de type text simple. Également quelques notions d\'AJAX, même si finalement je ne m\'en suis pas servi.', 'Toujours quelques difficultées avec tout ce qui touche au JS, car je n\'ai pas assez de connaissances dans ce domaine, donc je me documente sur internet.'),
(79, 25, 4, 'Les fonctions PHP dérivées de ODBC (Open Database Connectivity) pour pouvoir, dans mon cas, à la fois manipuler une base SQLserver de Microsoft et une base MySQL.', 'Quelques difficultés dans la compréhension du fonctionnement du script des mises à jour des bases de données l\'une en fonction de l\'autre. Heureusement, cette période est révolue !'),
(80, 25, 5, 'Ré-apprentissage et compréhension du fonctionnement de l\'AJAX. ', 'Difficultés dans la manipulation de la base de données Sage. Cela vient du fait qu\'elle est très complexe, il faut faire le tri dans les informations nécessaires et à garder, et les autres superflux.'),
(81, 25, 6, 'Peu d\'apprentissages nécessaires cette semaine. Il s\'agissait plutôt du début de la finalisation de l\'application en vu de la fin du stage de la semaine prochaine.', 'Pas de difficultés particulières cette semaine. '),
(82, 25, 7, 'Pas de gros apprentissages nécessaires pour cette semaine.', 'La plus grosse difficulté à laquelle j\'ai dû faire face cette semaine, est la correction des bugs que les utilisateurs m\'ont fait remonter. '),
(83, 21, 1, '', 'Cahier des charges construit et développement de l\'application commencé\nPerte de temps sur le smartphone virtuel, le logiciel demande beaucoup trop de ressources à l\'ordinateur pour pouvoir fonctionner. Les tests s\'effectueront sur un smartphone phys.'),
(84, 21, 2, 'Gestion des permissions d\'une application Android pour l\'accès à l\'appareil photo et aux fichiers du téléphone ainsi que l\'accès à internet et à la position pour le module GPS.', 'Impossibilité de tester si le module GPS est fonctionnel en intérieur donc programmation à l\'aveugle à cause du signal GPS faible.\nFonction de récupération de photo fonctionnelle, interface de l\'application réorganisée.'),
(85, 21, 3, 'Librairie java/android, message pop-up système.', 'La gestion des permissions sur android se fait différemment à partir de la version 6.0, l\'entreprise utilisant des téléphones à la fois en 5.5 et en 6.0, la gestion des permissions doit être fonctionnelle pour les deux versions.'),
(86, 21, 4, 'AsyncTask en java (permet l\'exécution d\'un script en tâche de fond)', 'La base de données est créée il ne reste plus qu\'à relier toute l\'application à celle-ci pour finir cette tâche.'),
(87, 21, 5, 'SQLite', 'Non présent ce mardi car passage de test à Rennes (convocation fournie aux tuteurs de stage).\nBase de donnée SQLite implémentée, quelques liaisons effectuées avec certains champs.'),
(88, 21, 6, '', 'Liaison de la base SQLite avancée de moitié.\nL\'application web traitant les statistiques téléphoniques de l\'entreprise n\'étant pas automatique il était nécessaire d\'automatiser les requêtes pour une mise à jour automatique par an. '),
(89, 21, 7, '', ''),
(97, 27, 1, 'Les difficultés rencontrés :\n_ Adapter la solution existante pour qu\'elle répondre aux nouveaux besoins.\n_ Recherche d\'informations sur les différentes versions d\'android afin que les sécurités mise en place puissent empêcher l\'utilisateur de qui', 'La première semaine était plutôt centré sur l\'adaptation de l\'existant en fonction des nouveaux besoins, et de l\'analyse de ces nouveaux besoins.'),
(98, 27, 2, 'Cette semaine j\'ai pu apprendre qu\'il étais possible de stocker une image dans une base de donnée SQLite (et mysql par la même occasion)', 'Cette semaine j\'ai rencontré pas mal de difficulté sur l\'enregistrement d\'une image dans la base de donnée et comment utiliser celle-ci. Problème qui est toujours pas résolut et donc sera dans le meilleur des cas corriger semaine prochaine.'),
(99, 27, 3, 'Cette semaine ma permis d\'apprendre à récupérer les valeurs d\'une base de données et de les utiliser de manière différente. ', 'La principale difficulté a été d\'utiliser une bibliothèque éxistante et de l\'adapter pour l\'utiliser en fonction des besoins.'),
(100, 27, 4, 'Durant cette semaine j\'ai pu voir la difficulté d\'utiliser une association avec SQLite.', 'Difficulté sur l\'assignation des contacts enregistré dans une association. La tâche sera continué la semaine prochaine.'),
(101, 27, 5, 'Utilisation d\'une association en SQLite.\nLecture des SMS reçut sur le terminal et affichage de ceux-ci.', 'Difficulté rencontré sur l\'affichage des SMS avec l\'utilisation d\'un Uri.'),
(102, 27, 6, 'Utilisation du Json et du transfert de données d\'un site à une application', 'Le transfert d\'une image décodé d\'une base 64 sur une application et la réceptionner pour ensuite l\'encoder en base 64.'),
(103, 27, 7, '', 'Difficulté sur la livraison sur serveur externe, et de la communication entre le serveur et l\'application.'),
(104, 37, 1, '', ''),
(105, 37, 2, '', ''),
(106, 37, 3, '', 'Une semaine bien compliquait avec l\'intégration des services hardwares des serveurs HP ainsi que les remonter d\'alerte en snmp. De plus, les mibs et les numéros oid des checks ne sont pas faciles à retrouver voir erroné'),
(107, 37, 4, '', 'Une semaine positive, avec plein de fonctionnalité dans Nagios qui fonctionne malgré les problème rencontrés '),
(108, 37, 5, '', 'Semaine pleine de réussite avec la création de carte sur Nagvis, le coté supervision hardware des switchs réussi ainsi que la supervision de bande passante.\nProblème avec l\'installation de mrtg afin de superviser la bande passante'),
(109, 37, 6, '', ''),
(110, 37, 7, '', 'Semaine plus légère surement a cause de la fin du stage mais avec une activité jusqu\'au bout.'),
(111, 38, 1, 'La page d\'accueil ne s\'adaptait pas à l\'écran lorsque l\'écran pour Mobile est tourné en Paysage. Il fallait définir les marges automatiquement et non manuellement', 'Semaine1 sur le maquettage de deux pages HTML, la page d\'accueil et la page paiements du projet ENSU (permettra à la DGFiP et aux contribuables de consulter (+ payer) leurs factures (impôts, etc...) Chaque page doit être adaptée PC/Mobile/Tablette'),
(112, 38, 2, '', 'La semaine était bcp + difficile techniquement, (maquettage HTML au langage JAVA) avec des méthodes particulières à la DGFiP. Après avoir terminé tuto (bases de dev de la DGFiP), écriture d\'une méthode pour le projet ENSU. Smn bcp + intéressante '),
(113, 38, 3, '', 'travail sur Validator interessant même si peut devenir répétitif. Projet ATENE particulier car appartenait à INSEE (abandon), donc reprise de la DGFiP pour remettre aux normes et utiliser. Projet avec d\'incompréhensions car pas doc de specifications'),
(114, 38, 4, '', 'Semaine intéressante, toujours sur le Projet ATENE, projet difficile, étant donné qu\'aucune spécification n\'est fournie par la MOA, ce qui aboutit à des hésitations quant à ce qu\'il faut développer. Il faut souvent modifier/suppr travail réalisé'),
(115, 38, 5, '', 'Projet compliqué, avec bcp de questions à cause d\'une MOA inexistante, qui ne fournit aucune documentation. Seul 1 événement est presque terminé, il en reste une 30aine, pour Mars 2017. Réunion mise au point. ATENE permet de saisir des CERFA en lign'),
(116, 38, 6, '', 'Les événements s\'enchaînent de plus en plus vite, ils sont moins longs, et le travail à effectuer est connu, contrairement au premier événement.\nLe projet se développe peu à peu et de + en + vite.'),
(117, 38, 7, '', 'Dévt des événements consacrés aux Personnes Morales (EvtXXM), avec la création des Validators et correction des JSP et des classes sources de nombreuses erreurs. Je m\'étais fixé l\'objectif de terminer tous les M avant la fin du stage. C\'est réussi'),
(125, 40, 1, 'Besoin que les personnes soient présentent physiquement', 'Semaine qui commence avec un sujet assez compliqué mais très intéressant'),
(126, 40, 2, '', 'Documentation pas a jour pour la configuration du disque reseau'),
(127, 40, 3, '', 'Exécutable pour le photocopieur qui ne se creer pas, fonctionnalités windows 10 qui se réinstalle apres désinstallation'),
(128, 40, 4, 'Ligne de commande Linux SUSE', 'Se mettre en insertion sous linux suse'),
(129, 40, 5, 'Ligne de commande centOS', 'Commande centOS'),
(130, 40, 6, '', ''),
(131, 40, 7, '', ''),
(132, 41, 1, 'Formation Excel pour mettre en relation les données avec la base de données MySQL.', 'Le projet se déroule de manière organisée, avec beaucoup de questionnement au début qui ont eu des réponses rapidement due à ma présence auprès de Mme Gallier-Langlois. Nous avons fait un compte-rendu le vendredi pour que la suite du projet soit e'),
(133, 41, 2, 'Formation Excel pour mettre en relation les données avec la base de données MySQL.', ''),
(134, 41, 3, 'Formation Excel pour mettre en relation les données avec la base de données MySQL.', ''),
(135, 41, 4, 'Formation Excel pour mettre en relation les données avec la base de données MySQL.', ''),
(136, 41, 5, 'Formation Excel pour mettre en relation les données avec la base de données MySQL.', ''),
(137, 41, 6, '', ''),
(138, 41, 7, '', ''),
(139, 42, 1, '/', 'Semaine de découverte : \n- environnement de travail\n- les autres salariés\n- le commencement du projet'),
(140, 42, 2, '', '\nBeaucoup de documents à préparer avant le développement qui n\'a commencé que vendredi, mais semaine intéressante qui m\'a appris quelques notions.'),
(141, 42, 3, '', ''),
(142, 42, 4, 'Maquettage sur photoshop(travail d\'observation)', ''),
(143, 42, 5, '', 'Le plugin Google maps n\'est pas fonctionnel, pareillement pour la fonction au passage de la souris, à revoir début semaine prochaine'),
(144, 42, 6, '', ''),
(145, 42, 7, '', ''),
(153, 44, 1, '', 'â€“ Accueil de l\'équipe informatique.\nâ€“ Présentation de l\'équipe informatique.\nâ€“ Mise au point sur la mission à réaliser.\n- Mission 1 commencé et terminé\n- Mission 2 commencé'),
(154, 44, 2, '', ''),
(155, 44, 3, 'Apprentissage de l\'AJAX\nRéutilasation du JAVASCRIPT', 'Difficulté sur la création du fichier de log car il faut utiliser AJAX puisque qu\'on éxecute la commande en JAVASCRIPT et on écrit dans le fichier en PHP'),
(156, 44, 4, 'Apprentissage de l\'AJAX\nRéutilasation du JAVASCRIPT', 'Difficulté sur la création du fichier de log car il faut utiliser AJAX puisque qu\'on éxecute la commande en JAVASCRIPT et on écrit dans le fichier en PHP\nRésolution du problème en effectuant des recherche approfondie'),
(157, 44, 5, 'Apprentissage de SQLITE\nRéutilasation des requêtes PDO', ''),
(158, 44, 6, '', ''),
(159, 44, 7, '', ''),
(160, 45, 1, '', 'â€“ Accueil de l\'équipe informatique.\nâ€“ Présentation de l\'équipe informatique.\nâ€“ Découverte d\'un nouveau logiciel Dreaweaver\nâ€“ Mise au point sur la mission à réaliser.\nâ€“ Réaliser une application pour le site intranet de l\'Hôpit'),
(161, 45, 2, '', ''),
(162, 45, 3, '', ''),
(163, 45, 4, '', ''),
(164, 45, 5, '', ''),
(170, 47, 1, '', 'La semaine c\'est très bien déroulée, les besoins ont été très clairs et je les aient compris au vu de la mise au point. Mon travail avance bien cependant il faut que je penses au resposif du site dans mon développement ce qui risque d\'apporter quel'),
(171, 47, 2, 'Durant cette semaine j\'ai pu travailler avec bootstrap que j\'avais déjà utilisé lors de mon dernier stage. J\'ai également appris a utiliser le CMS WIX qui est très simple a utiliser et un très bon CMS je trouves.', 'Difficultés: Responsif, problèmes avec Bootstrap,problème de résolution d\'écran lorsque l\'écran du terminal se met en format paysage.\nLa semaine c\'est bien déroulé, sauf les problèmes de responsive qui me prennent beaucoup de temps.Découverte d'),
(172, 47, 3, 'Mes connaissance sur le CMS WIX se sont approfondies étant donné que je réalise un deuxièmes site sur ce CMS.', 'Difficultés : aucune durant cette semaine\nBilan : La semaine c\'est bien déroulé, le cms que j\'avais fait a été validé (il y avais seulement quelques modifications a effectué, très légères). Le site étant terminé, il m\'a été demandé de fair'),
(173, 47, 4, 'Je travail toujours sur le cms wix ce qui me forme de mieux en mieux a celui-ci.', 'Difficultés :Le cms wix fait directement le responsif, il est possible de supprimer des éléments (de les retirer) cependant pas d\'en rajouter ou de modifier ce qui est déjà existant, donc pas de grande marge de manÅ“uvre.'),
(174, 47, 5, 'Durant cette semaine j\'en est appris plus sur le référencement des sites car j\'ai effectué des recherches pour savoir comment allé être référencé le site, comment améliorer son référencement, j\'ai également appris se qu\'est l\'indexation. ', 'La seamine c\'est bien déroulée, j\'ai apporter des modifications aux sites grâce a la réunion de lundi. J\'ai finis également un site d\'un filiale et commencé un autre plus important.'),
(175, 47, 6, 'Apprentissages sur le CMS wix et sur la réalisation d\'une documentation.', 'Durant cette semaines j\'ai réglé les dernières modifications des sites car la semaine prochaine mon travail portera essentiellement sur la réalisation d\'une documentation du CMS que j\'ai débuté vendredi.'),
(176, 47, 7, 'Durant cette semaine j\'ai appris a réaliser une documentation complète sur un CMS (WIX).', 'La semaine c\'est bien déroulé, mon travail a porté essentiellement sur la création d\'une documentation pour que les personnes qui vont reprendre les sites sachent comment utiliser le cms entièrement. Mon tuteur ma également montré la salle serveur.'),
(177, 48, 1, '', 'Semaine plutôt faible en apprentissage, la difficulté a été de comprendre les besoins de l\'utilisateur '),
(178, 48, 2, '', 'La plus grosse difficulté à été le formulaire de trie non pas dans le trie lui même mais dans l\'affichage des résultat car une personnalité a plusieurs rôle (problème boucle while ) '),
(179, 48, 3, 'Découverte et utilisation des fonctions $array_unique et $array_key_exists', 'Comme dit dans le compte rendu précédant le trie me pose encore souci (si une personnalité est Â« président d\'association Â» et Â« conseillé municipale Â» il résultera du trie Â« président municipale Â»). La fonction d\'affichage des doublons fu'),
(180, 48, 4, 'Création de fichier Excel/CSV', 'Cette semaine aura été plus importante au niveau des déplacements dans des services extérieurs. J\'ai enfin trouvé, avec l\'aide du chef de service, une solution pour le problème de la liste finale.'),
(181, 48, 5, 'fonction permettant de lire un fichier Excel', 'semaine assez  varié entre développement/réseau/maintenance micro. livraison a l\'utilisateur en fin de semaine pour un premier retour, je commence à voir la fin du projet.'),
(182, 48, 6, '', 'premier retour sur mon application (d\'où la correction de bug). avec l\'aide d\'un autre technicien l\'intégration de donnés en base avance vite (+ de 300 personnalités, +de 200 rôles et certain lien à faire a la main en base).'),
(183, 48, 7, '', ''),
(184, 49, 1, '', ''),
(185, 49, 2, '', ''),
(186, 49, 3, '', 'Intégration avec les mauvaises méthodes et certains oublis. Cependant une bonne reprise en main de Symfony.'),
(187, 49, 4, '', ''),
(188, 49, 5, '', ''),
(189, 49, 6, '', ''),
(190, 49, 7, '', ''),
(196, 51, 1, '', 'Semaine de découverte de l\'entreprise et de son infrastructure'),
(197, 51, 2, '', ''),
(198, 51, 3, '', ''),
(199, 51, 4, '', ''),
(200, 51, 5, '', ''),
(201, 51, 6, '', ''),
(202, 51, 7, '', ''),
(203, 52, 1, 'Donnée les droit administrateur via le web pour l\'utilisateur appache ', 'Mise a part définir les droit d\'administrateur aucune difficulté notable. '),
(204, 52, 2, '', 'La principale difficulté est de adaptés son vocabulaire technique avec des gens non initié a l\'informatique '),
(205, 52, 3, 'Découverte des service d\'affichage dynamique installation/configuration. ', 'Plusieurs difficulté avec des application non compatible avec les système d\'exploitation utilisé (la non compatibilité se fait entre un linux mint et un Ubuntu) ou des machine pas assez puissante pour faire tourner des service comme BigBlueButton'),
(206, 52, 4, '', ''),
(207, 52, 5, '', ''),
(208, 52, 6, '', ''),
(209, 52, 7, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `source`
--

DROP TABLE IF EXISTS `source`;
CREATE TABLE IF NOT EXISTS `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `source`
--

INSERT INTO `source` (`id`, `libelle`) VALUES
(1, 'Stage'),
(2, 'TP'),
(3, 'ADP');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etudiant_id` int(11) DEFAULT NULL,
  `enseignant_id` int(11) DEFAULT NULL,
  `nomtut` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teltut` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailtut` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lieu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbsemaine` int(11) DEFAULT NULL,
  `nomentreprise` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adrentreprise` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copos` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directeur` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codenaf` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siret` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telentreprise` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailentreprise` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `sujet` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_lun` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_mar` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_mer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_jeu` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_ven` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hor_sam` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C27C9369A873A5C6` (`etudiant_id`),
  KEY `IDX_C27C93697CF12A69` (`enseignant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`id`, `etudiant_id`, `enseignant_id`, `nomtut`, `teltut`, `mailtut`, `lieu`, `nbsemaine`, `nomentreprise`, `adrentreprise`, `ville`, `copos`, `directeur`, `codenaf`, `siret`, `telentreprise`, `mailentreprise`, `date_debut`, `date_fin`, `sujet`, `hor_lun`, `hor_mar`, `hor_mer`, `hor_jeu`, `hor_ven`, `hor_sam`) VALUES
(13, 10, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'gestion interim', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411515', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 10, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'boutique de la ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411516', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 52, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'RCM Ronan Chabo', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411517', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 44, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Groupe Chatel, ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411518', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 53, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'GAEAU - Zone d\'', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411520', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 49, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'CMAI du Calvado', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411522', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 68, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Clinique Saint ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411523', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 73, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'O.S.I.NX Actima', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411524', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 62, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Picse,\n14 rue ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411525', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 12, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Legallais \n7 r', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411529', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 64, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'DGFiP\n12, rue ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411530', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 65, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Direction Génér', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411532', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 42, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, '34 Avenue Henri', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411533', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 50, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Conseil départe', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411534', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 71, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'CIRISI Cherbour', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411536', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 71, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Hospital Pasteu', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411537', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 67, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Nom: Sturno\nAd', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411539', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 72, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Service informa', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411540', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 55, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'STBF - Rue des ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411541', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 61, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Chambre de Comm', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411543', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 66, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'itcn\nZ. I. de ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411544', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 49, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'CMAI du Calvado', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411545', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 82, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'GAEAU 4 Z.A. de', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411546', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 76, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'STB LE HAVRE', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411547', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 101, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Fevi , Campauge', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411548', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 105, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Entreprise FOUS', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411549', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 90, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'ITCN (informati', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411550', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 102, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'h&ocirc;pital R', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411551', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 99, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Lyc&eacute;e Je', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411552', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 92, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Ligue de Basse-', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411553', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 78, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Quelle Chouette', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411554', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 70, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'CCI de Normandi', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411555', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 81, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Saint Louis Suc', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411557', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 95, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'ITCN, Zi de sau', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411558', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 100, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'American Cars\n', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411559', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 96, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'F&eacute;d&eacu', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411562', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 93, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'La loco, rue de', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411563', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 57, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Caen informatiq', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411564', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 77, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'STB Le Havre, R', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411565', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 103, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Iinnovia\n1009 ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411567', '707', 'mail@entreprise.fr', '2017-05-15', '2017-06-16', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 94, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'LGR informatiqu', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411568', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 88, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Zephyr Web  \n3', 'adrEntreprise', NULL, NULL, 'directeur', '6202B', '132561215411569', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 79, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Icep-cfa, 8 Rue', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411570', '707', 'mail@entreprise.fr', '2017-05-11', '2017-06-30', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 91, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Picse Info, 14 ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411571', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 89, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'picse.info\n', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411572', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 83, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Greta du calvad', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411573', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 75, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Eiffage Energie', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411574', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 99, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Intermarch&eacu', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411575', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 96, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'F&eacute;d&eacu', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411576', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 102, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Rectorat de Cae', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411578', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 82, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'AGRIAL\nAdresse', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411579', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 77, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'PSA AUTOMOBILES', 'adrEntreprise', NULL, NULL, 'directeur', '2932Z', '132561215411580', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 105, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Equideclic\n\n6', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411582', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 91, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'PicseInfo\n14 r', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411583', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 93, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'La loco, rue de', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411584', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 94, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Equimondo\n8 ru', 'adrEntreprise', NULL, NULL, 'directeur', '6202A', '132561215411586', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 104, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Dell Montpellie', 'adrEntreprise', NULL, NULL, 'directeur', '4651Z', '132561215411587', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 89, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'ENSICAEN\n', 'adrEntreprise', NULL, NULL, 'directeur', '9499Z', '132561215411588', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 83, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Greta Calvados ', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411589', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 76, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'ITEKUBE\nESPACE', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411590', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 103, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, '\nMahor&eacute;', 'adrEntreprise', NULL, NULL, 'directeur', '4741Z', '132561215411591', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 100, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, '11 rue d\'Etavau', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411594', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 88, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Zephyr web 27 B', 'adrEntreprise', NULL, NULL, 'directeur', '6202B', '132561215411595', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 81, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'ASPEC\n15 rue d', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411596', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 87, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'ASPEC (Associat', 'adrEntreprise', NULL, NULL, 'directeur', '8899B', '132561215411597', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 95, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Jean Rostand', 'adrEntreprise', NULL, NULL, 'directeur', '0000A', '132561215411598', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 57, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Groupe LMG, SAR', 'adrEntreprise', NULL, NULL, 'directeur', '4741Z', '132561215411599', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 86, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Studio Pixelea', 'adrEntreprise', NULL, NULL, 'directeur', '6201Z', '132561215411600', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 117, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'EFF\'INNOV Techn', 'adrEntreprise', NULL, NULL, 'directeur', '6202A', '132561215411601', '707', 'mail@entreprise.fr', '2018-05-02', '2018-06-22', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 130, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Intermarch&eacu', 'adrEntreprise', NULL, NULL, 'directeur', '4711D', '132561215411603', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-16', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 114, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'conseil d&eacut', 'adrEntreprise', NULL, NULL, 'directeur', '8411Z', '132561215411604', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 101, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Lyc&eacute;e Je', 'adrEntreprise', NULL, NULL, 'directeur', '8531Z', '132561215411606', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 30, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Entreprise', 'adrEntreprise', NULL, NULL, 'directeur', '45245', '132561215411607', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 116, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Universit&eacut', 'adrEntreprise', NULL, NULL, 'directeur', '8542Z', '132561215411608', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 113, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Lyc&eacute;e Je', 'adrEntreprise', NULL, NULL, 'directeur', '8531Z', '132561215411609', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 122, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'DATAOUEST', 'adrEntreprise', NULL, NULL, 'directeur', '6311Z', '132561215411610', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 128, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'EARL DES QUATRE', 'adrEntreprise', NULL, NULL, 'directeur', '0150Z', '132561215411611', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 118, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'SARL NOVAGENCY', 'adrEntreprise', NULL, NULL, 'directeur', '7021Z', '132561215411612', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 120, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Mod\'hom Flers\n', 'adrEntreprise', NULL, NULL, 'directeur', '4771Z', '132561215411619', '707', 'mail@entreprise.fr', '2018-05-15', '2018-06-16', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 123, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'COLLECTIF ART V', 'adrEntreprise', NULL, NULL, 'directeur', '9499Z', '132561215411621', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 126, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, '3ifa', 'adrEntreprise', NULL, NULL, 'directeur', '9499Z', '132561215411623', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 115, 3, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'les ciseaux de ', 'adrEntreprise', NULL, NULL, 'directeur', '9602A', '132561215411624', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 121, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Association des', 'adrEntreprise', NULL, NULL, 'directeur', '/', '132561215411625', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 129, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 5, 'Berzerkati', 'adrEntreprise', NULL, NULL, 'directeur', 'Aucun', '132561215411626', '707', 'mail@entreprise.fr', '2018-05-14', '2018-06-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 30, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'cxw', 'adrEntreprise', NULL, NULL, 'directeur', 'ds', '132561215411633', '707', 'mail@entreprise.fr', '2019-01-01', '2019-01-01', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 116, 2, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Universit&eacut', 'adrEntreprise', NULL, NULL, 'directeur', '8542Z', '132561215411643', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 128, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'OXXONE', 'adrEntreprise', NULL, NULL, 'directeur', '6209Z', '132561215411645', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 124, 4, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Syndicat de la ', 'adrEntreprise', NULL, NULL, 'directeur', '9420Z', '132561215411654', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 114, 6, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Etablissement B', 'adrEntreprise', NULL, NULL, 'directeur', '4520A', '132561215411656', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 129, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'Cin&eacute;ma L', 'adrEntreprise', NULL, NULL, 'directeur', '5914Z', '132561215411657', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-15', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 115, 7, 'Tuteur', '7', 'tuteur@entreprise.fr', 'service', 7, 'lyc&eacute;e Ch', 'adrEntreprise', NULL, NULL, 'directeur', '8531Z', '132561215411659', '707', 'mail@entreprise.fr', '2019-01-07', '2019-02-08', 'sujet', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id`, `libelle`) VALUES
(1, 'Création'),
(2, 'Envoyée'),
(3, 'Commentée'),
(4, 'Validée');

-- --------------------------------------------------------

--
-- Structure de la table `tache_semaine`
--

DROP TABLE IF EXISTS `tache_semaine`;
CREATE TABLE IF NOT EXISTS `tache_semaine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domaine_id` int(11) DEFAULT NULL,
  `jour_id` int(11) DEFAULT NULL,
  `semaine_stage_id` int(11) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_B11BB55F4272FC9F` (`domaine_id`),
  KEY `IDX_B11BB55F220C6AD0` (`jour_id`),
  KEY `IDX_B11BB55FE928EFB1` (`semaine_stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tache_semaine`
--

INSERT INTO `tache_semaine` (`id`, `domaine_id`, `jour_id`, `semaine_stage_id`, `duree`, `description`) VALUES
(35, 15, 2, 55, 1, '-Préparation de mon poste, installation des logiciels utiles à l\'administration du réseau.'),
(36, 22, 2, 55, 4, '-Mise à jour du schéma réseau. Le schéma réseau en place est celui-que j\'avais fait lors de mon stage de terminal et a fortement évolué, avec le rachat de nouvelles concessions dans l\'Est et la Normandie le schéma devait subir de nouvelles mod'),
(37, 1, 3, 55, 1, '-Création des nouvelles plages d\'adresses ip pour les nouvelles concessions de l\'Est.'),
(38, 1, 3, 55, 1, '-Création de plages d\'adresses dans le DHCP'),
(39, 7, 3, 55, 2, '-Création et déploiement d\'un paquet (OneDrive) avec WAPT. Le déploiement du paquet est fait sur l\'ensemble des sites et pour toutes les marques (Mercedes, Porsche, Lexus et Toyota).'),
(40, 9, 3, 55, 1, '-Présentation par mon tuteur de l\'outil de sauvegarde TIS Backup'),
(41, 7, 4, 55, 0, '-Début d\'installation des one drive sur les postes, prise en main à distance avec TightVNC avec appel a l\'utilisateur.\nDéploiement + configuration'),
(42, 1, 4, 55, 1, '-Modification de la GPO sur le mapage des lecteurs réseaux pour les nouvelles concessions dans le Nord.'),
(43, 14, 5, 55, 0, '-Support informatique.'),
(44, 7, 5, 55, 0, '-Poursuite de la mise en place des OneDrive.'),
(45, 21, 4, 55, 1, '-Maintenance du poste d\'une utilisatrice. '),
(46, 19, 5, 55, 1, '-Résolution d\'un problème d\'espace de stockage sur un ssd.'),
(47, 18, 2, 76, 1, 'Présentation par mon tuteur de l\'application utilisée pour gérer les bons de commande. Celle-ci permet de faire le lien entre les différents services, pour un meilleur suivi des commandes et des installations chez les clients. '),
(48, 15, 2, 76, 1, 'Configuration de mon espace de travail avec l\'installation de MAMP et sublimeText.'),
(49, 25, 2, 76, 3, 'Inspection du code source de l\'application pour comprendre son fonctionnement.'),
(50, 25, 2, 76, 3, 'Inspection de la base de données pour faire le lien avec ce que je savais déjà de l\'application, et donc comprendre le fonctionnement général.'),
(51, 8, 3, 76, 7, 'Conversion de la partie administrative en orienté objet avec tout ce que cela implique (création de classes pertinentes et utilisation de ces classes).'),
(52, 8, 4, 76, 2, 'Modification de la classe select (classe pour faire des requêtes select) pour pouvoir faire les order by ou encore ne pas être obligé de mettre un paramètre pour le where.'),
(53, 8, 4, 76, 5, 'Amélioration de ce qui a été fait la veille au niveau de l\'utilisation des différentes classes PHP. Le tout toujours sur la partie administrative.'),
(54, 8, 5, 76, 5, 'Résolution de différents bugs d\'affichage et finalisation de la partie administrative (l\'insertion, la modification et la suppression dans la 5 ne sont pas encore faites)'),
(55, 5, 5, 76, 3, 'J\'ai commencé à réfléchir aux améliorations possibles pour la base de données.'),
(68, 25, 2, 83, 8, 'Visite de l\'entreprise, recherche d\'informations et réunion pour la mise en place du cahier des charges pour la gestion des fiches d\'interventions.'),
(69, 15, 3, 83, 7, 'Finitions effectuées sur le cahier des charges, installation d\'Android Studio pour le développement d\'application android, configuration du logiciel et du smartphone virtuel pour les tests de l\'application.'),
(70, 8, 4, 83, 8, 'Développement sur les premières activités et fonctionnalités de l\'application android en restant conforme au cahier des charges et aux fiches d\'interventions au format papier.'),
(71, 8, 5, 83, 7, 'Développement de l\'application, tests d\'affichage selon la résolution du Smartphone fourni aux employés dans l\'entreprise.'),
(73, 22, 2, 97, 8, 'Modélisation des schémas d\'interface pour la partie web et la partie application ainsi que le MCD.'),
(74, 31, 3, 97, 2, 'Validation de l\'interface par le tuteur ainsi que du MCD avec les modifications proposé par le tuteur.'),
(76, 15, 2, 97, 1, 'Installation de Android studio et de l\'application sur les différents PC.'),
(78, 8, 3, 97, 6, 'Adaptation de l\'application existant pour répondre aux nouveaux besoins définis par le tuteur.'),
(79, 8, 4, 97, 8, 'Développement des différentes sécurités empêchant l\'utilisateur de sortir de l\'application.'),
(80, 8, 5, 97, 8, 'Développement des différentes sécurités empêchant l\'utilisateur de sortir de l\'application et validation par le tuteur.'),
(95, 11, 2, 125, 6, 'Installation d\'un web trotter et d\'un VPN puis explication et formation a l\'utilisation du web trotter et la connexion au VPN'),
(96, 15, 3, 125, 6, 'Installation d\'un web trotter et d\'un VPN puis explication et formation a l\'utilisation du web trotter et la connexion au VPN'),
(97, 11, 4, 125, 6, 'Installation d\'un web trotter et d\'un VPN puis explication et formation a l\'utilisation du web trotter et la connexion au VPN'),
(98, 15, 5, 125, 6, 'Installation d\'un web trotter et d\'un VPN puis explication et formation a l\'utilisation du web trotter et la connexion au VPN'),
(108, 3, 1, 84, 7, 'Auto-formation sur android et retouches sur le positionnement de chaque objet pour plus d\'ergonomie.\n'),
(113, 2, 2, 132, 8, 'Présentation et réflexion sur la réalisation du projet.'),
(114, 22, 3, 132, 8, 'Modélisation des données depuis les fichiers Excel.'),
(115, 25, 3, 132, 8, 'Recherche d\'informations sur la conversion des fichiers Excel en base de données MySQL.'),
(116, 22, 4, 132, 7, 'Continuation de la modélisation des données depuis les fichiers Excel.'),
(117, 16, 4, 132, 7, 'Début de la réalisation de l\'arborescence du site.'),
(142, 8, 2, 111, 7, 'Modification de la maquette HTML d\'une page avec le CSS et HTML (page d\'accueil)'),
(143, 8, 3, 111, 7, 'Suite de la modification de la maquette HTML (page d\'accueil)'),
(144, 8, 4, 111, 7, 'Suite et fin de la modification de la maquette HTML (page d\'accueil) + Modification de la maquette HTML d\'une autre page(page Paiements)'),
(145, 8, 5, 111, 7, 'Suite et fin de la modification de la maquette HTML de la page Paiements.'),
(146, 8, 1, 112, 7, 'Mise en place du serveur Tomcat + Réalisation tutoriel Lombock pour familiariser avec les logiciels + bases de dev de l\'org'),
(147, 8, 2, 112, 7, 'Suite et fin du tutoriel + tâches données en plus afin d\'approfondir et consolider les bases (JAVA - WebServices - Eclipse - DAO - IHM - FormAction, ...)'),
(148, 15, 2, 20, 7, '-Renseignement projet à réaliser (serveur d\'authentification pour utilisateurs Wifi) + documentation sur la solution.\n-Installation du serveur (W2008 R2) et ajouts des rôles approprié\n-Installation borne wifi cisco aironet 1240'),
(177, 18, 2, 153, 2, 'Présentation de l\'équipe informatique.\nVisite du CIRISI.'),
(178, 15, 2, 153, 4, 'Installation du poste de travail :\n- Changer de disque dur,\n- Installation de l\'OS Windows 7,\n- Installation des drivers,\n- Installation des logiciels nécessaire.'),
(181, 18, 2, 153, 1, 'Présentation de la mission 1.'),
(185, 16, 3, 153, 6, 'Reprise d\'une application de gestion de badge.\nRefaire toute l\'interface de l\'application.\n(Gestion de badge : Choisir une badgeuse qui scan pour obtenir les derniers mouvements inconnus. Administration : connexion pour ajouter, supprimer ou'),
(186, 18, 3, 153, 1, 'Visite du mur d\'image pour présentation de la mission 2.'),
(187, 28, 4, 153, 2, 'Ajout d\'un page de connexion avec mot de passe pour accéder à l\'accès Administration.'),
(188, 16, 4, 153, 3, 'Modifier l\'interface (utilisation de Bootstrap).'),
(189, 18, 4, 153, 1, 'Présentation mission 2.'),
(190, 8, 4, 153, 1, 'Ajout d\'une fonction de traduction anglais.'),
(191, 9, 4, 153, 2, 'Rédaction compte rendu.'),
(192, 16, 5, 153, 7, 'Reprise de l\'application du mur d\'image.\nRefaire toute l\'interface. (Changer les boutons, ajouter des logos).'),
(193, 18, 2, 160, 1, 'Présentation de l\'équipe informatique et des infrastructures.'),
(196, 7, 1, 56, 0, 'Poursuite du déploiement des one drive pour les sites de Porsche et Lexus. J\'effectue cette MAJ tout au long de la journée. Tout en faisant d\'autres choses à la fois comme en répondant aux tickets et appels des utilisateurs'),
(197, 1, 1, 56, 1, 'Mise à jour de l\'AD. Renseignement des MDP des utilisateurs et de leur numéros de téléphones. Cette MAJ est fait en parallèle du déploiement des one drive qui permet de vérifier si les comptes AD sont à jour. J\'utilise aussi le PABX OmniVista pour'),
(198, 7, 2, 56, 0, 'Déploiement des OneDrive (toujours via WAPT et prise en main à distance) sur les sites Mercedes de l\'Ouest.\nAvant d\'avoir la question, le déploiement par script n\'est pas envisagé / possible du fait que les mots de passes sont différents. Certains c'),
(199, 14, 2, 56, 0, 'Utilisateur bloqué sur Icar (application métier Mercedes), il fallait éjecter le client de sa session TS pour la redémarrer'),
(200, 6, 2, 56, 4, 'Configuration d\'une nouvelle stratégie antivirale sur Sophos. L\'antivirus provoquait des déréglages '),
(201, 6, 3, 56, 4, 'Poursuite de la nouvelle stratégie antivirus. Exclusion de la vérification de certains fichiers de windows serveur 2012. Liste établis en fonction des recommandations de windows serveur et sophos'),
(202, 16, 5, 132, 5, 'Fin de la réalisation de l\'arborescence du site.'),
(203, 26, 5, 132, 5, 'Compte-rendu de la semaine afin d\'un accord pour l\'avancement du projet.'),
(213, 16, 1, 154, 7, 'Refaire toute l\'interface. (Changer les boutons, ajouter des logos).'),
(214, 8, 3, 154, 4, 'Modification de la gestion des alarmes pour l\'activation et la désactivation avec des checkboxs'),
(215, 28, 3, 154, 3, 'Gérer les comptes ajouter une page de connexion et 3 comptes pour différentes utilisations'),
(218, 8, 3, 112, 7, 'Suite des tâches données en plus du tuto : Consultation et insertion de données dans une application JAVA avec Hibernate, JSP (pour les vues) et le web-flow pour la navigation'),
(219, 15, 2, 160, 1, 'Installation et configuration d\'Adobe Dreamweaver CS4.'),
(220, 18, 2, 160, 1, 'Présentation du contexte de la mission confié sur la création d\'une application web.'),
(221, 25, 2, 160, 1, 'Présentation du portail intranet version 2 et 5.'),
(222, 7, 2, 160, 1, 'Migration des applications du portail intranet version 2 au portail intranet version 5.'),
(223, 25, 2, 160, 2, 'Regarder comment est réalisé le site intranet.\nRegarder la construction du code.\nRegarder les différentes applications déjà réalisé.'),
(224, 5, 2, 160, 2, 'Modification de la base de donnée Â«etudemiciÂ» sous phpMyAdmin :\nAjouter des champs à la table Â«patientÂ».\nModification du fichier Â«patient.phpÂ».'),
(225, 8, 3, 160, 2, 'Continuation de la modification du fichier Â«patient.phpÂ»'),
(226, 8, 2, 84, 8, 'Commencement d\'un module pour la récupération des coordonnées GPS (longitude-latitude) dans deux champs séparés lors de l\'appuie sur le bouton correspondant.\n'),
(228, 8, 3, 84, 7, 'Nouvelle réunion pour des ajout sur le cahier des charges et une revue sur l\'avancement de l\'application, programmation de nouvelle activités pour la gestion des bilans d\'opérations.'),
(229, 6, 3, 56, 2, 'Ajout de nouveaux dossiers à la liste d\'exclusion, application de cette stratégie aux contrôleurs de domaine.'),
(230, 25, 3, 56, 2, 'Recherche concernant pourquoi la console affiche une erreur et empêche l\'enregistrement de certains liens'),
(231, 5, 3, 160, 1, 'Modification de la base de donnée Â«etudemiciÂ» sous phpMyAdmin :\nAjouter des champs à la table Â«medecinÂ».\nModification du fichier Â«medecin.phpÂ».'),
(232, 16, 3, 160, 2, 'Faire l\'interface des pages de l\'application sur papier.'),
(233, 8, 3, 160, 1, 'Définir les pages sur le fichier Â«controleur.phpÂ».'),
(234, 11, 3, 160, 2, 'Réunion entre le service informatique de développement et les DRH pour une application de demande de remplacement de personnel.'),
(235, 8, 4, 160, 5, 'Créer les méthodes sur le contrôleur :\nâ€“ Enregistrement,\nâ€“ Mise à jour,\nâ€“ Suppression.'),
(236, 8, 4, 160, 3, 'Créer le formulaire pour ajouter un médecin en HTLM.'),
(237, 8, 5, 160, 3, 'Finir le formulaire pour ajouter un médecin en HTLM.\nâ€“ Ajout médecin,\nâ€“ Édition médecin.'),
(238, 8, 5, 160, 4, 'Faire le listing des médecins dans un tableau HTML.'),
(239, 8, 1, 161, 2, 'Finir le listing des médecins dans un tableau HTML.'),
(240, 8, 1, 161, 1, 'Faire la mise à jour des médecins.\nÉdition de médecins et consultation des fiches médecins.'),
(241, 8, 1, 161, 3, 'Faire une barre de recherche en AJAX pour afficher les médecins du tableau.'),
(242, 8, 1, 161, 1, 'Faire le formulaire pour une demande d\'autorisation de supprimer un médecin.'),
(243, 8, 2, 161, 4, 'Finir le formulaire pour une demande d\'autorisation de supprimer un médecin.'),
(244, 8, 2, 161, 1, 'Fignoler les médecins :\n- enlever le bouton de suppression quand on ajoute un médecin mais le laisser pour la modification d\'un médecin,\n- mettre des Â«mailtoÂ» aux adresses mail médecins,\n- mettre des Â«teltoÂ» aux numéros de téléphone médec'),
(245, 8, 2, 161, 2, 'Gérer un envoi de mail automatique avec un lien de connexion à l\'ajout d\'un médecin pour que celui ci puisse se connecter à l\'application.'),
(246, 8, 3, 161, 2, 'Créer le formulaire pour ajouter un médecin en HTLM.\nâ€“ Ajout patient,\nâ€“ Édition patient.'),
(247, 8, 3, 161, 1, 'Faire le formulaire pour une demande d\'autorisation de supprimer un patient.'),
(248, 8, 3, 161, 2, 'Correction de petits problèmes sur les pages médecin.'),
(249, 8, 3, 161, 2, 'Créer les pages de questionnaire et d\'accueil.'),
(250, 8, 4, 161, 2, 'Attribuer des droits au groupe médecin.\nEnvoyer un mail à l\'insertion d\'un médecin.'),
(251, 8, 4, 161, 4, 'Gérer l\'envoi de mail de connexion avec un bouton dans le tableau de médecins'),
(252, 8, 5, 161, 4, 'Gérer un envoi de mail automatique avec un lien de connexion à l\'ajout d\'un médecin pour que celui ci puisse se connecter à l\'application.'),
(253, 8, 5, 161, 1, 'Modifier page index avec accès aux questionnaires.'),
(254, 8, 1, 162, 7, 'Modifier la page d\'accueil :\nAvec des droits pour les patients avec des boutons pour accéder aux questionnaires.\nAvec des droits pour médecin et administrateur sans bouton.'),
(255, 8, 2, 162, 7, 'Ajouter des nouveaux champs pour les patients :\ndans la 5,\ndans le modèle,\ndans le formulaire.'),
(256, 8, 3, 162, 7, 'Ajouter des nouveaux champs pour les patients :\ndans la 5,\ndans le modèle,\ndans le formulaire.'),
(257, 8, 4, 162, 7, 'Ajouter des nouveaux champs pour les patients :\ndans la 5,\ndans le modèle,\ndans le formulaire.'),
(258, 8, 5, 162, 1, 'Ajouter des critères d\'inclusion au formulaire de patient, si les tous les critères sont cochés, alors on peut\ncontinuer à remplir le formulaire.\n\nPage patient, page médecins et page accueil terminé.'),
(259, 31, 5, 162, 1, 'Donc on fait une phase de test pour vérifier si tous les ajouts, modifications, suppressions ou envoi de mail se font correctement.'),
(260, 18, 5, 162, 1, 'Quand tout est vérifié et que tout fonctionne, on synchronise l\'application sur le portail extranet.\nPuis on envoie un mail au médecin qui a demandé cette application pour montrer l\'avancement et pour savoir si elle répond aux attentes.'),
(261, 5, 5, 162, 1, 'Faire la table du questionnaire 1.'),
(262, 8, 5, 162, 2, 'Faire le modèle du questionnaire 1.'),
(264, 8, 1, 163, 7, 'Faire le questionnaire 1 en HTML, PHP'),
(265, 8, 2, 163, 7, 'Faire le questionnaire 1 en HTML, PHP'),
(266, 8, 3, 163, 3, 'Ancrage sur les différentes sections du questionnaire 1.\nBarre de progression à l\'avancement du questionnaire.'),
(267, 8, 3, 163, 4, 'Embellir le questionnaire 1.'),
(268, 18, 3, 163, 1, 'Entretien avec Mme Catros'),
(269, 8, 4, 163, 6, 'Gérer l\'enregistrement du questionnaire 1 à la base de données.'),
(270, 8, 4, 163, 2, 'Affichage du bouton Â« enregistrer Â» une fois que la barre de progression atteint les 100%.'),
(271, 8, 5, 163, 3, 'Affichage du bouton Â« enregistrer Â» une fois que la barre\n\nde progression atteint les 100%. Calculer score du questionnaire pour la barre de progression.'),
(272, 8, 5, 163, 2, 'Gérer l\'accès aux questionnaires pour les patients sur la page d\'accueil.\n- Si un patient n\'a pas répondu au premier questionnaire alors on affiche le bouton pour y accéder.\n- Sinon si un patient a répondu au premier questionnaire et est auto'),
(273, 8, 5, 163, 0, '- Sinon si un patient a répondu au premier questionnaire et est autorisé à répondre aux autres questionnaires alors on cache le bouton pour le questionnaire 1 et on affiche 3 boutons pour accéder aux 3 autres questionnaires.\n- Sinon on affiche Â«Plu'),
(274, 8, 5, 163, 0, '- Sinon on affiche Â«Plus de questionnairesÂ».'),
(275, 5, 1, 164, 1, 'Faire la table du questionnaire 2 (phpMyAdmin).'),
(276, 8, 1, 164, 2, 'Faire le modèle du questionnaire 2.'),
(277, 8, 1, 164, 2, 'Faire le questionnaire 2 en HTML, PHP.\nAfficher barre de progression pour l\'avancement du questionnaire.\nGérer l\'enregistrement à la base de données.\nAffichage du bouton Â« enregistrer Â» une fois que la barre de progression atteint les 100%.'),
(278, 5, 1, 164, 0, 'Faire la table du questionnaire 3 (phpMyAdmin).'),
(279, 8, 1, 164, 0, 'Faire le modèle du questionnaire 3.'),
(280, 8, 1, 164, 2, 'Faire le questionnaire 3 en HTML, PHP.\nAfficher barre de progression pour l\'avancement du questionnaire.\nAffichage du bouton Â« enregistrer Â» une fois que la barre de progression atteint les 100%.'),
(281, 8, 2, 164, 3, 'Faire le questionnaire 3 en HTML, PHP.\nGérer l\'enregistrement à la base de données.'),
(282, 8, 2, 164, 3, 'Optimiser le code du questionnaire 2 grâce aux boucles.'),
(283, 8, 2, 164, 1, 'Faire une page Â«BravoÂ» quand un patient a fini de répondre au questionnaire.\nFaire une page Â«ErreurÂ» si un la personne qui tente de répondre n\'est pas un patient, ou si il a déjà répondu ou il est un patient mais n\'est pas autorisé.'),
(284, 8, 3, 164, 1, 'Pour un patient :\nSi questionnaires 2, 3 et 4 non rempli alors afficher les 3 boutons.\nSi un questionnaire est rempli alors cacher les boutons des questionnaires rempli.'),
(285, 8, 3, 164, 2, 'Faire la page résultat :\n- Faire les onglets\n- Faire un tableau dans l\'onglet Â«GlobalÂ», avec le nombre de patient et le nombre de patient ayant répondu à chaque questionnaire.'),
(286, 8, 3, 164, 1, 'Faire la page résultat :\n- Ajouter le nombre de pourcentage des patients dans le tableau.'),
(288, 25, 4, 56, 2, 'Poursuite recherche d\'informations sur les exclusions de Sophos. Recherche sur les communautés de Sophos'),
(306, 8, 3, 164, 3, 'Faire la page résultat :\n- Dans l\'onglet Â« Questionnaire 1 Â», ajouter pour chaque question le nombre de patient ayant répondu à chaque réponse'),
(307, 8, 4, 164, 7, 'Faire la page résultat :\n- Dans l\'onglet Â« Questionnaire 1 Â», ajouter pour chaque question le nombre de patient ayant répondu à chaque réponse'),
(308, 8, 5, 164, 3, 'Faire la page résultat :\n- Dans l\'onglet Â« Questionnaire 2 Â», ajouter pour chaque question le nombre de patient ayant répondu à chaque réponse'),
(309, 8, 5, 164, 3, '- Faire la page résultat :\n- Dans l\'onglet Â« Questionnaire 3 Â», ajouter pour chaque question le nombre de patient ayant répondu à chaque réponse'),
(310, 8, 5, 164, 2, '- Faire la page résultat :\n- Dans l\'onglet Â« Questionnaire 4 Â», ajouter pour chaque question le nombre de patient ayant répondu à chaque réponse'),
(312, 18, 4, 56, 2, 'Fin des recherches concernant la stratégie sophos. J\'ai trouvé la solution : j\'ai exporté le fichier de configuration de la stratégie, puis j\'ai rajouté l\'ensemble des exclusions dans le fichier à la main, enfin j\'ai réimporter le fichier dans la c'),
(313, 28, 4, 56, 2, 'Isolation d\'un ancien pc hors du réseau.Configuration de l\'antivirus sophos dessus. Ajout sur Sophos de la version gratuite de Intercept X (anti ransomware) pour la tester en vu d\'un éventuel achat de licence intercept x. Mise en concurrence.'),
(314, 1, 1, 20, 0, 'Férié'),
(315, 6, 3, 20, 7, 'Continuer de paramétré ma borne et mon serveur Radius pour m\'identifier avec un compte du domaine. La borne et le serveur communiquent bien mais je n\'arrive pas à me connecter à mon SSID et aucune trace ni sur le serveur ni sur la borne.'),
(316, 18, 4, 20, 7, '-Essayer déjà avec un SSID simple en WPA2 et un mot de passe classique.\n-C\'est la que j\'ai vu que mon DHCP était en conflit avec celui de la box de l\'entreprise.\n-Remise en place de l\'authentification 802.1x qui après correctif fonctionne.'),
(317, 3, 5, 20, 7, 'Discussion avec mon tuteur concernant une solution plus sécurisé (avec des certificats). Je me suis donc renseigné sur les protocoles EAP-TLS et PEAP. Installation rôle de CA sur mon serveur. J\'ai créer mes stratégies NPS sans résultat concluant.'),
(322, 8, 4, 84, 8, 'Programmation en java d\'une méthode permettant lors de l\'appuie sur un bouton l\'ouverture de l\'appareil photo du téléphone, une fois la photo prise, la photo est sauvegardée sur l\'appareil et implémenté dans un imageView sur l\'écran.');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`bloc_id`) REFERENCES `bloc` (`id`);

--
-- Contraintes pour la table `domaine_taches`
--
ALTER TABLE `domaine_taches`
  ADD CONSTRAINT `domaine_taches_ibfk_1` FOREIGN KEY (`options_id`) REFERENCES `optioni` (`id`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`);

--
-- Contraintes pour la table `pointage`
--
ALTER TABLE `pointage`
  ADD CONSTRAINT `pointage_ibfk_1` FOREIGN KEY (`semaine_id`) REFERENCES `semaine_stage` (`id`);

--
-- Contraintes pour la table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `production_ibfk_1` FOREIGN KEY (`rp_id`) REFERENCES `rp` (`id`);

--
-- Contraintes pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`option_i_id`) REFERENCES `optioni` (`id`);

--
-- Contraintes pour la table `rp`
--
ALTER TABLE `rp`
  ADD CONSTRAINT `rp_ibfk_1` FOREIGN KEY (`localisation_id`) REFERENCES `localisation` (`id`),
  ADD CONSTRAINT `rp_ibfk_2` FOREIGN KEY (`cadre_id`) REFERENCES `cadre` (`id`),
  ADD CONSTRAINT `rp_ibfk_3` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `rp_ibfk_4` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `rp_ibfk_5` FOREIGN KEY (`source_id`) REFERENCES `source` (`id`),
  ADD CONSTRAINT `rp_ibfk_6` FOREIGN KEY (`statut_id`) REFERENCES `statut` (`id`);

--
-- Contraintes pour la table `rpactivite`
--
ALTER TABLE `rpactivite`
  ADD CONSTRAINT `rpactivite_ibfk_1` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`id`),
  ADD CONSTRAINT `rpactivite_ibfk_2` FOREIGN KEY (`activite_id`) REFERENCES `activite` (`id`),
  ADD CONSTRAINT `rpactivite_ibfk_3` FOREIGN KEY (`rp_id`) REFERENCES `rp` (`id`);

--
-- Contraintes pour la table `semaine_stage`
--
ALTER TABLE `semaine_stage`
  ADD CONSTRAINT `semaine_stage_ibfk_1` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`id`);

--
-- Contraintes pour la table `tache_semaine`
--
ALTER TABLE `tache_semaine`
  ADD CONSTRAINT `tache_semaine_ibfk_1` FOREIGN KEY (`domaine_id`) REFERENCES `domaine_taches` (`id`),
  ADD CONSTRAINT `tache_semaine_ibfk_2` FOREIGN KEY (`jour_id`) REFERENCES `jour` (`id`),
  ADD CONSTRAINT `tache_semaine_ibfk_3` FOREIGN KEY (`semaine_stage_id`) REFERENCES `semaine_stage` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
