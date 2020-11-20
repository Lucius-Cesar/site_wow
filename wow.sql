-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2020 at 07:53 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wow`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `nom` varchar(30) NOT NULL,
  `id_extensions` int NOT NULL,
  `description` text NOT NULL,
  `armure` varchar(30) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `nom`, `id_extensions`, `description`, `armure`, `role`) VALUES
(1, 'Guerrier', 1, 'Les guerriers combinent force, autorité et maîtrise des armes et des armures pour causer des ravages dans des combats épiques. Certains montent au front avec leur bouclier en protection pour bloquer les ennemis, permettant à leurs alliés en soutien à l’arrière de faire usage de leurs sorts et de leurs arcs. D’autres renoncent au bouclier pour lâcher les coups enragés de leurs diverses armes meurtrières sur leurs adversaires les plus proches\r\nLes guerriers n’hésitent pas à engager le combat la tête la première tel un éclair vêtu d’une armure lourde. Leurs tactiques de combat sont variées et ils peuvent brandir plusieurs types d’armes pour protéger leurs alliés moins versés dans le combat. Toutefois, ils doivent gérer cette rage et la puissance de leurs assauts les plus violents avec attention, afin de maximiser leur efficacité au cœur de la bataille.', 'Maille, Plaque, Bouclier', 'Tank ( spécialisation Protection ) et DPS ( spécialisations Armes, Fureur )'),
(2, 'Chasseur', 1, 'Les chasseurs combattent leurs ennemis à bonne distance, ordonnant à leurs fidèles familiers d’attaquer tandis qu’ils font pleuvoir les flèches ou les balles sur leur malheureuse cible. Si leurs attaques à distance sont dévastatrices à longue comme à courte distance, les chasseurs sont aussi extrèmement mobiles. Ils peuvent esquiver ou ralentir leurs adversaires et ainsi garder un temps d’avance. Maîtrisant leur environnement, ils savent se faufiler comme des ombres à travers les arbres et poser des pièges sur les chemins de leurs ennemis.', 'Cuir, Maille', 'DPS ( spécialisations Précision, Maitrise des bêtes, Survie )'),
(3, 'Prêtre', 1, 'C’est au spirituel que les prêtres ont consacré leur vie et c’est en étant au service des autres que leurs actes traduisent la force de leur foi.\r\nIls sont investis d’une puissante magie qu’ils utilisent pour soutenir et soigner leurs alliés. Ils peuvent également frapper amèrement leurs ennemis à distance par des sorts offensifs, mais ils sont fragiles et ne portent que des vêtements en guise d’armure ; c’est pourquoi ils doivent faire attention à ne pas se laisser submerger par leurs adversaires. Les prêtres expérimentés doivent faire un usage précautionneux de leurs sortilèges offensifs et de contrôle tandis qu’ils s’appliquent à garder vivants leurs compagnons.', 'Tissu', 'Heal ( spécialisations Discipline, Sacré ), Dps ( spécialisation Ombre )'),
(4, 'Chaman', 1, 'Les chamans sont des guides spirituels qui font appel à des puissances non pas divines mais élémentaires. Capable de modérer la terre, le feu, l’eau et l’air, le chaman invoque des totems qui dirigent ces forces pour soutenir ses alliés ou frapper leurs adversaires..Ils sont suffisamment polyvalents pour se jeter dans la mêlée et porter de cruels coups à leur cibles, ou les attaquer à distance à l’aide de leur magie ; mais un chaman prudent et sage choisira son mode d’attaque en fonction des forces et faiblesses de son adversaire.', 'Cuir, Maille, Boucliers', 'Heal ( spécialisation Restauration ), Dps ( spécialisations Élémentaire, Amélioration ) '),
(5, 'Démoniste', 1, 'Pour la plupart des héros, les puissances démoniaques sont synonymes de mort. Les démonistes, eux, voient en elles une opportunité.\r\nIls réduisent en cendres leurs ennemis déjà affaiblis par les malédictions et afflictions infligées par leur magie noire. Ne portant pas d’armure protectrice, ces lanceurs de sorts peuvent bénéficier d’améliorations magiques offertes par leurs démons qui détournent l’attention de leurs ennemis. En s’assurant de rester loin du champ de bataille, ils s’évitent ainsi les fâcheux désagréments d’un combat de mêlée qui, autrement, leur serait fatal.', 'Tissu', 'DPS ( spécialisations Affliction, Destruction, Démonologie )'),
(6, 'Druide', 1, 'Les druides font appel aux vastes pouvoirs de la nature pour préserver son équilibre et protéger la vie. Il est un changeforme capable d’assumer différents rôles selon celle qu\'il choisit. \r\n\r\n', 'Cuir', 'Tank ( spécialisation Gardien ), DPS ( spécialisations Équilibre, Combat farouche ) et Heal ( spécialisation Restauration ).'),
(7, 'Paladin', 1, 'Le paladin observe fidèlement ces règles : protéger le faible, faire régner la justice et vaincre le mal jusque dans les recoins les plus sombres de ce monde.  La bénédiction de la Lumière leur permet de soigner les blessures et, dans certains cas, de redonner vie aux morts. Ils affrontent leurs ennemis de face, confiants en leur armure lourde et en leurs sorts de soin pour survivre aux assauts les plus meurtriers. Qu’ils brandissent un bouclier massif ou une arme à deux mains démesurée, les paladins parviennent à éloigner griffes et armes de leurs alliés, mais doivent faire un usage réfléchi de leurs sorts guérisseurs pour ne pas se laisser submerger.', 'Plaque, Boucliers', 'Tank ( spécialisation Protection ), Heal ( spécialisation Sacré ) et DPS ( spécialisation Vindicte )\r\n'),
(8, 'Voleur', 1, 'Les voleurs sont des mercenaires qui s’appuient sur des tactiques brutales et efficaces sans l’ombre d’un remords. Assassins mortels et maîtres de la furtivité, ils approchent leurs cibles par derrière, frappent un organe vital et s’évanouissent dans l’ombre avant que leur victime ne touche le sol.  Si l’affrontement s’éternise, leurs attaques affaiblissent leur adversaire jusqu’à lui porter le coup de grâce. Ces maîtres de l’évasion sélectionnent leurs cibles avec soin afin de ne pas gaspiller leurs enchaînements de coups, et doivent se tenir prêts à s’éclipser ou fuir au cas où la bataille tournerait en leur défaveur.\r\n\r\n', 'Cuir', 'DPS ( spéclialisations Assassinat, Hors-la-loi, Finesse )'),
(9, 'Chevalier de la mort', 3, 'Quand les chevaliers de la mort du Roi Liche furent libérés de son emprise, ces anciens champions crièrent veangeance pour les horreurs commises sous ses ordres.  Ayant eu leur revanche, les chevaliers de la mort se retrouvèrent alors à errer sans but et sans patrie. L’un après l’autre, ils gagnèrent le monde des vivants à la recherche d’un nouveau sens à leur existence.Les chevaliers de la mort provoquent leurs ennemis dans un combat au corps à corps, en ajoutant la magie noire aux coups de leur arme pour le rendre plus vulnérable ou le blesser par leur puissance impie. Ils entraînent leur cible dans un duel sans merci, la forçant à se concentrer sur lui loin de ses plus faibles compagnons. Ils peuvent empêcher leur proie d’échapper à leur poigne, mais doivent être attentif aux runes utilisées pour lancer les attaques appropriées.', 'Plaque', 'Tank ( spécialisation Givre ) et DPS ( spécialisation Impie, Sang )\r\n'),
(10, 'Mage', 1, 'Les mages anéantissent leurs ennemis par leurs incantations arcaniques. S’ils manient des sorts offensifs d’une puissance indicible, ils n’en sont pas moins fragiles avec leurs armures légères, ce qui les laisse particulièrement vulnérables au combat en corps-à-corps. Ainsi, les mages les plus sages font un usage réfléchi de leurs sortilèges pour garder leurs ennemis à bonne distance ou les clouer sur place.\r\nPour prendre le dessus sur leurs ennemis, les mages peuvent invoquer des boules de feu à lancer sur des cibles à distance ou causer l’éruption de toute une zone pour calciner tout un groupe d’adversaires.', 'Tissu', 'DPS ( spécialisations Givre, Feu, Arcanes )'),
(11, 'Moine', 5, 'L’usage des armes leur étant interdit par leurs maîtres, ils se concentrèrent sur le contrôle de leur chi et l’apprentissage du combat à mains nues. Quel que soit leur rôle au combat, les moines comptent donc surtout sur leurs mains et leurs pieds pour mener la danse, et sur un lien fort avec leur chi pour nourrir leurs pouvoirs. Ils peuvent également utiliser des breuvages fortifiants pour protéger ses alliés et éviter les dégats.', 'Cuir', 'Tank ( spécialisation Maître brasseur ), Heal ( spécialisation Tisse-brume )\r\net DPS ( spécialisation Marche-vent )'),
(12, 'Chasseur de démons', 7, 'Ils s’approprient la puissance des démons qu’ils ont massacrés et finissent par acquérir la morphologie de leurs ennemis.\r\nMéprisant les armures lourdes, les chasseurs de démons préfèrent se fier à la rapidité avec laquelle ils fondent sur leurs ennemis pour les mutiler à l’aide d’armes à une main. Toutefois, les Illidari doivent aussi user de leur agilité à des fins défensives pour s’assurer que l’issue de la bataille leur soit favorable.', 'Cuir', 'Tank ( spécialisation Dévastation ) et DPS ( spécialisation Vengeance )');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int NOT NULL,
  `nom` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `lvlmax` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `nom`, `date`, `description`, `lvlmax`) VALUES
(1, 'Vanilla', 'Novembre 2004', 'World of Warcraft ( vanilla ) est la toute première version du jeu. Blizzard développe ainsi l\'univers des jeu Warcraft dans un MMORPG.\r\nLe jeu reprend place dans le monde imaginaire d’Azeroth, et dont le cadre historique se situe quatre ans après les évènements concluant Warcraft III. La carte du monde ne comprend que 2 continents : Kalimdor et les Royaume de l\'est. L\'histoire peut ainsi avancer jusqu\'à l\'affrontement face à Kel\'Thuzad dans Naxxramas.', 60),
(2, 'Burning Crusade', 'Janvier 2007', 'Burning Crusade est la première extension de world of warcraft. BC nous permet d\'accéder en Outreterre afin d\'affronter pour la première fois la Légion Ardente, au sein de la Péninsule des Flammes Infernales, Nagrand ou encore la Vallée de Sombrelune. C\'est aussi cette extension qui nous permet d\'affronter Illidan au Temple Noir, afin de purifier ce monde brisé. Avec cette extension, nous voyons également apparaître les montures volantes.', 70),
(3, 'Wrath of the Lich King', 'Novembre 2008', 'Wrath of the Lich King est la deuxième extension de World of Warcraft. Blizzard nous permet de continuer notre aventure en Norfendre afin d\'affronter le Roi Liche dans la Citadelle de la Couronne de Glace. A partir de WOLTK, les raids sont accessibles à 10 ou 25 joueurs (auparavant 40 joueurs). Il s\'agit de l\'extension qui a connu le plus grand succès commercial.', 80),
(4, 'Cataclysm', 'Decembre 2010', 'Cataclysm est la troisième extension de World of Warcraft. Blizzard nous met en traque d\'Aile de Mort afin de limiter la destruction d\'Azeroth. Cette extension a apporté une refonte des continents, dévastés par le passage d\'Aile de Mort', 85),
(5, 'Mists of Pandaria', 'Septembre 2012', 'Mists of Pandaria est la quatrième extension de Word of Warcraft. Blizzard nous envoie en Pandarie afin de lutter contre les sha et Garrosh Hurlenfer au sein du Siège d\'Orgrimmar.\r\nLe système de talents a été totalement refait et les combats de mascottes voient le jour.', 90),
(6, 'Warlords of Draenor', 'Novembre 2014', 'Warlords of Draenor est la cinquième extension de World of Warcraft. Blizzard nous envoie dans un passé alternatif où nous devons reconquérir une Outreterre sauvage, avant que Gul\'Dan ne déchaîne une nouvelle Horde de fer dans notre Azeroth en faisant intervenir la Légion Ardente. Cette extension est marquée par une forte refonte graphique des personnages et la création des fiefs. Ces derniers permettent de disposer d\'un terrain sur Draenor, afin de construire votre base d\'opérations, de rassembler des PNJ (sujets), de construire des bâtiments, et d\'accumuler des récompenses.', 100),
(7, 'Legion', 'Août 2016', 'Legion est la sixième extension de World of Warcraft. Blizzard nous envoie dans les Îles Brisées à la recherche de Gul\'Dan qui a ouvert la Tombe de Sargeras sous les ordres de Kil\'Jaeden. A partir de cette extension, les territoires précédant la dernière extension sont soumis à un scaling, permettant au joueur de progresser en niveau dans n\'importe quelle zone à n\'importe quel niveau.', 110),
(8, 'Battle for Azeroth', 'Août 2018', 'Battle for Azeroth est la septième extension de World of Warcraft. Blizzard nous envoie en Zandalar ( territoire hordeux ) et en Kul Tiras ( territoire allianceux ) afin de prendre part au conflit renouvelé entre la Horde et l\'Alliance. Cette extension est marquée par l\'apparition des races alliées jouables et des fronts de guerre ( instances représentant le conflit entre la horde et l\'alliance ).', 120),
(9, 'Shadowlands', '??? 2020', 'Shadowlands est la huitième extension de World of Warcraft. Elle a été annoncée le 1er novembre 2019 à la Blizzcon et a pour thème le royaume des morts d\'Azeroth, l\'Ombreterre. La limite de niveau repasse à 60 et un principe de donjon évolutif, Torghast, la tour des Damnés qui se situe au cœur de l\'Antre, a été annoncé. Les joueurs devront choisir une congrégation parmis : les Kyrians, les Faë nocturnes\r\nles Venthyrs et les Nécro-seigneurs\r\n\r\nCelles-ci pourra apporter son aide et ses pouvoirs au joueur qui choisira de la rejoindre. ', 60);

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE `races` (
  `id` int NOT NULL,
  `id_extensions` int NOT NULL,
  `nom` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `races`
--

INSERT INTO `races` (`id`, `id_extensions`, `nom`, `description`, `ville`) VALUES
(1, 1, 'Humain', 'Les Humains sont des humanoïdes de taille moyenne, descendants des Vrykul, une race de semi-géants de Norfendre, qui se sont installés sur une grande partie du continent d\'Azeroth. Arathor fut le premier homme a rassembler tous les Humains sous une seule et même bannière, formant ainsi la nation qui porta son nom dans les Hautes-terres d\'Arathi. C\'est à l\'époque du royaume d\'Arathor que les premiers contacts entre Humains et Hauts-Elfes de Quel\'thalas se firent. Au fur et à mesure du temps, les Humains commencèrent à coloniser plus largement le continent d\'Azeroth et en particulier Lordaeron, en conséquence de quoi l\'unité de la nation humaine fut perdu. À la suite de différents mouvements de colonisation et d\'établissement, sept royaume émergèrent de l\'ancien royaume d\'Arathor.', 'Hurlevent'),
(2, 1, 'Nain', 'Les nains sont des êtres de petite taille 1,20 m a 1,50 m mais en revanche leur force et leur ténacité dépasse leur petite taille (une force se situant entre celle des humains et celle des elfes).\r\nBraves et intrépides , les nains sont une race antique descendant des terrestres, des êtres de pierre vivante créés par les titans à l’aube du monde.\r\n', 'Forgefer'),
(3, 1, 'Elfe de la nuit', 'Les Elfes de la nuit sont grands et athlétiques avec des oreilles pointues. Ils sont l\'une des races jouables les plus grandes de l\'alliance (2,10 m environ) et sont aussi très agiles et rapides. Grâce à une musculature développée, leur force est légèrement supérieure à celle de leurs alliés. \r\nIls tiraient jadis leur immortalité de l’Arbre-Monde mais devinrent mortels suite à la bataille du mont Hyjal. Ils conservent toutefois une durée de vie très longue (jusqu\'à 10 000 ans ou plus pour les plus anciens). Ils ont un teint violacée et leurs cheveux qui sont souvent gardés longs, de couleurs diverses. ', 'Darnassus'),
(4, 1, 'Gnome', 'Les Gnomes sont spécialisés dans la technologie et la magie. Les gnomes sont très petits (les plus petits personnages jouables du MMORPG World of Warcraft), leur tête est très volumineuse par rapport à leur corps. À la suite des radiations de leurs multiples expériences, il n’est pas rare de croiser un gnome à la pilosité et à la peau verte ou rose.', 'Gnomeregan'),
(5, 2, 'Draeneï', 'Les Draeneï sont des humanoïdes d\'assez grande taille, de 2,35 m environs. Ils représentent tous les Érédars qui ont fui avec Velen en allant sur Draenor. Leur couleur de peau varie : elle peut aller du bleu pâle au violet sombre. Leurs jambes s\'articulent en trois parties distinctes terminées par des sabots de la même manière que les Taurens. Ils possèdent également des appendices faciaux et des cornes, ces dernières étant le plus souvent plus importantes chez les femmes. Ils possèdent une très grande longévité allant jusqu’à plusieurs milliers d’années.', 'Exodar'),
(6, 4, 'Worgen', 'Les worgens sont des créatures mi-humaines mi-loups.Il s\'agit d\'humains contaminés par une malédiction les ayant transformés en monstres sauvages.Ce sont les équivalents des loups-garous dans World Of Warcraft.', 'Gilnéas'),
(7, 5, 'Pandaren', 'Objets de mythes et légendes, rarement aperçus et encore moins souvent compris, les énigmatiques pandarens sont longtemps restés un mystère pour les autres peuples d’Azeroth.  Cette civilisation s\'est développée pendant des millénaires à l\'ombre du conflit entre l\'Alliance et la Horde. Il s\'agit de la seul race jouable dans les 2 factions.', 'Pandarie ( continent natal )'),
(8, 1, 'Orc', 'Les Orcs ont la peau verte parfois brune et sont réputés pour leur dévotion au combat et à la guerre ainsi qu’à leur sens de l’honneur, ils mesurent environ 2 m à 2,20 m pour 110 kg à 200 kg. Contrairement aux autres peuples de la Horde, les orcs ne sont pas originaires d’Azeroth, mais descendent de clans chamaniques qui peuplaient la verdoyante Draenor.', 'Orgrimmar'),
(9, 1, 'Réprouvé', 'Liées à la volonté de fer du Roi Liche, les armées de Morts-Vivants du Fléau cherchent à éradiquer toute vie sur Azeroth. Mené par la Banshee Sylvanas Coursevent, un groupe de renégats se forma : les réprouvés, ce groupe se bat pour conserver sa liberté vis-à-vis du Fléau mais également pour se défendre face à ceux qui les traquent.', 'Fossoyeuse'),
(10, 1, 'Tauren', 'L’apparence des Taurens se compare à celle du minotaure de la mythologie grecque ; ils sont aussi la race la plus forte du jeu (2,80 m à 3,10 m pour 300 kg à 500 kg) mi-homme mi-taureau,  Vivant au cœur des plaines de Kalimdor, dans une région nommée Mulgore, le peuple Tauren est un peuple paisible et tranquille, resté ancré dans des traditions ancestrales de culte de la nature et de la Terre-Mère. Les Taurens sont alliés à la Horde.', 'Pitons-du-Tonnerre'),
(11, 1, 'Troll', 'L’aspect général de la race Troll se caractérise par une grande taille (2,45 m de moyenne), un poids variant entre 110 kg et 150 kg, ainsi qu’un corps athlétique et musclé, ne disposant pas de surpoids graisseux. Les couleurs de peau des Trolls varient. Elles s’échelonnent du vert orc, en passant par la couleur bleu des mers du sud, au turquoise, en terminant par le gris. Ils sont habiles et robustes, ont le sens de l’athlétisme et de l’acrobatie.  Ils se distinguent des orcs par leur ruse , leurs force et leur magie chamanique, mais les orcs ont une force légerement supérieure. ', 'L’île des Sombrelances'),
(12, 2, 'Elfe de sang', 'Les elfes de sang furent auparavant de nobles Haut-Elfes, appartenant à l\'Alliance de Lordaeron. Mais suite à l\'invasion de Quel\'Thalas et la destruction du Puits de soleil, ils prirent par la suite le nom d\'Elfes de sang. Les yeux des Elfes de Sang autrefois bleus sont devenus verts après la guerre et la destruction presque entière de leur race.', 'Lune-d\'Argent'),
(13, 4, 'Gobelin', 'Les Gobelins sont de petites créatures humanoïdes à la peau verte. Ils sont connus pour être particulièrement ingénieux au même titre que leurs rivaux les Gnomes. Inventeurs d’objets dont l’efficacité n’a d’égal que la capacité à exploser, les Gobelins ont un rire caractéristique qui dévoile facilement leur avidité voire leur rapacité. En effet, ces créatures sont fortement attirées par le commerce, de façon plus ou moins honnête. Certains Gobelins sont amis avec des orcs ou d’autres races de la Horde. C’est pourquoi ils offrent volontiers leur aide pour les zeppelins. ', 'Havre Baille-Fonds');

-- --------------------------------------------------------

--
-- Table structure for table `races_classes`
--

CREATE TABLE `races_classes` (
  `id_races` int NOT NULL,
  `id_classes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `races_classes`
--

INSERT INTO `races_classes` (`id_races`, `id_classes`) VALUES
(1, 2),
(1, 5),
(1, 10),
(1, 7),
(1, 8),
(1, 9),
(1, 1),
(1, 11),
(1, 3),
(2, 2),
(2, 5),
(2, 10),
(2, 7),
(2, 8),
(2, 4),
(2, 9),
(2, 1),
(2, 11),
(2, 3),
(3, 2),
(3, 9),
(3, 1),
(3, 11),
(3, 8),
(3, 12),
(3, 6),
(3, 10),
(3, 3),
(4, 9),
(4, 5),
(4, 1),
(4, 10),
(4, 11),
(4, 3),
(4, 8),
(4, 2),
(5, 4),
(5, 2),
(5, 9),
(5, 10),
(5, 11),
(5, 1),
(5, 7),
(5, 3),
(6, 2),
(6, 9),
(6, 5),
(6, 6),
(6, 1),
(6, 10),
(6, 3),
(6, 8),
(7, 4),
(7, 2),
(7, 1),
(7, 11),
(7, 3),
(7, 8),
(7, 10),
(8, 4),
(8, 2),
(8, 9),
(8, 5),
(8, 1),
(8, 10),
(8, 11),
(8, 8),
(9, 2),
(9, 9),
(9, 5),
(9, 1),
(9, 10),
(9, 11),
(9, 3),
(9, 8),
(10, 4),
(10, 2),
(10, 9),
(10, 6),
(10, 1),
(10, 11),
(10, 7),
(10, 3),
(11, 4),
(11, 2),
(11, 9),
(11, 5),
(11, 6),
(11, 1),
(11, 10),
(11, 11),
(11, 3),
(12, 2),
(12, 12),
(12, 9),
(12, 5),
(12, 1),
(12, 10),
(12, 11),
(12, 7),
(12, 3),
(12, 8),
(13, 4),
(13, 2),
(13, 9),
(13, 5),
(13, 1),
(13, 10),
(13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int NOT NULL,
  `mail` varchar(256) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `faction` varchar(11) NOT NULL,
  `id_races` int NOT NULL,
  `id_classes` int NOT NULL,
  `id_extensions` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='races';

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `nom`, `prenom`, `age`, `mail`, `pseudo`, `faction`, `id_races`, `id_classes`, `id_extensions`) VALUES
(14, 'Lucien', 'Delgrange', 23, 'luciendelgrange5@gmail.com', 'Poumon', 'horde', 11, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_extensions` (`id_extensions`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_extensions` (`id_extensions`);

--
-- Indexes for table `races_classes`
--
ALTER TABLE `races_classes`
  ADD KEY `races_classes_ibfk_1` (`id_classes`),
  ADD KEY `races_classes_ibfk_2` (`id_races`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_races` (`id_races`),
  ADD KEY `id_classes` (`id_classes`),
  ADD KEY `id_extensions` (`id_extensions`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `races`
--
ALTER TABLE `races`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`id_extensions`) REFERENCES `extensions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `races`
--
ALTER TABLE `races`
  ADD CONSTRAINT `races_ibfk_1` FOREIGN KEY (`id_extensions`) REFERENCES `extensions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `races_classes`
--
ALTER TABLE `races_classes`
  ADD CONSTRAINT `races_classes_ibfk_1` FOREIGN KEY (`id_classes`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `races_classes_ibfk_2` FOREIGN KEY (`id_races`) REFERENCES `races` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`id_races`) REFERENCES `races` (`id`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`id_classes`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `votes_ibfk_3` FOREIGN KEY (`id_extensions`) REFERENCES `extensions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
