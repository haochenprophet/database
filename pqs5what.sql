CREATE DATABASE  IF NOT EXISTS `pqs5what` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pqs5what`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pqs5what
-- ------------------------------------------------------
-- Server version	8.0.0-dmr-log

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
-- Table structure for table `psq5what`
--

DROP TABLE IF EXISTS `psq5what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psq5what` (
  `idpsq5what` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `people` varchar(1024) DEFAULT NULL,
  `question` varchar(1024) DEFAULT NULL,
  `solution` varchar(1024) DEFAULT NULL,
  `when` datetime NOT NULL,
  `where` varchar(1024) DEFAULT NULL,
  `who` varchar(1024) DEFAULT NULL,
  `what` varchar(1024) DEFAULT NULL,
  `why` varchar(1024) DEFAULT NULL,
  `how` varchar(1024) DEFAULT NULL COMMENT 'how to do',
  `action` varchar(1024) DEFAULT NULL,
  `target` varchar(1024) DEFAULT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  `object` varchar(1024) DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'normal',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parents` varchar(45) DEFAULT NULL COMMENT 'parents uuid ',
  `child` varchar(45) DEFAULT NULL,
  `firstchild` varchar(45) DEFAULT NULL,
  `nextsibling` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `author` varchar(45) NOT NULL DEFAULT 'hunter',
  PRIMARY KEY (`idpsq5what`,`uuid`),
  UNIQUE KEY `idnew_table_UNIQUE` (`idpsq5what`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='people-question-solution-when-where-who-what-how-action-target';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psq5what`
--

LOCK TABLES `psq5what` WRITE;
/*!40000 ALTER TABLE `psq5what` DISABLE KEYS */;
/*!40000 ALTER TABLE `psq5what` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 17:41:54
