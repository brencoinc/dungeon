-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Current Database: `asterisk`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `asterisk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `asterisk`;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `monster_key` int(2) DEFAULT NULL,
  `monster_health` int(2) DEFAULT NULL,
  `monster_attack` int(3) DEFAULT NULL,
  `monster_agil` int(3) DEFAULT NULL,
  `monster_name` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `monster_points` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
INSERT INTO `monster` VALUES (1,1,20,10,5,'tiny',10),(2,2,100,100,10,'Bruiser',30);
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movement`
--

DROP TABLE IF EXISTS `movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movement` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `yaxis` int(4) DEFAULT '1',
  `xaxis` int(4) DEFAULT '5',
  `paths` varchar(4) DEFAULT NULL,
  `doorway` int(1) DEFAULT '0',
  `monster_key` int(3) DEFAULT '0',
  `item` int(3) DEFAULT '0',
  `trap_key` int(3) DEFAULT '0',
  `thing_key` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movement`
--

LOCK TABLES `movement` WRITE;
/*!40000 ALTER TABLE `movement` DISABLE KEYS */;
INSERT INTO `movement` VALUES (18,16,3,'s',0,0,0,0,NULL),(19,15,3,'ns',0,0,0,0,NULL),(20,14,4,'w',0,0,0,0,NULL),(21,14,3,'nes',0,0,0,0,NULL),(22,13,3,'ns',0,0,0,0,NULL),(23,12,3,'nw',0,0,0,0,NULL),(24,12,2,'esw',0,0,0,0,NULL),(25,11,2,'ns',0,0,0,0,NULL),(26,10,7,'w',0,0,0,0,NULL),(27,10,6,'es',0,0,0,0,NULL),(28,10,2,'ns',0,0,0,0,NULL),(29,9,6,'ns',0,0,0,0,NULL),(30,9,2,'ns',0,0,0,0,NULL),(31,8,7,'sw',0,0,0,0,NULL),(32,8,6,'new',0,0,0,0,NULL),(33,8,5,'esw',0,0,0,0,NULL),(34,8,4,'ew',0,0,0,0,NULL),(35,8,3,'ew',0,0,0,0,NULL),(36,8,2,'ne',0,0,0,0,NULL),(37,7,7,'ns',0,0,0,0,NULL),(38,7,5,'ns',0,0,0,0,NULL),(39,6,7,'ns',0,0,0,0,NULL),(40,6,5,'ns',0,0,0,0,NULL),(41,5,7,'ns',0,0,0,0,NULL),(42,5,5,'ns',0,0,0,0,NULL),(43,4,7,'ns',0,0,0,0,NULL),(44,4,5,'ns',0,0,0,0,NULL),(45,3,7,'ns',0,0,0,0,NULL),(46,3,5,'ns',0,0,0,3,'t3'),(47,3,3,'s',0,0,0,0,NULL),(48,2,7,'nw',0,0,0,0,NULL),(49,2,6,'ew',0,1,0,0,'m1'),(50,2,5,'nesw',0,0,0,0,NULL),(51,2,4,'ew',0,1,0,0,'m1'),(52,2,3,'ne',0,0,0,0,NULL),(53,1,5,'n',0,0,0,0,NULL),(54,12,1,'es',0,0,0,0,NULL),(55,11,1,'ns',0,0,0,0,NULL),(56,10,1,'n',0,0,0,0,NULL);
/*!40000 ALTER TABLE `movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller_id` varchar(45) DEFAULT NULL,
  `hero_health` int(11) DEFAULT '100',
  `weapon_name` varchar(45) DEFAULT 'bent_spoon',
  `weapon_mod` int(3) DEFAULT '10',
  `hero_strength` int(3) DEFAULT '50',
  `torch` int(3) DEFAULT '0',
  `doorkeys` int(3) DEFAULT '0',
  `hero_agility` int(3) DEFAULT '10',
  `hero_luck` int(3) DEFAULT '10',
  `last_seen` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (9,'HHouse-x5555',100,'bent_spoon',10,50,0,0,10,10,'2017-04-27 13:41:24'),(11,'HHouse-x9999',80,'bent_spoon',10,50,0,0,10,10,'2017-05-02 08:47:29'),(14,'6176491391',140,'rusty_sword',20,70,30,2,30,50,'2017-04-13 15:52:12'),(18,'HHouse-x1234',5,'bent_spoon',50,50,10,1,20,10,'2017-04-27 15:46:13'),(19,'HHouse-x9876',199,'bent_spoon',10,50,10,0,21,10,'2017-08-07 15:20:38');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `caller_id` varchar(15) DEFAULT NULL,
  `gps_ypos` varchar(4) DEFAULT '01',
  `gps_xpos` varchar(4) DEFAULT '05',
  `tombstones` varchar(45) DEFAULT '0',
  `doors` varchar(45) DEFAULT '0',
  `traps` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idsessions_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (7,'HHouse-x5555','1','5','0','0','0'),(9,'HHouse-x9999','1','5','0','0','0'),(11,'6176491391','2','6','0','0','0'),(15,'HHouse-x1234','2','5','0','0','0'),(16,'HHouse-x9876','1','5','0','0','00x5y2');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouse`
--

DROP TABLE IF EXISTS `storehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storehouse` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `item_upc` int(3) NOT NULL DEFAULT '0',
  `item_name` varchar(45) DEFAULT NULL,
  `item_mod_name` varchar(45) DEFAULT NULL,
  `item_points` int(4) DEFAULT '0',
  `item_type` varchar(45) DEFAULT NULL,
  `item_level` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouse`
--

LOCK TABLES `storehouse` WRITE;
/*!40000 ALTER TABLE `storehouse` DISABLE KEYS */;
INSERT INTO `storehouse` VALUES (1,1,'item_torch','torch',10,'torch',1),(2,2,'item_salve','hero_health',10,'health',1),(3,3,'rusty_sword','weapon_mod',20,'weapon',1),(4,4,'item_key','doorkeys',1,'doorkeys',1);
/*!40000 ALTER TABLE `storehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traps`
--

DROP TABLE IF EXISTS `traps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trap_level` int(3) DEFAULT '0',
  `trap_name` varchar(45) DEFAULT '',
  `trap_agil` int(3) DEFAULT '0',
  `trap_strength` int(3) DEFAULT '0',
  `trap_damage` int(3) DEFAULT '0',
  `trap_type` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traps`
--

LOCK TABLES `traps` WRITE;
/*!40000 ALTER TABLE `traps` DISABLE KEYS */;
INSERT INTO `traps` VALUES (1,1,'floorspikes',10,0,10,1),(2,1,'pit',5,0,500,2),(3,1,'celing_collapse',3,100,500,3);
/*!40000 ALTER TABLE `traps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-07 16:33:38
