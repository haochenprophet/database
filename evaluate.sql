CREATE DATABASE  IF NOT EXISTS `evaluate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `evaluate`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: evaluate
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
-- Table structure for table `feasible`
--

DROP TABLE IF EXISTS `feasible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feasible` (
  `idfeasible` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `thing` varchar(200) DEFAULT NULL,
  `correct` text COMMENT 'Judgment is correct',
  `consent` int(11) DEFAULT NULL,
  `consent_info` text,
  `oppose` int(11) DEFAULT NULL,
  `oppose_info` text,
  `neutral` int(11) DEFAULT NULL,
  `neutral_info` text,
  `necessary` int(11) DEFAULT NULL,
  `affect` int(11) DEFAULT NULL,
  `affect_info` text,
  `rectify` int(11) DEFAULT NULL,
  `rectify_info` text COMMENT 'Correction content and reason\n',
  `level` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL COMMENT 'who is owner',
  `where` varchar(45) DEFAULT NULL COMMENT 'where address ',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfeasible`,`uuid`),
  UNIQUE KEY `idfeasible_UNIQUE` (`idfeasible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Assessing things is feasible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feasible`
--

LOCK TABLES `feasible` WRITE;
/*!40000 ALTER TABLE `feasible` DISABLE KEYS */;
/*!40000 ALTER TABLE `feasible` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-16 16:52:41
