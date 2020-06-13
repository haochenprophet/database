CREATE DATABASE  IF NOT EXISTS `solution` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `solution`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: solution
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
-- Table structure for table `solution`
--

DROP TABLE IF EXISTS `solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `solution` (
  `idsolution` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `what` varchar(200) NOT NULL COMMENT 'What''s the problem.',
  `why` varchar(1000) DEFAULT NULL COMMENT 'What is the cause of the problem',
  `when` datetime NOT NULL COMMENT 'When did the problem occur\n',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `where` varchar(1000) DEFAULT NULL COMMENT 'Where did the problem occur',
  `how` varchar(1000) DEFAULT NULL COMMENT 'How to solve',
  `who` varchar(450) DEFAULT NULL COMMENT 'Who solve',
  `author` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idsolution`,`uuid`,`time`,`what`,`when`,`status`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `idsolution_UNIQUE` (`idsolution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='solution';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution`
--

LOCK TABLES `solution` WRITE;
/*!40000 ALTER TABLE `solution` DISABLE KEYS */;
/*!40000 ALTER TABLE `solution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 20:07:34
