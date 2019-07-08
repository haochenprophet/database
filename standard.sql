CREATE DATABASE  IF NOT EXISTS `standard` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `standard`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: standard
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
-- Table structure for table `authorize`
--

DROP TABLE IF EXISTS `authorize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorize` (
  `idauthorize` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idauthorize`,`name`),
  UNIQUE KEY `idauthorize_UNIQUE` (`idauthorize`),
  UNIQUE KEY `authorize_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorize`
--

LOCK TABLES `authorize` WRITE;
/*!40000 ALTER TABLE `authorize` DISABLE KEYS */;
INSERT INTO `authorize` VALUES (1,'approved','2019-07-08 12:16:35'),(2,'reject','2019-07-08 12:16:35'),(3,'transfer','2019-07-08 12:16:35');
/*!40000 ALTER TABLE `authorize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level` (
  `idlevel` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlevel`,`name`),
  UNIQUE KEY `idlevel_UNIQUE` (`idlevel`),
  UNIQUE KEY `level_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'All-Project','2019-07-08 12:00:17'),(2,'Hardware','2019-07-08 12:00:17'),(3,'Software','2019-07-08 12:00:17'),(4,'Project','2019-07-08 12:00:17'),(5,'Funtion','2019-07-08 12:00:17');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard`
--

DROP TABLE IF EXISTS `standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard` (
  `idstandard` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(300) DEFAULT NULL,
  `who` varchar(100) DEFAULT NULL,
  `owner` varchar(45) DEFAULT 'Hunter',
  `author` varchar(45) NOT NULL DEFAULT 'Hunter',
  `what` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `why` varchar(200) DEFAULT NULL,
  `how` varchar(45) DEFAULT NULL COMMENT 'how to do ,how about',
  `project` varchar(200) DEFAULT NULL,
  `function` varchar(200) DEFAULT NULL,
  `item` varchar(200) DEFAULT NULL,
  `design` varchar(300) DEFAULT NULL COMMENT 'hardware',
  `info` varchar(300) DEFAULT NULL COMMENT 'Software',
  `level` varchar(45) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `authotize` varchar(45) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL COMMENT 'url',
  `audio` varchar(200) DEFAULT NULL COMMENT 'url',
  `video` varchar(200) DEFAULT NULL COMMENT 'url',
  `file` varchar(300) DEFAULT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `file_md5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstandard`,`uuid`,`time`,`when`),
  UNIQUE KEY `idstandard_UNIQUE` (`idstandard`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='project[x]{function[x]{item[x]{design[x],software,}level}}remark';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard`
--

LOCK TABLES `standard` WRITE;
/*!40000 ALTER TABLE `standard` DISABLE KEYS */;
/*!40000 ALTER TABLE `standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`,`name`),
  UNIQUE KEY `idstatus_UNIQUE` (`idstatus`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Hardware','2019-07-08 11:15:19'),(2,'Firmware','2019-07-08 11:15:19'),(3,'Software','2019-07-08 11:15:19'),(4,'Test','2019-07-08 11:16:11');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what`
--

DROP TABLE IF EXISTS `what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `what` (
  `idwhat` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwhat`,`name`),
  UNIQUE KEY `idwhat_UNIQUE` (`idwhat`),
  UNIQUE KEY `what_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who`
--

DROP TABLE IF EXISTS `who`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `who` (
  `idwho` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) COLLATE utf8_bin NOT NULL,
  `name_en` varchar(45) COLLATE utf8_bin NOT NULL,
  `name_cn` varchar(45) COLLATE utf8_bin NOT NULL,
  `org` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'organization',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwho`,`ID`,`name_en`,`name_cn`),
  UNIQUE KEY `idwho_UNIQUE` (`idwho`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `name_en_UNIQUE` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who`
--

LOCK TABLES `who` WRITE;
/*!40000 ALTER TABLE `who` DISABLE KEYS */;
/*!40000 ALTER TABLE `who` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-08 12:48:20
