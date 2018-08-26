CREATE DATABASE  IF NOT EXISTS `reservoir` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reservoir`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: reservoir
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
-- Table structure for table `hydrological`
--

DROP TABLE IF EXISTS `hydrological`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydrological` (
  `idhydrological` int(11) NOT NULL,
  `uuid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `zone` varchar(45) NOT NULL COMMENT 'Upstream, midstream, downstream\n',
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `inspector` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL DEFAULT 'Red-Arrow',
  `runoff` int(11) DEFAULT NULL COMMENT 'volume of runoff  m3/s\n',
  `sediment` int(11) DEFAULT NULL COMMENT 'Sediment concentration g/m3',
  `high` int(11) DEFAULT NULL COMMENT 'high water level',
  `lowest` int(11) DEFAULT NULL COMMENT 'lowest water level',
  `current` int(11) DEFAULT NULL COMMENT 'current water level /m',
  `flow_high` int(11) DEFAULT NULL COMMENT 'high flow velocity ,m3/s',
  `flow_low` int(11) DEFAULT NULL COMMENT 'low flow velocity ,m3/s',
  `flow_current` int(11) DEFAULT NULL COMMENT 'current flow velocity ,m3/s',
  `ice` varchar(45) NOT NULL DEFAULT 'none' COMMENT 'Is there ice?\n',
  `elevation` decimal(10,5) DEFAULT NULL,
  `weather` varchar(200) DEFAULT NULL,
  `rainfall` int(11) DEFAULT NULL COMMENT 'mm millimeter',
  `status` varchar(45) NOT NULL DEFAULT 'norma',
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idhydrological`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Hydrological history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydrological`
--

LOCK TABLES `hydrological` WRITE;
/*!40000 ALTER TABLE `hydrological` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydrological` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservior`
--

DROP TABLE IF EXISTS `reservior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservior` (
  `idreservior` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `longitude` decimal(10,7) NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `life` int(11) NOT NULL DEFAULT '0' COMMENT 'design life',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'record time default =now()',
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `end` datetime NOT NULL COMMENT 'end=start+life',
  `river_in` text NOT NULL,
  `river_out` text NOT NULL,
  `elevation` decimal(10,5) NOT NULL,
  `catchment` int(11) NOT NULL COMMENT 'catchment area KM2 /M2',
  `flood` int(11) NOT NULL COMMENT 'flood discharge area',
  `flow_max` int(11) DEFAULT NULL COMMENT 'flood flow_max m3/s',
  `total` bigint(20) NOT NULL COMMENT 'Total storage capacity M3',
  `valid` bigint(20) NOT NULL COMMENT 'valid storage capacity M3',
  `minimum` int(11) NOT NULL COMMENT 'Minimum storage capacity',
  `length` decimal(8,5) NOT NULL COMMENT 'dam Length, m',
  `width` decimal(8,5) NOT NULL COMMENT 'dam  width,m',
  `height` decimal(8,5) NOT NULL COMMENT 'dam height ,m',
  `spillway` varchar(45) NOT NULL DEFAULT 'exist' COMMENT 'null ,exist,not exist',
  `spillway_flow` int(11) NOT NULL COMMENT 'spillway_flow m3/s',
  `power` bigint(20) NOT NULL DEFAULT '0' COMMENT 'generating capacity /Power generation',
  `constructor` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL COMMENT 'constructor contact',
  `author` varchar(45) NOT NULL DEFAULT 'Red-Arrow' COMMENT 'the record author ',
  `owner` varchar(100) NOT NULL COMMENT 'Reservoir owner, manager',
  `manager` varchar(100) NOT NULL,
  `dispatcher` varchar(200) NOT NULL COMMENT 'dispatcher contact information',
  `satus` varchar(45) NOT NULL DEFAULT 'normal',
  `remark` text,
  PRIMARY KEY (`idreservior`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Water reservoir';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservior`
--

LOCK TABLES `reservior` WRITE;
/*!40000 ALTER TABLE `reservior` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservior` ENABLE KEYS */;
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
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
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

-- Dump completed on 2018-08-26 17:26:59
