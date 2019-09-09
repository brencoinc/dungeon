-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

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
-- Table structure for table `cid_track`
--

DROP TABLE IF EXISTS `cid_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cid_track` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) NOT NULL,
  `block` tinyint(1) NOT NULL DEFAULT '0',
  `last_seen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cid_track`
--

LOCK TABLES `cid_track` WRITE;
/*!40000 ALTER TABLE `cid_track` DISABLE KEYS */;
INSERT INTO `cid_track` VALUES (15,'5029948702',1,'2019-05-20 18:08:15'),(16,'4012944086',1,'2019-05-26 12:35:42'),(17,'4018467205',1,'2019-05-27 17:44:07');
/*!40000 ALTER TABLE `cid_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `monster_key` int(2) DEFAULT NULL,
  `monster_health` int(3) DEFAULT '0',
  `monster_attack` int(3) DEFAULT '0',
  `monster_agil` int(3) DEFAULT '0',
  `monster_name` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `monster_poison` varchar(14) COLLATE latin1_bin DEFAULT '0',
  `monster_points` int(3) DEFAULT '0',
  `monster_level` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
INSERT INTO `monster` VALUES (1,1,20,10,5,'tiny','0',10,1),(2,2,100,100,10,'Bruiser','0',30,2),(3,3,20,5,200,'Stinky','100-2-20',10,3),(4,4,20,10,5,'slime','0',10,1),(5,5,10,1,1,'Test','0',1,4);
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
  `thing_key` varchar(9) DEFAULT NULL,
  `mapno` int(3) NOT NULL DEFAULT '0',
  `random_lvl` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movement`
--

LOCK TABLES `movement` WRITE;
/*!40000 ALTER TABLE `movement` DISABLE KEYS */;
INSERT INTO `movement` VALUES (18,16,3,'ns',0,0,0,0,NULL,1,1),(19,15,3,'ns',0,0,0,0,NULL,1,1),(20,14,4,'w',0,0,0,0,NULL,1,1),(21,14,3,'nes',0,0,0,0,NULL,1,1),(22,13,3,'ns',0,0,0,0,NULL,1,1),(23,12,3,'nw',0,0,0,0,NULL,1,1),(24,12,2,'esw',0,0,0,0,NULL,1,1),(25,11,2,'ns',0,0,0,0,NULL,1,1),(26,10,7,'w',0,0,0,0,NULL,1,1),(27,10,6,'es',0,0,0,0,NULL,1,1),(28,10,2,'ns',0,0,0,0,NULL,1,1),(29,9,6,'ns',0,0,0,0,NULL,1,1),(30,9,2,'ns',0,0,0,0,NULL,1,1),(31,8,7,'sw',0,0,0,0,NULL,1,1),(32,8,6,'new',0,0,0,0,NULL,1,1),(33,8,5,'esw',0,0,0,0,NULL,1,1),(34,8,4,'ew',0,0,0,0,NULL,1,1),(35,8,3,'ew',1,0,0,0,'d1',1,1),(36,8,2,'ne',0,0,0,0,NULL,1,1),(37,7,7,'ns',0,0,0,0,NULL,1,1),(38,7,5,'ns',0,0,0,0,NULL,1,1),(39,6,7,'ns',0,0,0,0,NULL,1,1),(40,6,5,'ns',0,0,0,0,NULL,1,1),(41,5,7,'ns',1,0,0,0,'d1',1,1),(42,5,5,'ns',0,0,0,0,NULL,1,1),(43,4,7,'ns',0,0,0,0,NULL,1,1),(44,4,5,'ns',0,0,0,0,NULL,1,1),(45,3,7,'ns',0,0,0,0,NULL,1,1),(46,3,5,'ns',0,0,0,3,'t3',1,1),(47,3,3,'s',0,0,0,0,NULL,1,1),(48,2,7,'nw',0,0,0,0,'s1',1,1),(49,2,6,'ew',0,1,0,0,'m1^t2',1,1),(50,2,5,'nesw',0,0,0,0,NULL,1,1),(51,2,4,'ew',0,3,0,0,'m3',1,1),(52,2,3,'ne',0,0,0,0,NULL,1,1),(53,1,5,'n',0,0,0,0,'mapstart',1,1),(54,12,1,'es',0,0,0,0,NULL,1,1),(55,11,1,'ns',0,0,0,0,NULL,1,1),(56,10,1,'n',0,0,0,2,'t2',1,1),(58,17,3,'s',0,0,0,0,'z2',1,0),(59,1,1,'ne',0,0,0,0,'0',2,2),(60,1,2,'new',0,0,0,0,'0',2,2),(61,1,3,'nw',0,0,0,0,'0',2,2),(62,2,1,'nes',0,0,0,0,'0',2,2),(63,2,2,'nesw',0,0,0,0,'z1',2,2),(64,2,3,'nsw',0,0,0,0,'0',2,2),(65,3,1,'es',0,0,0,0,'0',2,2),(66,3,2,'esw',0,0,0,0,'0',2,2),(67,3,3,'sw',0,0,0,0,'m4',2,4);
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
  `items` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (28,'HHouse-x1234',329,'doombringer',100,60,0,4,210,10,'2019-07-29 08:23:50',NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandbox`
--

DROP TABLE IF EXISTS `sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandbox` (
  `bridgeno` int(11) NOT NULL AUTO_INCREMENT,
  `swing` tinyint(1) NOT NULL DEFAULT '0',
  `sound` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`bridgeno`),
  UNIQUE KEY `index_UNIQUE` (`bridgeno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandbox`
--

LOCK TABLES `sandbox` WRITE;
/*!40000 ALTER TABLE `sandbox` DISABLE KEYS */;
INSERT INTO `sandbox` VALUES (1,0,'creek');
/*!40000 ALTER TABLE `sandbox` ENABLE KEYS */;
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
  `tombstones` varchar(254) DEFAULT '0',
  `doors` varchar(45) DEFAULT '0',
  `traps` varchar(254) DEFAULT '0',
  `cleared_rooms` varchar(254) DEFAULT '0',
  `mapno` int(3) NOT NULL DEFAULT '1',
  `stepcount` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idsessions_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (24,'HHouse-x1234','1','2','0m2-x3y3m1-x4y2m1-x6y2','0m1-x7y5m1-x3y8','0m1-x5y2','0',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouse`
--

LOCK TABLES `storehouse` WRITE;
/*!40000 ALTER TABLE `storehouse` DISABLE KEYS */;
INSERT INTO `storehouse` VALUES (1,1,'item_torch','torch',10,'torch',1),(2,2,'item_salve','hero_health',10,'health',1),(3,3,'rusty_sword','weapon_mod',20,'weapon',1),(4,4,'item_key','doorkeys',1,'doorkeys',1),(5,5,'doombringer','weapon_mod',100,'weapon',4);
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
INSERT INTO `traps` VALUES (1,1,'floorspikes',10,0,10,1),(2,1,'pit',5,0,500,2),(3,1,'celing_collapse',3,100,9999,3);
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

-- Dump completed on 2019-09-09 15:46:21
