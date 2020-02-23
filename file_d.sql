CREATE DATABASE  IF NOT EXISTS `file` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `file`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: file
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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `idfile` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `name` varchar(450) NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'text' COMMENT 'what type',
  `md5` varchar(45) NOT NULL,
  `size` bigint(20) NOT NULL,
  `url` varchar(1000) NOT NULL COMMENT 'url path',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last time',
  `where` varchar(450) DEFAULT NULL COMMENT 'location information',
  `who` varchar(450) DEFAULT NULL,
  `what` varchar(450) DEFAULT NULL COMMENT 'what file description',
  `why` varchar(450) DEFAULT NULL,
  `how` varchar(450) DEFAULT NULL COMMENT 'how to use:like Open mode url',
  `status` varchar(45) NOT NULL DEFAULT 'normal',
  `priority` int(11) DEFAULT '0',
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idfile`,`uuid`,`name`,`type`,`md5`,`size`,`time`,`when`,`status`),
  UNIQUE KEY `idfile_UNIQUE` (`idfile`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infor`
--

DROP TABLE IF EXISTS `infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infor` (
  `idinfor` int(11) NOT NULL AUTO_INCREMENT,
  `where` text NOT NULL COMMENT 'where: the file URL path  ',
  `name` text NOT NULL COMMENT 'file name',
  `what` varchar(45) NOT NULL COMMENT 'what ,type,comment,',
  `who` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `depend_id` int(11) NOT NULL DEFAULT '0' COMMENT 'like project ID',
  `how` int(11) NOT NULL DEFAULT '0' COMMENT 'how long size',
  PRIMARY KEY (`idinfor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infor`
--

LOCK TABLES `infor` WRITE;
/*!40000 ALTER TABLE `infor` DISABLE KEYS */;
/*!40000 ALTER TABLE `infor` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-23 17:20:50
