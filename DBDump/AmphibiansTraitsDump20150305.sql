CREATE DATABASE  IF NOT EXISTS `amphibians_traits` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amphibians_traits`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amphibians_traits
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bodysize`
--

DROP TABLE IF EXISTS `bodysize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodysize` (
  `id` varchar(100) NOT NULL,
  `svl_male_min` float DEFAULT NULL,
  `svl_male_max` float DEFAULT NULL,
  `svl_male_mean` float DEFAULT NULL,
  `svl_female_min` float DEFAULT NULL,
  `svl_female_max` float DEFAULT NULL,
  `svl_female_mean` float DEFAULT NULL,
  `sexual_dimorphism` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `taxa_body_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodysize`
--

LOCK TABLES `bodysize` WRITE;
/*!40000 ALTER TABLE `bodysize` DISABLE KEYS */;
INSERT INTO `bodysize` VALUES ('A20',NULL,23.9,NULL,NULL,35.3,NULL,NULL),('A21',NULL,18.3,NULL,NULL,26.1,NULL,NULL),('A22',1000,3000,NULL,NULL,NULL,NULL,NULL),('A23',19.3,19.3,NULL,NULL,NULL,NULL,NULL),('A24',NULL,35,25.5,NULL,NULL,NULL,NULL),('A25',NULL,37,33.5,NULL,NULL,NULL,NULL),('A26',NULL,22.9,20.5,NULL,NULL,NULL,NULL),('A27',NULL,45,70,NULL,NULL,NULL,NULL),('A28',NULL,21.5,NULL,NULL,NULL,NULL,NULL),('A29',NULL,25.2,NULL,NULL,NULL,NULL,NULL),('A30',NULL,32.5,49,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bodysize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_parameters`
--

DROP TABLE IF EXISTS `call_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_parameters` (
  `id` varchar(100) NOT NULL,
  `fundamental_frequency` float DEFAULT NULL,
  `dominant_frequency` float DEFAULT NULL,
  `pulserate` float DEFAULT NULL,
  `call_duration` float DEFAULT NULL,
  `note_duration` float DEFAULT NULL,
  `call_guild` varchar(45) DEFAULT NULL,
  `min_frequency` float DEFAULT NULL,
  `max_frequency` float DEFAULT NULL,
  `dominant_frequency_modulation` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `call_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_parameters`
--

LOCK TABLES `call_parameters` WRITE;
/*!40000 ALTER TABLE `call_parameters` DISABLE KEYS */;
INSERT INTO `call_parameters` VALUES ('A20',1200,2350,110,18,18,'5',1000,2500,0.5),('A21',1500,2500,120,53,53,'3',1110,2500,0.7),('A22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A24',3235.5,3235.5,109.09,126.5,126.5,'3',2421.8,4262.1,-0.85),('A25',2426.1,2426.1,123.08,32.5,32.5,'2',1660.8,3030.2,-5.3),('A26',4573.7,4573.7,0,NULL,27,'7',NULL,NULL,0.75),('A27',823,823,105.77,454.6,454.6,'3',412.3,1143.9,0.28),('A28',4220.5,4220.5,0,188.2,188.2,'5',3661,4423.9,0.92),('A29',2490,2490,200.9,2100,56.9,'6',NULL,NULL,NULL),('A30',1119.7,1119.7,0,98.2,98.2,'4',341.2,1828.1,7.21);
/*!40000 ALTER TABLE `call_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calling_behaviour`
--

DROP TABLE IF EXISTS `calling_behaviour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calling_behaviour` (
  `id` varchar(100) NOT NULL,
  `call_perch_hight` varchar(45) DEFAULT NULL,
  `to_water` varchar(45) DEFAULT NULL,
  `chorusing` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `rapids_or_waterfalls` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `calling_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calling_behaviour`
--

LOCK TABLES `calling_behaviour` WRITE;
/*!40000 ALTER TABLE `calling_behaviour` DISABLE KEYS */;
INSERT INTO `calling_behaviour` VALUES ('A20','litter','at_water','no','no','no'),('A21','litter','at_water','no','no','no'),('A22',NULL,NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,NULL,NULL),('A24','litter','at_water',NULL,NULL,'no'),('A25','semi_arboral','at_water',NULL,NULL,'no'),('A26','litter','no water',NULL,'no','no'),('A27','litter','at_water',NULL,NULL,'no'),('A28','litter','no water',NULL,NULL,'no'),('A29','semi_arboral','at_water',NULL,'no','yes'),('A30','litter',NULL,'yes',NULL,'no');
/*!40000 ALTER TABLE `calling_behaviour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colouration`
--

DROP TABLE IF EXISTS `colouration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colouration` (
  `id` varchar(100) NOT NULL,
  `pattern` varchar(45) DEFAULT NULL,
  `colour` varchar(45) DEFAULT NULL,
  `warty` varchar(45) DEFAULT NULL,
  `uni_vs_polymorph` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `color_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colouration`
--

LOCK TABLES `colouration` WRITE;
/*!40000 ALTER TABLE `colouration` DISABLE KEYS */;
INSERT INTO `colouration` VALUES ('A20','stripes','aposematic','none','polymorph'),('A21','points','aposematic','none','few'),('A22',NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL),('A26',NULL,NULL,NULL,NULL),('A27',NULL,NULL,NULL,NULL),('A28',NULL,NULL,NULL,NULL),('A29',NULL,NULL,NULL,NULL),('A30',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `colouration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__failed_logins`
--

DROP TABLE IF EXISTS `dataface__failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__failed_logins` (
  `attempt_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `time_of_attempt` int(11) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__failed_logins`
--

LOCK TABLES `dataface__failed_logins` WRITE;
/*!40000 ALTER TABLE `dataface__failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__modules`
--

DROP TABLE IF EXISTS `dataface__modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__modules`
--

LOCK TABLES `dataface__modules` WRITE;
/*!40000 ALTER TABLE `dataface__modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__mtimes`
--

DROP TABLE IF EXISTS `dataface__mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__mtimes`
--

LOCK TABLES `dataface__mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__mtimes` DISABLE KEYS */;
INSERT INTO `dataface__mtimes` VALUES ('all_traits',1425547919),('amphibian_traits',1425547438),('bodysize',1425570798),('calling_behaviour',1425570800),('call_parameters',1425570800),('colouration',1425570799),('dataface__failed_logins',1425392310),('dataface__modules',1425038851),('dataface__mtimes',1425038859),('dataface__preferences',1425038918),('dataface__record_mtimes',1425038888),('dataface__registrations',1425393907),('dataface__version',1425038851),('distribution',1425570798),('egg',1425479375),('egg_deposition',1425570799),('forlimb_characters',1425570798),('habitat_preference',1425570799),('head_characters',1425570798),('hindlimb_characters',1425570799),('iucn_threat_status',1425570799),('misc',1425570800),('taxonomic_identy',1425570818),('users',1425463095),('vocal_sac_tympanum',1425570799);
/*!40000 ALTER TABLE `dataface__mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__preferences`
--

DROP TABLE IF EXISTS `dataface__preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__preferences` (
  `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`pref_id`),
  KEY `username` (`username`),
  KEY `table` (`table`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__preferences`
--

LOCK TABLES `dataface__preferences` WRITE;
/*!40000 ALTER TABLE `dataface__preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__record_mtimes`
--

DROP TABLE IF EXISTS `dataface__record_mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL,
  PRIMARY KEY (`recordhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__record_mtimes`
--

LOCK TABLES `dataface__record_mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__record_mtimes` DISABLE KEYS */;
INSERT INTO `dataface__record_mtimes` VALUES ('001cfa88cbb054ef37a08900cd0dfadd','misc?id=A23',1425570783),('01754034e84667a77fa98b89a1fb0849','taxonomic_identy?id=Lupinus+obtusilobus',1425313725),('01845ec5de5d02a6ac8833c6523d660d','bodysize?id=Iris+macrosiphon',1425313699),('0201d89e0f29b1bd5127a4a5ffaf6f9b','bodysize?id=X251',1425563529),('0267f50e6cce6da3e4ab307f91af9398','taxonomic_identy?id=',1425372848),('032bf935ab81d3e7ec1aef75e27b15cf','head_characters?id=X29',1425558761),('035925938e90cf9ce40400f2b84b5003','taxonomic_identy?id=27',1425372867),('038c965f610fbdfafa9fddb2861774f3','users?username=x',1425395643),('0501109e36a200fd43d0b47e9081598d','forlimb_characters?id=A29',1425570796),('05f8ae0912ca09a211802deec5be53f4','bodysize?id=Cynoglossum+grande',1425312485),('0699f9dbe7b4c1d2342f6d0d840fbe78','colouration?id=Viola+cucullata',1425312492),('0757263d7888354156cdb1394bb03888','distribution?id=X1',1425554278),('08c9d7026324bf112460c7a36e754c60','forlimb_characters?id=A25',1425570786),('0918b31660dc6ef06154a38d3c4cc969','bodysize?id=333',1425308164),('09255f053b106ab47d023a8c869bcedc','forlimb_characters?id=X231',1425563526),('098c3a011a45580e75ad07e40340cbfa','bodysize?id=A28',1425570794),('09d26818495cbbbb7d8a571594ebe300','taxonomic_identy?id=2',1425372864),('0a5396b1870803834dddc89f71c0317c','bodysize?id=X18',1425557861),('0a7551de7ef2d88bc0869de9872240e6','colouration?id=Lupinus+caudatus',1425312479),('0a9a5b093b4e822928a15938f6767624','head_characters?id=X25',1425558758),('0ab1c4e737d6e2d9bef60cc7f746addd','taxonomic_identy?id=7',1425372864),('0adea275a03fc1d73fa59940575b2bd7','colouration?id=Pholistoma+auritum+var.+auritum',1425312504),('0bb428bdf36f81cc08fbe9b84054f788','taxonomic_identy?id=16',1425372865),('0df44d1b109a0ef90db820ac32370d2d','taxonomic_identy?id=G',1425551865),('0e35ba50cf31608e323475a6158bc318','call_parameters?id=A23',1425570782),('0e4297b8c23c0689cd0fe331daf09694','distribution?id=3',1425372928),('0ea432dec9cce9fa8278cd749990b8dd','taxonomic_identy?id=Brodiaea+coronaria',1425312480),('0ec964bda6fb504c582a27e48caebab3','forlimb_characters?id=',1425563816),('0ee38a6278447590a5ea707cf7567fa6','colouration?id=A27',1425570793),('0ef0309cf6b5786c8735eb3c519e599a','taxonomic_identy?id=Iris+douglasiana',1425313731),('0f3635d400ac0eabcae56154cae7d24e','forlimb_characters?id=A24',1425570784),('0f60b81b8e6830ad95c5abe86240efc4','head_characters?id=A25',1425570786),('104040fd2b425418ec4bd1115f54c0e9','forlimb_characters?id=A22',1425570778),('10905ef6037258147b1d7f6c9c173a37','taxonomic_identy?id=Anura',1425554205),('10f1b80767eedef6d70a5e780492806f','taxonomic_identy?id=X221',1425563524),('1107bacbbb31ffd57d3c10d97d6e0098','colouration?id=A21',1425570777),('11183275433fdbaf86e719dd08a7f0f8','colouration?id=A24',1425570785),('112cb49e29a32b40b1c3c16e4a7eab22','iucn_threat_status?id=A24',1425570784),('11d06d4c06e9331cb0b1d5844c2911af','taxonomic_identy?id=X15',1425557857),('11e029c7210f5c5c6dd433bac958205b','bodysize?id=Lupinus+polyphyllus',1425313697),('13950f2788b85f143b82b08477f7d0fb','taxonomic_identy?id=42',1425372868),('142bb858cf2387b46a1d85d1a15283a7','colouration?id=Iodanthus+pinnatifidus',1425312484),('146fb7ee56b451e6ff8f771246b8e187','bodysize?id=Ipomoea+purpurea',1425313700),('147b5811c79b6b26cdd0c69ebbc28dd5','distribution?id=X18',1425557861),('149259468f7b6aa66814439ab40453d0','vocal_sac_tympanum?id=A29',1425570797),('1562282591de3a139bba8afdc925ba1f','vocal_sac_tympanum?id=X291',1425563532),('157b8fa1fecfd2b4e17640001ccb8178','iucn_threat_status?id=A26',1425570790),('15cc248d43328e03f65cdc9938bf4fdc','habitat_preference?id=A23',1425570781),('1621bc723c07c6fbcb6efb23b1a8b6f2','taxonomic_identy?id=17',1425372866),('1672160e827ca1dc79c86091880c0ea0','taxonomic_identy?id=F',1425551865),('16b26bd148ebb53ef627df06cc700853','taxonomic_identy?id=X6',1425554287),('16e153bfdc27acd890d60a525af4f625','distribution?id=X271',1425563531),('1714d63108f4677f756ce4dc6f98d762','colouration?id=Lupinus+obtusilobus',1425313688),('173dedc527e6db17d5f33237de084a75','head_characters?id=X251',1425563529),('17d9df00c2077dd42b18ce0e54643783','taxonomic_identy?id=34',1425372867),('18026c63bf4192bb38d3976273d457bd','colouration?id=Campanula+scouleri',1425312501),('184b36219c9ee461a834d1ed111725f8','calling_behaviour?id=A27',1425570793),('18cc77e5bd273f0d353eb6e48d258c66','forlimb_characters?id=X29',1425558761),('18eab44bcbe4147e4c8879185354966a','distribution?id=X221',1425563524),('18eecd81cf3213729d40ac61f71beadf','iucn_threat_status?id=A30',1425570799),('1920798450aed2819c6868fc072e8802','bodysize?id=12',1425373355),('1950ee99e1b0a1ded10bee1b53061e7a','taxonomic_identy?id=Polemonium+reptans',1425312500),('1965ded9c5ce3806eb572fc4f105bfdc','habitat_preference?id=',1425567104),('19938c3ca8bda125d0e1c3855101a450','users?username=x1',1425395738),('19c20e849736b2f66408fb1d12281a26','taxonomic_identy?id=14',1425372865),('1a0d73e629d53bd771e8739ee68b300e','vocal_sac_tympanum?id=A21',1425570776),('1a10a1b6be92abd88854cd621a5528fe','bodysize?id=14',1425373356),('1a9c06ba99d3f711f2113e43c47a5a82','bodysize?id=X23',1425558755),('1afcb776c7c5ccae5e1e68bb2610cd2a','forlimb_characters?id=1',1425376714),('1b5ff52fdeab9a9ce74d85a0d645c7c9','taxonomic_identy?id=13',1425372865),('1b6b935b3c5bb93617d5e46e9790616d','users?username=fff',1425395862),('1b7558cc895dcadc084a88f5be2d3a4b','calling_behaviour?id=1',1425375742),('1bd0d7cade0c21ab97a9550443d0fcde','taxonomic_identy?id=Salvia+columbariae',1425312502),('1c79a323f66204a591b21ffa1211e82f','taxonomic_identy?id=Lupinus+polyphyllus',1425313728),('1d9b2e55b2d8d2dfa9082cc021a6d830','taxonomic_identy?id=33',1425372867),('1e9e6dbc2bb81b6fb9542abd9924d89f','taxonomic_identy?id=Iris+virginica',1425313724),('1f0c1a16e50c1c63c41950a6eb98f052','bodysize?id=X11',1425555932),('2013617c8989517da6bdfe73c25dd941','bodysize?id=Campanula+scouleri',1425312501),('207c328f16b7dd0f95c564be606b5c21','bodysize?id=X8',1425555930),('2099f810277750ce5511ce7d1f3564fc','colouration?id=Lupinus+breweri',1425312489),('20d8d56007998e8be592593ed365ecca','taxonomic_identy?id=Linanthus+parryae',1425313723),('20e8b448e14e45452c60002fc3f2b1c1','colouration?id=1',1425373555),('20f239533febb03202504e3d05c4fb34','colouration?id=A29',1425570797),('2101caca9505bb5efd62f5fe7d7dcabb','users?username=guest',1425392996),('215d1720a0733a1e7adc685e2c059e4a','distribution?id=Linanthus+parryae',1425371969),('21def0908d4eb503996a9234d96e9d1c','habitat_preference?id=A27',1425570792),('21fad44617125de98f889ef4f070ad6b','users?username=aaaf&email=admin%40localhost.com',1425394325),('233505222b5f4182741f1a12f19f7695','distribution?id=X6',1425554280),('23cff50d9093046cea8b7b279ebee008','colouration?id=Campanula+scabrella',1425313704),('2421236a1bbefb8cb6878ebc7ae78466','taxonomic_identy?id=Iodanthus+pinnatifidus',1425312484),('243d330758ecfb5737eb03ca180a531e','call_parameters?id=A25',1425570787),('2490a73070ae0bed305fc893ea0ab255','bodysize?id=X27',1425558759),('264c031e2216506fb0d3f7fc3815372f','taxonomic_identy?id=8',1425372865),('26bced9fad3393844592a4db86cf13f9','users?UserID=8',1425462776),('276e4326f9429643a5669c9618a1ae94','taxonomic_identy?id=5',1425372864),('2789b65645538d616beac5cfa2daed68','distribution?id=A22',1425570778),('28562c4545cddaf9c40cd5ad3d61bb81','hindlimb_characters?id=',1425563816),('293425e81ca0a22315e174d22f0d954b','taxonomic_identy?id=A29',1425570818),('29654b31e43482164c7f3f0d0f16d5df','users?username=aaa1',1425395327),('299832c5292524faf15a06319070b34c','taxonomic_identy?id=Campanula+americana',1425312505),('29e0c601e41468ad1178f9f9b65651f0','misc?id=3',1425380251),('2a0d4507260c905a2ac86ddb7ce2b454','bodysize?id=Brodiaea+coronaria',1425312480),('2ac0aed5b120a643aff5d849e6722ab4','habitat_preference?id=A30',1425570799),('2adf1419b60d0dc2a481020e6c8d83aa','colouration?id=Lupinus+grayi',1425313680),('2b1b68b7cfee4f7b932595d803f336f2','taxonomic_identy?id=Lupinus+succulentus',1425312488),('2b2ef9185307e0737c13af6a813a2516','bodysize?id=',1425563816),('2bb63e515fe857f3db5740201b372799','colouration?id=Scutellaria+parvula',1425312494),('2c12cf028e89d5c964d759f67d53caf5','hindlimb_characters?id=A24',1425570784),('2cb91e784cc7ae9842ef0d8d62773175','forlimb_characters?id=X25',1425558758),('2cccd0ae05131eb01330641bff6b251c','taxonomic_identy?id=Symphyotrichum+laeve',1425312505),('2cd62d682625ada26e98b6730144ed2b','bodysize?id=X21',1425557864),('2cdc8e702922e42bb6c02ee61b9c7628','colouration?id=Eriastrum+pluriflorum',1425312480),('2d82db1321b36155e25d4160cbcee0d4','vocal_sac_tympanum?id=A30',1425570799),('2da0b31341c2c57c2c94ff7053a075a0','bodysize?id=X20',1425557863),('2e97dc4d035b458857f23f9465fe4399','taxonomic_identy?id=Id',1425311189),('2ef56da7b81abebf01136486f65c01d7','habitat_preference?id=3',1425376868),('2f4bbbcfac415208a10df9f1508e303b','call_parameters?id=1',1425375350),('2f5bc9b8e1c279319a6cf2aba8f12290','bodysize?id=A24',1425570783),('2fbc3ce52abc3974dca00146399627f5','colouration?id=Collinsia+sparsiflora',1425313702),('3015089b8666228c2be57396afcbdcc3','colouration?id=Linum+lewisii',1425312484),('30988817424d2a2021fe61dd029994f5','bodysize?id=X22',1425558754),('30b83996bd53f4f52eb87212c6ee992d','taxonomic_identy?id=40',1425372868),('30cb8eb867feb4daa7b370ddcca4e857','bodysize?id=Pholistoma+auritum+var.+auritum',1425312504),('30ccc480cb95223e318af7c93fac6d0d','egg_deposition?id=2',1425376154),('328f7edf74190e2819b3659ba699a43c','head_characters?id=A23',1425570780),('330ef1191393e0d481e6274422e0e687','forlimb_characters?id=A26',1425570789),('33cc9495c7639fe8fc76daf5e9dcf1c7','taxonomic_identy?id=A27',1425570818),('3478f6d7e48926ac8cca4bed300b3a44','taxonomic_identy?id=35',1425372867),('35048f7801d2ed48194f46a2d142614f','head_characters?id=X24',1425558756),('351e0cea15ba7b8f46da18ed4a0322de','taxonomic_identy?id=Lupinus+caudatus',1425312479),('356908c12d9be3ab985c7c7ffc6beba2','taxonomic_identy?id=X231',1425563525),('3569f9870a518a98f127536f7c44614e','forlimb_characters?id=A27',1425570792),('35857b1f27819147c3cb7be9ac43c8cb','bodysize?id=Scutellaria+parvula',1425312494),('35c84e5ccd626741c13f6456446dd6ff','head_characters?id=X231',1425563526),('36a2053779c484c6ea257b99f8870e1e','head_characters?id=X271',1425563531),('36a30d61315e2967693102bfc197696f','head_characters?id=X17',1425557860),('36d8ce5105562ae8a0e8f04451271e2b','head_characters?id=X26',1425558759),('3742a4f851102ab6926b8cb8d4becdfc','taxonomic_identy?id=X27',1425558766),('37546dfa336e15b97351a79a0bd2556b','calling_behaviour?id=A23',1425570783),('3755f454aae40994f8ea4f3d4a0d01a4','head_characters?id=A24',1425570784),('377cdc6b0661995b644aa7d9678d1ca2','hindlimb_characters?id=A22',1425570778),('378dbbbbb81d976e0726e553aa35b0d9','colouration?id=Nemophila+pulchella+var.+pulchella',1425312481),('37d94682406640e1b9493028c86a7349','taxonomic_identy?id=D',1425551865),('3874e4421bfcd0bcfb573d34e82e05c8','bodysize?id=Lupinus+succulentus',1425312488),('3982da9630e185ded20e4057e0bc886c','misc?id=A29',1425570798),('3a2f06a9a41bfe0020883be4d6500d7c','hindlimb_characters?id=2',1425379089),('3b4afe2ba7e037130ca1c8c182053a11','taxonomic_identy?id=Ageratum+houstonianum',1425312491),('3b9af24f3cbf2875aabfcf29ecdce70b','taxonomic_identy?id=A26',1425570818),('3bc8080fdd675122eae0516a196ea828','iucn_threat_status?id=A29',1425570797),('3bf3f30491c9715c78d9758c3f4ec260','taxonomic_identy?id=X12',1425555938),('3c65a3b3a153a21ef383ca4011f63583','bodysize?id=X17',1425557860),('3c9c629e9257519ef261044bcf9f2e55','bodysize?id=A29',1425570796),('3ce700a39de98c24371dfc8db13c7fa2','forlimb_characters?id=X27',1425558760),('3d0044ef50a5c38d4cf86b245ddefa14','taxonomic_identy?id=B',1425551864),('3d39f784fd73b9ccb6b8c40e70da2b0d','colouration?id=A30',1425570800),('3d8850219c51a873154c9b29a9b552f0','head_characters?id=X241',1425563528),('3dfe7442ffb3f9797aba70b42b4a9e38','call_parameters?id=',1425569926),('3e0ce8b24641f8310b803bfe05683ce8','egg_deposition?id=A20',1425570773),('3f2e0fb0bd19868348b8c3501c0a73c8','bodysize?id=Campanula+americana',1425312505),('3fff8c9c7efc010dfcc865e55a9f1306','calling_behaviour?id=A30',1425570800),('4115858dd5a02484afe2514f00393da3','calling_behaviour?id=A20',1425570774),('4176ab0c32a03597732a13fa202bc8ac','colouration?id=8',1425373556),('41f15a23d61fb21e40ab08218fac5152','call_parameters?id=A20',1425570774),('4202e0885fc81a1f8481c5e744677304','head_characters?id=',1425563816),('42eceefe5551a443f693c79f9d0fcc71','head_characters?id=A29',1425570796),('43bb08919bb0b173411c0c99f7c3ddb8','call_parameters?id=A30',1425570800),('444d763dbb497b3c97f9272ce2d32732','taxonomic_identy?id=A',1425551864),('449b494b9b2e5e03bcd6aeb208874119','taxonomic_identy?id=X11',1425555937),('45605439b97c673aaba00bfcd46780d7','distribution?id=2',1425372928),('457ea74e2822bb3164b8303499beff60','calling_behaviour?id=A22',1425570779),('45d2e97cf3cd195c27a92e880f28d470','users?UserID=10',1425463095),('46d2dda1f31b7a48da2ee857e8ff39ca','bodysize?id=Viola+labradorica',1425313711),('46d2e6c3835c598472509314e001a229','forlimb_characters?id=A21',1425570776),('47b5af795e47a6014e11652f4746c207','taxonomic_identy?id=Verbena+hastata',1425312497),('47d030297ada0f14263bc406acabbd12','taxonomic_identy?id=A22',1425570817),('48063afbbb78597726218f3052561ba0','distribution?id=X12',1425555932),('4813a95f07aa96dd58cbd56613360c0b','bodysize?id=Sisyrinchium+idahoense',1425312508),('48adc0575b23c8955e2d422027cf5d51','head_characters?id=A20',1425570771),('48e0afa490cd640372540c5a2d667db8','bodysize?id=A30',1425570798),('49422a2f4f4f24893772f922daefe818','taxonomic_identy?id=25',1425372866),('49b65a349a4474a802b82e087da270c1','misc?id=A25',1425570788),('49f8ef2489a370f3e8e8049a77e1469f','taxonomic_identy?id=23',1425372866),('4a6fd59fdd2d242d594721e242de378a','distribution?id=X25',1425558757),('4a7cc69ef0d0ea3725b5ed40192a6ca5','bodysize?id=X241',1425563527),('4aa5c03955cdd3f3c79b162f04cc063f','taxonomic_identy?id=X19',1425557862),('4aa8f44c03189741408968740dd8ba6d','bodysize?id=X13',1425555932),('4b1c97673aa627de4ecd73611da14f9a','taxonomic_identy?id=Gentianopsis+holopetala',1425312483),('4b6ba30e663e17dc27435664a257c65a','colouration?id=Ipomoea+purpurea',1425313700),('4c23a59c8c936421153564c464aadb11','colouration?id=Ionactis+linariifolia',1425313701),('4c45a4d32490db7b63592fec78cd42f2','head_characters?id=A28',1425570794),('4d1119f3906f0443363caf427bd495fb','taxonomic_identy?id=X26',1425558766),('4ea1700a8ef12fd19ec9985e69821279','distribution?id=A30',1425570798),('4ee4cdfa8ac70a3b049c013c92e2441c','taxonomic_identy?id=X9',1425555937),('4f58430bf903266d94d822d1ae5dcd25','colouration?id=Polemonium+reptans',1425312500),('4ffc35cda3e2b82367c8a534a97b9817','distribution?id=X27',1425558759),('50303f8bcc5a664c61c7b44c3e0fcf4e','iucn_threat_status?id=A21',1425570776),('50d3a29673972edc302bda4b9f8e12ea','taxonomic_identy?id=Symphyotrichum+oblongifolium',1425312498),('50d986fa9cbc3ad9c8ba1ba876c17515','bodysize?id=Iodanthus+pinnatifidus',1425312484),('50df2e3cd846ac835efc0723a5ed8689','misc?id=A22',1425570780),('517984cf2a123a107260e75c0bb8c8ac','colouration?id=2',1425373555),('52e46b088b58a3c0b267ad5e3b4f731e','colouration?id=Symphyotrichum+oblongifolium',1425312499),('53e3e235e03b9d9d977ec8a950c77db7','call_parameters?id=2',1425375350),('542da9869d9996e93da7fdacb5c3b817','bodysize?id=13',1425373356),('549660eec2b90f6c11e8cb4a204bd46f','distribution?id=6',1425372928),('5521c6969e97cfa6f5a6476537805fc6','taxonomic_identy?id=X10',1425555937),('55319ef71887d961b48c8b959b9b8a48','taxonomic_identy?id=A28',1425570818),('5571536a12b257d8251f8acf53c6d7bf','distribution?id=Temnospondyli',1425554194),('558e66a7f6441722ceed8ac1b4a36c77','distribution?id=4',1425372928),('5600dd2f31d84762fc1d0c70ac0aafd7','colouration?id=14',1425373556),('5652e7c95d478395f92aa5486ccd1548','distribution?id=Lupinus+grayi',1425371969),('565683b87bd96ec37bfd8bba3bedc25e','bodysize?id=3',1425373353),('579542a52eeaee4566a734684e00620f','users?username=aaa',1425395231),('57b05cf619318647e50ecc9812e0534d','bodysize?id=X9',1425555930),('581e46da08b27ccdfc816cfd9eeb64cf','taxonomic_identy?id=X4',1425554287),('582e71170590ecad4201e54b7aaae838','taxonomic_identy?id=Order',1425311371),('587771981ebad239ee85cf79a251eae4','colouration?id=',1425569925),('58b2ab7efb5e991d9b6462d180ec02a8','head_characters?id=2',1425377568),('58c413132e687001483f4275468689e0','misc?id=A28',1425570796),('58e317495b16bbbea87b4d967d0ce84e','vocal_sac_tympanum?id=X271',1425563531),('5935b98aa83dbed87b49bd00b0d84181','taxonomic_identy?id=X3',1425554287),('59e9e6c2949fb645a51ce9d96d7a495a','calling_behaviour?id=',1425375736),('5a03ae455b90615054791a09fd001e4c','taxonomic_identy?id=22',1425372866),('5a17340df248408cc2da967d11f187cd','taxonomic_identy?id=Lupinus+grayi',1425313723),('5b5f80bce8559e43b016b80af345c078','distribution?id=X251',1425563529),('5b9323b0fc1fd6025bb77e49af6eaf11','colouration?id=A20',1425570773),('5d33db66d328a3399d9c43fc6582a8e3','taxonomic_identy?id=11',1425372865),('5d751f60d9ae13c2e05b726e57f98f39','bodysize?id=Iris+virginica',1425313681),('5dcd734f065fe8cdd7190f078bb97757','bodysize?id=X14',1425555933),('5e23ba73dcb780d615ff329973395d2a','vocal_sac_tympanum?id=A27',1425570792),('5e90953c899620d5fbecd3d120be9f49','colouration?id=A22',1425570779),('5edb145469d0191c90bb7df747558398','taxonomic_identy?id=43',1425372868),('5fc761be7fa2e3c4c91185111aedbd1d','bodysize?id=Navarretia+mitracarpa',1425312510),('5fd8958882dc56c574faf2b791df8535','bodysize?id=11',1425373163),('5ffd1eb04281804e24fe24cc79bf74a7','hindlimb_characters?id=A20',1425570772),('6054754d2ab0e1ff23a1ba6cc60fd0d4','taxonomic_identy?id=Navarretia+mitracarpa',1425312509),('6165ec2c659f2d3332eecb1f5e2942a8','distribution?id=1',1425372928),('622998783973361bc3f478f624a67878','hindlimb_characters?id=A26',1425570789),('62a02e8f1bb6ebb739fb1c02c3083313','call_parameters?id=A22',1425570779),('63aeccb15ef04ea41ffe1c615808f19a','habitat_preference?id=1',1425376868),('64496755d37b0f06b0693f47519bba3c','distribution?id=X3',1425554279),('648c2ea51b52a91598db4b1680c8911c','taxonomic_identy?id=X17',1425557860),('649955367a854f599cc9b78a90bd6a51','taxonomic_identy?id=Eriastrum+pluriflorum',1425312479),('653a1f3658f8d0c357db3533acf8d2de','bodysize?id=7',1425373354),('65816c6e89b8593ec919705a1bf3f6a2','head_characters?id=X23',1425558755),('658fb1ae51ea1a9f4a9953a8cfdceb2e','taxonomic_identy?id=X13',1425555938),('66176c9d1d0dd6a97fcc2be9577343d7','forlimb_characters?id=X251',1425563529),('665dd3bd90e3baa0fba2a5a69cb12584','bodysize?id=Eriastrum+pluriflorum',1425312479),('666d3894c91a351eae10715682c8bf01','bodysize?id=X12',1425555932),('67a8f8bda16dcdccaeae2f5b0b619eb6','forlimb_characters?id=X261',1425563530),('682217d4714ad7eae2c7112dd7a68cbc','vocal_sac_tympanum?id=X261',1425563530),('68272f878841f582c0d2fb54156dc413','calling_behaviour?id=A21',1425570777),('68e488a5b0c53a3b4cb2fdcf9a2c9036','egg_deposition?id=A29',1425570797),('68e60962a204f2ef02befc6a46ac3794','egg_deposition?id=A26',1425570790),('6a514c8a095add22b5b0feb29565d3c7','hindlimb_characters?id=4',1425379090),('6ae9b139ce4ddbd65fc7367ed1d153e1','taxonomic_identy?id=Ipomoea+purpurea',1425313728),('6af4891535cd37eecdd1096efe2fd329','taxonomic_identy?id=Cynoglossum+grande',1425312485),('6b64553ffdbb6b782043cdac6acb2ce6','taxonomic_identy?id=10',1425372865),('6c8f054b595ee18a886f6a2bc9f03e25','distribution?id=A20',1425570771),('6ca2923d5811357de67d460f320dab17','hindlimb_characters?id=A21',1425570776),('6cc0bb2bb37185b01ca59ede58f5acf9','taxonomic_identy?id=X8',1425555937),('6ce15b6b5fbc058724e254a147fcc285','bodysize?id=2',1425373353),('6d2e14068986deef7c0d32caa7ca5a0f','bodysize?id=Symphyotrichum+oolentangiense',1425312500),('6df5c3c9dd55162653d35d4c161d1f5d','taxonomic_identy?id=6',1425372864),('6e57d211be14cd48100f26b3c1ecad51','taxonomic_identy?id=X2',1425554287),('6f79a6bbaa5d95aa70b0cc123c81adf8','hindlimb_characters?id=3',1425379090),('70172b69ffc67572c815af381ca17f6b','bodysize?id=5',1425373354),('702be1d404c6da5e454e9159d1c7174a','calling_behaviour?id=A25',1425570788),('717152e4558f550cac9543964b6a8121','distribution?id=X231',1425563526),('71cc89558ef89287f3b8da39eeed88ea','taxonomic_identy?id=41',1425372868),('71de299043cce27147785ab976332790','calling_behaviour?id=3',1425375742),('724b25bc12f075650374655598e20101','forlimb_characters?id=X24',1425558757),('7251ef157d454fd9c884289f1003dcbb','distribution?id=X14',1425555933),('72d61109975d4d9187a6a171abd8d475','bodysize?id=A20',1425570771),('72e178771bae4cb4776d01e51987da82','bodysize?id=Agastache+foeniculum',1425313681),('73346a9600c713498e21a1683f72d2e4','colouration?id=12',1425373556),('735cc1f2a8e68e958e0106b52fcc13ba','taxonomic_identy?id=A21',1425570817),('73917329788822caea1adfa7f41d6d07','taxonomic_identy?id=A30',1425570819),('73d05f087ec218fc27a06cc4804333a9','colouration?id=Lupinus+brevicaulis',1425312507),('740ae95ac62e9aea579893dd6bf2b4be','misc?id=A24',1425570785),('742bc9139557a154a9f6ed0c38e68a21','users?UserID=7',1425400442),('743e21fda305aaabab6ca7b18c043f6e','distribution?id=X22',1425558754),('75350dfc2fbac346178cd8539994bc45','distribution?id=Anura',1425554196),('75d2f8694822d495401396138dc5fc80','distribution?id=X11',1425555931),('75f24016541ab77aa71d3861d17034ce','bodysize?id=Linum+lewisii',1425312484),('764a58cf06655f54ecbe0765da001b2f','calling_behaviour?id=A28',1425570795),('76baac79d56c128b46b10d211e856df6','calling_behaviour?id=2',1425375742),('77cbc140244cbdc04a13017b4f0f621d','taxonomic_identy?id=A23',1425570817),('783c39e65e48175de1704125c3d7b5e5','taxonomic_identy?id=X23',1425558765),('788b1ea668cf9f1975fe1c913d1b0fa0','taxonomic_identy?id=X24',1425558766),('78db45a845eff142ea2a321e5e8a68c6','taxonomic_identy?id=Viola+cucullata',1425312492),('78ecb0d5bc43f96b2bf80ec39c474edf','colouration?id=A28',1425570795),('7940ece5c39128a365f29db1832614e8','taxonomic_identy?id=37',1425372868),('797587404187e2c80431ec67376c374e','bodysize?id=X221',1425563525),('799bf51c9717aab1c5c75e4d420dc427','vocal_sac_tympanum?id=X251',1425563529),('799e8de58dda45ea4e0c8d06e2b26941','forlimb_characters?id=A23',1425570780),('7a57f096ea2732608a7663206cb1ee4e','forlimb_characters?id=A20',1425570772),('7a5c9ffadd526b25b513a4d7f04a7ac3','taxonomic_identy?id=36',1425372868),('7a70aec965cac3c072762fd0c9dd0a21','hindlimb_characters?id=X291',1425563532),('7b0ab2d74befd0a1e23db0871dc592f4','iucn_threat_status?id=A28',1425570795),('7b385f07f15c577970490ef7565bf8f8','taxonomic_identy?id=1',1425372864),('7b447e698075dac3632e4716b3624625','habitat_preference?id=A29',1425570797),('7b5eb8219d24c7aa780a3d5ffba9c557','hindlimb_characters?id=5',1425379090),('7b718bf3a5ef02a128d951e733ea4be4','taxonomic_identy?id=29',1425372867),('7b8d2663914d81d7a3cdf8050907b9ff','head_characters?id=A27',1425570792),('7be1a3e4a4934abea7d05d3aafa6bd23','distribution?id=X5',1425554279),('7ca02131ce38ff2e54dc6689a7915ff1','bodysize?id=Lupinus+caudatus',1425312479),('7cb8ce2fef5b95852fdc019d8139ada7','colouration?id=Ageratum+houstonianum',1425312491),('7d1483d77d736ddb22041bda57dbb80c','bodysize?id=X19',1425557862),('7e49805eb9de3fb938d6c1e81fb39bf7','bodysize?id=X25',1425558757),('80822d2091f55df53a610c94a894b059','users?username=hatem',1425392584),('80c8d6b25b766628880d125b13124131','call_parameters?id=A28',1425570795),('81002dc20937ad5d8f0e2ab2f6b4884b','taxonomic_identy?id=19',1425372866),('810b577bb359eab5e779f9e76469f05c','hindlimb_characters?id=A23',1425570781),('8154217ece2b15ad0f5b9eb0738251c0','forlimb_characters?id=2',1425376714),('8168bebb53c0022cce520e8779cf76b3','bodysize?id=Lupinus+obtusilobus',1425313687),('82722c33db94e3ed6d4fa44ac419967d','bodysize?id=X26',1425558759),('8296e9aa93ca3cdb0b463b37b591b107','bodysize?id=X271',1425563531),('8351539bbfd6ed46ddfad747a77e9b6f','colouration?id=Navarretia+mitracarpa',1425312510),('83aac21307c7241034da87bfe17c9d41','iucn_threat_status?id=',1425569925),('83c15d201f889ec693c8f124af95105c','taxonomic_identy?id=30',1425372867),('848651355434740c07959c3ffcff300e','colouration?id=Lupinus+polyphyllus',1425313697),('84c771b55045d66c31135b99b2157095','call_parameters?id=A27',1425570793),('85673b947812582a78bca81433c015dc','habitat_preference?id=A25',1425570787),('85a8fbbf38f65156c81d53c5c8f39976','bodysize?id=Viola+cucullata',1425312492),('85fa5081976a5293bbd88e0a54124ee0','taxonomic_identy?id=Ionactis+linariifolia',1425313729),('863d468a30de944357c87c44afc501e3','colouration?id=4',1425373555),('86e45e97b7089ebb5467a34aea76be78','vocal_sac_tympanum?id=A22',1425570778),('86f2eb302c15b38d969c56266fe3f814','bodysize?id=A25',1425570786),('8713a25685c9d38098830d264507d52c','taxonomic_identy?id=X251',1425563528),('87f341dda20d5bd8cda30984962df47b','taxonomic_identy?id=1003',1425551507),('87f76865cfec5859a1e5f25805274cb1','bodysize?id=Lupinus+breweri',1425312489),('896f5894d5927ca1aca4b23190eeb987','forlimb_characters?id=A28',1425570794),('89e27b03c470b565b48785b28f1d57f4','misc?id=2',1425380251),('8acc40bd177b8971f1152b709a525d92','head_characters?id=3',1425377568),('8ae4710317e12b68b52754d0883f20ff','bodysize?id=X15',1425557858),('8c8c959d8cd5cf95b0e940716c8a50d8','colouration?id=A25',1425570787),('8c94d32433cd33178ba5eea85d810653','vocal_sac_tympanum?id=A20',1425570773),('8cb22a8e7f43e96ce22e1ac80904b9f7','vocal_sac_tympanum?id=A23',1425570781),('8cb3c27125cefdf6144850525923b2aa','distribution?id=X8',1425555930),('8cff8bae01f507b82375084635865416','colouration?id=Viola+palmata',1425312495),('8dcf7804e9c57e6bf1436af179f6bf4b','misc?id=A21',1425570777),('8ebb9f75310da3753e64512a982bcc77','colouration?id=6',1425373556),('8ff63f0ad9c4a54a89dcb6258703e4ca','taxonomic_identy?id=Viola+labradorica',1425313731),('900c077bc1988e027790a97a54316227','taxonomic_identy?id=Collinsia+sparsiflora',1425313729),('90b79c9c2c4b442ab287deb869ff8b1f','taxonomic_identy?id=28',1425372867),('9104702f28cbf334974c476ae9dff7d4','taxonomic_identy?id=Temnospondyli',1425554204),('9179efa647b2c0df96e3108b4b4704c2','hindlimb_characters?id=A27',1425570792),('917e317dd00a8fa0b15947317c9f310f','head_characters?id=A21',1425570775),('9198b7661c701deef8dfbc8afb02e67e','taxonomic_identy?id=X241',1425563527),('91b2dc1168d074bd48c7bac8af29778b','colouration?id=Symphyotrichum+laeve',1425312506),('9206a90fb1a7589697b5b28c0026a312','colouration?id=Salvia+columbariae',1425312503),('9238b163bfed1d2669420b952ad416a0','call_parameters?id=A29',1425570797),('923d2d474e9e7b7b036f46d5a970ba52','taxonomic_identy?id=15',1425372865),('92d3d1b26c41d4063e56a4738e0a6dfb','forlimb_characters?id=X221',1425563525),('933198ff8daca231f23938eaf9667a4c','call_parameters?id=A24',1425570785),('93fcce1851b8eeb372b86fc5f2ee3f82','habitat_preference?id=A21',1425570776),('951a4cf699f19cf13974986c16b06a43','taxonomic_identy?id=31',1425372867),('9589a6ae1f07126a61f98c182c47692b','bodysize?id=X24',1425558756),('95edac2b48f1669d629041b1fded37f1','iucn_threat_status?id=A23',1425570782),('95f71d2151c26877e29ed10a9979a308','colouration?id=Lupinus+sparsiflorus',1425313690),('966e64ee2614ac9d88fa458e3ed4544b','distribution?id=X24',1425558756),('96cfa9b30396d6997385f2c7b888972b','colouration?id=Agastache+foeniculum',1425313681),('96eb8262a43bb8c34c7927ae293d4f70','bodysize?id=8',1425373355),('9768ddb5a989c6b5ac95d5a5d0e0f477','distribution?id=7',1425372928),('97a3185208df18aa56de2f58f5adeda6','egg_deposition?id=A22',1425570779),('9929e69e50b84dd4d218539bc68fa552','hindlimb_characters?id=X261',1425563530),('9b8712dd2f9eb0bdfea54be9592cff24','distribution?id=A29',1425570796),('9bae82aa520a458f1b390553db2d9b74','bodysize?id=Blephilia+hirsuta',1425312481),('9bcc8a10b3fc666abba72510be74c989','taxonomic_identy?id=X271',1425563530),('9bef0ee5ebcab0434080019a0b68bbdc','head_characters?id=X22',1425558754),('9c96a9b2a9a4e8228abf686786654521','distribution?id=',1425563816),('9cec3fe757789b8fe5973862a45c0ca0','forlimb_characters?id=X22',1425558754),('9cf76b8a93fb6ce5f415580a54fe2859','forlimb_characters?id=X23',1425558755),('9ed3e6dceb2064a18e50bac7909253b1','bodysize?id=A27',1425570791),('9f050f8ab61756777ce2d794d43cbb95','taxonomic_identy?id=C',1425551864),('a037acec24482a13a817846a63df67ec','egg_deposition?id=A21',1425570776),('a06a76467e757c7a5fb3c6a562e36844','taxonomic_identy?id=Pholistoma+auritum+var.+auritum',1425312504),('a0a7bb47b3c7aac0a95a44a05b9767f2','head_characters?id=X21',1425557864),('a26fda2fa2391956e03917309c7805cf','taxonomic_identy?id=X18',1425557861),('a3c013436e6d15af1096a9d0506dc4b2','habitat_preference?id=A22',1425570779),('a3cc5d5de64e5dc564427c649c066fc8','taxonomic_identy?id=X25',1425558766),('a46915285601fc8f6f6e6da1b69ff5a5','distribution?id=X4',1425554279),('a4827f9116c673c4dd4c49533d52b094','call_parameters?id=3',1425375350),('a4839050f43e5a852f43ead3ede0f3cc','head_characters?id=X261',1425563530),('a4908652653106c9f450c40108182240','vocal_sac_tympanum?id=1',1425380809),('a519df76e353bfb5f7c7e23737ff7d9e','colouration?id=A26',1425570790),('a5269330df83da159d374c2d3ab45459','iucn_threat_status?id=3',1425379297),('a5604e0f3e5ab0d23df31357eef516a4','hindlimb_characters?id=X221',1425563525),('a5728459c3664134b1908cf98ef02bbf','hindlimb_characters?id=A29',1425570797),('a5f2f98e5c1ff8cac6fe9c2abc87460a','bodysize?id=Phlox+hoodii+subsp.+canescens',1425313700),('a5ffaad4ce93d6973518aa2b02f05ff2','taxonomic_identy?id=X22',1425558765),('a60e6410b832d0ca8fe12dc44849992c','colouration?id=10',1425373556),('a63f527e0ac0166943452ee365573702','misc?id=A20',1425570774),('a6509ad691e69a2dec78d8869945bf13','head_characters?id=X18',1425557861),('a6e99dd87bb41dbb198ad9cf6525aeb3','distribution?id=A28',1425570793),('a75b0319355f09133c2f728f0de98fee','colouration?id=Iris+macrosiphon',1425313699),('a768b9e2d091858aa2054ec6544f64c5','iucn_threat_status?id=A20',1425570773),('a7a67522ef85b5e67cd36fbf14a1fc71','bodysize?id=X231',1425563526),('a7bfc0b3e36194509fec6886779f40c0','hindlimb_characters?id=X251',1425563529),('a82c6ec65b0a165b9ed8379c5406bc5f','taxonomic_identy?id=X261',1425563529),('a83e78e9e9a1f2b2164acb3b8aa1a4de','distribution?id=X23',1425558755),('a890a5a1903bd459ff34bb66811fa64f','forlimb_characters?id=X291',1425563532),('a9c82904e941688762b4903d8e30421a','taxonomic_identy?id=X5',1425554287),('a9d7306f32c02195de204db810055132','distribution?id=X9',1425555930),('aa5e5b721897de32bfe119e5230cbb8f','distribution?id=X20',1425557863),('aaf13fa159f184a557ee8e13f53d4700','taxonomic_identy?id=Gilia+clivorum',1425313726),('ab153f48eee5e157aeaa95a08051075d','distribution?id=A25',1425570786),('ab44ab55e6c39bef3c4b1b56089b7e27','bodysize?id=Lupinus+grayi',1425313680),('ac35ca8c1c923ad00943553ba5e1cde4','taxonomic_identy?id=12',1425372865),('ac4602055193f30076de0d818af1b8ac','vocal_sac_tympanum?id=',1425563816),('ac9177c00128e436ec2a6a0b0d1542b9','taxonomic_identy?id=Phacelia+tanacetifolia',1425312502),('adc326c5c5c94d71aba317825c13ba2d','distribution?id=A21',1425570775),('add36816c79db288d550ccbb92b11ea8','bodysize?id=6',1425373354),('ae4c86d2a470acaa4a35cb6c4590632c','colouration?id=Symphyotrichum+oolentangiense',1425312500),('aeaa3a6fe6719c451b503e53f25e1e63','taxonomic_identy?id=4',1425372864),('aedd327695c2c5fc1b6b2c5f1db9b1e0','distribution?id=X261',1425563530),('af4275d4ab78cca19ce871e0cc0f9734','head_characters?id=5',1425377568),('b06f80206091759cb6e6543f7d4a6968','colouration?id=Lupinus+albifrons',1425313684),('b08c3b6233ea778696e8ee43c9e1e13d','colouration?id=Sisyrinchium+montanum',1425313708),('b08ed19ce220de424cd61d33996f2753','bodysize?id=X16',1425557859),('b0dc2316938da93050ad7630db627258','taxonomic_identy?id=A20',1425570817),('b108f5fb232f802341ec11ca46589b69','bodysize?id=Phacelia+tanacetifolia',1425312502),('b1d502968f8cb6db125bbe0b9de9531b','colouration?id=Viola+labradorica',1425313712),('b2304c65fd86a19d323c529e20885538','colouration?id=5',1425373555),('b23612ecf3e6ed8596272259cea87e58','colouration?id=A23',1425570782),('b245413c4dd296b75609adb69d3259c3','hindlimb_characters?id=1',1425379089),('b2ba77153b87c821258495e7c2058232','hindlimb_characters?id=X271',1425563531),('b2c57d38fce3fcabe573cc62885a03f4','egg_deposition?id=A25',1425570787),('b31fe7a4cb6eb9fc8af08365da0a8053','head_characters?id=X27',1425558760),('b42bdb8c82678ef033b419365c760a05','taxonomic_identy?id=Polygala+vulgaris',1425312480),('b439b10e1f4ecb3d5893768777c8e0fe','call_parameters?id=A21',1425570777),('b46822434f37f10aaece9eda2bfd7846','taxonomic_identy?id=Iris+macrosiphon',1425313728),('b49453ad14713d34b295b7d9c9efa8e1','taxonomic_identy?id=Agastache+foeniculum',1425313723),('b51dc05e97709198980fd5252fab8a41','bodysize?id=A23',1425570780),('b521dc25d68a44f1a8c54fa1f2e88af8','misc?id=1',1425380251),('b56fa3fe56e50a6aba4b2755c27dd7ac','calling_behaviour?id=A24',1425570785),('b62518933cf5538a359a26e79883c835','bodysize?id=1',1425373353),('b661dca3567d5dda5a3466748a37455a','colouration?id=Polygala+vulgaris',1425312480),('b68dd5a9007b425b5072eefaba5e796e','taxonomic_identy?id=Viola+palmata',1425312495),('b6bdebd0432bc8bb5cb98f7d36321958','colouration?id=Phacelia+tanacetifolia',1425312502),('b70eba603a9d0a3fca82b50f73bda0d7','distribution?id=X13',1425555932),('b74ce4b5c1de816fe64675fd43bc1605','colouration?id=Linanthus+parryae',1425313680),('b7aecd9ea8aa9e32204a56040eed95c2','taxonomic_identy?id=X291',1425563531),('b7e56bfa7e2da609f8ab3d38c11a8312','colouration?id=Campanula+americana',1425312505),('b820ba5b5fd1dfd4b6b8c2d85843d76e','users?UserID=2',1425397891),('b8370783f559bed5edbc8a9c44707f16','bodysize?id=X29',1425558761),('b88ed04c494ac973c251ad5d4e50e6a3','hindlimb_characters?id=A30',1425570799),('ba46e313d66ac67b6cd42d4a7febb1b3','distribution?id=X291',1425563531),('ba6a71890461fc6500891a1e1a4437f8','forlimb_characters?id=X241',1425563528),('ba8f07350cbbb253fc24779c25b26af8','colouration?id=Brodiaea+coronaria',1425312480),('bb171751e790369f043c9bff4995d28c','colouration?id=13',1425373556),('bb422aee60809f9e08ba916ab41962de','forlimb_characters?id=X26',1425558759),('bc188d0b9d1edd4d056da334295d6c84','colouration?id=Gentianopsis+holopetala',1425312483),('bc266c45e24b03c522d313505ed6b7d8','colouration?id=Blephilia+hirsuta',1425312481),('bc488c8e1d9127c4f1c95782bb03cf76','hindlimb_characters?id=X231',1425563526),('bc8e8c9cd2dcf43c774f87933c35e7b9','colouration?id=Gilia+clivorum',1425313693),('bcbc0bd2316290d8867d5728e6a7166b','taxonomic_identy?id=Lupinus+sparsiflorus',1425313726),('bd7475d27be9ae8f3c7a762e81a87844','taxonomic_identy?id=3',1425372864),('bd78829c2c1e6da92938e273e932b3de','vocal_sac_tympanum?id=A28',1425570794),('be10afb3876399456e3c4936808bd943','distribution?id=X241',1425563527),('be554dcfb310b1e4938965444ffdbf08','bodysize?id=Polygala+vulgaris',1425312480),('beb6e1a4e7491f18dc6b086bcc42fe02','bodysize?id=A26',1425570789),('beb7d1c1963e15c8c7cb7764c92a541f','distribution?id=A24',1425570783),('befe5f9fe3db6dc2439c0d7b4ea168aa','head_characters?id=X291',1425563532),('bf81df43d488198ff856183604c62b48','colouration?id=3',1425373555),('bfa371dd6317eaebee8c4f2bbdf7d994','vocal_sac_tympanum?id=A25',1425570787),('bfb7b4becb5e95e183443889aec3e754','taxonomic_identy?id=Lupinus+breweri',1425312489),('c0560c82093764c1cbe24dd066b6719a','bodysize?id=Ionactis+linariifolia',1425313701),('c0fd280659c7f43c8afee4d0bf70fd81','bodysize?id=Lupinus+sparsiflorus',1425313690),('c1479a5ce95c97bdcd394421b487f4ce','taxonomic_identy?id=333',1425308169),('c198aedd84c595e23eb03ed407d57906','habitat_preference?id=A24',1425570784),('c199204521d11f210142d64707907f1b','colouration?id=Cynoglossum+grande',1425312485),('c1d7c90414f74d2f81304d9d7ad0a28d','distribution?id=A27',1425570791),('c2d91c3f3c23e7ad4ddac3bc2ed00353','colouration?id=Verbena+hastata',1425312498),('c32319406fddef051407c2c93257a767','taxonomic_identy?id=Phlox+hoodii+subsp.+canescens',1425313728),('c3716b9f0914b0338e4b848509154c8d','vocal_sac_tympanum?id=X221',1425563525),('c41b50f12107f56e034e9b27174800a2','bodysize?id=A21',1425570775),('c43da2777cf064557f5e65ea950dc9e9','taxonomic_identy?id=Nemophila+pulchella+var.+pulchella',1425312481),('c48b609cdb792310abd076b65eca213e','taxonomic_identy?id=X21',1425557864),('c496b31b4d83bb4b4b043a443fb4fc5e','taxonomic_identy?id=Linum+lewisii',1425312484),('c5b3d282d8ae092af041437bfba0dc42','colouration?id=7',1425373556),('c5ce12aac323de5c7184ee42fba01321','vocal_sac_tympanum?id=A26',1425570789),('c5d255e2bb48c8c4d9cceb6c40c306db','head_characters?id=X20',1425557863),('c6015871d9699134725ed8dc10981a44','vocal_sac_tympanum?id=3',1425380809),('c7a82e719dc9ea955826282cf3d72c8f','colouration?id=Iris+virginica',1425313788),('c7acd24014e29f75cef91f94366d8eb8','distribution?id=X17',1425557860),('c86be43e84ddacb54fd594b3160a7925','taxonomic_identy?id=21',1425372866),('c90d57d62d6a7901b122f268bdd13e8f','iucn_threat_status?id=A25',1425570787),('c98b9880689ffd26e1388c1ac7619116','bodysize?id=Symphyotrichum+laeve',1425312505),('c998381abb4ec771e9a642cce219efdf','iucn_threat_status?id=1',1425379297),('c9e3bc8976ff77eda58393a97cfe8e6b','colouration?id=9',1425373556),('caa34f4f7d0849e564eb215d8bd5f7b7','misc?id=',1425569926),('caae07075ac0653d6ebe820b21f1156b','bodysize?id=Campanula+scabrella',1425313703),('cc27de4de5c12091da214f7c3a8647a0','taxonomic_identy?id=18',1425372866),('cc706c05c6fc7ad8cc181c4c72107dcf','bodysize?id=Lupinus+brevicaulis',1425312507),('ccb8e97cab9155539edad3fe1c497a8b','misc?id=A27',1425570793),('cdba96be98a636817fb8f26703d497be','hindlimb_characters?id=A25',1425570786),('ce41006729d26516eee61231d152c423','taxonomic_identy?id=X20',1425557863),('cee75a4d4e7a73701d154c1f10fb7213','forlimb_characters?id=3',1425388112),('ceebb141654adc94385a6aef7e59cd84','taxonomic_identy?id=Campanula+scabrella',1425313729),('cf600ad7b7cc13f87bac8d923b18c8b3','taxonomic_identy?id=Campanula+scouleri',1425312501),('cf647c923cde5591b714b5b69cd21792','bodysize?id=Ageratum+houstonianum',1425312491),('cf9bc7676c9bb6c401a43154d734bef8','taxonomic_identy?id=20',1425372866),('cfba5ff8597ccc02cc2aa2856c0d43f5','distribution?id=X10',1425555931),('d13efa1ffa501ccdb522e302faba7211','vocal_sac_tympanum?id=X231',1425563527),('d184ad71a491bb4dbc0c3044ad9f87b3','iucn_threat_status?id=5',1425379297),('d1cd8a1c9b295c20d95fd8db3c295132','colouration?id=Phlox+hoodii+subsp.+canescens',1425313700),('d22b63b6902425b016788c472d493f6d','head_characters?id=4',1425377568),('d2a613ef86fa408f9cf04391fd67c094','iucn_threat_status?id=A27',1425570793),('d2b026f780cc8536fc12b930a60eabae','bodysize?id=A22',1425570778),('d2c76e76fe261455266e6e74cd620cd2','misc?id=A30',1425570800),('d361c62c266e1d7eceb0d2b9f64b9cb9','distribution?id=5',1425372928),('d43ac65e0004fc467031a575b762e728','calling_behaviour?id=A26',1425570790),('d48a3e6a27f1239573b60311d2872482','bodysize?id=X261',1425563530),('d4caff634b1ff2b897aaabde0ffd99a4','taxonomic_identy?id=Lupinus+brevicaulis',1425312507),('d4ef68181a578f45610acbcefa92929f','bodysize?id=4',1425373354),('d8575609364ad746ee6a395ddf40693b','taxonomic_identy?id=X1',1425554287),('d8b40ed74b8ad0e8a818eea7afb5ac45','vocal_sac_tympanum?id=X241',1425563528),('d90d67c0eee21874c0c344068213fe8d','hindlimb_characters?id=A28',1425570794),('d915acdcc2c4867c552888db43020b90','taxonomic_identy?id=E',1425551865),('d93ca204d7ceced310f4d8fbc50a8550','taxonomic_identy?id=24',1425372866),('d9f2761e660866f7bf47f916c28632a5','distribution?id=X2',1425554278),('da1dfb99d593e1a213dd7d6b6c94a16e','taxonomic_identy?id=A25',1425570818),('da48ec776812c1f0b6b1bea5b5f4f424','taxonomic_identy?id=Symphyotrichum+oolentangiense',1425312500),('da763db4a66118bb0052ae8ff4a346c9','vocal_sac_tympanum?id=4',1425380809),('dafb5e9dbfdb9795b7e3e30a8df8572b','bodysize?id=9',1425373355),('db2bd3901fe9466fc9c7bb24f618ef8c','egg_deposition?id=1',1425376154),('dbb4baaad794d8484b6a9ea82f13640c','distribution?id=X19',1425557862),('dbb9f99acaeb182ff7d141cacc1d718a','egg_deposition?id=A30',1425570799),('dbc0d36e67b588e863bf8f9ce20c88a9','habitat_preference?id=A28',1425570795),('ddb3910ebb2a84f379a043f2ea600b94','bodysize?id=X10',1425555931),('debb768b723e673dea26d78c0ee22779','taxonomic_identy?id=9',1425372865),('def8ebc9a01dfc0ea75e4cd30c1ca854','vocal_sac_tympanum?id=A24',1425570784),('df42c6d4e9ee875ed9e5ffa798ed3f1a','head_characters?id=X15',1425557858),('df75a407da5d67adf6e69808876698f3','users?username=aaa&email=test%40test.com',1425394183),('e06385de69e7bce975d5f6bc197d8154','bodysize?id=X291',1425563532),('e063ee33cfcf9e2c50b39969aa53a94d','misc?id=A26',1425570791),('e080e7ebe98dce49374a4fc9450c0fd0','taxonomic_identy?id=Scutellaria+parvula',1425312494),('e1442a08c5976e2e43bafb88e66b2ec8','colouration?id=Iris+douglasiana',1425313713),('e15fc1c4d3909851268060c5377851c5','habitat_preference?id=A26',1425570789),('e1af7d42eaaa836902c9e4acb282a291','bodysize?id=Polemonium+reptans',1425312500),('e1dfbf7ace80a4fcd65070d648fa185e','call_parameters?id=A26',1425570790),('e3baf16f921806f1fff5859e7bb8dee5','distribution?id=A23',1425570780),('e3c60e6f6bf40347a5b0dc622bb239e5','head_characters?id=X19',1425557862),('e4c4d92f045e641888d201f827668f0f','head_characters?id=A30',1425570798),('e53f9feeea0a10e83c71c48b88ef21b3','habitat_preference?id=5',1425376868),('e5f2111625f36744388559e92b694ede','egg_deposition?id=A24',1425570784),('e6a498f4b1fb396baf0f27d126529f38','distribution?id=X15',1425557858),('e6d1775f5bc6688c96f9f1475581de2e','distribution?id=X7',1425554280),('e6ff28bc66f0ae98c0cd25c4c0da22ac','colouration?id=Lupinus+succulentus',1425312488),('e843340c50dd9f7dbcc1812cdbb02de1','forlimb_characters?id=X271',1425563531),('e8920085548ee663f515cde2715bf3d3','taxonomic_identy?id=X16',1425557859),('e9d5423b46a3fa15b32af113776082eb','taxonomic_identy?id=A24',1425570818),('ea16ea7b4d6e854984738790be683a51','distribution?id=A26',1425570788),('ea1bce8a7a1b7bcafbca7c816db13060','bodysize?id=Verbena+hastata',1425312498),('eb0c65600221a54e84ee85dce34abd89','egg_deposition?id=A28',1425570795),('eb1cbe9774ea6730574b15929ea8feb5','taxonomic_identy?id=Blephilia+hirsuta',1425312481),('ebfe57b3d3508351f8dd5d3f9889a659','bodysize?id=Collinsia+sparsiflora',1425313702),('ecb22174b98415f78a034dd2d7860ba4','iucn_threat_status?id=A22',1425570779),('ed1a3354946861d0d273376ced24c53c','distribution?id=X21',1425557864),('ed31e24a53b630667bbbc0863732b0a0','bodysize?id=Symphyotrichum+oblongifolium',1425312498),('ed5596a61ef332fb0e9883939d02435d','bodysize?id=Gentianopsis+holopetala',1425312483),('edbc9296bcd04951a35a81c2b01dc786','bodysize?id=312',1425308163),('ee384d0e8835efb40d5027214400bf85','taxonomic_identy?id=Sisyrinchium+montanum',1425313730),('ef1548ddd6f990a6dd64e8a35a586039','bodysize?id=Salvia+columbariae',1425312502),('ef19ddaec3047bad612fdc8aa0e498b2','habitat_preference?id=A20',1425570773),('ef210e9689a9689b90e73be3bdb29449','head_characters?id=1',1425377568),('ef5ccef916d26208b35b6bd5d26b069e','taxonomic_identy?id=312',1425308169),('efe79c0a58275e4fc7746024b5aadf29','taxonomic_identy?id=X14',1425555938),('f13cab37cf869f31967b77aec1c4b857','distribution?id=X29',1425558760),('f2eb37950f99f62f9d145cea5c363ef9','distribution?id=X26',1425558759),('f31ea1befffc07386759f8c17b07f04b','taxonomic_identy?id=Sisyrinchium+idahoense',1425312508),('f341e13d07980cce7babae0b520a9e5e','taxonomic_identy?id=38',1425372868),('f387004d06f06bd36b0ead4b023d506a','bodysize?id=Viola+palmata',1425312495),('f3a51c7d842815e3b5b0d466c6c116d9','distribution?id=X16',1425557859),('f3e2c708b54801a830e5ef6503836384','head_characters?id=X221',1425563525),('f40c308ea98add33596e23ca9ec7a170','colouration?id=Sisyrinchium+idahoense',1425312508),('f56b667164476bfef89ac2b5ccc92b79','egg_deposition?id=3',1425376154),('f58035ada4ab9e2df0e200b5a63682a7','taxonomic_identy?id=X29',1425558766),('f5d77c191f8c10327d6d3b69ed96b7de','forlimb_characters?id=A30',1425570798),('f5f6a14d938bb9b05045a53c7231d024','bodysize?id=Gilia+clivorum',1425313692),('f60e9f0546fbad302c5fbe339f6dbbf7','taxonomic_identy?id=1001',1425551507),('f6965b89778ee5edd81f3689eb4a14d3','taxonomic_identy?id=1002',1425551507),('f6f6673bc6b92785f5b807e7b6bd846a','taxonomic_identy?id=39',1425372868),('f6f99e01a157e765c9ceb2954d4bf315','taxonomic_identy?id=X7',1425554287),('f7d48118f1a7ac024ecb2a99aea31712','egg_deposition?id=A27',1425570792),('f8b12266d4956554085f3d3f94cbd251','hindlimb_characters?id=X241',1425563528),('f8b2d2b992c9c4bfc3a4a113b6c103c8','bodysize?id=Iris+douglasiana',1425313713),('f91d615b01e3c0e41bb8ab41e488f9d9','bodysize?id=10',1425373355),('f9297f3e1613756765756d8a3e63a423','taxonomic_identy?id=26',1425372867),('f9d332f33c6e55005b66a2a6718ca793','bodysize?id=Nemophila+pulchella+var.+pulchella',1425312481),('f9d65cd38b854e68493e2191158b19fa','egg_deposition?id=',1425567104),('fa204b97526a9e8cec38ee301c8260ee','bodysize?id=Linanthus+parryae',1425313680),('fb3f0f6e7d6fa51ca58e8bce49eec5ce','bodysize?id=Lupinus+albifrons',1425313683),('fbcc25bb9e5457c8a7981eda296a9079','bodysize?id=Sisyrinchium+montanum',1425313708),('fe44a0dfe3cc4a55b139038670d591ff','taxonomic_identy?id=32',1425372867),('fe5d66c251776ace080a145052b4a8a7','head_characters?id=A22',1425570778),('fe646bdc481c040c2b34615c26f7fd01','head_characters?id=X16',1425557859),('fe9271886588ac195a59baff18c890be','egg_deposition?id=A23',1425570782),('fefe47d4d5c8fc98f312e79743b82f23','taxonomic_identy?id=Lupinus+albifrons',1425313724),('ff9a4846f73327ba9b263db212b99101','head_characters?id=A26',1425570789),('ffc3be1fb0cf16f04d420c50c97a6f0b','calling_behaviour?id=A29',1425570798);
/*!40000 ALTER TABLE `dataface__record_mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__registrations`
--

DROP TABLE IF EXISTS `dataface__registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__registrations` (
  `registration_code` varchar(32) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registration_data` longtext NOT NULL,
  PRIMARY KEY (`registration_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__registrations`
--

LOCK TABLES `dataface__registrations` WRITE;
/*!40000 ALTER TABLE `dataface__registrations` DISABLE KEYS */;
INSERT INTO `dataface__registrations` VALUES ('1ed021a05ef5089233379be996f7bbdd','2015-03-03 14:45:42','a:3:{s:8:\"username\";s:6:\"hatem1\";s:8:\"password\";s:6:\"hatem1\";s:5:\"email\";s:21:\"h.m.sergieh@gmail.com\";}'),('66410adefc38da1e9486483597c15518','2015-03-03 14:45:06','a:3:{s:8:\"username\";s:4:\"test\";s:8:\"password\";s:4:\"test\";s:5:\"email\";s:14:\"test@gmail.com\";}'),('67da624214ee8e89992ce70459e669a3','2015-03-03 14:54:30','a:3:{s:8:\"username\";s:6:\"aaa111\";s:8:\"password\";s:3:\"111\";s:6:\"email1\";s:7:\"h@j.com\";}');
/*!40000 ALTER TABLE `dataface__registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__version`
--

DROP TABLE IF EXISTS `dataface__version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__version`
--

LOCK TABLES `dataface__version` WRITE;
/*!40000 ALTER TABLE `dataface__version` DISABLE KEYS */;
INSERT INTO `dataface__version` VALUES (0);
/*!40000 ALTER TABLE `dataface__version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution`
--

DROP TABLE IF EXISTS `distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribution` (
  `id` varchar(100) NOT NULL,
  `Continent` varchar(45) DEFAULT NULL,
  `Range_size1` float DEFAULT NULL,
  `Range_size2` float DEFAULT NULL,
  `Range` varchar(45) DEFAULT NULL,
  `elevation_min` float DEFAULT NULL,
  `elevation_max` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_dist_fk_idx` (`id`),
  CONSTRAINT `tax_dist_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES ('A20','Africa',146696,NULL,'fragmented',270,1078),('A21','America',4478920,NULL,'continous',100,1300),('A22','Europe',NULL,NULL,NULL,NULL,NULL),('A23','North America',1,1,'continuos',NULL,NULL),('A24','North America',NULL,NULL,NULL,NULL,NULL),('A25','South east Asia',NULL,NULL,NULL,NULL,NULL),('A26','South America',NULL,NULL,NULL,NULL,NULL),('A27','South America',NULL,NULL,NULL,NULL,NULL),('A28','Madagascar',NULL,NULL,NULL,NULL,NULL),('A29','South east Asia',NULL,NULL,NULL,NULL,NULL),('A30','Africa',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egg_deposition`
--

DROP TABLE IF EXISTS `egg_deposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egg_deposition` (
  `id` varchar(100) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `clutch_structure` varchar(45) DEFAULT NULL,
  `clutchsize_eggs_min` float DEFAULT NULL,
  `clutchsize_eggs_max` float DEFAULT NULL,
  `clutchsize_eggs_class` varchar(45) DEFAULT NULL,
  `clutchsize_method` varchar(45) DEFAULT NULL,
  `egg_diameter_without_jelly` float DEFAULT NULL,
  `egg_diameter_with_jelly` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `egg_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_deposition`
--

LOCK TABLES `egg_deposition` WRITE;
/*!40000 ALTER TABLE `egg_deposition` DISABLE KEYS */;
INSERT INTO `egg_deposition` VALUES ('A20','terrestrial','Aquatic foam nest',NULL,40,69,NULL,'dissection',2.1,NULL),('A21','aquatic','film_on_water',NULL,150,290,NULL,'observation',1.8,NULL),('A22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `egg_deposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forlimb_characters`
--

DROP TABLE IF EXISTS `forlimb_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forlimb_characters` (
  `id` varchar(100) NOT NULL,
  `forelimb_length` float DEFAULT NULL,
  `humerus_length_min` float DEFAULT NULL,
  `humerus_length_max` float DEFAULT NULL,
  `hand_length` float DEFAULT NULL,
  `first_finger_length` float DEFAULT NULL,
  `second_finger_length` float DEFAULT NULL,
  `third_finger_length` float DEFAULT NULL,
  `forth_finger_length` float DEFAULT NULL,
  `finger_disk` varchar(45) DEFAULT NULL,
  `dermal_fringe_along_finger` enum('yes','no') DEFAULT NULL,
  `lateral_dermal_fringe_on_finger` enum('yes','no') DEFAULT NULL,
  `webbing_on_finger` enum('yes','no') DEFAULT NULL,
  `inner_palmar_tubercle` enum('yes','no') DEFAULT NULL,
  `outer_plmar_tubercle` enum('yes','no') DEFAULT NULL,
  `supernumerary_tubercle_on_finger` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `taxa_hindlimb_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forlimb_characters`
--

LOCK TABLES `forlimb_characters` WRITE;
/*!40000 ALTER TABLE `forlimb_characters` DISABLE KEYS */;
INSERT INTO `forlimb_characters` VALUES ('A20',4.2,3.1,3.3,2.2,1.1,1.2,1.2,1.3,'round','no','yes','no','no','no','yes'),('A21',4.2,3.1,3.3,2.2,1.1,1.2,1.2,1.3,'round','no','yes','no','no','no','yes'),('A22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A23',NULL,4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `forlimb_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitat_preference`
--

DROP TABLE IF EXISTS `habitat_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat_preference` (
  `id` varchar(100) NOT NULL,
  `macro` varchar(45) DEFAULT NULL,
  `micro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `habitat_pre_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat_preference`
--

LOCK TABLES `habitat_preference` WRITE;
/*!40000 ALTER TABLE `habitat_preference` DISABLE KEYS */;
INSERT INTO `habitat_preference` VALUES ('A20','forest','litter'),('A21','savan','semi-arboreal'),('A22',NULL,'aquatic'),('A23','Marsh/swamp',NULL),('A24',NULL,NULL),('A25',NULL,NULL),('A26',NULL,NULL),('A27',NULL,NULL),('A28','forest',NULL),('A29','forest',NULL),('A30','grassland','terrestrial');
/*!40000 ALTER TABLE `habitat_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `head_characters`
--

DROP TABLE IF EXISTS `head_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `head_characters` (
  `id` varchar(100) NOT NULL,
  `head_length` float DEFAULT NULL,
  `head_width` float DEFAULT NULL,
  `snout_length` float DEFAULT NULL,
  `internarial_distance` float DEFAULT NULL,
  `nostril_to_snout_distance` float DEFAULT NULL,
  `eye_to_nostril` float DEFAULT NULL,
  `maximum_tympanum_diameter` float DEFAULT NULL,
  `eye_length` float DEFAULT NULL,
  `distance_between_front_of_eyes` float DEFAULT NULL,
  `distance_between_behind_of_eyes` float DEFAULT NULL,
  `interorbital_distance` float DEFAULT NULL,
  `snout_shape_lateral` varchar(45) DEFAULT NULL,
  `snout_shape_dorsal` varchar(45) DEFAULT NULL,
  `interorbital_shape` varchar(45) DEFAULT NULL,
  `pineal_oscilus` varchar(45) DEFAULT NULL,
  `loreal_region_shape` varchar(45) DEFAULT NULL,
  `canthus_rostralis` varchar(45) DEFAULT NULL,
  `nostril_shape` varchar(45) DEFAULT NULL,
  `tympanum_shape` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tax_head_char_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_characters`
--

LOCK TABLES `head_characters` WRITE;
/*!40000 ALTER TABLE `head_characters` DISABLE KEYS */;
INSERT INTO `head_characters` VALUES ('A20',6.6,3.4,2.4,1.2,1.6,2,2,1.8,1.7,1.6,1.9,'oval','round','round',NULL,'elongate','elongate','round','round'),('A21',5.3,2.2,2.1,1.2,1.6,2,2,1.8,1.7,1.6,1.9,'oval','oval','round',NULL,'elongate','round','elongate','oval'),('A22',56,120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A23',6.6,7.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `head_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hindlimb_characters`
--

DROP TABLE IF EXISTS `hindlimb_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hindlimb_characters` (
  `id` varchar(100) NOT NULL,
  `femur_length_min` float DEFAULT NULL,
  `femur_length_max` float DEFAULT NULL,
  `tibia_shank_length` float DEFAULT NULL,
  `foot_length` float DEFAULT NULL,
  `total_foot_length` float DEFAULT NULL,
  `first_toe_length` float DEFAULT NULL,
  `second_toe_length` float DEFAULT NULL,
  `third_toe_length` float DEFAULT NULL,
  `fourth_toe_length` float DEFAULT NULL,
  `fifth_toe_length` float DEFAULT NULL,
  `webbing_on_toe` varchar(45) DEFAULT NULL,
  `dermal_fringe_along_toe` enum('yes','no') DEFAULT NULL,
  `lateral_dermal_fringe_on_toe` enum('yes','no') DEFAULT NULL,
  `supernumerary_tubercle_on_toes` enum('yes','no') DEFAULT NULL,
  `inner_metatarsal_tubercle` enum('yes','no') DEFAULT NULL,
  `outer_metatarsal_tubercle` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `hindlim_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindlimb_characters`
--

LOCK TABLES `hindlimb_characters` WRITE;
/*!40000 ALTER TABLE `hindlimb_characters` DISABLE KEYS */;
INSERT INTO `hindlimb_characters` VALUES ('A20',5.2,5.4,3.4,3.9,4.1,1.2,1.3,1.5,1.6,1.7,'I1-2II1-2III1-2IV2-1V','yes','yes','no','no','yes'),('A21',5.2,5.4,3.4,3.9,4.1,1.2,1.3,1.5,1.6,1.7,'I1-2II1-2III1-2IV2-1V','yes','no','no','yes','yes'),('A22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A23',8.1,8.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hindlimb_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iucn_threat_status`
--

DROP TABLE IF EXISTS `iucn_threat_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iucn_threat_status` (
  `id` varchar(100) NOT NULL,
  `threat_category` varchar(45) DEFAULT NULL,
  `population_decline` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `iucn_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iucn_threat_status`
--

LOCK TABLES `iucn_threat_status` WRITE;
/*!40000 ALTER TABLE `iucn_threat_status` DISABLE KEYS */;
INSERT INTO `iucn_threat_status` VALUES ('A20','least_concern',NULL),('A21','least_concern',NULL),('A22',NULL,NULL),('A23',NULL,NULL),('A24',NULL,NULL),('A25',NULL,NULL),('A26',NULL,NULL),('A27',NULL,NULL),('A28',NULL,NULL),('A29',NULL,NULL),('A30',NULL,NULL);
/*!40000 ALTER TABLE `iucn_threat_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc`
--

DROP TABLE IF EXISTS `misc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `misc` (
  `id` varchar(100) NOT NULL,
  `daily_activity` enum('day','night','both') DEFAULT NULL,
  `maternal_care` enum('yes','no') DEFAULT NULL,
  `maternal_care_details` varchar(150) DEFAULT NULL,
  `abundance` varchar(45) DEFAULT NULL,
  `stratigraphic_range` float DEFAULT NULL,
  `f_environment_type` varchar(45) DEFAULT NULL,
  `holotype` varchar(45) DEFAULT NULL,
  `diet` varchar(45) DEFAULT NULL,
  `climate` varchar(45) DEFAULT NULL,
  `reproductive_mode` varchar(45) DEFAULT NULL,
  `tadpole_habitat` varchar(45) DEFAULT NULL,
  `tadpole_feeding` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `misc_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc`
--

LOCK TABLES `misc` WRITE;
/*!40000 ALTER TABLE `misc` DISABLE KEYS */;
INSERT INTO `misc` VALUES ('A20','night','no',NULL,'frequent',1,NULL,'whole individual','insectivor',NULL,'exotrophic tadpoles','Lentic','Suctorial'),('A21','night','no',NULL,'rare',1,NULL,'whole individual','insectivor',NULL,'ovoviviparous','Lotic','suspension feeder'),('A22',NULL,NULL,NULL,'frequent',34,'floodplain','skull','carnivore',NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,'rare',1,'floodplain','articulated skeleton',NULL,NULL,NULL,NULL,NULL),('A24',NULL,NULL,NULL,NULL,NULL,NULL,'whole individual',NULL,NULL,NULL,NULL,NULL),('A25',NULL,NULL,NULL,NULL,NULL,NULL,'whole individual',NULL,NULL,NULL,NULL,NULL),('A26','day',NULL,NULL,NULL,NULL,NULL,'whole individual',NULL,NULL,NULL,NULL,NULL),('A27','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A28','day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A29','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('A30','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `misc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomic_identy`
--

DROP TABLE IF EXISTS `taxonomic_identy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomic_identy` (
  `id` varchar(100) NOT NULL,
  `Order` varchar(100) DEFAULT NULL,
  `Family` varchar(100) DEFAULT NULL,
  `Genus` varchar(100) DEFAULT NULL,
  `Species` varchar(100) DEFAULT NULL,
  `Tax_authority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomic_identy`
--

LOCK TABLES `taxonomic_identy` WRITE;
/*!40000 ALTER TABLE `taxonomic_identy` DISABLE KEYS */;
INSERT INTO `taxonomic_identy` VALUES ('A20','Anura','Arthroleptidae','Cardioglossa','elegans','Boulenger, 1906'),('A21','Anura','Hylidae','Dendropsophus','parviceps','Boulenger, 1882'),('A22','Temnospondyli','Plagiosauridae','Gerrothorax','pulcherrimus','Fraas, 1913'),('A23','Anura','Anomocoela','Aerugoamnis','paulus','Henrici, Báez & Grande, 2013'),('A24','Anura','Hylidae','Acris','crepitans','Baired, 1854'),('A25','Anura','Rhacophoridae','Kurixalus','appendiculatus','Günther, 1858'),('A26','Anura','Dendrobatidae','Ameerega','altamazonica','Twomey & Brown, 2008'),('A27','Anura','Odontophrynidae','Odontophrynus','americanus','Duméril & Bibron 1841'),('A28','Anura','Mantellidae','Gephyromantis','eiselti','Guibé, 1975'),('A29','Anura','Microhylidae','Oreophryne','amiatoi','Kraus & Allison, 2009'),('A30','Anura','Hyperoliidae','Kassi','senegalensis','Duméril & Bibron 1841');
/*!40000 ALTER TABLE `taxonomic_identy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','ADMIN','OWNER','Test') DEFAULT 'READ ONLY',
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'admin','21232f297a57a5a743894a0e4a801fc3','ADMIN','test@test.com'),(10,'guest','084e0343a0486ff05530df6c705c8bb4','READ ONLY','test@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocal_sac_tympanum`
--

DROP TABLE IF EXISTS `vocal_sac_tympanum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocal_sac_tympanum` (
  `id` varchar(100) NOT NULL,
  `vocal_sac_manifestation` varchar(45) DEFAULT NULL,
  `vocal_sac_form` varchar(45) DEFAULT NULL,
  `vocal_sac_distensibility` varchar(45) DEFAULT NULL,
  `tympanum_covering` varchar(45) DEFAULT NULL,
  `tympanum_eye_ration` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `vocal_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocal_sac_tympanum`
--

LOCK TABLES `vocal_sac_tympanum` WRITE;
/*!40000 ALTER TABLE `vocal_sac_tympanum` DISABLE KEYS */;
INSERT INTO `vocal_sac_tympanum` VALUES ('A20','exterl','paired_subgular','weak','absent',1.1),('A21','present','paired_lateral','strong','present',1.1),('A22',NULL,NULL,NULL,NULL,NULL),('A23',NULL,NULL,NULL,NULL,NULL),('A24','exterl','single subgular','strong','concealed',0.5),('A25','interl','single subgular','weak','visible',0.47),('A26',NULL,'single subgular',NULL,'partly concealed',0.42),('A27','interl','single subgular',NULL,'concealed',NULL),('A28',NULL,'single subgular',NULL,'visible',0.4),('A29',NULL,'single subgular',NULL,'visible',0.37),('A30','exterl','single subgular','strong','concealed',0.6);
/*!40000 ALTER TABLE `vocal_sac_tympanum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-05 17:17:01
