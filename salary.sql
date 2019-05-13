CREATE DATABASE  IF NOT EXISTS `salary` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `salary`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: salary
-- ------------------------------------------------------
-- Server version	8.0.13-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salary` (
  `idsalary` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'identity number',
  `who` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'name',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `org` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'organization, department,team',
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'what_type',
  `what` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `why` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'how to do ',
  `how` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `amount` decimal(65,2) NOT NULL COMMENT 'amount',
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive_md5` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idsalary`,`uuid`,`ID`),
  UNIQUE KEY `idsalary_UNIQUE` (`idsalary`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 11:46:39
