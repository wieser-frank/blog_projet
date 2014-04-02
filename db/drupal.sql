-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2014 at 09:47 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `drupal`
--
CREATE DATABASE IF NOT EXISTS `drupal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `drupal`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `pseudo` varchar(40) NOT NULL,
  `passwd` varchar(40) NOT NULL,
  PRIMARY KEY (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`pseudo`, `passwd`) VALUES
('frank', 'wieser'),
('gheorghe', 'florea');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categ` int(11) NOT NULL AUTO_INCREMENT,
  `name_categ` varchar(40) NOT NULL,
  PRIMARY KEY (`id_categ`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categ`, `name_categ`) VALUES
(22, 'News'),
(23, 'Innovation'),
(24, 'High Tech');

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `id_com` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `com` text NOT NULL,
  `pseudo` varchar(30) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_com`),
  KEY `id_post` (`id_post`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `name_post` varchar(255) NOT NULL,
  `id_categ` int(11) DEFAULT NULL,
  `post` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_categ` (`id_categ`),
  FULLTEXT KEY `post` (`post`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `name_post`, `id_categ`, `post`, `date`, `img`) VALUES
(28, 'Le cloud impose d''autres besoins en compétences IT', 22, 'L''impact du passage au cloud sur l''emploi des informaticiens a été abordé lors d''une conférence organisée hier matin par le club de la presse informatique BtoB.\r\n\r\nLe CPI-B2B (club de la presse informatique BtoB) a choisi de se pencher sur les enjeux et les impacts sociaux de l''infogérance et du cloud lors d''une conférence qui s''est déroulée hier matin à Paris. Selon le DSI Club IDC France, un panel réunissant 300 DSI d''entreprises d''au moins 800 salariés, la modernisation des infrastructures et le recours au cloud computing  sont les deux sujets majeurs pour les directions informatiques. Le cloud privé a gagné du terrain en passant en tête de leurs initiatives en ce début  d''année. Si le principal objectif du passage à un cloud privé porte sur la réduction des coûts initiaux d''acquisition du matériel (63%) et sur la diminution des coûts associés aux licences logicielles (56%), son usage engendre une évolution des besoins en compétences, tout comme l''externalisation l''a fait. En effet, que deviennent les informaticiens et la DSI dans une entreprise sans système d''information ?  \r\n\r\nChez Nexans, un groupe mondial qui propose des solutions de câblage pour la production, le transport et la distribution de l''énergie, l''orientation vers une architecture cloud a eu un impact non négligeable sur l''emploi des informaticiens. « La migration vers le cloud - effectuée par un unique prestataire, à savoir HP - a eu un impact  économique et social au sein de  l''organisation », a exposé Konstantinos Voyiatzis, directeur des systèmes d''information de la société qui supervise un département de 350 personnes réparties dans le monde. « Lorsque nous avons procédé au recensement de l''existant informatique, nous comptions une centaine de salles machines informatiques », a-t-il indiqué. « Le basculement sur le cloud a eu des répercussions sur de nombreuses fonctions au sein de la DSI en impactant les informaticiens en interne chargés du support PC, de la sécurité et de la gestion documentaire, de la même façon que les architectes, les développeurs ainsi que les opérateurs des salles de machines.', '2014-02-14 09:29:35', 'http://images.itnewsinfo.com/lmi/articles/grande/000000037415.jpg'),
(29, 'VMware apporte le VDI aux Chromebooks de Google', 22, 'L''éditeur va proposer une offre permettant la virtualisation du poste de travail sur les Chromebooks de Google.\r\n\r\nVMware va proposer des services de bureau virtuel pour les Chromebooks de Google. L''idée est d''exécuter des applications Windows sur des PC fonctionnant sur Chrome OS. Avec l''offre de services managés de VMware sur les Chromebooks, les entreprises peuvent réaliser jusqu''à 5 000 dollars d''économies, explique la firme de Mountain View. Ce service pourrait aussi être une aide à la migration de Windows XP qui arrive en fin de support au mois d''avril 2014. « Beaucoup d''entreprises veulent profiter des clients légers, mais avec un pont pour revenir dans l''ancien environnement où ils peuvent exécuter des applications Windows », souligne Sanjay Poonen, responsable de la division end user computing de VMware.\r\n\r\nPlusieurs options pour la virtualisation du poste de travail\r\n\r\nLes utilisateurs de VMware Horizon 5.3 peuvent déjà mettre en place des bureaux virtuels et des applications sur les Chromebooks. Cependant le service proposé par l''éditeur de solutions de virtualisation permet aux entreprises de ne pas se préoccuper de l''infrastructure back-end pour exécuter les environnements virtualisés, précise le dirigeant. Elle repose sur plusieurs technologies comprenant Horizon pour le VDI et RDS (Remote Desktop Service) pour déport d''applications. Par ailleurs, les utilisateurs pourront accéder à leurs applications, leurs données et même leur bureau depuis un navigateur en utilisant le logiciel de streaming Blast de VMware.\r\n\r\nCette solution a été annoncé lors de la conférence VMware Partner Exchange qui s''est déroulée à San Francisco cette semaine. Elle sera disponible dans les prochains mois en direct ou via des partenaires.', '2014-02-14 09:30:53', 'http://images.itnewsinfo.com/lmi/articles/grande/000000037421.jpg'),
(30, 'Un smartphone IBM qui s''autodétruit en 5 secondes', 23, 'IBM a remporté un contrat de 3 millions de dollars pour mettre au point des capteurs et des smartphones capables de s''autodétruire.\r\n\r\nBientôt, les smartphones ou les radios dotés de fonctions d''autodestruction ne seront plus réservés aux films d''espionnage. En effet, le contrat signé par IBM avec l''armée américaine comprend le développement d''une fonction d''autodestruction sur commande pour les appareils électroniques. L''armée veut une solution pour éviter que les terminaux mobiles militaires et les données critiques qu''ils peuvent éventuellement contenir ne tombent entre les mains de l''ennemi. C''est le 31 janvier dernier que, dans le cadre son programme « Vanishing Programmable Resources » (VAPR), le DARPA (Defense Advanced Research Projects Agency), c''est à dire l''agence de recherche de l''armée américaine, a signé un contrat de 3,4 millions de dollars avec IBM. « Aujourd''hui, il est possible de réaliser des appareils électroniques sophistiqués à peu de frais et les composants électroniques sont de plus en plus omniprésents sur le champ de bataille », affirme le DARPA sur son site Internet. « Cependant, il est quasiment impossible de suivre et de récupérer tous les appareils involontairement abandonnés sur le terrain, ou de veiller à ce que personne ne les utilise sans autorisation ou ne compromette la propriété intellectuelle contenue dans ces matériels afin de profiter d''un éventuel avantage technologique ».\r\n\r\nActivation de l''autodestruction par radiofréquence \r\n\r\nPour l''instant, ni le DARPA, ni IBM n''ont répondu aux demandes d''information que leur a adressées notre Computerworld. Sur son site web, le DARPA précise simplement qu''il cherche à modifier certains périphériques, notamment des capteurs, des radios ou des téléphones, identiques à ceux que l''on trouve dans le commerce, pour y ajouter des fonctions d''autodestruction à distance. IBM a été chargé de développer des matériaux, des composants et des procédés de fabrication qui permettent la mise hors d''usage de ces matériels. Selon le DARPA, le constructeur travaille sur un « substrat de verre tendu » destructible. Un ou plusieurs déclencheurs activés par radiofréquence pourront être implantés à différents endroits de l''appareil. Le déclencheur pourra être aussi désactivé par radiofréquence.', '2014-02-14 09:39:02', 'http://img1.lemondeinformatique.fr/fichiers/telechargement/ibm-smartphone-circuit.jpg'),
(31, 'Windows 8 dépasse les 200 millions de licences', 24, 'Microsoft a dévoilé le nombre de licences achetés par les consommateurs et par les fabricants. Ce qui ne veut pas dire qu’elles sont réellement activées. Selon NetMarketShare, Windows 8 représente un peu plus de 10 % de parts de marché.\r\nLe groupe informatique américain Microsoft a annoncé jeudi avoir écoulé à plus de 200 millions d''exemplaires son système d''exploitation Windows 8, qui était censé lui faire rattraper son retard dans le mobile mais a reçu un accueil mitigé. « Windows 8 a dépassé les 200 millions de licences vendues, et nous restons sur une bonne dynamique », a indiqué à l''AFP une porte-parole du géant des logiciels. Elle a précisé que ce nombre comprenait à la fois les mises à jour opérées directement par les consommateurs et les licences achetées par des fabricants de tablettes et de PC. Ces derniers n''ont donc pas forcément été vendus. Le montant exclut en revanche les achats de licences par des entreprises, qui représentent une grosse partie de ses clients mais sur lesquels le groupe traditionnellement ne divulgue pas de chiffres détaillés.\r\nSelon NetMarketShare, Windows 8 dépasse à peine les 10 % de parts de marché. Windows 7 reste toujours la principale version utilisée (47,49%), suive de Windows XP (29,23%).\r\nWindows 8, qui « réinventait » l''un des logiciels vedettes de Microsoft pour l''adapter en particulier aux écrans tactiles des tablettes, était sorti fin octobre 2012. La barre des 100 millions de licences avait été franchie six mois plus tard, soit un rythme similaire à celui enregistré lors de la version précédente, Windows 7, quelques années plus tôt. Certains analystes avaient toutefois remarqué à l''époque que le marché avait entretemps changé, avec beaucoup plus d''appareils et de concurrents. Windows 8 n''a pas réussi à endiguer la crise sur le marché du PC, dont les ventes ont accéléré leur recul en 2013 (-10% selon le cabinet de recherche IDC) après déjà une mauvaise année 2012.', '2014-02-14 09:42:53', 'http://www.01net.com/images/article/200.748163.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_categ`) REFERENCES `categorie` (`id_categ`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
