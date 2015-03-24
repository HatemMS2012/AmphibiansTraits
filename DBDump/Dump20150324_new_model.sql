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
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `taxa_body_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodysize`
--

LOCK TABLES `bodysize` WRITE;
/*!40000 ALTER TABLE `bodysize` DISABLE KEYS */;
INSERT INTO `bodysize` VALUES ('1',NULL,23.9,NULL,NULL,35.3,NULL,NULL,NULL),('10',NULL,25.2,NULL,NULL,NULL,NULL,NULL,NULL),('11',NULL,32.5,49,NULL,NULL,NULL,NULL,NULL),('2',NULL,18.3,NULL,NULL,26.1,NULL,NULL,NULL),('3',1000,3000,NULL,NULL,NULL,NULL,NULL,NULL),('4',19.3,19.3,NULL,NULL,NULL,NULL,NULL,NULL),('5',NULL,35,25.5,NULL,NULL,NULL,NULL,NULL),('6',NULL,37,33.5,NULL,NULL,NULL,NULL,NULL),('7',NULL,22.9,20.5,NULL,NULL,NULL,NULL,NULL),('8',NULL,45,70,NULL,NULL,NULL,NULL,NULL),('9',NULL,21.5,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `call_duration_max` float DEFAULT NULL,
  `call_duration_min` float DEFAULT NULL,
  `call_duration_mean` float DEFAULT NULL,
  `note_duration_max` float DEFAULT NULL,
  `note_duration_min` float DEFAULT NULL,
  `note_duration_mean` varchar(45) DEFAULT NULL,
  `call_guild` varchar(45) DEFAULT NULL,
  `min_frequency` float DEFAULT NULL,
  `max_frequency` float DEFAULT NULL,
  `dominant_frequency_modulation` float DEFAULT NULL,
  `category_dominant_frequency_modulation` varchar(45) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `call_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_parameters`
--

LOCK TABLES `call_parameters` WRITE;
/*!40000 ALTER TABLE `call_parameters` DISABLE KEYS */;
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
  `call_perch_hight_broad` varchar(45) DEFAULT NULL,
  `call_perch_hight_details` varchar(45) DEFAULT NULL,
  `to_water` varchar(45) DEFAULT NULL,
  `chorusing` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `rapids_or_waterfalls` varchar(25) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `calling_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calling_behaviour`
--

LOCK TABLES `calling_behaviour` WRITE;
/*!40000 ALTER TABLE `calling_behaviour` DISABLE KEYS */;
/*!40000 ALTER TABLE `calling_behaviour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `climate`
--

DROP TABLE IF EXISTS `climate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `climate` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `min_maximum_precipitation` float DEFAULT NULL,
  `max_maximum_precipitation` float DEFAULT NULL,
  `mean_maximum_precipitation` float DEFAULT NULL,
  `sd_maximum_precipitation` float DEFAULT NULL,
  `range_maximum_precipitation` float DEFAULT NULL,
  `sum_maximum_precipitation` float DEFAULT NULL,
  `min_minimum_precipitation` float DEFAULT NULL,
  `max_minimum_precipitation` float DEFAULT NULL,
  `mean_minimum_precipitation` float DEFAULT NULL,
  `sd_minimum_precipitation` float DEFAULT NULL,
  `range_minimum_precipitation` float DEFAULT NULL,
  `sum_minimum_precipitation` float DEFAULT NULL,
  `min_standard_deviation_precipitation` float DEFAULT NULL,
  `max_standard_deviation_precipitation` float DEFAULT NULL,
  `mean_standard_deviation_precipitation` float DEFAULT NULL,
  `sd_standard_deviation_precipitation` float DEFAULT NULL,
  `range_standard_deviation_precipitation` float DEFAULT NULL,
  `sum_standard_deviation_precipitation` float DEFAULT NULL,
  `min_sum_of_precipitation` float DEFAULT NULL,
  `max_sum_of_precipitation` float DEFAULT NULL,
  `mean_sum_of_precipitation` float DEFAULT NULL,
  `sd_sum_of_precipitation` float DEFAULT NULL,
  `range_sum_of_precipitation` float DEFAULT NULL,
  `sum_sum_of_precipitation` float DEFAULT NULL,
  `min_maximum_of_highest_temperatures` float DEFAULT NULL,
  `max_maximum_of_highest_temperatures` float DEFAULT NULL,
  `mean_maximum_of_highest_temperatures` float DEFAULT NULL,
  `sd_maximum_of_highest_temperatures` float DEFAULT NULL,
  `range_maximum_of_highest_temperatures` float DEFAULT NULL,
  `min_minimum_of_highest_temperatures` float DEFAULT NULL,
  `max_minimum_of_highest_temperatures` float DEFAULT NULL,
  `mean_minimum_of_highest_temperatures` float DEFAULT NULL,
  `sd_minimum_of_highest_temperatures` float DEFAULT NULL,
  `range_minimum_of_highest_temperatures` float DEFAULT NULL,
  `min_standard_deviation_of_highest_temperatures` float DEFAULT NULL,
  `max_standard_deviation_of_highest_temperatures` float DEFAULT NULL,
  `mean_standard_deviation_of_highest_temperatures` float DEFAULT NULL,
  `sd_standard_deviation_of_highest_temperatures` float DEFAULT NULL,
  `range_standard_deviation_of_highest_temperatures` float DEFAULT NULL,
  `mean_maximum_of_lowest_temperatures` float DEFAULT NULL,
  `sd_maximum_of_lowest_temperatures` float DEFAULT NULL,
  `range_maximum_of_lowest_temperatures` float DEFAULT NULL,
  `min_maximum_of_lowest_temperatures` float DEFAULT NULL,
  `max_maximum_of_lowest_temperatures` float DEFAULT NULL,
  `min_minimum_of_lowest_temperatures` float DEFAULT NULL,
  `mean_minimum_of_lowest_temperatures` float DEFAULT NULL,
  `sd_minimum_of_lowest_temperatures` float DEFAULT NULL,
  `range_minimum_of_lowest_temperatures` float DEFAULT NULL,
  `min_standard_deviation_of_lowest_temperatures` float DEFAULT NULL,
  `max_standard_deviation_of_lowest_temperatures` float DEFAULT NULL,
  `mean_standard_deviation_of_lowest_temperatures` float DEFAULT NULL,
  `sd_standard_deviation_of_lowest_temperatures` float DEFAULT NULL,
  `range_standard_deviation_of_lowest_temperatures` float DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `climateFK` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate`
--

LOCK TABLES `climate` WRITE;
/*!40000 ALTER TABLE `climate` DISABLE KEYS */;
/*!40000 ALTER TABLE `climate` ENABLE KEYS */;
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
  `sex_colour_dimorphism` varchar(5) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `color_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colouration`
--

LOCK TABLES `colouration` WRITE;
/*!40000 ALTER TABLE `colouration` DISABLE KEYS */;
INSERT INTO `colouration` VALUES ('1','stripes','aposematic','none','polymorph','NY',NULL),('10',NULL,NULL,NULL,NULL,NULL,NULL),('11',NULL,NULL,NULL,NULL,NULL,NULL),('2','points','aposematic','none','few','NY',NULL),('3',NULL,NULL,NULL,NULL,NULL,NULL),('4',NULL,NULL,NULL,NULL,NULL,NULL),('5',NULL,NULL,NULL,NULL,NULL,NULL),('6',NULL,NULL,NULL,NULL,NULL,NULL),('7',NULL,NULL,NULL,NULL,NULL,NULL),('8',NULL,NULL,NULL,NULL,NULL,NULL),('9',NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__htmlreports_reports`
--

LOCK TABLES `dataface__htmlreports_reports` WRITE;
/*!40000 ALTER TABLE `dataface__htmlreports_reports` DISABLE KEYS */;
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
INSERT INTO `dataface__mtimes` VALUES ('bodysize',1427208789),('calling_behaviour',1427204091),('call_parameters',1427203809),('climate',1427206430),('colouration',1427208812),('dataface__failed_logins',1427210913),('dataface__htmlreports_reports',1427196493),('dataface__modules',1427196493),('dataface__mtimes',1427196493),('dataface__preferences',1427196500),('dataface__record_mtimes',1427196500),('dataface__version',1427196488),('distribution',1427208768),('egg_deposition',1427203565),('forlimb_characters',1427210273),('habitat_preference',1427204529),('head_characters',1427203285),('hindlimb_characters',1427202756),('misc',1427204736),('reference',1427212148),('taxonomic_identity',1427211245),('users',1427211113),('user_tracking',1427212148);
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
INSERT INTO `dataface__record_mtimes` VALUES ('01ff33b25977bff9a68d0450f0f6c6a9','user_tracking?id=31&userid=hatem',1427208784),('022a54995b86ab68e7479af7c05ca799','user_tracking?id=13&userid=hatem',1427208761),('05449161427a265c0b19b34caa4be723','user_tracking?id=9&userid=hatem',1427208434),('064a09baeb5fb94e93a183c0e70be5ee','user_tracking?id=85&userid=hatem',1427204269),('081f2bc88d39371e85db9920c6ad1c64','user_tracking?id=43&userid=hatem',1427208807),('0966e621ce0944b86c633911dbd147fc','climate?id=4',1427206430),('09b163d3be513cb883478a0e8e690e01','user_tracking?id=55&userid=hatem',1427197528),('09b5d80acd8c7006ae1cc676c591f8c7','user_tracking?id=26&userid=hatem',1427208782),('0e4297b8c23c0689cd0fe331daf09694','distribution?id=3',1427208768),('112feae8bc7b55a00cc5067cf8ca17a3','climate?id=2',1427206429),('13760ee97c6c980bcccdba977940390f','user_tracking?id=11&userid=hatem',1427208435),('139b697e2838d252627c93ba0c7733c5','climate?id=3',1427206429),('14efe4797a46a6df69206300a1479d64','user_tracking?id=49&userid=hatem',1427197451),('17652611ad8881b41a3dece1fe4e856b','user_tracking?id=73&userid=hatem',1427199728),('1815aca83f809c7df06ef1714177814d','user_tracking?id=98&userid=hatem',1427206425),('1a995a47e7a791d83eb2c826362db6b2','user_tracking?id=23&userid=hatem',1427208765),('1afcb776c7c5ccae5e1e68bb2610cd2a','forlimb_characters?id=1',1427210273),('1b063e21de2540763617cb7e7ed73e96','user_tracking?id=37&userid=hatem',1427208803),('1be706f001b3b8d97323a37933d047e4','user_tracking?id=3&userid=hatem',1427208432),('1d37b25ff01b101d083e962595014c99','taxonomic_identity?id=9',1427208441),('1f0f620da0071f4f57d1a3621b798b4a','user_tracking?id=106&userid=hatem',1427207169),('20e8b448e14e45452c60002fc3f2b1c1','colouration?id=1',1427208811),('218df3519450819a0018769d1fc97800','forlimb_characters?id=6',1427199509),('24133b96a0dfaeb30633363ec05f386e','user_tracking?id=83&userid=hatem',1427204089),('26a7323a9d0794e30f70df483221e985','users?UserID=15',1427211113),('29e0c601e41468ad1178f9f9b65651f0','misc?id=3',1427204736),('2adbd1b48c745ae0352427aae80347d8','user_tracking?id=38&userid=hatem',1427208803),('2b6219830b332c72ee0e2de8bfdc18e0','user_tracking?id=8&userid=hatem',1427208434),('307de1cebfae8112e47d3c3dd71ec8d3','distribution?id=9',1427208768),('326701083a848139e21e646cb2d5c444','user_tracking?id=95&userid=hatem',1427206424),('32b0af0602cc5f28df1040abf3387ae3','user_tracking?id=99&userid=hatem',1427206425),('33ff8548c44c12f4e5c0b3d4aa955586','user_tracking?id=89&userid=hatem',1427205105),('34a1d112358dc03f1bc32c8b35c00617','user_tracking?id=30&userid=hatem',1427208784),('35016e64f60d22c3e23a9c80a6545c9c','colouration?id=11',1427208811),('35e8c1288cad29ab94ed065a96baf244','user_tracking?id=40&userid=hatem',1427208805),('370ff085e704201d179061d0b4608b01','user_tracking?id=102&userid=hatem',1427206759),('3725640bc4983cbc206443b017f83473','user_tracking?id=39&userid=hatem',1427208804),('3bb4b64ae948908a6d8697b3432404bf','user_tracking?id=50&userid=hatem',1427197526),('3c5bb232f5fe5d7af90cd72ab3b5e55a','user_tracking?id=105&userid=hatem',1427207074),('3e5a534d8bd6780daf2e76850e51ed18','taxonomic_identity?id=2',1427208441),('3f53b2012be3d5ee07530620d22fc096','user_tracking?id=76&userid=hatem',1427203210),('3f9316f45b2251df2abee00bdce67a10','user_tracking?id=90&userid=hatem',1427205152),('3f950539e22fe62d8048c11d2f87dd0a','taxonomic_identity?id=6',1427208441),('3fc31ea5f866492a6a66f0ed1604d60e','user_tracking?id=48&userid=hatem',1427197451),('4176ab0c32a03597732a13fa202bc8ac','colouration?id=8',1427208812),('42270260fbf955872368ea962dad8612','user_tracking?id=77&userid=hatem',1427203282),('433a0c41caba9db51bdca76a7eef78d0','egg_deposition?id=10',1427203565),('446e7298580fd70543df32ce01312420','user_tracking?id=58&userid=hatem',1427197529),('45605439b97c673aaba00bfcd46780d7','distribution?id=2',1427208768),('46249796cfc8ab36c41cb1624152775d','taxonomic_identity?id=8',1427208441),('49cc01728cec6c6b677acac7cda6fe46','taxonomic_identity?id=4',1427208441),('4ae74f42b5a1c917f76bce06b7c9a9bb','user_tracking?id=46&userid=hatem',1427210273),('4b1ecb21095d34225047a7ebf3ffca9f','user_tracking?id=41&userid=hatem',1427208806),('4cb50da613bed43e6885870d8dd12f46','user_tracking?id=72&userid=hatem',1427199510),('4d427eca2dd3fe2946ced3bd233bc3f4','user_tracking?id=33&userid=hatem',1427208785),('4fd23509a0e1d4d196257d86a3c2632f','user_tracking?id=59&userid=hatem',1427197529),('500c71158229060b2a4e430c59263715','user_tracking?id=97&userid=hatem',1427206425),('50920fec4ea9e9765948f1d60e8efb5a','user_tracking?id=96&userid=hatem',1427206424),('517984cf2a123a107260e75c0bb8c8ac','colouration?id=2',1427208811),('549660eec2b90f6c11e8cb4a204bd46f','distribution?id=6',1427208768),('558e66a7f6441722ceed8ac1b4a36c77','distribution?id=4',1427208768),('55b4f0d1d77a3246882c1a79ab4f159a','user_tracking?id=4&userid=hatem',1427208433),('565683b87bd96ec37bfd8bba3bedc25e','bodysize?id=3',1427208789),('566266a45d498c470167a52cec8badab','user_tracking?id=5&userid=hatem',1427208433),('571191302902a7ff857a70a0ae2eb52d','user_tracking?id=50&userid=f',1427212148),('59298b726ae4b39ec25c91e110a6d96f','reference?referenceID=1',1427211429),('5aa95aca7c43478563348af02db6d3f0','user_tracking?id=54&userid=hatem',1427197528),('5b8f4f6cf3630dfc80792a5103993950','user_tracking?id=47&userid=hatem',1427197450),('5b91283828b97a9d634c3a8936b40aa3','user_tracking?id=14&userid=hatem',1427208761),('5eec097b53b5827ead33359541eeb9f2','user_tracking?id=16&userid=hatem',1427208762),('5f33134d42cdd475fbb1293388dce8d1','forlimb_characters?id=7',1427199509),('5f8a749b5c6e0c97ddcd9b8db53dbac3','user_tracking?id=107&userid=hatem',1427207328),('5fbaa4f6c18f0726e1edd803d85439a2','user_tracking?id=94&userid=hatem',1427206424),('5fd8958882dc56c574faf2b791df8535','bodysize?id=11',1427208788),('6141576bc1bc39f415aef27c5bf01012','user_tracking?id=42&userid=hatem',1427208806),('6165ec2c659f2d3332eecb1f5e2942a8','distribution?id=1',1427208767),('6292c6cec41e19c95706a58c7a36efaa','taxonomic_identity?id=10',1427211245),('6373ac598599e2084ccf4bb1376edd5a','user_tracking?id=21&userid=hatem',1427208764),('653a1f3658f8d0c357db3533acf8d2de','bodysize?id=7',1427208789),('66b7f0f00b716d17eec976c4c5bd6acc','climate?id=6',1427206430),('6708b94290303e1a1c95c6d8ffa38eb0','user_tracking?id=15&userid=hatem',1427208762),('67ae588fc848be3c357bc709f952e53e','user_tracking?id=51&userid=hatem',1427197527),('687317b97d334b39e28babfbe2ae03fb','user_tracking?id=29&userid=hatem',1427208783),('69bcc3d339c91de1224dfb7cc3651dbb','user_tracking?id=92&userid=hatem',1427205153),('6a29c094174bbaecdc94cfbf6c3b8543','user_tracking?id=45&userid=hatem',1427208808),('6a9167007b44127b89aacd23f73c2208','user_tracking?id=79&userid=hatem',1427203562),('6bc227f1bea4410ed835a80ceb68967d','user_tracking?id=70&userid=hatem',1427199509),('6bfe24c9971f44a26bcc10160a836108','distribution?id=10',1427208767),('6cce7936885d7ea283fed71bfa91c968','user_tracking?id=60&userid=hatem',1427197529),('6ce15b6b5fbc058724e254a147fcc285','bodysize?id=2',1427208789),('6f79a6bbaa5d95aa70b0cc123c81adf8','hindlimb_characters?id=3',1427202756),('70172b69ffc67572c815af381ca17f6b','bodysize?id=5',1427208789),('70a07abebddebde1f8376a232fc4123c','habitat_preference?id=4',1427204529),('71de299043cce27147785ab976332790','calling_behaviour?id=3',1427204092),('730053abc71da99b4c7caf96e4917248','user_tracking?id=10&userid=hatem',1427208435),('7b7d04481bcd01b73d6917f896387401','user_tracking?id=81&userid=hatem',1427203805),('8154217ece2b15ad0f5b9eb0738251c0','forlimb_characters?id=2',1427199734),('838fa96919106534863c287038960ae6','user_tracking?id=6&userid=hatem',1427208433),('843ecb22fb53d00960cc4b7958ba2e2e','user_tracking?id=18&userid=hatem',1427208763),('8491c795dc2f799ebf3ec8b836e1e632','taxonomic_identity?id=11',1427208440),('8517895ceb410e52274a7797c847a82e','user_tracking?id=52&userid=hatem',1427197527),('85b19ed31734649640a82a0ab7fe36d5','user_tracking?id=35&userid=hatem',1427208802),('863d468a30de944357c87c44afc501e3','colouration?id=4',1427208812),('8a3056007f704b044d9255dbd16dd4f9','user_tracking?id=24&userid=hatem',1427208782),('8aaef2d1bb056d98f2c3e029b78c7cdc','user_tracking?id=47&userid=h',1427211245),('8ba02789ece08af060bf2da212178c9d','user_tracking?id=63&userid=hatem',1427199506),('8c9224cbfbc8261e3ad26541f8eeb9ab','user_tracking?id=74&userid=hatem',1427202722),('8d10a07ab90648ae2a27948d334936c4','user_tracking?id=80&userid=hatem',1427203775),('8d965eef299667b26461ade2005b6a6a','user_tracking?id=12&userid=hatem',1427208435),('8e24b1a2941b2093342de0547f86049b','user_tracking?id=68&userid=hatem',1427199508),('8ebb9f75310da3753e64512a982bcc77','colouration?id=6',1427208812),('8f74eb9007daa1821558a12e4aae8f6a','taxonomic_identity?id=7',1427208441),('9167877b61de2349ef6a15797db14a57','user_tracking?id=87&userid=hatem',1427204709),('9294b0c00810419c16bb21ab1aa5398d','user_tracking?id=28&userid=hatem',1427208783),('96eb8262a43bb8c34c7927ae293d4f70','bodysize?id=8',1427208789),('9768ddb5a989c6b5ac95d5a5d0e0f477','distribution?id=7',1427208768),('97e021f6c5501486a49fe60ca78842da','forlimb_characters?id=4',1427199508),('9b6aa369093c952650df722f202d57a6','user_tracking?id=32&userid=hatem',1427208784),('9f9fe639780bcad9864e0e75d3ffc7bb','user_tracking?id=22&userid=hatem',1427208765),('9fea8438386235b9e7b98d1a51201b9a','user_tracking?id=108&userid=hatem',1427207343),('a0edaf0ce441565880e1180ac753723d','user_tracking?id=17&userid=hatem',1427208762),('a25fe7943a230e806f441ac1b199c324','user_tracking?id=100&userid=hatem',1427206608),('a2a0aa875887b5a7353ddd93f8682059','reference?ReferenceID=1',1427206707),('a2b1f048e67b57b3b20685a5df29fe01','climate?id=5',1427206429),('a3b1302fac92baa8bc798dab1c6baa87','distribution?id=8',1427208768),('a3bc08e064c82a1b16be58653f5c7c25','user_tracking?id=20&userid=hatem',1427208763),('a4827f9116c673c4dd4c49533d52b094','call_parameters?id=3',1427203809),('a4c9f48f82cedd50352ca29c19333e76','reference?ReferenceID=3',1427205156),('a5091fe5cae8e819fd65625c1075d9fb','distribution?id=11',1427208767),('a5f98ff542ab51cad323f32ec8e7096c','user_tracking?id=56&userid=hatem',1427197528),('a60e6410b832d0ca8fe12dc44849992c','colouration?id=10',1427208811),('a73c2bb562541ed3ec0932edcee82e23','user_tracking?id=69&userid=hatem',1427199509),('a998c0fb5a249c79ab75536e42e84d41','user_tracking?id=65&userid=hatem',1427199507),('add36816c79db288d550ccbb92b11ea8','bodysize?id=6',1427208789),('ae58930435ae221b331037bee68d62c7','user_tracking?id=84&userid=hatem',1427204247),('af4275d4ab78cca19ce871e0cc0f9734','head_characters?id=5',1427203285),('b0ffea57d8d4af0f4ccbf2d65d26cd07','user_tracking?id=53&userid=hatem',1427197527),('b2304c65fd86a19d323c529e20885538','colouration?id=5',1427208812),('b245413c4dd296b75609adb69d3259c3','hindlimb_characters?id=1',1427202722),('b34fc906a106f3a9964826da443891cc','forlimb_characters?id=10',1427199506),('b40e461c9ceb6d305f6e0202d4e78c4e','habitat_preference?id=11',1427204247),('b42f7a0ad4debe19ad9ef7edd9cab48f','user_tracking?id=49&userid=h',1427211437),('b62518933cf5538a359a26e79883c835','bodysize?id=1',1427208788),('b6873d043d24d9c50699b41f7a182c63','reference?ReferenceID=4412',1427207074),('b73646b0f380c3e07cbe749779513c9c','calling_behaviour?id=10',1427204048),('b798e9789cb47d376ffe816f24892a3c','user_tracking?id=25&userid=hatem',1427208782),('ba86f7b368eea496116849b68933dc3f','user_tracking?id=88&userid=hatem',1427204733),('bac02678394e78bf59eb2b2e3ba871e5','forlimb_characters?id=9',1427199510),('bf81df43d488198ff856183604c62b48','colouration?id=3',1427208812),('c0a206eaa0a1c05934a57c1ca29b7e0e','user_tracking?id=64&userid=hatem',1427199507),('c39f79e3e2547b750f0689b0b98a3383','user_tracking?id=82&userid=hatem',1427204047),('c4f9ac87b7939e5a7e08519e9e63ea4b','user_tracking?id=2&userid=hatem',1427208432),('c5b3d282d8ae092af041437bfba0dc42','colouration?id=7',1427208812),('c6112ba48ce8784f8c7103c25e37411c','reference?ReferenceID=23',1427205156),('c6e3943a96b216311de702c3af6dfe80','taxonomic_identity?id=5',1427208441),('c7d86733d61db9d806d82321a063974b','user_tracking?id=1&userid=hatem',1427208393),('c7e47b0a02daedb555b8acda2d1e48ab','user_tracking?id=93&userid=hatem',1427206371),('c9db353c929d08f2f91596e66e91cb4f','taxonomic_identity?id=3',1427208441),('c9e3bc8976ff77eda58393a97cfe8e6b','colouration?id=9',1427208812),('cda5520486372a17a35acb5cd1dc3abb','user_tracking?id=101&userid=hatem',1427206707),('ce4c5c34c253ae7ca92b38e72c75093f','user_tracking?id=48&userid=h',1427211429),('cee75a4d4e7a73701d154c1f10fb7213','forlimb_characters?id=3',1427199508),('cfc3571247db4b6c7660feace3b27ae4','user_tracking?id=36&userid=hatem',1427208802),('d08bc919dae52b6df80b234f4f49f50f','user_tracking?id=34&userid=hatem',1427208785),('d0a2ee44eebef31a49da5331ae71c937','user_tracking?id=27&userid=hatem',1427208783),('d34acf6da44f1c544a34250d2c45ac04','user_tracking?id=44&userid=hatem',1427208808),('d361c62c266e1d7eceb0d2b9f64b9cb9','distribution?id=5',1427208768),('d47c4c32d5498121e423c60e6ba4a9a4','colouration?id=altamazonica_Acris',1427196528),('d4894c48124ef0a9218c7a07961412a8','user_tracking?id=19&userid=hatem',1427208763),('d4ef68181a578f45610acbcefa92929f','bodysize?id=4',1427208789),('d4f160aa512c9fb7a246a6a6fab45475','user_tracking?id=7&userid=hatem',1427208434),('d4f4f0e3ebd5a8b0cfa6ea770a6f8bc4','climate?id=11',1427206371),('d5b5d521fb0023b02283739f4681af79','user_tracking?id=75&userid=hatem',1427202752),('d5c52a9a37d43ffa2b3e59c50fa9ec85','user_tracking?id=78&userid=hatem',1427203530),('d67c196156e02ae6d23c673d756a57a3','user_tracking?id=57&userid=hatem',1427197528),('d6d2678e2ffac6bfa362878a48af2af3','user_tracking?id=104&userid=hatem',1427206966),('d7b870fed39937d0d50e69735ea6def5','user_tracking?id=62&userid=hatem',1427199506),('d7f5c072b685b753e48122b816bab210','users?UserID=14',1427210932),('d954041a10136ce24ad74b2186535d58','reference?referenceID=2',1427211437),('dafb5e9dbfdb9795b7e3e30a8df8572b','bodysize?id=9',1427208789),('db2bd3901fe9466fc9c7bb24f618ef8c','egg_deposition?id=1',1427203530),('de1dcaef76b99ad82481d1272db79a4f','user_tracking?id=66&userid=hatem',1427199508),('de50f6d7c095cba0991cf1edb49dc683','call_parameters?id=10',1427203776),('decc633bef4f8110b470e48824a7f060','climate?id=1',1427206429),('defae827c04f3c5ff2b3e817d808d651','user_tracking?id=103&userid=hatem',1427206858),('e5b81fe9b4399a150a2e8e20be2cd1cd','user_tracking?id=86&userid=hatem',1427204526),('e5f9313eaf21e4bf7d58ff9b4120da60','forlimb_characters?id=8',1427199509),('e8377552693843c325f2e5fbea2ea3e7','reference?referenceID=af',1427207343),('eb9d128c7e261aa4f24f792f071679bc','misc?id=11',1427204709),('ec5aefa6cd579b78bb011feb6f7c8781','user_tracking?id=91&userid=hatem',1427205152),('ec9729ba9fdb310b18b2e818e3ca2128','forlimb_characters?id=5',1427199508),('ef210e9689a9689b90e73be3bdb29449','head_characters?id=1',1427203210),('f21f0f282f7254d771cdddf4ee728c58','user_tracking?id=61&userid=hatem',1427199389),('f3deec553ffb62f2ebe86926cdc6f91b','user_tracking?id=71&userid=hatem',1427199509),('f91d615b01e3c0e41bb8ab41e488f9d9','bodysize?id=10',1427208788),('f9645256a25bed17ad21f745fabdcc5d','forlimb_characters?id=11',1427199507),('fcbf47cf403a78131781f0e74b6fb11a','taxonomic_identity?id=1',1427208440),('fd78c541ee8c6a099ab923c35a58e980','user_tracking?id=67&userid=hatem',1427199508);
/*!40000 ALTER TABLE `dataface__record_mtimes` ENABLE KEYS */;
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
  `id` varchar(200) NOT NULL DEFAULT '',
  `Continent` varchar(45) DEFAULT NULL,
  `Range_size1` float DEFAULT NULL,
  `Range_size2` float DEFAULT NULL,
  `Range` varchar(45) DEFAULT NULL,
  `elevation_min` float DEFAULT NULL,
  `elevation_max` float DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  KEY `TAX_ID_DIST_FK_idx` (`id`),
  CONSTRAINT `dist_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES ('1','Africa',146696,NULL,'fragmented',270,1078,NULL),('10','South east Asia',NULL,NULL,NULL,NULL,NULL,NULL),('11','Africa',NULL,NULL,NULL,NULL,NULL,NULL),('2','America',4478920,NULL,'continous',100,1300,NULL),('3','Europe',NULL,NULL,NULL,NULL,NULL,NULL),('4','North America',1,1,'continuos',NULL,NULL,NULL),('5','North America',NULL,NULL,NULL,NULL,NULL,NULL),('6','South east Asia',NULL,NULL,NULL,NULL,NULL,NULL),('7','South America',NULL,NULL,NULL,NULL,NULL,NULL),('8','South America',NULL,NULL,NULL,NULL,NULL,NULL),('9','Madagascar',NULL,NULL,NULL,NULL,NULL,NULL);
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
  `method_clutch_eggs_min` varchar(45) DEFAULT NULL,
  `method_clutch_eggs_max` varchar(45) DEFAULT NULL,
  `eggs_class` varchar(45) DEFAULT NULL,
  `egg_diameter_without_jelly` float DEFAULT NULL,
  `egg_diameter_with_jelly` float DEFAULT NULL,
  `egg_deposition_broad` varchar(45) DEFAULT NULL,
  `egg_deposition_details` varchar(45) DEFAULT NULL,
  `clutch_structure` varchar(45) DEFAULT NULL,
  `reproductive_modes` varchar(45) DEFAULT NULL,
  `tadpole_habitat` varchar(45) DEFAULT NULL,
  `tadpole_feeding_mode` varchar(45) DEFAULT NULL,
  `maternal_care` varchar(5) DEFAULT NULL,
  `maternal_care_details` varchar(45) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `egg_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_deposition`
--

LOCK TABLES `egg_deposition` WRITE;
/*!40000 ALTER TABLE `egg_deposition` DISABLE KEYS */;
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
  `min_forelimb_length` float DEFAULT NULL,
  `max_forelimb_length` float DEFAULT NULL,
  `mean_forelimb_length` float DEFAULT NULL,
  `min_humerus_length` float DEFAULT NULL,
  `max_humerus_length` float DEFAULT NULL,
  `mean_humerus_length` float DEFAULT NULL,
  `min_hand_length` float DEFAULT NULL,
  `max_hand_length` float DEFAULT NULL,
  `mean_hand_length` float DEFAULT NULL,
  `min_first_finger_length` float DEFAULT NULL,
  `max_first_finger_length` float DEFAULT NULL,
  `mean_first_finger_length` float DEFAULT NULL,
  `min_second_finger_length` float DEFAULT NULL,
  `max_second_finger_length` float DEFAULT NULL,
  `mean_second_finger_length` float DEFAULT NULL,
  `min_third_finger_length` float DEFAULT NULL,
  `max_third_finger_length` float DEFAULT NULL,
  `mean_third_finger_length` float DEFAULT NULL,
  `min_forth_finger_length` float DEFAULT NULL,
  `max_forth_finger_length` float DEFAULT NULL,
  `mean_forth_finger_length` float DEFAULT NULL,
  `finger_disk` varchar(45) DEFAULT NULL,
  `dermal_fringe_along_finger` enum('yes','no') DEFAULT NULL,
  `lateral_dermal_fringe_on_finger` enum('yes','no') DEFAULT NULL,
  `webbing_on_finger` enum('yes','no') DEFAULT NULL,
  `inner_palmar_tubercle` enum('yes','no') DEFAULT NULL,
  `outer_plmar_tubercle` enum('yes','no') DEFAULT NULL,
  `supernumerary_tubercle_on_finger` enum('yes','no') DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `taxa_hindlimb_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forlimb_characters`
--

LOCK TABLES `forlimb_characters` WRITE;
/*!40000 ALTER TABLE `forlimb_characters` DISABLE KEYS */;
INSERT INTO `forlimb_characters` VALUES ('1',1,5,2,1,5,3,2,5,3,4,6,3,1,6,1,5,1,51,2,1,3,NULL,'yes','yes','yes','no','yes','yes',NULL);
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
  `f_environment_type` varchar(45) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `habitat_pre_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat_preference`
--

LOCK TABLES `habitat_preference` WRITE;
/*!40000 ALTER TABLE `habitat_preference` DISABLE KEYS */;
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
  `min_head_length` float DEFAULT NULL,
  `max_head_length` float DEFAULT NULL,
  `mean_head_length` float DEFAULT NULL,
  `min_head_width` float DEFAULT NULL,
  `max_head_width` float DEFAULT NULL,
  `mean_head_width` float DEFAULT NULL,
  `min_snout_length` float DEFAULT NULL,
  `max_snout_length` float DEFAULT NULL,
  `mean_snout_length` float DEFAULT NULL,
  `min_internarial_distance` float DEFAULT NULL,
  `max_internarial_distance` float DEFAULT NULL,
  `mean_internarial_distance` float DEFAULT NULL,
  `min_nostril_to_snout_distance` float DEFAULT NULL,
  `max_nostril_to_snout_distance` float DEFAULT NULL,
  `mean_nostril_to_snout_distance` float DEFAULT NULL,
  `min_eye_to_nostril` float DEFAULT NULL,
  `max_eye_to_nostril` float DEFAULT NULL,
  `mean_eye_to_nostril` float DEFAULT NULL,
  `min_tympanum_diameter` float DEFAULT NULL,
  `max_tympanum_diameter` float DEFAULT NULL,
  `mean_tympanum_diameter` float DEFAULT NULL,
  `min_eye_length` float DEFAULT NULL,
  `max_eye_length` float DEFAULT NULL,
  `mean_eye_length` float DEFAULT NULL,
  `min_distance_between_front_of_eyes` float DEFAULT NULL,
  `max_distance_between_front_of_eyes` float DEFAULT NULL,
  `mean_distance_between_front_of_eyes` float DEFAULT NULL,
  `min_distance_between_behind_of_eyes` float DEFAULT NULL,
  `max_distance_between_behind_of_eyes` float DEFAULT NULL,
  `mean_distance_between_behind_of_eyes` float DEFAULT NULL,
  `min_interorbital_distance` float DEFAULT NULL,
  `max_interorbital_distance` float DEFAULT NULL,
  `mean_interorbital_distance` float DEFAULT NULL,
  `snout_shape_lateral` varchar(45) DEFAULT NULL,
  `snout_shape_dorsal` varchar(45) DEFAULT NULL,
  `interorbital_shape` varchar(45) DEFAULT NULL,
  `parietal_eye` varchar(45) DEFAULT NULL,
  `loreal_region_shape` varchar(45) DEFAULT NULL,
  `canthus_rostralis` varchar(45) DEFAULT NULL,
  `nostril_shape` varchar(45) DEFAULT NULL,
  `tympanum_shape` varchar(45) DEFAULT NULL,
  `vocal_sac_manifestation` varchar(45) DEFAULT NULL,
  `vocal_sac_form` varchar(45) DEFAULT NULL,
  `vocal_sac_distensibility` varchar(45) DEFAULT NULL,
  `tympanum_covering` varchar(45) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `tax_head_char_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_characters`
--

LOCK TABLES `head_characters` WRITE;
/*!40000 ALTER TABLE `head_characters` DISABLE KEYS */;
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
  `min_femur_length` float DEFAULT NULL,
  `max_femur_length` float DEFAULT NULL,
  `mean_femur_length` float DEFAULT NULL,
  `min_tibia_shank_length` float DEFAULT NULL,
  `max_tibia_shank_length` float DEFAULT NULL,
  `mean_tibia_shank_length` float DEFAULT NULL,
  `min_foot_length` float DEFAULT NULL,
  `max_foot_length` float DEFAULT NULL,
  `mean_foot_length` float DEFAULT NULL,
  `min_total_foot_length` float DEFAULT NULL,
  `max_total_foot_length` float DEFAULT NULL,
  `medium_total_foot_length` float DEFAULT NULL,
  `min_first_toe_length` float DEFAULT NULL,
  `max_first_toe_length` float DEFAULT NULL,
  `mean_first_toe_length` float DEFAULT NULL,
  `min_second_toe_length` float DEFAULT NULL,
  `max_second_toe_length` float DEFAULT NULL,
  `mean_second_toe_length` float DEFAULT NULL,
  `min_third_toe_length` float DEFAULT NULL,
  `max_third_toe_length` float DEFAULT NULL,
  `mean_third_toe_length` float DEFAULT NULL,
  `min_fourth_toe_length` float DEFAULT NULL,
  `max_fourth_toe_length` float DEFAULT NULL,
  `mean_fourth_toe_length` float DEFAULT NULL,
  `min_fifth_toe_length` float DEFAULT NULL,
  `max_fifth_toe_length` float DEFAULT NULL,
  `mean_fifth_toe_length` float DEFAULT NULL,
  `webbing_on_toe` varchar(45) DEFAULT NULL,
  `dermal_fringe_along_toe` enum('yes','no') DEFAULT NULL,
  `lateral_dermal_fringe_on_toe` enum('yes','no') DEFAULT NULL,
  `supernumerary_tubercle_on_toes` enum('yes','no') DEFAULT NULL,
  `inner_metatarsal_tubercle` enum('yes','no') DEFAULT NULL,
  `outer_metatarsal_tubercle` enum('yes','no') DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `hindlim_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindlimb_characters`
--

LOCK TABLES `hindlimb_characters` WRITE;
/*!40000 ALTER TABLE `hindlimb_characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `hindlimb_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc`
--

DROP TABLE IF EXISTS `misc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `misc` (
  `id` varchar(100) NOT NULL,
  `holotype` varchar(45) DEFAULT NULL,
  `abundance` varchar(45) DEFAULT NULL,
  `stratigraphic_range` float DEFAULT NULL,
  `daily_activity` enum('day','night','both') DEFAULT NULL,
  `threat_category` varchar(45) DEFAULT NULL,
  `population_decline` varchar(45) DEFAULT NULL,
  `adult_diet` varchar(45) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  CONSTRAINT `misc_taxa_fk` FOREIGN KEY (`id`) REFERENCES `taxonomic_identity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc`
--

LOCK TABLES `misc` WRITE;
/*!40000 ALTER TABLE `misc` DISABLE KEYS */;
/*!40000 ALTER TABLE `misc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference`
--

DROP TABLE IF EXISTS `reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference` (
  `referenceID` varchar(45) NOT NULL,
  `PublicationType` varchar(45) DEFAULT NULL,
  `FullReference` varchar(300) DEFAULT NULL,
  `PrimaryTitle` varchar(150) DEFAULT NULL,
  `SecondaryTitle` varchar(150) DEFAULT NULL,
  `Pages` varchar(45) DEFAULT NULL,
  `PageStart` varchar(10) DEFAULT NULL,
  `PageEnd` varchar(10) DEFAULT NULL,
  `Volume` varchar(10) DEFAULT NULL,
  `Edition` varchar(10) DEFAULT NULL,
  `AuthorList` varchar(500) DEFAULT NULL,
  `DateCreated` varchar(45) DEFAULT NULL,
  `Language` varchar(45) DEFAULT NULL,
  `URL` varchar(150) DEFAULT NULL,
  `DOI` varchar(150) DEFAULT NULL,
  `LocalityOfPublisher` varchar(150) DEFAULT NULL,
  `EditorList` varchar(500) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`referenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
INSERT INTO `reference` VALUES ('','sdfsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `reference` ENABLE KEYS */;
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
  `referenceID` text,
  `imageurl` varchar(250) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomic_identity`
--

LOCK TABLES `taxonomic_identity` WRITE;
/*!40000 ALTER TABLE `taxonomic_identity` DISABLE KEYS */;
INSERT INTO `taxonomic_identity` VALUES ('1','Anura','Hylidae','Acris','crepitans','Baired, 1854',NULL,'http://www.virginiaherpetologicalsociety.com/amphibians/frogsandtoads/eastern-cricket-frog/Acris%20crepitans2%20Pittsylvania%20Co.jpg',NULL),('10','Anura_test','Anomocoela','Aerugoamnis','paulus','Henrici, BÃ¡ez & Grande, 2013',NULL,'http://blogs.scientificamerican.com/tetrapod-zoology/files/2014/12/Henrici-et-al-2013-Aerugoamnis-350-px-tiny-Dec-2014-Tetrapod-Zoology.jpg',NULL),('11','Anura','Dendrobatidae','Ameerega','altamazonica','Twomey & Brown, 2008',NULL,'http://www.understoryenterprises.com/images/slider/Ameerega-altamazonica-juicungo1.gif',NULL),('2','Anura','Arthroleptidae','Cardioglossa','elegans','Boulenger, 1906',NULL,'http://bvi.rusf.ru/taksa/i0062/0062616.jpg',NULL),('3','Anura','Hylidae','Dendropsophus','parviceps','Boulenger, 1882',NULL,'http://ak2.picdn.net/shutterstock/videos/2389643/preview/stock-footage-short-headed-treefrog-dendropsophus-parviceps-male-calling-above-a-rainforest-pond.jpg',NULL),('4','Anura','Mantellidae','Gephyromantis','eiselti','GuibÃ©, 1975',NULL,'http://calphotos.berkeley.edu/imgs/512x768/1111_1111/1111/8104.jpeg',NULL),('5','Temnospondyli','Plagiosauridae','Gerrothorax','pulcherrimus','Fraas, 1913',NULL,'http://upload.wikimedia.org/wikipedia/commons/4/41/Gerrothorax_BW.jpg',NULL),('6','Anura','Hyperoliidae','Kassi','senegalensis','DumÃ©ril & Bibron 1841',NULL,NULL,NULL),('7','Anura','Rhacophoridae','Kurixalus','appendiculatus','GÃ¼nther, 1858',NULL,'http://www.herpnation.com/wp-content/uploads/2013/09/Kurixalus-appendiculatus.jpg',NULL),('8','Anura','Odontophrynidae','Odontophrynus','americanus','DumÃ©ril & Bibron 1841',NULL,'http://upload.wikimedia.org/wikipedia/commons/0/0b/Odontophrynus_americanus.jpg',NULL),('9','Anura','Microhylidae','Oreophryne','amiatoi','Kraus & Allison, 2009',NULL,NULL,NULL);
/*!40000 ALTER TABLE `taxonomic_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tracking`
--

DROP TABLE IF EXISTS `user_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `taxon_identity_id` varchar(45) DEFAULT NULL,
  `bodysize_id` varchar(45) DEFAULT NULL,
  `distribution_id` varchar(45) DEFAULT NULL,
  `colouration_id` varchar(45) DEFAULT NULL,
  `head_char_id` varchar(45) DEFAULT NULL,
  `egg_char_id` varchar(45) DEFAULT NULL,
  `call_parameters_id` varchar(45) DEFAULT NULL,
  `calling_behaviour_id` varchar(45) DEFAULT NULL,
  `forlimb_char_id` varchar(45) DEFAULT NULL,
  `habitat_preference_id` varchar(45) DEFAULT NULL,
  `hindlimb_characters_id` varchar(45) DEFAULT NULL,
  `climate_id` varchar(45) DEFAULT NULL,
  `misc_id` varchar(45) DEFAULT NULL,
  `reference_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `userFK_idx` (`userid`),
  CONSTRAINT `userFK` FOREIGN KEY (`userid`) REFERENCES `users` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tracking`
--

LOCK TABLES `user_tracking` WRITE;
/*!40000 ALTER TABLE `user_tracking` DISABLE KEYS */;
INSERT INTO `user_tracking` VALUES (1,'hatem','INSERT','2015-03-24 14:46:33','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'hatem','UPDATE','2015-03-24 14:47:12','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'hatem','INSERT','2015-03-24 14:47:12','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'hatem','INSERT','2015-03-24 14:47:13','11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'hatem','INSERT','2015-03-24 14:47:13','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'hatem','INSERT','2015-03-24 14:47:13','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'hatem','INSERT','2015-03-24 14:47:14','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'hatem','INSERT','2015-03-24 14:47:14','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'hatem','INSERT','2015-03-24 14:47:14','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'hatem','INSERT','2015-03-24 14:47:15','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'hatem','INSERT','2015-03-24 14:47:15','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'hatem','INSERT','2015-03-24 14:47:15','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'hatem','INSERT','2015-03-24 14:52:41',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'hatem','INSERT','2015-03-24 14:52:41',NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'hatem','INSERT','2015-03-24 14:52:42',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'hatem','INSERT','2015-03-24 14:52:42',NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'hatem','INSERT','2015-03-24 14:52:42',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'hatem','INSERT','2015-03-24 14:52:43',NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'hatem','INSERT','2015-03-24 14:52:43',NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'hatem','INSERT','2015-03-24 14:52:43',NULL,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'hatem','INSERT','2015-03-24 14:52:44',NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'hatem','INSERT','2015-03-24 14:52:44',NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'hatem','INSERT','2015-03-24 14:52:45',NULL,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'hatem','INSERT','2015-03-24 14:53:01',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'hatem','INSERT','2015-03-24 14:53:02',NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'hatem','INSERT','2015-03-24 14:53:02',NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'hatem','INSERT','2015-03-24 14:53:03',NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'hatem','INSERT','2015-03-24 14:53:03',NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'hatem','INSERT','2015-03-24 14:53:03',NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'hatem','INSERT','2015-03-24 14:53:04',NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'hatem','INSERT','2015-03-24 14:53:04',NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'hatem','INSERT','2015-03-24 14:53:04',NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'hatem','INSERT','2015-03-24 14:53:04',NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'hatem','INSERT','2015-03-24 14:53:05',NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'hatem','INSERT','2015-03-24 14:53:21',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'hatem','INSERT','2015-03-24 14:53:22',NULL,NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'hatem','INSERT','2015-03-24 14:53:23',NULL,NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'hatem','INSERT','2015-03-24 14:53:23',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'hatem','INSERT','2015-03-24 14:53:24',NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'hatem','INSERT','2015-03-24 14:53:25',NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'hatem','INSERT','2015-03-24 14:53:25',NULL,NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'hatem','INSERT','2015-03-24 14:53:26',NULL,NULL,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'hatem','INSERT','2015-03-24 14:53:27',NULL,NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'hatem','INSERT','2015-03-24 14:53:27',NULL,NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'hatem','INSERT','2015-03-24 14:53:28',NULL,NULL,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'hatem','INSERT','2015-03-24 15:17:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL),(47,'h','UPDATE','2015-03-24 15:34:05','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'h','INSERT','2015-03-24 15:37:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(49,'h','INSERT','2015-03-24 15:37:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2'),(50,'f','INSERT','2015-03-24 15:49:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_tracking` ENABLE KEYS */;
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
  `Role` enum('READ ONLY','NO ACCESS','ADMIN','OWNER','MANAGER','Test') DEFAULT 'READ ONLY',
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'admin','21232f297a57a5a743894a0e4a801fc3','MANAGER','test@test.com'),(10,'guest','084e0343a0486ff05530df6c705c8bb4','READ ONLY','test@gmail.com'),(11,'ad2','2e764a251bab1e0ad47b53acf87d29af','ADMIN','test@test.com'),(13,'hatem','d5fec5a849d7b69ad9aecc096949cc62','MANAGER','h.m.sergieh@gmail.com'),(14,'f','8fa14cdd754f91cc6554c9e71929cce7','ADMIN','test@test.com'),(15,'h','81dc9bdb52d04dc20036dbd8313ed055','ADMIN','test@test.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-24 17:02:37
