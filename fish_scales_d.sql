-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: fish_scales
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `idcontract` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idcontract`),
  UNIQUE KEY `idcontract_UNIQUE` (`idcontract`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contract：合约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractor`
--

DROP TABLE IF EXISTS `contractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractor` (
  `idcontractor` bigint(40) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'owner name',
  `id` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coordinate` varchar(45) DEFAULT NULL,
  `shape` varchar(45) DEFAULT NULL,
  `use` varchar(45) DEFAULT NULL COMMENT 'use as',
  `type` varchar(45) DEFAULT NULL COMMENT 'Land type:平，洼，山，水域，树林',
  `level` varchar(45) DEFAULT NULL,
  `worth` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `comm_number` varchar(45) DEFAULT NULL COMMENT 'communication number',
  PRIMARY KEY (`idcontractor`),
  UNIQUE KEY `idcontractor_UNIQUE` (`idcontractor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contracting rights 承包权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractor`
--

LOCK TABLES `contractor` WRITE;
/*!40000 ALTER TABLE `contractor` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise`
--

DROP TABLE IF EXISTS `franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise` (
  `idfranchise` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT 'owner name',
  `id` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coordinate` varchar(45) DEFAULT NULL,
  `shape` varchar(45) DEFAULT NULL,
  `use` varchar(45) DEFAULT NULL COMMENT 'use as',
  `type` varchar(45) DEFAULT NULL COMMENT 'Land type:平，洼，山，水域，树林',
  `level` varchar(45) DEFAULT NULL,
  `worth` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `comm_number` varchar(45) DEFAULT NULL COMMENT 'communication number',
  PRIMARY KEY (`idfranchise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='franchise: 经营权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise`
--

LOCK TABLES `franchise` WRITE;
/*!40000 ALTER TABLE `franchise` DISABLE KEYS */;
/*!40000 ALTER TABLE `franchise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `records` (
  `idrecords` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idrecords`),
  UNIQUE KEY `idrecords_UNIQUE` (`idrecords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Transfer records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-08 17:38:19
