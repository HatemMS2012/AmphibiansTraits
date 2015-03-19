CREATE DATABASE  IF NOT EXISTS `amphibians_traits` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `amphibians_traits`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: amphibians_traits
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
  CONSTRAINT `taxa_body_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodysize`
--

LOCK TABLES `bodysize` WRITE;
/*!40000 ALTER TABLE `bodysize` DISABLE KEYS */;
INSERT INTO `bodysize` VALUES ('Acris_crepitans',NULL,35,25.5,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',19.3,19.3,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,22.9,20.5,NULL,NULL,NULL,NULL),('Cardioglossa_elegans',NULL,23.9,NULL,NULL,35.3,NULL,NULL),('Dendropsophus_parviceps',NULL,18.3,NULL,NULL,26.1,NULL,NULL),('Gephyromantis_eiselti',NULL,21.5,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',1000,3000,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,32.5,49,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,37,33.5,NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,45,70,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,25.2,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `call_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_parameters`
--

LOCK TABLES `call_parameters` WRITE;
/*!40000 ALTER TABLE `call_parameters` DISABLE KEYS */;
INSERT INTO `call_parameters` VALUES ('Acris_crepitans',3235.5,3235.5,109.09,126.5,126.5,'3',2421.8,4262.1,-0.85),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',4573.7,4573.7,0,NULL,27,'7',NULL,NULL,0.75),('Cardioglossa_elegans',1200,2350,110,18,18,'5',1000,2500,0.5),('Dendropsophus_parviceps',1500,2500,120,53,53,'3',1110,2500,0.7),('Gephyromantis_eiselti',4220.5,4220.5,0,188.2,188.2,'5',3661,4423.9,0.92),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',1119.7,1119.7,0,98.2,98.2,'4',341.2,1828.1,7.21),('Kurixalus_appendiculatus',2426.1,2426.1,123.08,32.5,32.5,'2',1660.8,3030.2,-5.3),('Odontophrynus_americanus',823,823,105.77,454.6,454.6,'3',412.3,1143.9,0.28),('Oreophryne_amiatoi',2490,2490,200.9,2100,56.9,'6',NULL,NULL,NULL);
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
  CONSTRAINT `calling_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calling_behaviour`
--

LOCK TABLES `calling_behaviour` WRITE;
/*!40000 ALTER TABLE `calling_behaviour` DISABLE KEYS */;
INSERT INTO `calling_behaviour` VALUES ('Acris_crepitans','litter','at_water',NULL,NULL,'no'),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica','litter','no water',NULL,'no','no'),('Cardioglossa_elegans','litter','at_water','no','no','no'),('Dendropsophus_parviceps','litter','at_water','no','no','no'),('Gephyromantis_eiselti','litter','no water',NULL,NULL,'no'),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis','litter',NULL,'yes',NULL,'no'),('Kurixalus_appendiculatus','semi_arboral','at_water',NULL,NULL,'no'),('Odontophrynus_americanus','litter','at_water',NULL,NULL,'no'),('Oreophryne_amiatoi','semi_arboral','at_water',NULL,'no','yes');
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
  CONSTRAINT `color_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colouration`
--

LOCK TABLES `colouration` WRITE;
/*!40000 ALTER TABLE `colouration` DISABLE KEYS */;
INSERT INTO `colouration` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,NULL,NULL,NULL),('Cardioglossa_elegans','stripes','aposematic','none','polymorph'),('Dendropsophus_parviceps','points','aposematic','none','few'),('Gephyromantis_eiselti',NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__failed_logins`
--

LOCK TABLES `dataface__failed_logins` WRITE;
/*!40000 ALTER TABLE `dataface__failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__htmlreports_reports`
--

DROP TABLE IF EXISTS `dataface__htmlreports_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__htmlreports_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `actiontool_name` varchar(255) DEFAULT NULL,
  `actiontool_category` varchar(255) DEFAULT NULL,
  `actiontool_label` varchar(255) DEFAULT NULL,
  `actiontool_permission` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) NOT NULL,
  `template_css` text,
  `template_html` longtext NOT NULL,
  `default_view` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__htmlreports_reports`
--

LOCK TABLES `dataface__htmlreports_reports` WRITE;
/*!40000 ALTER TABLE `dataface__htmlreports_reports` DISABLE KEYS */;
INSERT INTO `dataface__htmlreports_reports` VALUES (1,'Test',NULL,NULL,'view',NULL,'taxonomic_identity',NULL,'<p>\r\n	Spiecies: {$species}</p>\r\n',NULL,'admin',0,'2015-03-17 14:59:48','2015-03-17 15:02:11'),(2,'Test',NULL,NULL,NULL,NULL,'taxonomic_identity',NULL,'<p>\r\n	The species {$Species} lives in&nbsp;{$habitat_preference.macro}</p>\r\n<p>\r\n	&nbsp;</p>\r\n',NULL,'admin',0,'2015-03-17 15:10:13','2015-03-17 15:10:13');
/*!40000 ALTER TABLE `dataface__htmlreports_reports` ENABLE KEYS */;
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
INSERT INTO `dataface__mtimes` VALUES ('all_traits',1425547919),('amphibian_traits',1425547438),('bodysize',1426764922),('calling_behaviour',1426764923),('call_parameters',1426764923),('colouration',1426764923),('dataface__failed_logins',1425392310),('dataface__htmlreports_reports',1426601413),('dataface__modules',1425038851),('dataface__mtimes',1425038859),('dataface__preferences',1425038918),('dataface__record_mtimes',1425038888),('dataface__registrations',1425393907),('dataface__version',1425038851),('dataface__view_6d76a248a8869f64f7e24fa412bb5b47',1426497750),('dataface__view_a44381272b1faf45b58cd5ef955af839',1426497752),('distribution',1426764922),('egg',1425479375),('egg_deposition',1426764923),('forlimb_characters',1426764922),('habitat_preference',1426764923),('head_characters',1426764922),('hindlimb_characters',1426764922),('iucn_threat_status',1426764923),('misc',1426764923),('taxonomic_identity',1426764928),('taxonomic_identy',1426506790),('users',1426515839),('vocal_sac_tympanum',1426764922);
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__preferences`
--

LOCK TABLES `dataface__preferences` WRITE;
/*!40000 ALTER TABLE `dataface__preferences` DISABLE KEYS */;
INSERT INTO `dataface__preferences` VALUES (2,'admin','*','*','tables.bodysize.sections.__main____fieldgroup.display','expanded'),(6,'admin','*','*','tables.taxonomic_identity.sections.hello.display','expanded'),(8,'admin','*','*','tables.taxonomic_identity.sections.__main____fieldgroup.display','expanded'),(33,'admin','*','*','tables.taxonomic_identity.sections.__main____fieldgroup.order','2'),(38,'admin','*','*','tables.egg_deposition.sections.__main____fieldgroup.display','expanded'),(54,'admin','*','*','tables.taxonomic_identity.sections.colouration__relationship.order','2'),(55,'admin','*','*','tables.taxonomic_identity.sections.forlimb_characters__relationship.order','3'),(56,'admin','*','*','tables.taxonomic_identity.sections.hindlimb_characters__relationship.order','4'),(57,'admin','*','*','tables.taxonomic_identity.sections.distribution__relationship.order','5'),(58,'admin','*','*','tables.taxonomic_identity.sections.iucn_threat_status__relationship.order','6'),(59,'admin','*','*','tables.taxonomic_identity.sections.bodysize__relationship.order','7'),(60,'admin','*','*','tables.taxonomic_identity.sections.head_characters__relationship.order','8'),(61,'admin','*','*','tables.taxonomic_identity.sections.misc__relationship.order','9'),(62,'admin','*','*','tables.taxonomic_identity.sections.vocal_sac_tympanum__relationship.order','10'),(63,'admin','*','*','tables.taxonomic_identity.sections.egg_deposition__relationship.order','11'),(64,'admin','*','*','tables.taxonomic_identity.sections.habitat_preference__relationship.order','12'),(65,'admin','*','*','tables.taxonomic_identity.sections.call_parameters__relationship.order','13'),(66,'admin','*','*','tables.taxonomic_identity.sections.calling_behaviour__relationship.order','14'),(90,'admin','*','*','tables.taxonomic_identity.sections.icunThreatDetails.display','collapsed'),(91,'admin','*','*','tables.taxonomic_identity.sections.habitatDetails.display','collapsed'),(126,'admin','*','*','tables.taxonomic_identity.sections.colorDetails.display','collapsed'),(128,'admin','*','*','tables.taxonomic_identity.sections.ForelimbDetails.display','collapsed'),(130,'admin','*','*','tables.taxonomic_identity.sections.hindlimbDetails.display','collapsed'),(131,'admin','*','*','tables.taxonomic_identity.sections.headDetails.display','collapsed'),(135,'admin','*','*','tables.taxonomic_identity.sections.eggDetails.display','collapsed'),(155,'admin','*','*','tables.taxonomic_identity.sections.colorDetails.order','5'),(156,'admin','*','*','tables.taxonomic_identity.sections.ForelimbDetails.order','6'),(157,'admin','*','*','tables.taxonomic_identity.sections.hindlimbDetails.order','7'),(158,'admin','*','*','tables.taxonomic_identity.sections.headDetails.order','8'),(159,'admin','*','*','tables.taxonomic_identity.sections.eggDetails.order','9'),(162,'admin','*','*','tables.taxonomic_identity.sections.habitatDetails.order','12'),(164,'admin','*','*','tables.taxonomic_identity.sections.icunThreatDetails.order','14'),(173,'admin','*','*','tables.taxonomic_identity.sections.callParametersDetails.display','expanded'),(175,'admin','*','*','tables.taxonomic_identity.sections.vocalSacDetails.display','expanded'),(176,'admin','*','*','tables.taxonomic_identity.sections.callBehaviorDetails.display','expanded'),(194,'admin','*','*','tables.taxonomic_identity.sections..order','1'),(195,'admin','*','*','tables.taxonomic_identity.sections.bodysizeDetails.order','3'),(196,'admin','*','*','tables.taxonomic_identity.sections.callParametersDetails.order','4'),(197,'admin','*','*','tables.taxonomic_identity.sections.vocalSacDetails.order','10'),(198,'admin','*','*','tables.taxonomic_identity.sections.distributionDetails.order','11'),(199,'admin','*','*','tables.taxonomic_identity.sections.callBehaviorDetails.order','13'),(200,'admin','*','*','tables.taxonomic_identity.sections.miscDetails.order','15'),(201,'admin','*','*','tables.taxonomic_identity.sections.miscDetails.display','expanded'),(202,'admin','*','*','tables.taxonomic_identity.sections.bodysizeDetails.display','collapsed'),(203,'admin','*','*','tables.taxonomic_identity.sections.distributionDetails.display','expanded');
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
INSERT INTO `dataface__record_mtimes` VALUES ('001cfa88cbb054ef37a08900cd0dfadd','misc?id=A23',1426520617),('00313f4e162a12233a6357c4884a46aa','forlimb_characters?id=Gephyromantis_eiselti',1426764918),('003d6f53f440680ba42d8912cb2802ba','vocal_sac_tympanum?id=Anomocoela_paulus',1426506150),('0080ed8e546e80b26822f26670568f75','egg_deposition?id=Hyperoliidae_senegalensis',1426506169),('009567db9436655dbfbca6cb54d32507','taxonomic_identity?id=Acris_crepitans',1426764928),('00fe2282eefa4d7db7c8b81b98ee0a1a','egg_deposition?id=Hylidae_crepitans',1426506155),('01754034e84667a77fa98b89a1fb0849','taxonomic_identy?id=Lupinus+obtusilobus',1425313725),('01845ec5de5d02a6ac8833c6523d660d','bodysize?id=Iris+macrosiphon',1425313699),('0199d28a51b2f9dc40d383793649ef7f','taxonomic_identity?id=_',1426586391),('0201d89e0f29b1bd5127a4a5ffaf6f9b','bodysize?id=X251',1425563529),('0267f50e6cce6da3e4ab307f91af9398','taxonomic_identy?id=',1425372848),('0284e5c380016dc01ba960e0bc6bf585','vocal_sac_tympanum?id=7',1426602239),('02ba32b8a2777fd0a35402545bc85868','bodysize?id=Microhylidae_amiatoi',1426506166),('032bf935ab81d3e7ec1aef75e27b15cf','head_characters?id=X29',1425558761),('03394953f80c449202b28a1e7acbb564','habitat_preference?id=Hylidae_parviceps',1426506146),('035925938e90cf9ce40400f2b84b5003','taxonomic_identy?id=27',1425372867),('037cadacf5d477a09a73a92b53639d7f','misc?id=Hylidae_crepitans',1426506156),('038c965f610fbdfafa9fddb2861774f3','users?username=x',1425395643),('039ce5852c6c577094bc22a6741d3add','misc?id=Arthroleptidae_elegans',1426506143),('03b82afa06cecaa1410dc1a8e9abed1e','taxonomic_identy?id=test_test',1426505703),('03f2f9daf287d705207710af7e84051b','hindlimb_characters?id=Anomocoela_paulus',1426506150),('04b1f265f70b65685892fb0c99990d5e','calling_behaviour?id=Odontophrynus_americanus',1426764917),('04decdfbcba5e85b33ca30ff547adccb','misc?id=Hylidae_parviceps',1426506147),('0501109e36a200fd43d0b47e9081598d','forlimb_characters?id=A29',1426518416),('055b01129fd162c43b67e5197258a159','colouration?id=Hylidae_parviceps',1426506146),('05f8ae0912ca09a211802deec5be53f4','bodysize?id=Cynoglossum+grande',1425312485),('06307abb20e004de300f9ed1da2b1e27','taxonomic_identy?id=Acris_crepitans',1426506790),('0679aa3a48a17753e9e2b3d29459e2f7','taxonomic_identy?id=Odontophrynidae_americanus',1426506175),('068025ba01fafde31c151c973ae16675','vocal_sac_tympanum?id=34',1426505044),('0699f9dbe7b4c1d2342f6d0d840fbe78','colouration?id=Viola+cucullata',1425312492),('06bb372311cfa904abb50fadb3a7d559','taxonomic_identy?id=Aerugoamnis_paulus',1426506433),('06ebe7e0a770e0a6c6f38a2f3494b9ae','call_parameters?id=Plagiosauridae_pulcherrimus',1426506149),('0757263d7888354156cdb1394bb03888','distribution?id=X1',1425554278),('08c9d7026324bf112460c7a36e754c60','forlimb_characters?id=A25',1426518416),('08cac959426931a610d095ea257d84f4','hindlimb_characters?id=_',1426586392),('08ce3c19d6ae3b22afc2a871b3d07377','forlimb_characters?id=Hylidae_parviceps',1426506144),('0918b31660dc6ef06154a38d3c4cc969','bodysize?id=333',1425308164),('09255f053b106ab47d023a8c869bcedc','forlimb_characters?id=X231',1425563526),('098c3a011a45580e75ad07e40340cbfa','bodysize?id=A28',1426518006),('09d26818495cbbbb7d8a571594ebe300','taxonomic_identy?id=2',1426505057),('0a288c5030b4fdd9dda2a61fbcb3a225','iucn_threat_status?id=Aerugoamnis_paulus',1426764908),('0a5396b1870803834dddc89f71c0317c','bodysize?id=X18',1425557861),('0a7551de7ef2d88bc0869de9872240e6','colouration?id=Lupinus+caudatus',1425312479),('0a9a5b093b4e822928a15938f6767624','head_characters?id=X25',1425558758),('0ab1c4e737d6e2d9bef60cc7f746addd','taxonomic_identy?id=7',1426505058),('0adea275a03fc1d73fa59940575b2bd7','colouration?id=Pholistoma+auritum+var.+auritum',1425312504),('0adf54b04107005a5085b4d2bc5a895f','habitat_preference?id=Cardioglossa_elegans',1426764900),('0b221bb637669259f7286de5c3ce984c','distribution?id=Acris_crepitans',1426764910),('0b62ba655752ffea6e6a19e585f95a75','bodysize?id=Odontophrynidae_americanus',1426506162),('0bb428bdf36f81cc08fbe9b84054f788','taxonomic_identy?id=16',1425372865),('0bff4bfb3d91778d8c8f7c6c99daf775','bodysize?id=Dendrobatidae_altamazonica',1426506159),('0c167656050aeb0e8d8a2fdaf2bc7b69','taxonomic_identity?id=A28',1426518023),('0c62531204dbabcc53dde48802e5df28','vocal_sac_tympanum?id=Aerugoamnis_paulus',1426764908),('0cafac30fc5a74276c723bf1270e05a0','calling_behaviour?id=4',1426602233),('0ce6d47e40d549a152303c1a44ab804b','distribution?id=Mantellidae_eiselti',1426506164),('0cea3f5ccc03dd2fb3f8897bbb13f5a0','hindlimb_characters?id=Kassi_senegalensis',1426764922),('0d06f6a338e8552c3cac2dc5ad531aaf','egg_deposition?id=Rhacophoridae_appendiculatus',1426506158),('0d206bc7755e959c44a192ec85c32f2c','taxonomic_identy?id=Hylidae_parviceps',1426506174),('0d410d8437810022b7c64c783cddfd1d','vocal_sac_tympanum?id=Arthroleptidae_elegans',1426506141),('0df44d1b109a0ef90db820ac32370d2d','taxonomic_identy?id=G',1425551865),('0e35ba50cf31608e323475a6158bc318','call_parameters?id=A23',1426519930),('0e4297b8c23c0689cd0fe331daf09694','distribution?id=3',1426764872),('0ea432dec9cce9fa8278cd749990b8dd','taxonomic_identy?id=Brodiaea+coronaria',1425312480),('0eb952b82b3c9461a21db14c55dee32c','iucn_threat_status?id=8',1426602242),('0ec964bda6fb504c582a27e48caebab3','forlimb_characters?id=',1426585639),('0ee38a6278447590a5ea707cf7567fa6','colouration?id=A27',1426519789),('0ef0309cf6b5786c8735eb3c519e599a','taxonomic_identy?id=Iris+douglasiana',1425313731),('0ef9c6691019dd97b5798446cfbcd8ff','head_characters?id=34',1426505044),('0f3635d400ac0eabcae56154cae7d24e','forlimb_characters?id=A24',1426518416),('0f60b81b8e6830ad95c5abe86240efc4','head_characters?id=A25',1426518269),('104040fd2b425418ec4bd1115f54c0e9','forlimb_characters?id=A22',1426518415),('10575a1aaf525f512ca7bf09d589c8c5','habitat_preference?id=Gephyromantis_eiselti',1426764918),('10905ef6037258147b1d7f6c9c173a37','taxonomic_identy?id=Anura',1425554205),('10bb5da182f998fa3537b9d25c084dfc','taxonomic_identity?id=Dendropsophus_parviceps',1426764927),('10ecc458f51d3c8991fe8dd951c92ef5','hindlimb_characters?id=Hylidae_crepitans',1426506154),('10f1b80767eedef6d70a5e780492806f','taxonomic_identy?id=X221',1425563524),('1107bacbbb31ffd57d3c10d97d6e0098','colouration?id=A21',1426519788),('11183275433fdbaf86e719dd08a7f0f8','colouration?id=A24',1426519788),('112cb49e29a32b40b1c3c16e4a7eab22','iucn_threat_status?id=A24',1426519614),('116f618a1ca459c96137e439e61f5907','taxonomic_identy?id=kk_hk',1426505378),('11d06d4c06e9331cb0b1d5844c2911af','taxonomic_identy?id=X15',1425557857),('11e029c7210f5c5c6dd433bac958205b','bodysize?id=Lupinus+polyphyllus',1425313697),('120c7c5d16a06e6fd15188afe757319f','iucn_threat_status?id=9',1426602245),('122fd5a8ba7adf0eb207c6e705f2bd5c','taxonomic_identity?id=A30',1426518024),('13950f2788b85f143b82b08477f7d0fb','taxonomic_identy?id=42',1425372868),('13dc33067e82e885f67fab576823bdfe','colouration?id=Arthroleptidae_elegans',1426506142),('142bb858cf2387b46a1d85d1a15283a7','colouration?id=Iodanthus+pinnatifidus',1425312484),('146d5a7ff4caa033c231c7531298036f','habitat_preference?id=Plagiosauridae_pulcherrimus',1426506148),('146fb7ee56b451e6ff8f771246b8e187','bodysize?id=Ipomoea+purpurea',1425313700),('14724dbdcb436cdb3d0afd57386d41cb','vocal_sac_tympanum?id=Oreophryne_amiatoi',1426764920),('147b5811c79b6b26cdd0c69ebbc28dd5','distribution?id=X18',1425557861),('149259468f7b6aa66814439ab40453d0','vocal_sac_tympanum?id=A29',1426518798),('1524450b85b5dce54c599b749a3b93c1','colouration?id=Acris_crepitans',1426764911),('153f976764a57775fce75cbd4c703f65','egg_deposition?id=7',1426602240),('15572f86fd61f8980ee2e8805cb13696','misc?id=Ameerega_altamazonica',1426764915),('155a2a42fea1a4a0805e3e8cdf97e6fe','misc?id=Rhacophoridae_appendiculatus',1426506159),('1562282591de3a139bba8afdc925ba1f','vocal_sac_tympanum?id=X291',1425563532),('15719ae2b94d32ca8117d4fa27b90a64','taxonomic_identity?id=Odontophrynus_americanus',1426764928),('157b8fa1fecfd2b4e17640001ccb8178','iucn_threat_status?id=A26',1426519614),('15a5df5ef6a8d94664760aea0c02fe82','vocal_sac_tympanum?id=Hyperoliidae_senegalensis',1426506169),('15cc248d43328e03f65cdc9938bf4fdc','habitat_preference?id=A23',1426518974),('16105f06bbb7434f459e2b3940ca1fb4','distribution?id=Gephyromantis_eiselti',1426764917),('1621bc723c07c6fbcb6efb23b1a8b6f2','taxonomic_identy?id=17',1425372866),('162cda9327b6098f65103c8fbe588d69','call_parameters?id=442',1426505048),('1643effc69980a444e4c15a1d7d45599','misc?id=Oreophryne_amiatoi',1426764922),('164d722142e9e1e2a991c924ccbefcdb','egg_deposition?id=442',1426505047),('1672160e827ca1dc79c86091880c0ea0','taxonomic_identy?id=F',1425551865),('16b26bd148ebb53ef627df06cc700853','taxonomic_identy?id=X6',1425554287),('16e153bfdc27acd890d60a525af4f625','distribution?id=X271',1425563531),('1714d63108f4677f756ce4dc6f98d762','colouration?id=Lupinus+obtusilobus',1425313688),('173dedc527e6db17d5f33237de084a75','head_characters?id=X251',1425563529),('17c86b074b8ca1c4d3d9bcb9d24e47b8','calling_behaviour?id=Kurixalus_appendiculatus',1426764913),('17d9df00c2077dd42b18ce0e54643783','taxonomic_identy?id=34',1426505058),('18026c63bf4192bb38d3976273d457bd','colouration?id=Campanula+scouleri',1425312501),('1833788ec877a7beb4f57433c8ba04c2','call_parameters?id=Rhacophoridae_appendiculatus',1426506158),('1845229fe86aff66610cb112158a8f81','iucn_threat_status?id=Oreophryne_amiatoi',1426764921),('184b36219c9ee461a834d1ed111725f8','calling_behaviour?id=A27',1426520029),('1850bacad0e42e58de6fdbb02edb6e9f','egg_deposition?id=6',1426602238),('18cc77e5bd273f0d353eb6e48d258c66','forlimb_characters?id=X29',1425558761),('18eab44bcbe4147e4c8879185354966a','distribution?id=X221',1425563524),('18eecd81cf3213729d40ac61f71beadf','iucn_threat_status?id=A30',1426519615),('1920798450aed2819c6868fc072e8802','bodysize?id=12',1425373355),('1950ee99e1b0a1ded10bee1b53061e7a','taxonomic_identy?id=Polemonium+reptans',1425312500),('1965ded9c5ce3806eb572fc4f105bfdc','habitat_preference?id=',1426585639),('19938c3ca8bda125d0e1c3855101a450','users?username=x1',1425395738),('19c20e849736b2f66408fb1d12281a26','taxonomic_identy?id=14',1425372865),('19e5a0ba45536dca4242f3baa052c884','hindlimb_characters?id=Microhylidae_amiatoi',1426506166),('1a0d73e629d53bd771e8739ee68b300e','vocal_sac_tympanum?id=A21',1426518798),('1a10a1b6be92abd88854cd621a5528fe','bodysize?id=14',1425373356),('1a18d2fcb59345e10e4b8045c7e1f84f','hindlimb_characters?id=Rhacophoridae_appendiculatus',1426506157),('1a65892e36ab7d66260cdf8cad6aaeda','distribution?id=Kassi_senegalensis',1426764922),('1a9c06ba99d3f711f2113e43c47a5a82','bodysize?id=X23',1425558755),('1aa28b55c800db6f301d966281e4ff7d','forlimb_characters?id=34',1426505044),('1afcb776c7c5ccae5e1e68bb2610cd2a','forlimb_characters?id=1',1426602223),('1b5ff52fdeab9a9ce74d85a0d645c7c9','taxonomic_identy?id=13',1425372865),('1b6b935b3c5bb93617d5e46e9790616d','users?username=fff',1425395862),('1b7558cc895dcadc084a88f5be2d3a4b','calling_behaviour?id=1',1426602225),('1bd0d7cade0c21ab97a9550443d0fcde','taxonomic_identy?id=Salvia+columbariae',1425312502),('1bd894236bd92c2031540e4aac572b90','iucn_threat_status?id=Dendropsophus_parviceps',1426764903),('1c79a323f66204a591b21ffa1211e82f','taxonomic_identy?id=Lupinus+polyphyllus',1425313728),('1d37b25ff01b101d083e962595014c99','taxonomic_identity?id=9',1426764852),('1d9abd6b929101fcb0bb70b774ad4716','iucn_threat_status?id=_',1426586393),('1d9b2e55b2d8d2dfa9082cc021a6d830','taxonomic_identy?id=33',1425372867),('1db465a32d80f1e5a7181d795f1ad297','forlimb_characters?id=Mantellidae_eiselti',1426506164),('1de5fd1e96037ee12aba44c92531606c','hindlimb_characters?id=Gephyromantis_eiselti',1426764918),('1e7752b4551d1411064d658b420ccc11','bodysize?id=Anomocoela_paulus',1426506149),('1e9e6dbc2bb81b6fb9542abd9924d89f','taxonomic_identy?id=Iris+virginica',1425313724),('1f0c1a16e50c1c63c41950a6eb98f052','bodysize?id=X11',1425555932),('1f7f22dfd89c3bee254bb6274c46aafd','taxonomic_identity?id=',1426585638),('2013617c8989517da6bdfe73c25dd941','bodysize?id=Campanula+scouleri',1425312501),('2014b1edb4b148eb778fe581e7f6a31a','taxonomic_identy?id=Plagiosauridae_pulcherrimus',1426506174),('20222dc0250090cd54ce910025e2311d','egg_deposition?id=Dendrobatidae_altamazonica',1426506160),('20522942dd271b46e6eee38185c510ba','colouration?id=22',1426505050),('207c328f16b7dd0f95c564be606b5c21','bodysize?id=X8',1425555930),('2099f810277750ce5511ce7d1f3564fc','colouration?id=Lupinus+breweri',1425312489),('20b35f17f7ee4df30f82f9436fc43e5c','egg_deposition?id=Mantellidae_eiselti',1426506165),('20d8d56007998e8be592593ed365ecca','taxonomic_identy?id=Linanthus+parryae',1425313723),('20e8b448e14e45452c60002fc3f2b1c1','colouration?id=1',1426602225),('20f239533febb03202504e3d05c4fb34','colouration?id=A29',1426519789),('2101caca9505bb5efd62f5fe7d7dcabb','users?username=guest',1425392996),('21136c6991284f7357643ad69ae8289f','head_characters?id=10',1426602246),('2133a0e7f0450854fb15eddf26702b00','iucn_threat_status?id=34',1426505045),('215d1720a0733a1e7adc685e2c059e4a','distribution?id=Linanthus+parryae',1425371969),('218df3519450819a0018769d1fc97800','forlimb_characters?id=6',1426602237),('21def0908d4eb503996a9234d96e9d1c','habitat_preference?id=A27',1426518975),('21f796cc5bee5ea5708d0600fb1e7f32','vocal_sac_tympanum?id=Dendrobatidae_altamazonica',1426506160),('21fad44617125de98f889ef4f070ad6b','users?username=aaaf&email=admin%40localhost.com',1425394325),('233505222b5f4182741f1a12f19f7695','distribution?id=X6',1425554280),('23bff3167c753ea73d50844635987e1d','colouration?id=_',1426586393),('23cff50d9093046cea8b7b279ebee008','colouration?id=Campanula+scabrella',1425313704),('23ee7c01d47fe0807934bb46f4b17ff0','distribution?id=Odontophrynus_americanus',1426764915),('240454320b113525adc3e9a7a3473f50','hindlimb_characters?id=Aerugoamnis_paulus',1426764907),('2421236a1bbefb8cb6878ebc7ae78466','taxonomic_identy?id=Iodanthus+pinnatifidus',1425312484),('243d330758ecfb5737eb03ca180a531e','call_parameters?id=A25',1426519930),('246e2e89cd14ffa1b8c9577ae8d6581b','vocal_sac_tympanum?id=Ameerega_altamazonica',1426764914),('2490a73070ae0bed305fc893ea0ab255','bodysize?id=X27',1425558759),('2509a2978e461dc5108e3cbfda05f7b3','calling_behaviour?id=Arthroleptidae_elegans',1426506143),('251dac6b0efbe398ffa7c55e93c52dab','misc?id=442',1426505048),('25a2eeefecae1262a8503ce35dac1973','misc?id=5',1426602236),('264c031e2216506fb0d3f7fc3815372f','taxonomic_identy?id=8',1426505058),('26551b98a3389068c017e1cf6fc1cb69','habitat_preference?id=Rhacophoridae_appendiculatus',1426506158),('26bced9fad3393844592a4db86cf13f9','users?UserID=8',1425462776),('276e4326f9429643a5669c9618a1ae94','taxonomic_identy?id=5',1426505058),('2789b65645538d616beac5cfa2daed68','distribution?id=A22',1426518098),('28562c4545cddaf9c40cd5ad3d61bb81','hindlimb_characters?id=',1426585639),('289d48beb32767e34a9f2a0e2ea8ce9a','calling_behaviour?id=9',1426602245),('28c601bb246c88c5630a07be025bcfb2','forlimb_characters?id=66',1426505051),('28edbb0aa2fe30c852b5121eb411cd39','forlimb_characters?id=Acris_crepitans',1426764910),('2914cea3b2153d6090e5f3167ced4983','iucn_threat_status?id=6',1426602238),('291b392ea00fbef41058e60ca987f0ec','distribution?id=_',1426586392),('293425e81ca0a22315e174d22f0d954b','taxonomic_identy?id=A29',1426501015),('29654b31e43482164c7f3f0d0f16d5df','users?username=aaa1',1425395327),('299832c5292524faf15a06319070b34c','taxonomic_identy?id=Campanula+americana',1425312505),('29e0c601e41468ad1178f9f9b65651f0','misc?id=3',1426602231),('2a0d4507260c905a2ac86ddb7ce2b454','bodysize?id=Brodiaea+coronaria',1425312480),('2ac0aed5b120a643aff5d849e6722ab4','habitat_preference?id=A30',1426518976),('2adf1419b60d0dc2a481020e6c8d83aa','colouration?id=Lupinus+grayi',1425313680),('2aedc5cf9ef0ef60fab1c292104dd19d','vocal_sac_tympanum?id=Microhylidae_amiatoi',1426506167),('2b0f0bf01c31441d40ed2d80a9cc0892','bodysize?id=Odontophrynus_americanus',1426764916),('2b1b68b7cfee4f7b932595d803f336f2','taxonomic_identy?id=Lupinus+succulentus',1425312488),('2b2ef9185307e0737c13af6a813a2516','bodysize?id=',1426585639),('2bb63e515fe857f3db5740201b372799','colouration?id=Scutellaria+parvula',1425312494),('2c12cf028e89d5c964d759f67d53caf5','hindlimb_characters?id=A24',1426518588),('2cb91e784cc7ae9842ef0d8d62773175','forlimb_characters?id=X25',1425558758),('2cccd0ae05131eb01330641bff6b251c','taxonomic_identy?id=Symphyotrichum+laeve',1425312505),('2cd62d682625ada26e98b6730144ed2b','bodysize?id=X21',1425557864),('2cdc8e702922e42bb6c02ee61b9c7628','colouration?id=Eriastrum+pluriflorum',1425312480),('2d82db1321b36155e25d4160cbcee0d4','vocal_sac_tympanum?id=A30',1426518798),('2d984cb5fb101747d4e1afa56cd0695f','hindlimb_characters?id=8',1426602242),('2da0b31341c2c57c2c94ff7053a075a0','bodysize?id=X20',1425557863),('2dcf17b2b46289d15e7be22dfbd27251','call_parameters?id=Dendropsophus_parviceps',1426764903),('2e471bd9c8ec054b535654be2ffd3867','calling_behaviour?id=Oreophryne_amiatoi',1426764921),('2e59759e4f245a564a0cd2b44bcfae79','taxonomic_identity?id=Gephyromantis_eiselti',1426764928),('2e628576ea6539994a93ff2b9cf3be2a','bodysize?id=22',1426505048),('2e97dc4d035b458857f23f9465fe4399','taxonomic_identy?id=Id',1425311189),('2ef56da7b81abebf01136486f65c01d7','habitat_preference?id=3',1426602230),('2f4bbbcfac415208a10df9f1508e303b','call_parameters?id=1',1426602225),('2f5bc9b8e1c279319a6cf2aba8f12290','bodysize?id=A24',1426517997),('2f7b79828d427ff08188fce54e65ac56','calling_behaviour?id=8',1426602243),('2fb3cadfedffedb05336d98dc986ecf7','forlimb_characters?id=Odontophrynidae_americanus',1426506162),('2fbc3ce52abc3974dca00146399627f5','colouration?id=Collinsia+sparsiflora',1425313702),('2fbebcf0df6222f27e441de229dd3cf6','forlimb_characters?id=Aerugoamnis_paulus',1426764907),('3015089b8666228c2be57396afcbdcc3','colouration?id=Linum+lewisii',1425312484),('301b0437f0ac97a840f4e638ad2fca50','calling_behaviour?id=Mantellidae_eiselti',1426506165),('30620a64a110ae9cfe9c259853a3b12b','calling_behaviour?id=Hyperoliidae_senegalensis',1426506170),('307de1cebfae8112e47d3c3dd71ec8d3','distribution?id=9',1426764873),('30988817424d2a2021fe61dd029994f5','bodysize?id=X22',1425558754),('30b83996bd53f4f52eb87212c6ee992d','taxonomic_identy?id=40',1425372868),('30cb8eb867feb4daa7b370ddcca4e857','bodysize?id=Pholistoma+auritum+var.+auritum',1425312504),('30ccc480cb95223e318af7c93fac6d0d','egg_deposition?id=2',1426602227),('31278a186482ce9ea04ab1310a75956f','taxonomic_identy?id=myspecies_mygenus',1426506197),('319c7ec895b82fb6512e079b499eebaa','hindlimb_characters?id=Kurixalus_appendiculatus',1426764912),('328f7edf74190e2819b3659ba699a43c','head_characters?id=A23',1426518269),('330ef1191393e0d481e6274422e0e687','forlimb_characters?id=A26',1426518416),('3340659340f00bc7a45c7edae760095f','call_parameters?id=22',1426505050),('334e2192371da1f2bac18b7861500358','iucn_threat_status?id=Arthroleptidae_elegans',1426506142),('33cc9495c7639fe8fc76daf5e9dcf1c7','taxonomic_identy?id=A27',1426501015),('3450e387cf33e74e36381d3dcd47bd83','colouration?id=Ameerega_altamazonica',1426764915),('3478f6d7e48926ac8cca4bed300b3a44','taxonomic_identy?id=35',1425372867),('34b602b3ae1e428ec71cabc73777ae54','vocal_sac_tympanum?id=Acris_crepitans',1426764910),('34c34722d67b4632135749a44cde9589','iucn_threat_status?id=Hyperoliidae_senegalensis',1426506169),('34f1bd39b6047658183b3f020634228e','forlimb_characters?id=Rhacophoridae_appendiculatus',1426506157),('35016e64f60d22c3e23a9c80a6545c9c','colouration?id=11',1426602250),('35048f7801d2ed48194f46a2d142614f','head_characters?id=X24',1425558756),('351e0cea15ba7b8f46da18ed4a0322de','taxonomic_identy?id=Lupinus+caudatus',1425312479),('3537b5119a76f488a969eed318b7001a','colouration?id=Hylidae_crepitans',1426506155),('356908c12d9be3ab985c7c7ffc6beba2','taxonomic_identy?id=X231',1425563525),('3569f9870a518a98f127536f7c44614e','forlimb_characters?id=A27',1426518416),('35857b1f27819147c3cb7be9ac43c8cb','bodysize?id=Scutellaria+parvula',1425312494),('35c84e5ccd626741c13f6456446dd6ff','head_characters?id=X231',1425563526),('35e8931e1292de571950cbd04ad172af','calling_behaviour?id=442',1426505048),('35f312ba15969e7bc0dfe7bd3e7a5ec2','hindlimb_characters?id=Hyperoliidae_senegalensis',1426506169),('360c1a1362d026c67c2340689045aba5','distribution?id=Rhacophoridae_appendiculatus',1426506157),('367786522a76dc2cb6a20cf2fea947a8','forlimb_characters?id=Cardioglossa_elegans',1426764899),('36a2053779c484c6ea257b99f8870e1e','head_characters?id=X271',1425563531),('36a30d61315e2967693102bfc197696f','head_characters?id=X17',1425557860),('36d129f6ec8a800ea63fa2973cce89b7','taxonomic_identity?id=A24',1426518023),('36d8ce5105562ae8a0e8f04451271e2b','head_characters?id=X26',1425558759),('36f27abeae3cefb19d47da243aa7219f','taxonomic_identy?id=ffaff_fds',1426504369),('3742a4f851102ab6926b8cb8d4becdfc','taxonomic_identy?id=X27',1425558766),('37546dfa336e15b97351a79a0bd2556b','calling_behaviour?id=A23',1426520029),('3755f454aae40994f8ea4f3d4a0d01a4','head_characters?id=A24',1426518269),('376af0d3ed5689933dc9c5e9e6f2f212','distribution?id=Dendrobatidae_altamazonica',1426506159),('37740fdba2ec58401418bba5d6bc605e','dataface__htmlreports_reports?report_id=2',1426601413),('37758c6ad478598813c7be7254c94c52','egg_deposition?id=Kurixalus_appendiculatus',1426764913),('377cdc6b0661995b644aa7d9678d1ca2','hindlimb_characters?id=A22',1426518587),('378dbbbbb81d976e0726e553aa35b0d9','colouration?id=Nemophila+pulchella+var.+pulchella',1425312481),('37d94682406640e1b9493028c86a7349','taxonomic_identy?id=D',1425551865),('37f0b2e803cced7132a3367083f3407d','users?UserID=12',1426515839),('38171271a157fc1e0c8860fd958f0394','calling_behaviour?id=Dendrobatidae_altamazonica',1426506161),('3832acd9c23bb92d9f1ca509d50ec078','habitat_preference?id=Kassi_senegalensis',1426764923),('3874e4421bfcd0bcfb573d34e82e05c8','bodysize?id=Lupinus+succulentus',1425312488),('38b056504327ef9b36a6bb103e4e51a1','bodysize?id=Oreophryne_amiatoi',1426764920),('39578fe5f5ea147b0da97aa2a79acc89','hindlimb_characters?id=Dendropsophus_parviceps',1426764902),('3958595400007c8566f6d75136aca183','vocal_sac_tympanum?id=Cardioglossa_elegans',1426764900),('3982da9630e185ded20e4057e0bc886c','misc?id=A29',1426520618),('39cd8399b1030013ebbaac0a987b1fa1','iucn_threat_status?id=Microhylidae_amiatoi',1426506167),('3a2f06a9a41bfe0020883be4d6500d7c','hindlimb_characters?id=2',1426602227),('3a3439ea423e2a854917bd835ec144ab','vocal_sac_tympanum?id=Gerrothorax_pulcherrimus',1426764905),('3b1e2bb340534187aa58d6e4ac7aee76','distribution?id=Ameerega_altamazonica',1426764913),('3b25c74db23013ace20c06dfc61911a3','iucn_threat_status?id=Mantellidae_eiselti',1426506165),('3b4afe2ba7e037130ca1c8c182053a11','taxonomic_identy?id=Ageratum+houstonianum',1425312491),('3b66a5ad5394abb1bc1349cd73252073','iucn_threat_status?id=Gephyromantis_eiselti',1426764919),('3b9af24f3cbf2875aabfcf29ecdce70b','taxonomic_identy?id=A26',1426501015),('3ba83c653e40132593d1ba1a1e426a03','vocal_sac_tympanum?id=10',1426602247),('3bbe3ff8e1971d047cb24d6d8004fcfd','misc?id=Dendrobatidae_altamazonica',1426506161),('3bc8080fdd675122eae0516a196ea828','iucn_threat_status?id=A29',1426519615),('3bf3f30491c9715c78d9758c3f4ec260','taxonomic_identy?id=X12',1425555938),('3c65a3b3a153a21ef383ca4011f63583','bodysize?id=X17',1425557860),('3c9c629e9257519ef261044bcf9f2e55','bodysize?id=A29',1426518009),('3ce700a39de98c24371dfc8db13c7fa2','forlimb_characters?id=X27',1425558760),('3cf415b793fc2974cf57d190e835d17e','vocal_sac_tympanum?id=22',1426505049),('3d0044ef50a5c38d4cf86b245ddefa14','taxonomic_identy?id=B',1425551864),('3d1f23dab76b1abfdb298067cf1759d2','taxonomic_identity?id=ffaff_mygenus21',1426582849),('3d39f784fd73b9ccb6b8c40e70da2b0d','colouration?id=A30',1426519789),('3d8850219c51a873154c9b29a9b552f0','head_characters?id=X241',1425563528),('3dfe7442ffb3f9797aba70b42b4a9e38','call_parameters?id=',1426585640),('3e0ce8b24641f8310b803bfe05683ce8','egg_deposition?id=A20',1426519477),('3e3516e28650a8eed2a1c22ed8c9afee','call_parameters?id=Dendrobatidae_altamazonica',1426506161),('3e5a534d8bd6780daf2e76850e51ed18','taxonomic_identity?id=2',1426764851),('3eb1df75921dc3ff61a5acdf3527e60b','calling_behaviour?id=66',1426505053),('3f2e0fb0bd19868348b8c3501c0a73c8','bodysize?id=Campanula+americana',1425312505),('3f3d5790341f4df6225ba5a2a5cb39ec','forlimb_characters?id=Ameerega_altamazonica',1426764914),('3f950539e22fe62d8048c11d2f87dd0a','taxonomic_identity?id=6',1426764851),('3fff8c9c7efc010dfcc865e55a9f1306','calling_behaviour?id=A30',1426520030),('401cfca8a564b2573f5da2d7b8237354','head_characters?id=6',1426602236),('40af8da8cebcc68b393ae92eaad591f0','iucn_threat_status?id=Hylidae_parviceps',1426506146),('40e4a8e71c1868722ec881d64f654993','iucn_threat_status?id=7',1426602240),('4115858dd5a02484afe2514f00393da3','calling_behaviour?id=A20',1426520028),('4176ab0c32a03597732a13fa202bc8ac','colouration?id=8',1426602243),('41991ccde4e6da3ef51c81cd2884a2bb','iucn_threat_status?id=2',1426602228),('41f15a23d61fb21e40ab08218fac5152','call_parameters?id=A20',1426519930),('4202e0885fc81a1f8481c5e744677304','head_characters?id=',1426585639),('426e902b7465be9fd7039b89d4c2416b','bodysize?id=Aerugoamnis_paulus',1426764906),('428d489380588b98ef5dab2ce8bde4c5','forlimb_characters?id=Hylidae_crepitans',1426506154),('42eceefe5551a443f693c79f9d0fcc71','head_characters?id=A29',1426518270),('433a0c41caba9db51bdca76a7eef78d0','egg_deposition?id=10',1426602247),('43bb08919bb0b173411c0c99f7c3ddb8','call_parameters?id=A30',1426519931),('440079151127bf46eec6573c0f197fc5','misc?id=Odontophrynidae_americanus',1426506163),('444d2fe3802ceed95a19693f3a47dd60','call_parameters?id=7',1426602240),('444d763dbb497b3c97f9272ce2d32732','taxonomic_identy?id=A',1425551864),('449b494b9b2e5e03bcd6aeb208874119','taxonomic_identy?id=X11',1425555937),('44d11809d53a0808bfe4cb22866167be','head_characters?id=Aerugoamnis_paulus',1426764906),('4518b115a78f73e030aaaa1b83202e43','forlimb_characters?id=Dendropsophus_parviceps',1426764902),('45603a0fdab7349278a477274367bc38','vocal_sac_tympanum?id=Hylidae_crepitans',1426506154),('45605439b97c673aaba00bfcd46780d7','distribution?id=2',1426764872),('4573c14f9cfd6fa6e31cb4161dfa6fcd','head_characters?id=Gephyromantis_eiselti',1426764918),('457ea74e2822bb3164b8303499beff60','calling_behaviour?id=A22',1426520029),('45d2e97cf3cd195c27a92e880f28d470','users?UserID=10',1425463095),('45dff50b2f1c644a53ecb39e52a08941','colouration?id=Dendrobatidae_altamazonica',1426506160),('46249796cfc8ab36c41cb1624152775d','taxonomic_identity?id=8',1426764852),('46a86e9b6c82edcedc8b969ee1bf1a09','taxonomic_identity?id=A27',1426518023),('46d2dda1f31b7a48da2ee857e8ff39ca','bodysize?id=Viola+labradorica',1425313711),('46d2e6c3835c598472509314e001a229','forlimb_characters?id=A21',1426518415),('46dcfe8b25892549dad168eb4d47caff','distribution?id=Arthroleptidae_elegans',1426506140),('46e859f88822bfd8f296b6787c6a24de','taxonomic_identy?id=66',1426505059),('47b5af795e47a6014e11652f4746c207','taxonomic_identy?id=Verbena+hastata',1425312497),('47d030297ada0f14263bc406acabbd12','taxonomic_identy?id=A22',1426500654),('47e77773a825e05614a235e3391e7b29','habitat_preference?id=Mantellidae_eiselti',1426506165),('48063afbbb78597726218f3052561ba0','distribution?id=X12',1425555932),('4813a95f07aa96dd58cbd56613360c0b','bodysize?id=Sisyrinchium+idahoense',1425312508),('4815f33404c9b9a414951ed70f247134','taxonomic_identy?id=Acris_crepitans1',1426506711),('481ecd853ab6784475024d101a64689a','head_characters?id=Anomocoela_paulus',1426506150),('48227fa993c9b9e64ceffa7c9055382a','head_characters?id=Dendrobatidae_altamazonica',1426506159),('48479d3ac4eb21cab8e64206c5a7b283','bodysize?id=Plagiosauridae_pulcherrimus',1426506147),('48adc0575b23c8955e2d422027cf5d51','head_characters?id=A20',1426518269),('48e0afa490cd640372540c5a2d667db8','bodysize?id=A30',1426518011),('48e70a254927593105e9fefe82ed585f','misc?id=7',1426602241),('49422a2f4f4f24893772f922daefe818','taxonomic_identy?id=25',1425372866),('495171929a6a09ac7a278f6547f279e9','habitat_preference?id=Odontophrynidae_americanus',1426506162),('49b65a349a4474a802b82e087da270c1','misc?id=A25',1426520617),('49cc01728cec6c6b677acac7cda6fe46','taxonomic_identity?id=4',1426764851),('49f8ef2489a370f3e8e8049a77e1469f','taxonomic_identy?id=23',1425372866),('4a11153e1f8c87e704db399709169dc4','taxonomic_identy?id=Kurixalus_appendiculatus',1426506433),('4a3946e083c7629eb69efc2c134f7c27','misc?id=Kassi_senegalensis',1426764924),('4a564cad2b8039d5fa457cff7abccba4','calling_behaviour?id=11',1426602250),('4a6fd59fdd2d242d594721e242de378a','distribution?id=X25',1425558757),('4a7cc69ef0d0ea3725b5ed40192a6ca5','bodysize?id=X241',1425563527),('4aa5c03955cdd3f3c79b162f04cc063f','taxonomic_identy?id=X19',1425557862),('4aa8f44c03189741408968740dd8ba6d','bodysize?id=X13',1425555932),('4aca94619f8619b8ddbc2e07c147ae4f','head_characters?id=9',1426602244),('4ad508934a7d88cf1680a6044ca46d7d','misc?id=Microhylidae_amiatoi',1426506168),('4b0379120a71c8ce739f3f2bb63d81b8','calling_behaviour?id=Dendropsophus_parviceps',1426764903),('4b1c97673aa627de4ecd73611da14f9a','taxonomic_identy?id=Gentianopsis+holopetala',1425312483),('4b6ba30e663e17dc27435664a257c65a','colouration?id=Ipomoea+purpurea',1425313700),('4c23a59c8c936421153564c464aadb11','colouration?id=Ionactis+linariifolia',1425313701),('4c45a4d32490db7b63592fec78cd42f2','head_characters?id=A28',1426518270),('4d1119f3906f0443363caf427bd495fb','taxonomic_identy?id=X26',1425558766),('4d726c42ed97c51d5f40970094ab99e9','calling_behaviour?id=Aerugoamnis_paulus',1426764909),('4e2563a7bd30f076991ec1789edd87b3','misc?id=Mantellidae_eiselti',1426506166),('4ea1700a8ef12fd19ec9985e69821279','distribution?id=A30',1426518099),('4eb3bf3917db0c05cbbb019cbbe8e60e','colouration?id=Anomocoela_paulus',1426506151),('4ed88c19081ade8df91fc58b3401ecf1','vocal_sac_tympanum?id=66',1426505052),('4ee4cdfa8ac70a3b049c013c92e2441c','taxonomic_identy?id=X9',1425555937),('4f58430bf903266d94d822d1ae5dcd25','colouration?id=Polemonium+reptans',1425312500),('4ffc35cda3e2b82367c8a534a97b9817','distribution?id=X27',1425558759),('50303f8bcc5a664c61c7b44c3e0fcf4e','iucn_threat_status?id=A21',1426519613),('503c55d404e312decc228ec30bda3109','forlimb_characters?id=Arthroleptidae_elegans',1426506141),('5089fd4341f89fb64218cab3e7e03640','taxonomic_identity?id=Kurixalus_appendiculatus',1426764928),('50d3a29673972edc302bda4b9f8e12ea','taxonomic_identy?id=Symphyotrichum+oblongifolium',1425312498),('50d986fa9cbc3ad9c8ba1ba876c17515','bodysize?id=Iodanthus+pinnatifidus',1425312484),('50df2e3cd846ac835efc0723a5ed8689','misc?id=A22',1426520617),('517984cf2a123a107260e75c0bb8c8ac','colouration?id=2',1426602228),('51c992909b58e36982f568f4064b8922','call_parameters?id=Arthroleptidae_elegans',1426506143),('51fa26c374162714b1e1853fcfd1b877','vocal_sac_tympanum?id=Gephyromantis_eiselti',1426764918),('5267673f0e702203e4e4a559caba606a','calling_behaviour?id=5',1426602236),('528a6f0570cdcb12a03c561120748739','egg_deposition?id=9',1426602244),('52e46b088b58a3c0b267ad5e3b4f731e','colouration?id=Symphyotrichum+oblongifolium',1425312499),('539c963ffc1850c48913dc48273bd26b','hindlimb_characters?id=Gerrothorax_pulcherrimus',1426764905),('53e3e235e03b9d9d977ec8a950c77db7','call_parameters?id=2',1426602228),('542da9869d9996e93da7fdacb5c3b817','bodysize?id=13',1425373356),('549660eec2b90f6c11e8cb4a204bd46f','distribution?id=6',1426764873),('5521c6969e97cfa6f5a6476537805fc6','taxonomic_identy?id=X10',1425555937),('55319ef71887d961b48c8b959b9b8a48','taxonomic_identy?id=A28',1426501015),('5571536a12b257d8251f8acf53c6d7bf','distribution?id=Temnospondyli',1425554194),('558e66a7f6441722ceed8ac1b4a36c77','distribution?id=4',1426764872),('5600dd2f31d84762fc1d0c70ac0aafd7','colouration?id=14',1425373556),('5602154411c8fb9cfe7fb487fb84ee47','colouration?id=34',1426505045),('5652e7c95d478395f92aa5486ccd1548','distribution?id=Lupinus+grayi',1425371969),('565683b87bd96ec37bfd8bba3bedc25e','bodysize?id=3',1426602229),('56d445765fee3ad059e2de18908c7b0b','taxonomic_identy?id=Odontophrynus_americanus',1426506434),('57044e9429c948d869a392b5317447a5','bodysize?id=Hylidae_crepitans',1426506153),('5705c04edcc07aea71233beb0b4e1dca','forlimb_characters?id=Hyperoliidae_senegalensis',1426506169),('574be89e8f641459b3fc445d0e90231b','colouration?id=Kassi_senegalensis',1426764923),('579542a52eeaee4566a734684e00620f','users?username=aaa',1425395231),('5798ffdb9a4e9ad92c4f93672ad70abc','distribution?id=Kurixalus_appendiculatus',1426764912),('57b05cf619318647e50ecc9812e0534d','bodysize?id=X9',1425555930),('581e46da08b27ccdfc816cfd9eeb64cf','taxonomic_identy?id=X4',1425554287),('582e71170590ecad4201e54b7aaae838','taxonomic_identy?id=Order',1425311371),('587771981ebad239ee85cf79a251eae4','colouration?id=',1426585640),('58b2ab7efb5e991d9b6462d180ec02a8','head_characters?id=2',1426602226),('58c413132e687001483f4275468689e0','misc?id=A28',1426520618),('58d6334ee895747c70ff18689b3b5ff8','head_characters?id=Kassi_senegalensis',1426764922),('58e317495b16bbbea87b4d967d0ce84e','vocal_sac_tympanum?id=X271',1425563531),('5935b98aa83dbed87b49bd00b0d84181','taxonomic_identy?id=X3',1425554287),('59e9e6c2949fb645a51ce9d96d7a495a','calling_behaviour?id=',1426585640),('5a03ae455b90615054791a09fd001e4c','taxonomic_identy?id=22',1426505059),('5a17340df248408cc2da967d11f187cd','taxonomic_identy?id=Lupinus+grayi',1425313723),('5a831134bcfe9e09cc5c78f9af93d5ac','forlimb_characters?id=22',1426505049),('5ab933d4b31a7874b099757802680f7f','egg_deposition?id=Gerrothorax_pulcherrimus',1426764905),('5b4c79c2dfc094e584a128bf46b638fc','bodysize?id=Dendropsophus_parviceps',1426764901),('5b5f80bce8559e43b016b80af345c078','distribution?id=X251',1425563529),('5b9323b0fc1fd6025bb77e49af6eaf11','colouration?id=A20',1426519788),('5c15cdae527db835e94976d1127aed28','distribution?id=Odontophrynidae_americanus',1426506161),('5d33db66d328a3399d9c43fc6582a8e3','taxonomic_identy?id=11',1425372865),('5d751f60d9ae13c2e05b726e57f98f39','bodysize?id=Iris+virginica',1425313681),('5dcd734f065fe8cdd7190f078bb97757','bodysize?id=X14',1425555933),('5e23ba73dcb780d615ff329973395d2a','vocal_sac_tympanum?id=A27',1426518798),('5e63789304b435c407e8fe56c3187211','head_characters?id=Dendropsophus_parviceps',1426764901),('5e90953c899620d5fbecd3d120be9f49','colouration?id=A22',1426519788),('5ec238ffdf90bcb3a1e31f2ebd06f6b6','distribution?id=22',1426505048),('5edb145469d0191c90bb7df747558398','taxonomic_identy?id=43',1425372868),('5f33134d42cdd475fbb1293388dce8d1','forlimb_characters?id=7',1426602239),('5fc761be7fa2e3c4c91185111aedbd1d','bodysize?id=Navarretia+mitracarpa',1425312510),('5fd8958882dc56c574faf2b791df8535','bodysize?id=11',1426602248),('5ffd1eb04281804e24fe24cc79bf74a7','hindlimb_characters?id=A20',1426518587),('6054754d2ab0e1ff23a1ba6cc60fd0d4','taxonomic_identy?id=Navarretia+mitracarpa',1425312509),('613800dedf4434bf2be0aec6f639292e','hindlimb_characters?id=34',1426505044),('6165ec2c659f2d3332eecb1f5e2942a8','distribution?id=1',1426764872),('61cf3b92ac4b8c035b80b4315a2316dc','misc?id=Gephyromantis_eiselti',1426764919),('6218c1ea97ebbbeadc527ff2145f596d','misc?id=Hyperoliidae_senegalensis',1426506170),('622998783973361bc3f478f624a67878','hindlimb_characters?id=A26',1426518588),('6234d0ae42016c83ce586e16655cf9d2','bodysize?id=Ameerega_altamazonica',1426764914),('62720d60c046cc33cdb830c01bb3cd30','bodysize?id=Hyperoliidae_senegalensis',1426506168),('6273dcf4d55bcd5aa75e93e897bf7898','habitat_preference?id=34',1426505044),('628db123d94bf1c912d4c6922f203e3c','head_characters?id=Kurixalus_appendiculatus',1426764912),('6292c6cec41e19c95706a58c7a36efaa','taxonomic_identity?id=10',1426764851),('62a02e8f1bb6ebb739fb1c02c3083313','call_parameters?id=A22',1426519930),('62ab2c2a2298a75b1903b6c04bd68d03','iucn_threat_status?id=Plagiosauridae_pulcherrimus',1426506148),('63aeccb15ef04ea41ffe1c615808f19a','habitat_preference?id=1',1426602224),('64496755d37b0f06b0693f47519bba3c','distribution?id=X3',1425554279),('648611d0f808e8b437de00f5aee83962','head_characters?id=Oreophryne_amiatoi',1426764920),('648c2ea51b52a91598db4b1680c8911c','taxonomic_identy?id=X17',1425557860),('649955367a854f599cc9b78a90bd6a51','taxonomic_identy?id=Eriastrum+pluriflorum',1425312479),('653a1f3658f8d0c357db3533acf8d2de','bodysize?id=7',1426602239),('654627a00672b622f55604512597fea8','forlimb_characters?id=Microhylidae_amiatoi',1426506166),('65816c6e89b8593ec919705a1bf3f6a2','head_characters?id=X23',1425558755),('658fb1ae51ea1a9f4a9953a8cfdceb2e','taxonomic_identy?id=X13',1425555938),('65b64f0ea025fa9658da1ef0fc526f5b','taxonomic_identy?id=442',1426505058),('65c94336e0e31976fe85e793c2d8f297','head_characters?id=Arthroleptidae_elegans',1426506141),('65f0774d36bd9c9c0c935e0b0405f047','distribution?id=66',1426505051),('66090b4c67c9e358e6ea1719eb8db9cf','taxonomic_identy?id=Cardioglossa_elegans',1426506432),('66176c9d1d0dd6a97fcc2be9577343d7','forlimb_characters?id=X251',1425563529),('665dd3bd90e3baa0fba2a5a69cb12584','bodysize?id=Eriastrum+pluriflorum',1425312479),('6669f0b8c43e0a19d88b718dab8dcda6','bodysize?id=442',1426505046),('666d3894c91a351eae10715682c8bf01','bodysize?id=X12',1425555932),('672f3b03f6cd6e2e9b6be826a78446a7','colouration?id=Cardioglossa_elegans',1426764900),('67a8f8bda16dcdccaeae2f5b0b619eb6','forlimb_characters?id=X261',1425563530),('67c93ebe539c0fc0477897dbae00bacc','bodysize?id=Gerrothorax_pulcherrimus',1426764904),('682217d4714ad7eae2c7112dd7a68cbc','vocal_sac_tympanum?id=X261',1425563530),('68272f878841f582c0d2fb54156dc413','calling_behaviour?id=A21',1426520028),('685dafbcb057dd81adfdddc3607ae92b','distribution?id=Oreophryne_amiatoi',1426764920),('68993bae42a7b9a85fec60fb2f9ccae4','forlimb_characters?id=Gerrothorax_pulcherrimus',1426764904),('68e488a5b0c53a3b4cb2fdcf9a2c9036','egg_deposition?id=A29',1426519477),('68e60962a204f2ef02befc6a46ac3794','egg_deposition?id=A26',1426519477),('6961b5437ed69ed3a4a926b0d0fe1c04','calling_behaviour?id=Plagiosauridae_pulcherrimus',1426506149),('69d71a8f38099eafef703d6f4f91fdb9','call_parameters?id=Kassi_senegalensis',1426764923),('6a514c8a095add22b5b0feb29565d3c7','hindlimb_characters?id=4',1426602232),('6aa01e42cd8cde5c96ed3adf35907308','hindlimb_characters?id=10',1426602247),('6aab527be78f33d27cfa1884ba4e181c','iucn_threat_status?id=Dendrobatidae_altamazonica',1426506160),('6ae9b139ce4ddbd65fc7367ed1d153e1','taxonomic_identy?id=Ipomoea+purpurea',1425313728),('6af4891535cd37eecdd1096efe2fd329','taxonomic_identy?id=Cynoglossum+grande',1425312485),('6b2a4e954ab891908b6a39b81dc106c3','taxonomic_identity?id=A22',1426518023),('6b64553ffdbb6b782043cdac6acb2ce6','taxonomic_identy?id=10',1425372865),('6b75bede09856c681d795fd67fca403b','egg_deposition?id=34',1426505045),('6b977ef09794836958d68db5359e88d9','misc?id=9',1426602245),('6bb6c0c6c56fdabe37013b68478bbebf','colouration?id=Mantellidae_eiselti',1426506165),('6be93bcfdd1c81b913bd4822eb151bcc','taxonomic_identy?id=Anomocoela_paulus',1426506174),('6bfe24c9971f44a26bcc10160a836108','distribution?id=10',1426764872),('6c28e968e5df8ed5eb92d7910d0e4225','vocal_sac_tympanum?id=Kurixalus_appendiculatus',1426764912),('6c2a2d647cd8d341a0ddb72b30765322','bodysize?id=Arthroleptidae_elegans',1426506141),('6c2df6f4562e97b5fffca2f25d4f5dae','bodysize?id=twr_afffh',1426517581),('6c8f054b595ee18a886f6a2bc9f03e25','distribution?id=A20',1426518098),('6c9a328ad854eb295d0f21e129dfbd81','vocal_sac_tympanum?id=9',1426602244),('6ca2923d5811357de67d460f320dab17','hindlimb_characters?id=A21',1426518587),('6cb26e7aba26dbd520ca253102156efc','habitat_preference?id=Anomocoela_paulus',1426506151),('6cc0bb2bb37185b01ca59ede58f5acf9','taxonomic_identy?id=X8',1425555937),('6ce15b6b5fbc058724e254a147fcc285','bodysize?id=2',1426602226),('6d2e14068986deef7c0d32caa7ca5a0f','bodysize?id=Symphyotrichum+oolentangiense',1425312500),('6d91eca844b44aa65500da2738c4732c','taxonomic_identy?id=Gephyromantis_eiselti',1426506434),('6df5c3c9dd55162653d35d4c161d1f5d','taxonomic_identy?id=6',1426505058),('6e57d211be14cd48100f26b3c1ecad51','taxonomic_identy?id=X2',1425554287),('6e58f94a852f175295cc3de5b22cb3d0','hindlimb_characters?id=22',1426505049),('6f084e4dd8c20f936f304961b824548b','egg_deposition?id=Odontophrynus_americanus',1426764916),('6f09047a4daba45ef84ac11d422174ab','habitat_preference?id=22',1426505049),('6f173e9528448cda8f7464c3308130c0','call_parameters?id=5',1426602235),('6f3108775d3cccec81b9a204ec1b2480','vocal_sac_tympanum?id=Rhacophoridae_appendiculatus',1426506158),('6f79a6bbaa5d95aa70b0cc123c81adf8','hindlimb_characters?id=3',1426602229),('6f9cf9162c9c8cbd7725cddcabc9f376','misc?id=Gerrothorax_pulcherrimus',1426764906),('6f9e6212711606837f7015c2c281f93b','taxonomic_identy?id=Oreophryne_amiatoi',1426506434),('70172b69ffc67572c815af381ca17f6b','bodysize?id=5',1426602234),('702be1d404c6da5e454e9159d1c7174a','calling_behaviour?id=A25',1426520029),('708dc2850ed7dc870bf4c96baa2dbc8b','calling_behaviour?id=Cardioglossa_elegans',1426764900),('70a07abebddebde1f8376a232fc4123c','habitat_preference?id=4',1426602232),('7118786b2b4a3886f70c23ed55534ae4','distribution?id=Microhylidae_amiatoi',1426506166),('717152e4558f550cac9543964b6a8121','distribution?id=X231',1425563526),('71cc89558ef89287f3b8da39eeed88ea','taxonomic_identy?id=41',1425372868),('71de299043cce27147785ab976332790','calling_behaviour?id=3',1426602230),('7207ec4c357fcd4ae4c31939a84a64ef','head_characters?id=11',1426602248),('724b25bc12f075650374655598e20101','forlimb_characters?id=X24',1425558757),('7251ef157d454fd9c884289f1003dcbb','distribution?id=X14',1425555933),('72bccbf6fa4214022410f0c1a2b230af','call_parameters?id=6',1426602238),('72d61109975d4d9187a6a171abd8d475','bodysize?id=A20',1426517987),('72e178771bae4cb4776d01e51987da82','bodysize?id=Agastache+foeniculum',1425313681),('73346a9600c713498e21a1683f72d2e4','colouration?id=12',1425373556),('735cc1f2a8e68e958e0106b52fcc13ba','taxonomic_identy?id=A21',1426500654),('73917329788822caea1adfa7f41d6d07','taxonomic_identy?id=A30',1426501015),('73d05f087ec218fc27a06cc4804333a9','colouration?id=Lupinus+brevicaulis',1425312507),('740ae95ac62e9aea579893dd6bf2b4be','misc?id=A24',1426520617),('74130d535eb8f284867687166c5fbec4','forlimb_characters?id=442',1426505046),('742bc9139557a154a9f6ed0c38e68a21','users?UserID=7',1425400442),('743e21fda305aaabab6ca7b18c043f6e','distribution?id=X22',1425558754),('7467392d2cc36e6fe74f07d5c2541aaa','bodysize?id=Kassi_senegalensis',1426764922),('75350dfc2fbac346178cd8539994bc45','distribution?id=Anura',1425554196),('7565ca3dfdc66f78a8f65a34310884b4','colouration?id=66',1426505052),('75d2f8694822d495401396138dc5fc80','distribution?id=X11',1425555931),('75f24016541ab77aa71d3861d17034ce','bodysize?id=Linum+lewisii',1425312484),('76354e7f85cffa67b996df73db1a69f1','habitat_preference?id=Hylidae_crepitans',1426506154),('764a58cf06655f54ecbe0765da001b2f','calling_behaviour?id=A28',1426520030),('7661dccb7b7e7f1390393d1c56599163','iucn_threat_status?id=11',1426602250),('7698afc76ec40bbb030e40bcb01f1e3e','egg_deposition?id=Hylidae_parviceps',1426506146),('76baac79d56c128b46b10d211e856df6','calling_behaviour?id=2',1426602228),('773ecee615e23c307ff7f63f82ce7777','egg_deposition?id=Odontophrynidae_americanus',1426506162),('77cbc140244cbdc04a13017b4f0f621d','taxonomic_identy?id=A23',1426501014),('781183d4d8953f21da68780b80f5a196','vocal_sac_tympanum?id=8',1426602242),('783c39e65e48175de1704125c3d7b5e5','taxonomic_identy?id=X23',1425558765),('788b1ea668cf9f1975fe1c913d1b0fa0','taxonomic_identy?id=X24',1425558766),('78db45a845eff142ea2a321e5e8a68c6','taxonomic_identy?id=Viola+cucullata',1425312492),('78ecb0d5bc43f96b2bf80ec39c474edf','colouration?id=A28',1426519789),('7940ece5c39128a365f29db1832614e8','taxonomic_identy?id=37',1425372868),('797587404187e2c80431ec67376c374e','bodysize?id=X221',1425563525),('799bf51c9717aab1c5c75e4d420dc427','vocal_sac_tympanum?id=X251',1425563529),('799e8de58dda45ea4e0c8d06e2b26941','forlimb_characters?id=A23',1426518416),('79c2b7fd52be067df4d338ccf4665c82','calling_behaviour?id=Gephyromantis_eiselti',1426764919),('7a23becbfb7b42857c3c996a8ad088b1','egg_deposition?id=Cardioglossa_elegans',1426764900),('7a57f096ea2732608a7663206cb1ee4e','forlimb_characters?id=A20',1426518415),('7a5c9ffadd526b25b513a4d7f04a7ac3','taxonomic_identy?id=36',1425372868),('7a70aec965cac3c072762fd0c9dd0a21','hindlimb_characters?id=X291',1425563532),('7aa99b11ec2bd8b8aabce60294ae0bbd','taxonomic_identity?id=Ameerega_altamazonica',1426764928),('7ad26c998cf190ec443bd78f2db6563a','hindlimb_characters?id=66',1426505051),('7b0ab2d74befd0a1e23db0871dc592f4','iucn_threat_status?id=A28',1426519614),('7b385f07f15c577970490ef7565bf8f8','taxonomic_identy?id=1',1426505057),('7b447e698075dac3632e4716b3624625','habitat_preference?id=A29',1426518975),('7b5eb8219d24c7aa780a3d5ffba9c557','hindlimb_characters?id=5',1426602234),('7b718bf3a5ef02a128d951e733ea4be4','taxonomic_identy?id=29',1425372867),('7b8d2663914d81d7a3cdf8050907b9ff','head_characters?id=A27',1426518270),('7be1a3e4a4934abea7d05d3aafa6bd23','distribution?id=X5',1425554279),('7ca02131ce38ff2e54dc6689a7915ff1','bodysize?id=Lupinus+caudatus',1425312479),('7cb8ce2fef5b95852fdc019d8139ada7','colouration?id=Ageratum+houstonianum',1425312491),('7cf2ef289db285d2a7902c182bfd5424','hindlimb_characters?id=11',1426602249),('7d1483d77d736ddb22041bda57dbb80c','bodysize?id=X19',1425557862),('7dcc8fb5202b91742a95ddce993eb82c','vocal_sac_tympanum?id=Hylidae_parviceps',1426506145),('7de38f1e02a75597efed34f5e6dc4eea','head_characters?id=Mantellidae_eiselti',1426506164),('7e49805eb9de3fb938d6c1e81fb39bf7','bodysize?id=X25',1425558757),('7edee1d322aa83cdc5e34e60339b8de3','vocal_sac_tympanum?id=Kassi_senegalensis',1426764923),('7ee19374e1e57dd72a09a854832033b5','hindlimb_characters?id=Ameerega_altamazonica',1426764914),('7f381105c183f37cf402284a79a722ff','egg_deposition?id=Anomocoela_paulus',1426506151),('7f42d2416e19668866723fc565261d5e','vocal_sac_tympanum?id=Odontophrynus_americanus',1426764916),('7fc77937ce3e0a57d2fcc4f039d3d71c','misc?id=Dendropsophus_parviceps',1426764904),('80472a2cdc6797e16bdb1fa562ea2d85','taxonomic_identity?id=r_gfds',1426604136),('80822d2091f55df53a610c94a894b059','users?username=hatem',1425392584),('80a0e02b9af6f5a846ce9200ffde25ec','vocal_sac_tympanum?id=442',1426505047),('80a8700249cb09b1ba2ace940a217beb','call_parameters?id=34',1426505045),('80c8d6b25b766628880d125b13124131','call_parameters?id=A28',1426519931),('81002dc20937ad5d8f0e2ab2f6b4884b','taxonomic_identy?id=19',1425372866),('810b577bb359eab5e779f9e76469f05c','hindlimb_characters?id=A23',1426518587),('8154217ece2b15ad0f5b9eb0738251c0','forlimb_characters?id=2',1426602227),('8168bebb53c0022cce520e8779cf76b3','bodysize?id=Lupinus+obtusilobus',1425313687),('819f18c604ceeee45000b13283af7ed0','forlimb_characters?id=Odontophrynus_americanus',1426764916),('81a73b278536243539fdbfecbe93b197','colouration?id=Gephyromantis_eiselti',1426764919),('82722c33db94e3ed6d4fa44ac419967d','bodysize?id=X26',1425558759),('8296e9aa93ca3cdb0b463b37b591b107','bodysize?id=X271',1425563531),('834d309a0b79d4aaa647cd85f7c42a52','call_parameters?id=8',1426602243),('8351539bbfd6ed46ddfad747a77e9b6f','colouration?id=Navarretia+mitracarpa',1425312510),('83aac21307c7241034da87bfe17c9d41','iucn_threat_status?id=',1426585640),('83bcc19f8ffdc3de5a83df3980d7c2ea','taxonomic_identity?id=Cardioglossa_elegans',1426764927),('83c15d201f889ec693c8f124af95105c','taxonomic_identy?id=30',1425372867),('848651355434740c07959c3ffcff300e','colouration?id=Lupinus+polyphyllus',1425313697),('8491c795dc2f799ebf3ec8b836e1e632','taxonomic_identity?id=11',1426764851),('84c771b55045d66c31135b99b2157095','call_parameters?id=A27',1426519931),('85673b947812582a78bca81433c015dc','habitat_preference?id=A25',1426518975),('8572978abcbd1d5663879dd6c366a708','call_parameters?id=Odontophrynidae_americanus',1426506163),('85a8fbbf38f65156c81d53c5c8f39976','bodysize?id=Viola+cucullata',1425312492),('85b4346ec5edadf01e6016e7f1fac2ff','taxonomic_identy?id=ffaff_aaaff',1426501798),('85fa5081976a5293bbd88e0a54124ee0','taxonomic_identy?id=Ionactis+linariifolia',1425313729),('86028cf49590cd1fe2021555985144a7','taxonomic_identy?id=fdsaf_fdsaa',1426504988),('863d468a30de944357c87c44afc501e3','colouration?id=4',1426602233),('86e45e97b7089ebb5467a34aea76be78','vocal_sac_tympanum?id=A22',1426518798),('86f2eb302c15b38d969c56266fe3f814','bodysize?id=A25',1426518000),('8713a25685c9d38098830d264507d52c','taxonomic_identy?id=X251',1425563528),('8766bb9515dc98d7909b7b201a59ccb4','taxonomic_identy?id=hh_afffh',1426505328),('87f341dda20d5bd8cda30984962df47b','taxonomic_identy?id=1003',1425551507),('87f76865cfec5859a1e5f25805274cb1','bodysize?id=Lupinus+breweri',1425312489),('892ef736fc5639850d353466ded50001','colouration?id=Gerrothorax_pulcherrimus',1426764905),('896f5894d5927ca1aca4b23190eeb987','forlimb_characters?id=A28',1426518416),('89e27b03c470b565b48785b28f1d57f4','misc?id=2',1426602228),('8aa11fff60e3e26c67b318d5d87d0743','taxonomic_identy?id=123',1426500190),('8acc40bd177b8971f1152b709a525d92','head_characters?id=3',1426602229),('8ae4710317e12b68b52754d0883f20ff','bodysize?id=X15',1425557858),('8c584dcd0de99e3f3ac36524f1db8a27','iucn_threat_status?id=22',1426505050),('8c7921b04ce9821479c74376c5272a5b','misc?id=66',1426505053),('8c8c959d8cd5cf95b0e940716c8a50d8','colouration?id=A25',1426519789),('8c94d32433cd33178ba5eea85d810653','vocal_sac_tympanum?id=A20',1426518797),('8cb22a8e7f43e96ce22e1ac80904b9f7','vocal_sac_tympanum?id=A23',1426518798),('8cb3c27125cefdf6144850525923b2aa','distribution?id=X8',1425555930),('8cff8bae01f507b82375084635865416','colouration?id=Viola+palmata',1425312495),('8d02a5fb455f7a354105facce43b896c','call_parameters?id=Odontophrynus_americanus',1426764917),('8d32d77ce48bc799048b0d27d36cae6c','head_characters?id=Hyperoliidae_senegalensis',1426506168),('8d4e9a63d45a7b15322888277398222f','iucn_threat_status?id=Rhacophoridae_appendiculatus',1426506158),('8dcf7804e9c57e6bf1436af179f6bf4b','misc?id=A21',1426520617),('8e35c49c133802d881d5496d90b92dff','iucn_threat_status?id=Ameerega_altamazonica',1426764915),('8e969cda7940551467af713e8c6f1719','egg_deposition?id=Oreophryne_amiatoi',1426764921),('8ebb9f75310da3753e64512a982bcc77','colouration?id=6',1426602238),('8f5ead4a536fc7bc31f54cf0a3d49848','taxonomic_identy?id=Dendrobatidae_altamazonica',1426506175),('8f74eb9007daa1821558a12e4aae8f6a','taxonomic_identity?id=7',1426764852),('8ff63f0ad9c4a54a89dcb6258703e4ca','taxonomic_identy?id=Viola+labradorica',1425313731),('900c077bc1988e027790a97a54316227','taxonomic_identy?id=Collinsia+sparsiflora',1425313729),('90b79c9c2c4b442ab287deb869ff8b1f','taxonomic_identy?id=28',1425372867),('9104702f28cbf334974c476ae9dff7d4','taxonomic_identy?id=Temnospondyli',1425554204),('9179efa647b2c0df96e3108b4b4704c2','hindlimb_characters?id=A27',1426518588),('917e317dd00a8fa0b15947317c9f310f','head_characters?id=A21',1426518269),('9198b7661c701deef8dfbc8afb02e67e','taxonomic_identy?id=X241',1425563527),('91b2dc1168d074bd48c7bac8af29778b','colouration?id=Symphyotrichum+laeve',1425312506),('91ed601945428bd14531e4691f31df9c','distribution?id=Aerugoamnis_paulus',1426764906),('9206a90fb1a7589697b5b28c0026a312','colouration?id=Salvia+columbariae',1425312503),('92127d639de580b3eb98128b9b3d8e9e','habitat_preference?id=Dendropsophus_parviceps',1426764902),('9238b163bfed1d2669420b952ad416a0','call_parameters?id=A29',1426519931),('923d2d474e9e7b7b036f46d5a970ba52','taxonomic_identy?id=15',1425372865),('9245ff6bcf62e1fc2921749e8a9f4ec7','taxonomic_identity?id=A21',1426518023),('92d3d1b26c41d4063e56a4738e0a6dfb','forlimb_characters?id=X221',1425563525),('930b799799f24718a7d9b96836827b1c','call_parameters?id=11',1426602250),('930dfd67cc49a6ad3b3f0f002bda22ad','distribution?id=Dendropsophus_parviceps',1426764901),('933198ff8daca231f23938eaf9667a4c','call_parameters?id=A24',1426519930),('93b2923d7f88e9b9adfd5aca34c880dc','head_characters?id=Microhylidae_amiatoi',1426506166),('93e2c6ba63074f33227841d49f5fe304','hindlimb_characters?id=Oreophryne_amiatoi',1426764920),('93fcce1851b8eeb372b86fc5f2ee3f82','habitat_preference?id=A21',1426518974),('94034691286247f502a4f6cb8498c08a','head_characters?id=7',1426602239),('945ecb826b9d6aa8f2d6f8c6bd108fd2','iucn_threat_status?id=4',1426602233),('945ef7b4028138fc4b85e13dd35aa22c','call_parameters?id=Oreophryne_amiatoi',1426764921),('94ac3e8dfcff634bb27c496350c842f1','colouration?id=Aerugoamnis_paulus',1426764909),('951a4cf699f19cf13974986c16b06a43','taxonomic_identy?id=31',1425372867),('9589a6ae1f07126a61f98c182c47692b','bodysize?id=X24',1425558756),('95edac2b48f1669d629041b1fded37f1','iucn_threat_status?id=A23',1426519614),('95f71d2151c26877e29ed10a9979a308','colouration?id=Lupinus+sparsiflorus',1425313690),('966e64ee2614ac9d88fa458e3ed4544b','distribution?id=X24',1425558756),('9697986bbf34fdf4ea9e99ee3748bcf7','egg_deposition?id=4',1426602232),('96cfa9b30396d6997385f2c7b888972b','colouration?id=Agastache+foeniculum',1425313681),('96eb8262a43bb8c34c7927ae293d4f70','bodysize?id=8',1426602241),('9719f453bca8532dcab28e085b2bb23e','forlimb_characters?id=Plagiosauridae_pulcherrimus',1426506148),('9768ddb5a989c6b5ac95d5a5d0e0f477','distribution?id=7',1426764873),('97a3185208df18aa56de2f58f5adeda6','egg_deposition?id=A22',1426519477),('97e021f6c5501486a49fe60ca78842da','forlimb_characters?id=4',1426602232),('98e6b1d67ab8732ec9a76f1ef8fc6b9e','head_characters?id=Hylidae_crepitans',1426506153),('9929e69e50b84dd4d218539bc68fa552','hindlimb_characters?id=X261',1425563530),('9980403e9858aff3d746586e6e944669','taxonomic_identity?id=myspecies_mygenus',1426522421),('99b6aabf600c15444c26fb08a7b33dff','calling_behaviour?id=Odontophrynidae_americanus',1426506163),('9b8712dd2f9eb0bdfea54be9592cff24','distribution?id=A29',1426518099),('9bae82aa520a458f1b390553db2d9b74','bodysize?id=Blephilia+hirsuta',1425312481),('9bcc8a10b3fc666abba72510be74c989','taxonomic_identy?id=X271',1425563530),('9bef0ee5ebcab0434080019a0b68bbdc','head_characters?id=X22',1425558754),('9c4a48f9790c2f6fb3c67dbb489de479','iucn_threat_status?id=442',1426505047),('9c96a9b2a9a4e8228abf686786654521','distribution?id=',1426585639),('9cec3fe757789b8fe5973862a45c0ca0','forlimb_characters?id=X22',1425558754),('9cf76b8a93fb6ce5f415580a54fe2859','forlimb_characters?id=X23',1425558755),('9d2565c640abaedf47400ae91d26d96e','head_characters?id=Odontophrynidae_americanus',1426506162),('9d6c9bd2ba12e4b6268b3acc6de82c53','calling_behaviour?id=Rhacophoridae_appendiculatus',1426506158),('9db2305eb9399def5b2d8e5cbe0720d2','habitat_preference?id=Microhylidae_amiatoi',1426506167),('9dd7e170bd4993863a8a3664f165f47c','bodysize?id=66',1426505051),('9ecb0ad38f03956c06fb9f2bb1d6ef4d','head_characters?id=Plagiosauridae_pulcherrimus',1426506147),('9ed3e6dceb2064a18e50bac7909253b1','bodysize?id=A27',1426518004),('9f050f8ab61756777ce2d794d43cbb95','taxonomic_identy?id=C',1425551864),('a037acec24482a13a817846a63df67ec','egg_deposition?id=A21',1426519477),('a0464f6720a6000f07f2afc687d6f00e','distribution?id=34',1426505043),('a06a76467e757c7a5fb3c6a562e36844','taxonomic_identy?id=Pholistoma+auritum+var.+auritum',1425312504),('a0a7bb47b3c7aac0a95a44a05b9767f2','head_characters?id=X21',1425557864),('a0ae14935f181311860f2e6ddd45581f','call_parameters?id=4',1426602233),('a0c5fbdc90bf4f33acd7303028a7671f','calling_behaviour?id=Microhylidae_amiatoi',1426506168),('a18eea055ef23f52534ee1520f78371d','taxonomic_identy?id=SS_GEN',1426502120),('a1babfa319f1c4de3225658599fc8d9e','iucn_threat_status?id=Anomocoela_paulus',1426506151),('a262175b496b101f22729c5a33197d33','calling_behaviour?id=7',1426602240),('a26fda2fa2391956e03917309c7805cf','taxonomic_identy?id=X18',1425557861),('a2cec124c4414b944fb4f7159981b910','bodysize?id=Cardioglossa_elegans',1426764899),('a38bd06d43398e85a0224ee648bb2f28','iucn_threat_status?id=Kurixalus_appendiculatus',1426764913),('a3b1302fac92baa8bc798dab1c6baa87','distribution?id=8',1426764873),('a3c013436e6d15af1096a9d0506dc4b2','habitat_preference?id=A22',1426518974),('a3cc5d5de64e5dc564427c649c066fc8','taxonomic_identy?id=X25',1425558766),('a46915285601fc8f6f6e6da1b69ff5a5','distribution?id=X4',1425554279),('a4827f9116c673c4dd4c49533d52b094','call_parameters?id=3',1426602230),('a4839050f43e5a852f43ead3ede0f3cc','head_characters?id=X261',1425563530),('a4908652653106c9f450c40108182240','vocal_sac_tympanum?id=1',1426602224),('a5091fe5cae8e819fd65625c1075d9fb','distribution?id=11',1426764872),('a519df76e353bfb5f7c7e23737ff7d9e','colouration?id=A26',1426519789),('a5269330df83da159d374c2d3ab45459','iucn_threat_status?id=3',1426602230),('a5604e0f3e5ab0d23df31357eef516a4','hindlimb_characters?id=X221',1425563525),('a56b644023b7ff76e5a37cb5af288276','vocal_sac_tympanum?id=Mantellidae_eiselti',1426506164),('a5728459c3664134b1908cf98ef02bbf','hindlimb_characters?id=A29',1426518588),('a5a2abf11b0a98d8f208fe185c27be91','habitat_preference?id=66',1426505052),('a5b32061755db1d47625d37625bbf236','call_parameters?id=Hylidae_parviceps',1426506146),('a5f2f98e5c1ff8cac6fe9c2abc87460a','bodysize?id=Phlox+hoodii+subsp.+canescens',1425313700),('a5ffaad4ce93d6973518aa2b02f05ff2','taxonomic_identy?id=X22',1425558765),('a60e6410b832d0ca8fe12dc44849992c','colouration?id=10',1426602247),('a63f527e0ac0166943452ee365573702','misc?id=A20',1426520617),('a6458cbf6c5c03b9e07f3bd2cab992e8','taxonomic_identy?id=Hylidae_crepitans',1426506174),('a6509ad691e69a2dec78d8869945bf13','head_characters?id=X18',1425557861),('a6e99dd87bb41dbb198ad9cf6525aeb3','distribution?id=A28',1426518099),('a75b0319355f09133c2f728f0de98fee','colouration?id=Iris+macrosiphon',1425313699),('a768b9e2d091858aa2054ec6544f64c5','iucn_threat_status?id=A20',1426519613),('a77451f52c91e4c51b00e4fd5a28bace','distribution?id=Anomocoela_paulus',1426506149),('a7a28cae9047df0e1d52efce6de633ee','hindlimb_characters?id=Odontophrynidae_americanus',1426506162),('a7a67522ef85b5e67cd36fbf14a1fc71','bodysize?id=X231',1425563526),('a7bfc0b3e36194509fec6886779f40c0','hindlimb_characters?id=X251',1425563529),('a82c6ec65b0a165b9ed8379c5406bc5f','taxonomic_identy?id=X261',1425563529),('a83e78e9e9a1f2b2164acb3b8aa1a4de','distribution?id=X23',1425558755),('a890a5a1903bd459ff34bb66811fa64f','forlimb_characters?id=X291',1425563532),('a931b78a1261344ba89ca8958711941d','taxonomic_identity?id=Oreophryne_amiatoi',1426764928),('a9c82904e941688762b4903d8e30421a','taxonomic_identy?id=X5',1425554287),('a9d7306f32c02195de204db810055132','distribution?id=X9',1425555930),('aa5e5b721897de32bfe119e5230cbb8f','distribution?id=X20',1425557863),('aaf13fa159f184a557ee8e13f53d4700','taxonomic_identy?id=Gilia+clivorum',1425313726),('ab153f48eee5e157aeaa95a08051075d','distribution?id=A25',1426518098),('ab44ab55e6c39bef3c4b1b56089b7e27','bodysize?id=Lupinus+grayi',1425313680),('ac266969120ab619c7900cd683063661','iucn_threat_status?id=Kassi_senegalensis',1426764923),('ac35ca8c1c923ad00943553ba5e1cde4','taxonomic_identy?id=12',1425372865),('ac37adc12abde1a602b1c9cc8838b537','taxonomic_identity?id=Gerrothorax_pulcherrimus',1426764927),('ac4602055193f30076de0d818af1b8ac','vocal_sac_tympanum?id=',1426585639),('ac4e63cfbc687a85824e263f4b87e197','calling_behaviour?id=Hylidae_crepitans',1426506156),('ac9177c00128e436ec2a6a0b0d1542b9','taxonomic_identy?id=Phacelia+tanacetifolia',1425312502),('ace8288a54265efd6874565490b2399d','egg_deposition?id=Microhylidae_amiatoi',1426506167),('ad40e360bb75bd02d5bfa1320dcfb7f3','call_parameters?id=Ameerega_altamazonica',1426764915),('ad67026e4e832cf1a50c579a9587c6b2','egg_deposition?id=8',1426602242),('adc326c5c5c94d71aba317825c13ba2d','distribution?id=A21',1426518098),('add36816c79db288d550ccbb92b11ea8','bodysize?id=6',1426602236),('ae060d903bd51578dfc7ebad259ba705','bodysize?id=34',1426505043),('ae4c86d2a470acaa4a35cb6c4590632c','colouration?id=Symphyotrichum+oolentangiense',1425312500),('aeaa3a6fe6719c451b503e53f25e1e63','taxonomic_identy?id=4',1425372864),('aedd327695c2c5fc1b6b2c5f1db9b1e0','distribution?id=X261',1425563530),('af4275d4ab78cca19ce871e0cc0f9734','head_characters?id=5',1426602234),('b05340a24fa045f0b00e113f23b7e0c8','habitat_preference?id=Ameerega_altamazonica',1426764914),('b06f80206091759cb6e6543f7d4a6968','colouration?id=Lupinus+albifrons',1425313684),('b08c3b6233ea778696e8ee43c9e1e13d','colouration?id=Sisyrinchium+montanum',1425313708),('b08ed19ce220de424cd61d33996f2753','bodysize?id=X16',1425557859),('b0dc2316938da93050ad7630db627258','taxonomic_identy?id=A20',1426500654),('b0e076750b8ae54a56757883ca75eb9b','distribution?id=Cardioglossa_elegans',1426764899),('b106556cf7d5d4a5ad2a46c21d3188e6','call_parameters?id=Kurixalus_appendiculatus',1426764913),('b108f5fb232f802341ec11ca46589b69','bodysize?id=Phacelia+tanacetifolia',1425312502),('b1d502968f8cb6db125bbe0b9de9531b','colouration?id=Viola+labradorica',1425313712),('b2304c65fd86a19d323c529e20885538','colouration?id=5',1426602235),('b23612ecf3e6ed8596272259cea87e58','colouration?id=A23',1426519788),('b2381f0a6dd064a230e1e4e80b6a2456','hindlimb_characters?id=Plagiosauridae_pulcherrimus',1426506148),('b245413c4dd296b75609adb69d3259c3','hindlimb_characters?id=1',1426602224),('b252fbb341d7d6df274ab592c3b888f4','hindlimb_characters?id=Odontophrynus_americanus',1426764916),('b276b45ea41c713117540f2ceaf36a55','habitat_preference?id=Hyperoliidae_senegalensis',1426506169),('b295650ddc36b5911f8cf88570db6e3e','egg_deposition?id=5',1426602235),('b2ba77153b87c821258495e7c2058232','hindlimb_characters?id=X271',1425563531),('b2c57d38fce3fcabe573cc62885a03f4','egg_deposition?id=A25',1426519477),('b2df4fb94ce552e4b749698d0693bc69','iucn_threat_status?id=Hylidae_crepitans',1426506155),('b302217899c2e99d74a08791471234ca','forlimb_characters?id=Oreophryne_amiatoi',1426764920),('b30a4c031be6ec652e2643f0efe1e1f5','forlimb_characters?id=Dendrobatidae_altamazonica',1426506159),('b31fe7a4cb6eb9fc8af08365da0a8053','head_characters?id=X27',1425558760),('b34fc906a106f3a9964826da443891cc','forlimb_characters?id=10',1426602246),('b40e461c9ceb6d305f6e0202d4e78c4e','habitat_preference?id=11',1426602249),('b42bdb8c82678ef033b419365c760a05','taxonomic_identy?id=Polygala+vulgaris',1425312480),('b4381ed5bf3199e4c86ac801d500f0e6','call_parameters?id=9',1426602245),('b439b10e1f4ecb3d5893768777c8e0fe','call_parameters?id=A21',1426519930),('b46822434f37f10aaece9eda2bfd7846','taxonomic_identy?id=Iris+macrosiphon',1425313728),('b46aaffe57fd6c0c997ce5795485d5a8','head_characters?id=Hylidae_parviceps',1426506144),('b49453ad14713d34b295b7d9c9efa8e1','taxonomic_identy?id=Agastache+foeniculum',1425313723),('b51dc05e97709198980fd5252fab8a41','bodysize?id=A23',1426517994),('b521dc25d68a44f1a8c54fa1f2e88af8','misc?id=1',1426602225),('b56fa3fe56e50a6aba4b2755c27dd7ac','calling_behaviour?id=A24',1426520029),('b5c1170dac844b1f835853106cfbb14a','distribution?id=Hylidae_crepitans',1426506153),('b5ca0544e2238d7ce496f6c80282fc5d','call_parameters?id=Mantellidae_eiselti',1426506165),('b62518933cf5538a359a26e79883c835','bodysize?id=1',1426602223),('b64da5ce0677b4b6454aa3b8e3b52a76','distribution?id=Hyperoliidae_senegalensis',1426506168),('b661dca3567d5dda5a3466748a37455a','colouration?id=Polygala+vulgaris',1425312480),('b68dd5a9007b425b5072eefaba5e796e','taxonomic_identy?id=Viola+palmata',1425312495),('b6bdebd0432bc8bb5cb98f7d36321958','colouration?id=Phacelia+tanacetifolia',1425312502),('b70eba603a9d0a3fca82b50f73bda0d7','distribution?id=X13',1425555932),('b73646b0f380c3e07cbe749779513c9c','calling_behaviour?id=10',1426602248),('b74ce4b5c1de816fe64675fd43bc1605','colouration?id=Linanthus+parryae',1425313680),('b7aecd9ea8aa9e32204a56040eed95c2','taxonomic_identy?id=X291',1425563531),('b7e56bfa7e2da609f8ab3d38c11a8312','colouration?id=Campanula+americana',1425312505),('b820ba5b5fd1dfd4b6b8c2d85843d76e','users?UserID=2',1425397891),('b8236f105d572a54b3262f428fc442af','colouration?id=442',1426505047),('b8370783f559bed5edbc8a9c44707f16','bodysize?id=X29',1425558761),('b88ed04c494ac973c251ad5d4e50e6a3','hindlimb_characters?id=A30',1426518588),('b94074ff90051ea282bf651e0f4a70f4','colouration?id=Kurixalus_appendiculatus',1426764913),('b9ee7f84c4f20ef053a70d204ef57de4','taxonomic_identy?id=Microhylidae_amiatoi',1426506175),('ba429f71b09f7b48d5b9972d981f3d74','vocal_sac_tympanum?id=Odontophrynidae_americanus',1426506162),('ba46e313d66ac67b6cd42d4a7febb1b3','distribution?id=X291',1425563531),('ba5a89a48c308a88e5c8fb728a9cb65a','taxonomic_identy?id=Ameerega_altamazonica',1426506433),('ba6a71890461fc6500891a1e1a4437f8','forlimb_characters?id=X241',1425563528),('ba75838547144dee653a318f2f243b4f','head_characters?id=Rhacophoridae_appendiculatus',1426506157),('ba88aff488943b91ba06bf9318c0160b','misc?id=6',1426602238),('ba8f07350cbbb253fc24779c25b26af8','colouration?id=Brodiaea+coronaria',1425312480),('bac02678394e78bf59eb2b2e3ba871e5','forlimb_characters?id=9',1426602244),('badc5ba2838cd4ed9cdfe36511b5b87b','calling_behaviour?id=6',1426602238),('bb11ee95d7c6b15ee318eb14df14afdc','calling_behaviour?id=34',1426505045),('bb12c203edac1c99040f818c73d8e865','habitat_preference?id=Kurixalus_appendiculatus',1426764912),('bb171751e790369f043c9bff4995d28c','colouration?id=13',1425373556),('bb422aee60809f9e08ba916ab41962de','forlimb_characters?id=X26',1425558759),('bb5d4aa03bb9a7469e9cbd5172bb5648','misc?id=Aerugoamnis_paulus',1426764909),('bc001eb9d0d20a7a79ce3526469e89b3','taxonomic_identy?id=Rhacophoridae_appendiculatus',1426506175),('bc188d0b9d1edd4d056da334295d6c84','colouration?id=Gentianopsis+holopetala',1425312483),('bc266c45e24b03c522d313505ed6b7d8','colouration?id=Blephilia+hirsuta',1425312481),('bc3725fb00b060d85960ad4f7e506193','call_parameters?id=Acris_crepitans',1426764911),('bc488c8e1d9127c4f1c95782bb03cf76','hindlimb_characters?id=X231',1425563526),('bc58def62dcfe3c27cb2921f5a7069ae','hindlimb_characters?id=Cardioglossa_elegans',1426764899),('bc837452df59334a7d66c336ea655ebf','head_characters?id=Ameerega_altamazonica',1426764914),('bc8e8c9cd2dcf43c774f87933c35e7b9','colouration?id=Gilia+clivorum',1425313693),('bca9317563271c87bb0dea52aac546d3','head_characters?id=22',1426505049),('bcbc0bd2316290d8867d5728e6a7166b','taxonomic_identy?id=Lupinus+sparsiflorus',1425313726),('bce1aab8f0f4c818d2359af362a23290','taxonomic_identy?id=Kassi_senegalensis',1426506434),('bce2a605cbc5ec1f81e990ada84842d6','misc?id=22',1426505050),('bd6428007bbad7ef49152ed1a838aaf5','distribution?id=Plagiosauridae_pulcherrimus',1426506147),('bd7475d27be9ae8f3c7a762e81a87844','taxonomic_identy?id=3',1426505057),('bd78829c2c1e6da92938e273e932b3de','vocal_sac_tympanum?id=A28',1426518798),('bd9326aa69220c50a143f5fba837d32f','colouration?id=Hyperoliidae_senegalensis',1426506170),('be10afb3876399456e3c4936808bd943','distribution?id=X241',1425563527),('be45bba1ac6e3ad6ed76d015ef6b669f','egg_deposition?id=Gephyromantis_eiselti',1426764919),('be554dcfb310b1e4938965444ffdbf08','bodysize?id=Polygala+vulgaris',1425312480),('beb6e1a4e7491f18dc6b086bcc42fe02','bodysize?id=A26',1426518002),('beb7d1c1963e15c8c7cb7764c92a541f','distribution?id=A24',1426518098),('befe5f9fe3db6dc2439c0d7b4ea168aa','head_characters?id=X291',1425563532),('bf81df43d488198ff856183604c62b48','colouration?id=3',1426602230),('bfa371dd6317eaebee8c4f2bbdf7d994','vocal_sac_tympanum?id=A25',1426518798),('bfb7b4becb5e95e183443889aec3e754','taxonomic_identy?id=Lupinus+breweri',1425312489),('bfd365d155897f01adf975f59a09cb07','egg_deposition?id=66',1426505052),('c0560c82093764c1cbe24dd066b6719a','bodysize?id=Ionactis+linariifolia',1425313701),('c08d5101cafa6e13b68ae731a15a0e10','head_characters?id=Odontophrynus_americanus',1426764916),('c0fd280659c7f43c8afee4d0bf70fd81','bodysize?id=Lupinus+sparsiflorus',1425313690),('c1479a5ce95c97bdcd394421b487f4ce','taxonomic_identy?id=333',1425308169),('c1568250502098e2b0b9b5702c5e0ed2','taxonomic_identity?id=Kassi_senegalensis',1426764928),('c198aedd84c595e23eb03ed407d57906','habitat_preference?id=A24',1426518974),('c199204521d11f210142d64707907f1b','colouration?id=Cynoglossum+grande',1425312485),('c1a401477b7760b2efa2145c0a72b105','misc?id=Kurixalus_appendiculatus',1426764913),('c1c996abe128a321b7a7ad4eebb214c4','forlimb_characters?id=Anomocoela_paulus',1426506150),('c1d7c90414f74d2f81304d9d7ad0a28d','distribution?id=A27',1426518099),('c2c4a6cab1103b7e44052ddf9aa68439','colouration?id=Odontophrynidae_americanus',1426506163),('c2cdc4174239b4730455670a740c821e','hindlimb_characters?id=Dendrobatidae_altamazonica',1426506160),('c2d91c3f3c23e7ad4ddac3bc2ed00353','colouration?id=Verbena+hastata',1425312498),('c32319406fddef051407c2c93257a767','taxonomic_identy?id=Phlox+hoodii+subsp.+canescens',1425313728),('c339c826f25b4035544fb8f1c76804ff','habitat_preference?id=8',1426602242),('c365e56605e4ed63f809a4ca411c9264','habitat_preference?id=Arthroleptidae_elegans',1426506142),('c36a35ad2881aeb8b38097867ce77e8c','call_parameters?id=Hylidae_crepitans',1426506156),('c3716b9f0914b0338e4b848509154c8d','vocal_sac_tympanum?id=X221',1425563525),('c412f16758bcef533f2b49bb5f258596','taxonomic_identity?id=A29',1426518024),('c41b50f12107f56e034e9b27174800a2','bodysize?id=A21',1426517990),('c43da2777cf064557f5e65ea950dc9e9','taxonomic_identy?id=Nemophila+pulchella+var.+pulchella',1425312481),('c48b609cdb792310abd076b65eca213e','taxonomic_identy?id=X21',1425557864),('c496b31b4d83bb4b4b043a443fb4fc5e','taxonomic_identy?id=Linum+lewisii',1425312484),('c56b417649685943bab48fd21c47d65d','colouration?id=Oreophryne_amiatoi',1426764921),('c5b3d282d8ae092af041437bfba0dc42','colouration?id=7',1426602240),('c5ce12aac323de5c7184ee42fba01321','vocal_sac_tympanum?id=A26',1426518798),('c5d255e2bb48c8c4d9cceb6c40c306db','head_characters?id=X20',1425557863),('c5e8ceb274b57f3a82b02f7232445609','taxonomic_identity?id=A20',1426518023),('c6015871d9699134725ed8dc10981a44','vocal_sac_tympanum?id=3',1426602229),('c6e3943a96b216311de702c3af6dfe80','taxonomic_identity?id=5',1426764851),('c7a82e719dc9ea955826282cf3d72c8f','colouration?id=Iris+virginica',1425313788),('c7acd24014e29f75cef91f94366d8eb8','distribution?id=X17',1425557860),('c86be43e84ddacb54fd594b3160a7925','taxonomic_identy?id=21',1425372866),('c87bb1d9863e64ac163227c8007a411d','vocal_sac_tympanum?id=5',1426602234),('c90d57d62d6a7901b122f268bdd13e8f','iucn_threat_status?id=A25',1426519614),('c949df3e97416bc948bb4bf02a0d7000','calling_behaviour?id=Acris_crepitans',1426764911),('c98b9880689ffd26e1388c1ac7619116','bodysize?id=Symphyotrichum+laeve',1425312505),('c998381abb4ec771e9a642cce219efdf','iucn_threat_status?id=1',1426602224),('c99ba732ada941b006a7d9680ac42eae','egg_deposition?id=Arthroleptidae_elegans',1426506142),('c9db353c929d08f2f91596e66e91cb4f','taxonomic_identity?id=3',1426764851),('c9e3bc8976ff77eda58393a97cfe8e6b','colouration?id=9',1426602245),('caa34f4f7d0849e564eb215d8bd5f7b7','misc?id=',1426585640),('caae07075ac0653d6ebe820b21f1156b','bodysize?id=Campanula+scabrella',1425313703),('cac7799dc8324d6a1f8f4cf004eb7cc3','taxonomic_identity?id=Aerugoamnis_paulus',1426764928),('cb8d7aff76e99d6ceaa5e728f6b90f4f','egg_deposition?id=Acris_crepitans',1426764910),('cb9aa66af9be29be10cb21da7191992e','head_characters?id=Cardioglossa_elegans',1426764899),('cbd8c6d653e3c23ff8855e32d12551ee','hindlimb_characters?id=9',1426602244),('cc27de4de5c12091da214f7c3a8647a0','taxonomic_identy?id=18',1425372866),('cc2dd2066e627e250fcfccd0ea5fa7c6','distribution?id=442',1426505046),('cc706c05c6fc7ad8cc181c4c72107dcf','bodysize?id=Lupinus+brevicaulis',1425312507),('ccadd8cae2f257cdb758648660727f1e','vocal_sac_tympanum?id=Dendropsophus_parviceps',1426764902),('ccb8e97cab9155539edad3fe1c497a8b','misc?id=A27',1426520618),('cdba96be98a636817fb8f26703d497be','hindlimb_characters?id=A25',1426518588),('ce0f8dd0cde164ebf8fa57495c2661da','colouration?id=Dendropsophus_parviceps',1426764903),('ce41006729d26516eee61231d152c423','taxonomic_identy?id=X20',1425557863),('ce6a26dc5f5c4bc6eff4cfdd375114cd','egg_deposition?id=Dendropsophus_parviceps',1426764903),('ce9e044d2899222044c9f19813034be4','vocal_sac_tympanum?id=Plagiosauridae_pulcherrimus',1426506148),('cee75a4d4e7a73701d154c1f10fb7213','forlimb_characters?id=3',1426602229),('ceebb141654adc94385a6aef7e59cd84','taxonomic_identy?id=Campanula+scabrella',1425313729),('cf5478cce5b3be8cb6fa4ff662f0838d','taxonomic_identy?id=ggg_gg',1426504669),('cf600ad7b7cc13f87bac8d923b18c8b3','taxonomic_identy?id=Campanula+scouleri',1425312501),('cf647c923cde5591b714b5b69cd21792','bodysize?id=Ageratum+houstonianum',1425312491),('cf9bc7676c9bb6c401a43154d734bef8','taxonomic_identy?id=20',1425372866),('cfba5ff8597ccc02cc2aa2856c0d43f5','distribution?id=X10',1425555931),('d03189132e916ebfc5d2e27c792c2b34','bodysize?id=Hylidae_parviceps',1426506144),('d09f07282719321f0c43a55b54b3f97f','bodysize?id=Mantellidae_eiselti',1426506164),('d0a338e1d0801938c812822e27fd312b','iucn_threat_status?id=66',1426505052),('d0a948aefd9bee6e52770b26c6b508ed','vocal_sac_tympanum?id=2',1426602227),('d0d725c644278d7dbc461d9139760cce','taxonomic_identy?id=elegans_Cardioglossa',1426504391),('d1249c88cd746deaac27e23c205d32df','taxonomic_identy?id=Arthroleptidae_elegans',1426506174),('d13efa1ffa501ccdb522e302faba7211','vocal_sac_tympanum?id=X231',1425563527),('d14c5fc4cba68af8bc87a44067a7e135','call_parameters?id=_',1426586393),('d184ad71a491bb4dbc0c3044ad9f87b3','iucn_threat_status?id=5',1426602235),('d1cd8a1c9b295c20d95fd8db3c295132','colouration?id=Phlox+hoodii+subsp.+canescens',1425313700),('d1d2aab0ea03c17fa76fcbfdf7a15d6a','hindlimb_characters?id=442',1426505046),('d210ed92b0507e196100fd7fecbf5846','call_parameters?id=Anomocoela_paulus',1426506151),('d22643d516e9433105badd72e0cdd7ee','forlimb_characters?id=Kassi_senegalensis',1426764922),('d22b63b6902425b016788c472d493f6d','head_characters?id=4',1426602232),('d244f8d5ea400449710207d3535c6b50','vocal_sac_tympanum?id=6',1426602237),('d2a613ef86fa408f9cf04391fd67c094','iucn_threat_status?id=A27',1426519614),('d2b026f780cc8536fc12b930a60eabae','bodysize?id=A22',1426517992),('d2c76e76fe261455266e6e74cd620cd2','misc?id=A30',1426520618),('d361c62c266e1d7eceb0d2b9f64b9cb9','distribution?id=5',1426764872),('d390d7a812875b19cdded9fc7a11e152','habitat_preference?id=Gerrothorax_pulcherrimus',1426764905),('d3cf5dfec810cee63d6c2c836dde0c44','hindlimb_characters?id=7',1426602239),('d40af1f4a177410c51cbb865409a5d63','calling_behaviour?id=Ameerega_altamazonica',1426764915),('d4226ad4e7626734e474b56d4a9ac7a6','habitat_preference?id=Acris_crepitans',1426764910),('d43ac65e0004fc467031a575b762e728','calling_behaviour?id=A26',1426520029),('d48a3e6a27f1239573b60311d2872482','bodysize?id=X261',1425563530),('d49f444353f89ebcfce2fb81498254bc','taxonomic_identity?id=A25',1426518023),('d4caff634b1ff2b897aaabde0ffd99a4','taxonomic_identy?id=Lupinus+brevicaulis',1425312507),('d4ef68181a578f45610acbcefa92929f','bodysize?id=4',1426602231),('d4f4597d6e9b217f178c84cb66db8c9a','habitat_preference?id=2',1426602227),('d4f68756a1b64d67e4ea3e71d4c046c2','head_characters?id=442',1426505046),('d684fd96292ffd11468aff693bc05aba','hindlimb_characters?id=6',1426602237),('d76d11cf215b583e0dfb2f6cd6208058','call_parameters?id=Cardioglossa_elegans',1426764900),('d77295e14161d57cb2bb65db488f6b80','hindlimb_characters?id=Arthroleptidae_elegans',1426506141),('d7be645fb6e54fd61902545d0367eb53','taxonomic_identity?id=A26',1426518023),('d7e05bc4c6b45ebd6960ca417aa33fe2','iucn_threat_status?id=Odontophrynus_americanus',1426764917),('d8575609364ad746ee6a395ddf40693b','taxonomic_identy?id=X1',1425554287),('d8ac901ee8d95161dab615383f8b929e','distribution?id=Hylidae_parviceps',1426506144),('d8b40ed74b8ad0e8a818eea7afb5ac45','vocal_sac_tympanum?id=X241',1425563528),('d8c4ca71b43fb54dcdc229d2edc8390e','egg_deposition?id=Plagiosauridae_pulcherrimus',1426506148),('d8e2cb97d7d7d29cef51a2b4554fa3a7','egg_deposition?id=Ameerega_altamazonica',1426764914),('d90ba42254ee1a2847753ac07dbb5a8e','vocal_sac_tympanum?id=11',1426602249),('d90d67c0eee21874c0c344068213fe8d','hindlimb_characters?id=A28',1426518588),('d915acdcc2c4867c552888db43020b90','taxonomic_identy?id=E',1425551865),('d927f85a89d98bcd91270da45e94c1eb','hindlimb_characters?id=Hylidae_parviceps',1426506145),('d93ca204d7ceced310f4d8fbc50a8550','taxonomic_identy?id=24',1425372866),('d9f2761e660866f7bf47f916c28632a5','distribution?id=X2',1425554278),('da1dfb99d593e1a213dd7d6b6c94a16e','taxonomic_identy?id=A25',1426501015),('da48ec776812c1f0b6b1bea5b5f4f424','taxonomic_identy?id=Symphyotrichum+oolentangiense',1425312500),('da763db4a66118bb0052ae8ff4a346c9','vocal_sac_tympanum?id=4',1426602232),('daa2e56cba1357de22941c491b2e5930','egg_deposition?id=22',1426505050),('dadce11155c5a0bf8336f0b5ef6d828f','taxonomic_identy?id=SOME_SAe',1426502281),('dafb5e9dbfdb9795b7e3e30a8df8572b','bodysize?id=9',1426602244),('db2bd3901fe9466fc9c7bb24f618ef8c','egg_deposition?id=1',1426602224),('db316a908ccdd6da08297735872f98c4','vocal_sac_tympanum?id=_',1426586392),('dbb4baaad794d8484b6a9ea82f13640c','distribution?id=X19',1425557862),('dbb9f99acaeb182ff7d141cacc1d718a','egg_deposition?id=A30',1426519478),('dbc0d36e67b588e863bf8f9ce20c88a9','habitat_preference?id=A28',1426518975),('dc45879db8724529ac609e9ea7539d22','bodysize?id=Rhacophoridae_appendiculatus',1426506157),('ddb3910ebb2a84f379a043f2ea600b94','bodysize?id=X10',1425555931),('ddd7ceb9527099cd999567309597b6fa','iucn_threat_status?id=10',1426602247),('ddf5fce316e4805ef7288e2e384d453c','egg_deposition?id=Aerugoamnis_paulus',1426764908),('de50f6d7c095cba0991cf1edb49dc683','call_parameters?id=10',1426602247),('de57f6c84d435761ac4e86a73b65ee03','habitat_preference?id=9',1426602244),('debb768b723e673dea26d78c0ee22779','taxonomic_identy?id=9',1425372865),('def8ebc9a01dfc0ea75e4cd30c1ca854','vocal_sac_tympanum?id=A24',1426518798),('df42c6d4e9ee875ed9e5ffa798ed3f1a','head_characters?id=X15',1425557858),('df75a407da5d67adf6e69808876698f3','users?username=aaa&email=test%40test.com',1425394183),('dfdaaa07e57f7dda2734153f033b6bab','habitat_preference?id=10',1426602247),('e02238d61bf05e077eb6462f2396c979','habitat_preference?id=6',1426602237),('e0440ff456056ff66fb7a29e9b19f761','head_characters?id=66',1426505051),('e045b08b8d039c43203ee71c303f2c6e','misc?id=8',1426602243),('e05bda223903beae9118049b3e986f5b','colouration?id=Microhylidae_amiatoi',1426506167),('e06385de69e7bce975d5f6bc197d8154','bodysize?id=X291',1425563532),('e063ee33cfcf9e2c50b39969aa53a94d','misc?id=A26',1426520618),('e080e7ebe98dce49374a4fc9450c0fd0','taxonomic_identy?id=Scutellaria+parvula',1425312494),('e09ce7e096ff5191adc1b85046dba415','colouration?id=Rhacophoridae_appendiculatus',1426506158),('e1039a05a1ad19f175a00754c6bd51d1','iucn_threat_status?id=Odontophrynidae_americanus',1426506163),('e11d6deff5c1a14993aaabd0c43f7df1','habitat_preference?id=7',1426602240),('e11e369d760e5251af6354611172f3cb','call_parameters?id=Aerugoamnis_paulus',1426764909),('e121ffabb7b99f6f20eb582fb7531f20','taxonomic_identity?id=twr_afffh',1426513534),('e1442a08c5976e2e43bafb88e66b2ec8','colouration?id=Iris+douglasiana',1425313713),('e14ec0aff868665e2b61b05643994a6c','misc?id=Cardioglossa_elegans',1426764901),('e15fc1c4d3909851268060c5377851c5','habitat_preference?id=A26',1426518975),('e187765a998cd6e5d93b1c1b45ff0876','taxonomic_identy?id=fdsa_da',1426504813),('e19848b301198f2a5e57d6234306e8d8','hindlimb_characters?id=Mantellidae_eiselti',1426506164),('e1af7d42eaaa836902c9e4acb282a291','bodysize?id=Polemonium+reptans',1425312500),('e1dbfdeeb614524e145ea2768ef10a89','habitat_preference?id=442',1426505047),('e1dfbf7ace80a4fcd65070d648fa185e','call_parameters?id=A26',1426519931),('e201c7142f05c708846942cfb71942be','call_parameters?id=Microhylidae_amiatoi',1426506167),('e224adbed647ca0bdbb7784dd9c39402','misc?id=_',1426586394),('e33b71d126f995e561630003931f2c8b','misc?id=Anomocoela_paulus',1426506152),('e3b3c53d80b8302c9479de344fc1ad26','iucn_threat_status?id=Acris_crepitans',1426764911),('e3baf16f921806f1fff5859e7bb8dee5','distribution?id=A23',1426518098),('e3c60e6f6bf40347a5b0dc622bb239e5','head_characters?id=X19',1425557862),('e3f68efebf67614ce873ff600372bc09','head_characters?id=_',1426586392),('e4352ff9407fe0574f0e54c7c8774627','call_parameters?id=66',1426505052),('e44a896931cf4924a8cd7b6db2e6395d','hindlimb_characters?id=Acris_crepitans',1426764910),('e4c4d92f045e641888d201f827668f0f','head_characters?id=A30',1426518270),('e53f9feeea0a10e83c71c48b88ef21b3','habitat_preference?id=5',1426602235),('e57905c037181a67f2dd1439a308f0f2','misc?id=4',1426602233),('e5f2111625f36744388559e92b694ede','egg_deposition?id=A24',1426519477),('e5f9313eaf21e4bf7d58ff9b4120da60','forlimb_characters?id=8',1426602242),('e6a498f4b1fb396baf0f27d126529f38','distribution?id=X15',1425557858),('e6d1775f5bc6688c96f9f1475581de2e','distribution?id=X7',1425554280),('e6ff28bc66f0ae98c0cd25c4c0da22ac','colouration?id=Lupinus+succulentus',1425312488),('e7a4cfa2db14975c8191be2962ffdb13','calling_behaviour?id=_',1426586394),('e7e428b991ffbfa723ff14722a9221cd','taxonomic_identy?id=Dendropsophus_parviceps',1426506432),('e843340c50dd9f7dbcc1812cdbb02de1','forlimb_characters?id=X271',1425563531),('e8542797d139cc76a388783871652fa2','calling_behaviour?id=Hylidae_parviceps',1426506147),('e889a24f41f4cb954af59540750290fb','taxonomic_identy?id=zz_fa',1426505164),('e8920085548ee663f515cde2715bf3d3','taxonomic_identy?id=X16',1425557859),('e8f49fe53b16c2cbbf73b7f61a7e4199','egg_deposition?id=11',1426602249),('e9c3cb39941036a75103b253a4e1915a','taxonomic_identity?id=A23',1426518023),('e9cce6f77ef306094f2d8118e56f5278','calling_behaviour?id=Anomocoela_paulus',1426506152),('e9d5423b46a3fa15b32af113776082eb','taxonomic_identy?id=A24',1426501014),('ea099b88555186dce4faedccf79f2309','bodysize?id=_',1426586392),('ea16ea7b4d6e854984738790be683a51','distribution?id=A26',1426518099),('ea1bce8a7a1b7bcafbca7c816db13060','bodysize?id=Verbena+hastata',1425312498),('ea429095f889b1dd9f3f36147b9244cf','forlimb_characters?id=Kurixalus_appendiculatus',1426764912),('ea6fbae54e75a773238596c6078cb601','calling_behaviour?id=Kassi_senegalensis',1426764923),('eab1a6529c985a9124db3e759344daf5','taxonomic_identy?id=Mantellidae_eiselti',1426506175),('eb0c65600221a54e84ee85dce34abd89','egg_deposition?id=A28',1426519477),('eb0eb5e0c848acfa5f1bc346add223cf','call_parameters?id=Gerrothorax_pulcherrimus',1426764905),('eb1cbe9774ea6730574b15929ea8feb5','taxonomic_identy?id=Blephilia+hirsuta',1425312481),('eb439a658cb675a812ca8ce8c9168b0a','egg_deposition?id=_',1426586393),('eb4622122fc9b5ee3ac2b303e7cd74c8','misc?id=Plagiosauridae_pulcherrimus',1426506149),('eb9d128c7e261aa4f24f792f071679bc','misc?id=11',1426602250),('ebab225ca641677fb5f05c2ce2931b4f','egg_deposition?id=Kassi_senegalensis',1426764923),('ebfe57b3d3508351f8dd5d3f9889a659','bodysize?id=Collinsia+sparsiflora',1425313702),('ec0489b11e45d647125021eacc4e9a6b','forlimb_characters?id=_',1426586392),('ec6d209d293dde3b5aa8efc96808b655','bodysize?id=Acris_crepitans',1426764910),('ec9729ba9fdb310b18b2e818e3ca2128','forlimb_characters?id=5',1426602234),('ecb22174b98415f78a034dd2d7860ba4','iucn_threat_status?id=A22',1426519613),('eccf9623fb932673996df05c64568786','distribution?id=Gerrothorax_pulcherrimus',1426764904),('ecec0f2354842ac67ffe8f615ecb04e2','misc?id=34',1426505045),('ed1a3354946861d0d273376ced24c53c','distribution?id=X21',1425557864),('ed31e24a53b630667bbbc0863732b0a0','bodysize?id=Symphyotrichum+oblongifolium',1425312498),('ed5596a61ef332fb0e9883939d02435d','bodysize?id=Gentianopsis+holopetala',1425312483),('ed8593b2e5ccbc6ffe0ba92f51bdb30c','dataface__htmlreports_reports?report_id=1',1426600931),('edbc9296bcd04951a35a81c2b01dc786','bodysize?id=312',1425308163),('ee29b232e6ad6c31cc2cb5b87c769d6a','taxonomic_identy?id=Gerrothorax_pulcherrimus',1426506433),('ee384d0e8835efb40d5027214400bf85','taxonomic_identy?id=Sisyrinchium+montanum',1425313730),('ef1548ddd6f990a6dd64e8a35a586039','bodysize?id=Salvia+columbariae',1425312502),('ef19ddaec3047bad612fdc8aa0e498b2','habitat_preference?id=A20',1426518974),('ef210e9689a9689b90e73be3bdb29449','head_characters?id=1',1426602223),('ef2209d4cc236bf5111600ca28729dc7','habitat_preference?id=Odontophrynus_americanus',1426764916),('ef5ccef916d26208b35b6bd5d26b069e','taxonomic_identy?id=312',1425308169),('efe79c0a58275e4fc7746024b5aadf29','taxonomic_identy?id=X14',1425555938),('f13cab37cf869f31967b77aec1c4b857','distribution?id=X29',1425558760),('f175056347be60d0659c589db74f61a1','users?UserID=11',1426515738),('f24e3943c58fd65fc0c132f5a45a4e88','head_characters?id=Acris_crepitans',1426764910),('f2eb37950f99f62f9d145cea5c363ef9','distribution?id=X26',1425558759),('f31ea1befffc07386759f8c17b07f04b','taxonomic_identy?id=Sisyrinchium+idahoense',1425312508),('f341e13d07980cce7babae0b520a9e5e','taxonomic_identy?id=38',1425372868),('f387004d06f06bd36b0ead4b023d506a','bodysize?id=Viola+palmata',1425312495),('f3a51c7d842815e3b5b0d466c6c116d9','distribution?id=X16',1425557859),('f3b4f5201deece903eb9436901fa49f1','colouration?id=Plagiosauridae_pulcherrimus',1426506148),('f3e2c708b54801a830e5ef6503836384','head_characters?id=X221',1425563525),('f40c308ea98add33596e23ca9ec7a170','colouration?id=Sisyrinchium+idahoense',1425312508),('f41332e83949b379a9a22354eb1c5322','call_parameters?id=Gephyromantis_eiselti',1426764919),('f42ed6efc7297e7f2293e2828fc2fec6','iucn_threat_status?id=Cardioglossa_elegans',1426764900),('f44aa6a2b42206e16b73768a43163e08','calling_behaviour?id=22',1426505050),('f56b667164476bfef89ac2b5ccc92b79','egg_deposition?id=3',1426602230),('f58035ada4ab9e2df0e200b5a63682a7','taxonomic_identy?id=X29',1425558766),('f5d77c191f8c10327d6d3b69ed96b7de','forlimb_characters?id=A30',1426518416),('f5f6a14d938bb9b05045a53c7231d024','bodysize?id=Gilia+clivorum',1425313692),('f60e9f0546fbad302c5fbe339f6dbbf7','taxonomic_identy?id=1001',1425551507),('f61954ba3d2541e4628cdc61ba5aaa86','head_characters?id=Gerrothorax_pulcherrimus',1426764904),('f635309b9a6f3ef63c7713adc9570ff2','habitat_preference?id=_',1426586393),('f68fc1ddd0aabc0f16b8f567ef14ebc4','misc?id=Odontophrynus_americanus',1426764917),('f6965b89778ee5edd81f3689eb4a14d3','taxonomic_identy?id=1002',1425551507),('f6f6673bc6b92785f5b807e7b6bd846a','taxonomic_identy?id=39',1425372868),('f6f99e01a157e765c9ceb2954d4bf315','taxonomic_identy?id=X7',1425554287),('f7d48118f1a7ac024ecb2a99aea31712','egg_deposition?id=A27',1426519477),('f8b12266d4956554085f3d3f94cbd251','hindlimb_characters?id=X241',1425563528),('f8b2d2b992c9c4bfc3a4a113b6c103c8','bodysize?id=Iris+douglasiana',1425313713),('f91d615b01e3c0e41bb8ab41e488f9d9','bodysize?id=10',1426602246),('f9297f3e1613756765756d8a3e63a423','taxonomic_identy?id=26',1425372867),('f9645256a25bed17ad21f745fabdcc5d','forlimb_characters?id=11',1426602249),('f9d332f33c6e55005b66a2a6718ca793','bodysize?id=Nemophila+pulchella+var.+pulchella',1425312481),('f9d65cd38b854e68493e2191158b19fa','egg_deposition?id=',1426585640),('fa107bdcd1afbf48cf5d8648a0ae4e73','misc?id=Acris_crepitans',1426764911),('fa204b97526a9e8cec38ee301c8260ee','bodysize?id=Linanthus+parryae',1425313680),('fb3f0f6e7d6fa51ca58e8bce49eec5ce','bodysize?id=Lupinus+albifrons',1425313683),('fb79c83a174cdba35db3e0153617e0fe','call_parameters?id=Hyperoliidae_senegalensis',1426506170),('fbcc25bb9e5457c8a7981eda296a9079','bodysize?id=Sisyrinchium+montanum',1425313708),('fc07c705149e443dffc568edf8ba32c5','taxonomic_identy?id=Hyperoliidae_senegalensis',1426506175),('fc75b2d5c62340b4dd60cd23f8b28e60','bodysize?id=Kurixalus_appendiculatus',1426764912),('fcbf47cf403a78131781f0e74b6fb11a','taxonomic_identity?id=1',1426764851),('fd1f0e4ea32ce1b710b91efc12214382','iucn_threat_status?id=Gerrothorax_pulcherrimus',1426764905),('fd495f868b5f9b66a927853d3864e898','bodysize?id=Gephyromantis_eiselti',1426764918),('fe28a97ec84d5618cf9ac2a2557fa95b','habitat_preference?id=Dendrobatidae_altamazonica',1426506160),('fe44a0dfe3cc4a55b139038670d591ff','taxonomic_identy?id=32',1425372867),('fe5d66c251776ace080a145052b4a8a7','head_characters?id=A22',1426518269),('fe646bdc481c040c2b34615c26f7fd01','head_characters?id=X16',1425557859),('fe7de23af550b941c1c8308d80185c51','misc?id=10',1426602248),('fe7eb1c089c078053af29d70a7a123f4','calling_behaviour?id=Gerrothorax_pulcherrimus',1426764906),('fe9271886588ac195a59baff18c890be','egg_deposition?id=A23',1426519477),('fefe47d4d5c8fc98f312e79743b82f23','taxonomic_identy?id=Lupinus+albifrons',1425313724),('ff5a8291ae44752d8b6cb62f6ce48e28','colouration?id=Odontophrynus_americanus',1426764917),('ff7d0efefc144aa15edb7aed08120a39','habitat_preference?id=Aerugoamnis_paulus',1426764908),('ff957dcbdf22f5759dce3e4f53a4a5f6','head_characters?id=8',1426602241),('ff9a4846f73327ba9b263db212b99101','head_characters?id=A26',1426518269),('ffaae0154962325611cba0c6901068e8','habitat_preference?id=Oreophryne_amiatoi',1426764921),('ffc3be1fb0cf16f04d420c50c97a6f0b','calling_behaviour?id=A29',1426520030);
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
INSERT INTO `dataface__version` VALUES (4166);
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
  CONSTRAINT `tax_dist_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES ('Acris_crepitans','North America',NULL,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus','North America',1,1,'continuos',NULL,NULL),('Ameerega_altamazonica','South America',NULL,NULL,NULL,NULL,NULL),('Cardioglossa_elegans','Africa',146696,NULL,'fragmented',270,1078),('Dendropsophus_parviceps','America',4478920,NULL,'continous',100,1300),('Gephyromantis_eiselti','Madagascar',NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus','Europe',NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis','Africa',NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus','South east Asia',NULL,NULL,NULL,NULL,NULL),('Odontophrynus_americanus','South America',NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi','South east Asia',NULL,NULL,NULL,NULL,NULL);
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
  `clutchsize_eggs_min` float DEFAULT NULL,
  `clutchsize_eggs_max` float DEFAULT NULL,
  `clutchsize_eggs_class` varchar(45) DEFAULT NULL,
  `clutchsize_method` varchar(45) DEFAULT NULL,
  `egg_diameter_without_jelly` float DEFAULT NULL,
  `egg_diameter_with_jelly` float DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `clutch_structure` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `egg_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_deposition`
--

LOCK TABLES `egg_deposition` WRITE;
/*!40000 ALTER TABLE `egg_deposition` DISABLE KEYS */;
INSERT INTO `egg_deposition` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Cardioglossa_elegans',40,69,NULL,'dissection',2.1,NULL,'terrestrial','Aquatic foam nest',NULL),('Dendropsophus_parviceps',150,290,NULL,'observation',1.8,NULL,'aquatic','film_on_water',NULL),('Gephyromantis_eiselti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `taxa_hindlimb_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forlimb_characters`
--

LOCK TABLES `forlimb_characters` WRITE;
/*!40000 ALTER TABLE `forlimb_characters` DISABLE KEYS */;
INSERT INTO `forlimb_characters` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',NULL,4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Cardioglossa_elegans',4.2,3.1,3.3,2.2,1.1,1.2,1.2,1.3,'round','no','yes','no','no','no','yes'),('Dendropsophus_parviceps',4.2,3.1,3.3,2.2,1.1,1.2,1.2,1.3,'round','no','yes','no','no','no','yes'),('Gephyromantis_eiselti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `habitat_pre_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat_preference`
--

LOCK TABLES `habitat_preference` WRITE;
/*!40000 ALTER TABLE `habitat_preference` DISABLE KEYS */;
INSERT INTO `habitat_preference` VALUES ('Acris_crepitans',NULL,NULL),('Aerugoamnis_paulus','Marsh/swamp',NULL),('Ameerega_altamazonica',NULL,NULL),('Cardioglossa_elegans','forest','litter'),('Dendropsophus_parviceps','savan','semi-arboreal'),('Gephyromantis_eiselti','forest',NULL),('Gerrothorax_pulcherrimus',NULL,'aquatic'),('Kassi_senegalensis','grassland','terrestrial'),('Kurixalus_appendiculatus',NULL,NULL),('Odontophrynus_americanus',NULL,NULL),('Oreophryne_amiatoi','forest',NULL);
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
  CONSTRAINT `tax_head_char_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_characters`
--

LOCK TABLES `head_characters` WRITE;
/*!40000 ALTER TABLE `head_characters` DISABLE KEYS */;
INSERT INTO `head_characters` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',6.6,7.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Cardioglossa_elegans',6.6,3.4,2.4,1.2,1.6,2,2,1.8,1.7,1.6,1.9,'oval','round','round',NULL,'elongate','elongate','round','round'),('Dendropsophus_parviceps',5.3,2.2,2.1,1.2,1.6,2,2,1.8,1.7,1.6,1.9,'oval','oval','round',NULL,'elongate','round','elongate','oval'),('Gephyromantis_eiselti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',56,120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `hindlim_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindlimb_characters`
--

LOCK TABLES `hindlimb_characters` WRITE;
/*!40000 ALTER TABLE `hindlimb_characters` DISABLE KEYS */;
INSERT INTO `hindlimb_characters` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Aerugoamnis_paulus',8.1,8.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Cardioglossa_elegans',5.2,5.4,3.4,3.9,4.1,1.2,1.3,1.5,1.6,1.7,'I1-2II1-2III1-2IV2-1V','yes','yes','no','no','yes'),('Dendropsophus_parviceps',5.2,5.4,3.4,3.9,4.1,1.2,1.3,1.5,1.6,1.7,'I1-2II1-2III1-2IV2-1V','yes','no','no','yes','yes'),('Gephyromantis_eiselti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Odontophrynus_americanus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `iucn_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iucn_threat_status`
--

LOCK TABLES `iucn_threat_status` WRITE;
/*!40000 ALTER TABLE `iucn_threat_status` DISABLE KEYS */;
INSERT INTO `iucn_threat_status` VALUES ('Acris_crepitans',NULL,NULL),('Aerugoamnis_paulus',NULL,NULL),('Ameerega_altamazonica',NULL,NULL),('Cardioglossa_elegans','least_concern',NULL),('Dendropsophus_parviceps','least_concern',NULL),('Gephyromantis_eiselti',NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL),('Kassi_senegalensis',NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL),('Odontophrynus_americanus',NULL,NULL),('Oreophryne_amiatoi',NULL,NULL);
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
  `reproductive_mode` varchar(45) DEFAULT NULL,
  `tadpole_habitat` varchar(45) DEFAULT NULL,
  `tadpole_feeding` varchar(45) DEFAULT NULL,
  `maternal_care` enum('yes','no') DEFAULT NULL,
  `maternal_care_details` varchar(150) DEFAULT NULL,
  `abundance` varchar(45) DEFAULT NULL,
  `stratigraphic_range` float DEFAULT NULL,
  `f_environment_type` varchar(45) DEFAULT NULL,
  `diet` varchar(45) DEFAULT NULL,
  `climate` varchar(45) DEFAULT NULL,
  `holotype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `misc_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc`
--

LOCK TABLES `misc` WRITE;
/*!40000 ALTER TABLE `misc` DISABLE KEYS */;
INSERT INTO `misc` VALUES ('Acris_crepitans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'whole individual'),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL,NULL,NULL,'rare',1,'floodplain',NULL,NULL,'articulated skeleton'),('Ameerega_altamazonica','day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'whole individual'),('Cardioglossa_elegans','night','exotrophic tadpoles','Lentic','Suctorial','no',NULL,'frequent',1,NULL,'insectivor',NULL,'whole individual'),('Dendropsophus_parviceps','night','ovoviviparous','Lotic','suspension feeder','no',NULL,'rare',1,NULL,'insectivor',NULL,'whole individual'),('Gephyromantis_eiselti','day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL,NULL,'frequent',34,'floodplain','carnivore',NULL,'skull'),('Kassi_senegalensis','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Kurixalus_appendiculatus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'whole individual'),('Odontophrynus_americanus','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Oreophryne_amiatoi','night',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `misc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomic_identity`
--

DROP TABLE IF EXISTS `taxonomic_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomic_identity` (
  `id` varchar(100) NOT NULL,
  `Order` varchar(100) DEFAULT NULL,
  `Family` varchar(100) DEFAULT NULL,
  `Genus` varchar(100) DEFAULT NULL,
  `Species` varchar(100) DEFAULT NULL,
  `Tax_authority` varchar(100) DEFAULT NULL,
  `imageurl` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomic_identity`
--

LOCK TABLES `taxonomic_identity` WRITE;
/*!40000 ALTER TABLE `taxonomic_identity` DISABLE KEYS */;
INSERT INTO `taxonomic_identity` VALUES ('Acris_crepitans','Anura','Hylidae','Acris','crepitans','Baired, 1854','http://ak2.picdn.net/shutterstock/videos/2389643/preview/stock-footage-short-headed-treefrog-dendropsophus-parviceps-male-calling-above-a-rainforest-pond.jpg'),('Aerugoamnis_paulus','Anura','Anomocoela','Aerugoamnis','paulus','Henrici, Báez & Grande, 2013','http://bvi.rusf.ru/taksa/i0062/0062616.jpg'),('Ameerega_altamazonica','Anura','Dendrobatidae','Ameerega','altamazonica','Twomey & Brown, 2008','http://upload.wikimedia.org/wikipedia/commons/4/41/Gerrothorax_BW.jpg'),('Cardioglossa_elegans','Anura','Arthroleptidae','Cardioglossa','elegans','Boulenger, 1906','http://www.virginiaherpetologicalsociety.com/amphibians/frogsandtoads/eastern-cricket-frog/Acris%20crepitans2%20Pittsylvania%20Co.jpg'),('Dendropsophus_parviceps','Anura','Hylidae','Dendropsophus','parviceps','Boulenger, 1882','http://blogs.scientificamerican.com/tetrapod-zoology/files/2014/12/Henrici-et-al-2013-Aerugoamnis-350-px-tiny-Dec-2014-Tetrapod-Zoology.jpg'),('Gephyromantis_eiselti','Anura','Mantellidae','Gephyromantis','eiselti','Guibé, 1975','http://www.herpnation.com/wp-content/uploads/2013/09/Kurixalus-appendiculatus.jpg'),('Gerrothorax_pulcherrimus','Temnospondyli','Plagiosauridae','Gerrothorax','pulcherrimus','Fraas, 1913','http://www.understoryenterprises.com/images/slider/Ameerega-altamazonica-juicungo1.gif'),('Kassi_senegalensis','Anura','Hyperoliidae','Kassi','senegalensis','Duméril & Bibron 1841',NULL),('Kurixalus_appendiculatus','Anura','Rhacophoridae','Kurixalus','appendiculatus','Günther, 1858','http://calphotos.berkeley.edu/imgs/512x768/1111_1111/1111/8104.jpeg'),('Odontophrynus_americanus','Anura','Odontophrynidae','Odontophrynus','americanus','Duméril & Bibron 1841',NULL),('Oreophryne_amiatoi','Anura','Microhylidae','Oreophryne','amiatoi','Kraus & Allison, 2009','http://upload.wikimedia.org/wikipedia/commons/0/0b/Odontophrynus_americanus.jpg');
/*!40000 ALTER TABLE `taxonomic_identity` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'admin','21232f297a57a5a743894a0e4a801fc3','ADMIN','test@test.com'),(10,'guest','084e0343a0486ff05530df6c705c8bb4','READ ONLY','test@gmail.com'),(11,'ad2','2e764a251bab1e0ad47b53acf87d29af','ADMIN','test@test.com'),(12,'ad2r','47bce5c74f589f4867dbd57e9ca9f808','OWNER','h.m.sergieh@gmail.com');
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
  CONSTRAINT `vocal_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocal_sac_tympanum`
--

LOCK TABLES `vocal_sac_tympanum` WRITE;
/*!40000 ALTER TABLE `vocal_sac_tympanum` DISABLE KEYS */;
INSERT INTO `vocal_sac_tympanum` VALUES ('Acris_crepitans','exterl','single subgular','strong','concealed',0.5),('Aerugoamnis_paulus',NULL,NULL,NULL,NULL,NULL),('Ameerega_altamazonica',NULL,'single subgular',NULL,'partly concealed',0.42),('Cardioglossa_elegans','exterl','paired_subgular','weak','absent',1.1),('Dendropsophus_parviceps','present','paired_lateral','strong','present',1.1),('Gephyromantis_eiselti',NULL,'single subgular',NULL,'visible',0.4),('Gerrothorax_pulcherrimus',NULL,NULL,NULL,NULL,NULL),('Kassi_senegalensis','exterl','single subgular','strong','concealed',0.6),('Kurixalus_appendiculatus','interl','single subgular','weak','visible',0.47),('Odontophrynus_americanus','interl','single subgular',NULL,'concealed',NULL),('Oreophryne_amiatoi',NULL,'single subgular',NULL,'visible',0.37);
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

-- Dump completed on 2015-03-19 13:54:37
