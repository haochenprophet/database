CREATE DATABASE  IF NOT EXISTS `radar` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `radar`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: radar
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `iddata` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `millisecond` int(11) NOT NULL DEFAULT '0',
  `microsecond` int(11) NOT NULL DEFAULT '0',
  `nanosecond` int(11) NOT NULL DEFAULT '0',
  `data` longblob COMMENT 'radar data form Radar information collection system\n',
  `data_type` varchar(45) NOT NULL DEFAULT 'General' COMMENT 'radar data type :General data,Meteorological data ,Flight control information,\n',
  `data_grade` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'Normal' COMMENT 'normal, error , ... ',
  `source_from` varchar(45) DEFAULT NULL COMMENT 'data come from like device ID,IP Addr,',
  `source_to` varchar(45) DEFAULT NULL COMMENT 'source from ,to ,source stream .',
  `location` varchar(60) NOT NULL DEFAULT '0,0,0' COMMENT 'like GPS, Coordinate System,Geographic coordinate system ,Projection coordinate system,''x,y,z-0,0,0''',
  `creator` varchar(45) DEFAULT NULL COMMENT 'data creator ',
  `remark` text,
  PRIMARY KEY (`iddata`),
  UNIQUE KEY `iddata_UNIQUE` (`iddata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(45) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','quanergy','website','http://quanergy.com/','img/quanergy.jpg','2018-02-09 15:39:26','normal','utf8',100,'china'),(2,'hunter','faselase','website','http://www.faselase.com/','img/faselase.png','2018-02-09 15:44:08','normal','utf8',99,'china'),(3,'hunter','ARC','website','http://advancedradarcompany.com/','img/arc.png','2018-02-09 15:49:01','normal','utf8',99,'china'),(4,'hunter','Velodyne','website','http://velodynelidar.com/','img/velodyne.jpg','2018-05-01 21:51:15','nomal','utf8',96,'china'),(5,'hunter','innoviz','website','https://innoviz.tech/','img/innoviz.jpg','2018-05-01 21:55:28','nomal','utf8',95,'china'),(6,'hunter','waymo','website','https://waymo.com/','img/waymo.jpg','2018-05-01 21:59:17','nomal','utf8',101,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 22:02:39
