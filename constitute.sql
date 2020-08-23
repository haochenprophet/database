CREATE DATABASE  IF NOT EXISTS `constitute` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `constitute`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: constitute
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
-- Table structure for table `constitute`
--

DROP TABLE IF EXISTS `constitute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `constitute` (
  `idconstitute` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product` varchar(45) DEFAULT NULL COMMENT 'What Finished product name?',
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(450) DEFAULT NULL,
  `doc` varchar(450) DEFAULT NULL COMMENT 'doc url',
  `amount` decimal(65,10) DEFAULT NULL,
  `price` decimal(65,10) DEFAULT NULL COMMENT 'univalent',
  `measure` varchar(45) DEFAULT NULL COMMENT 'Measurement unit symbol: distance length,speed,weight,temperature',
  `currency` varchar(45) DEFAULT NULL COMMENT 'currency:US dollar,RMB,EUR,JPY,GBP,ruble,',
  `remark` varchar(450) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `supplier` varchar(100) DEFAULT NULL COMMENT 'who supplier?',
  `author` varchar(45) DEFAULT NULL COMMENT 'who author?',
  `image` varchar(450) DEFAULT NULL COMMENT 'image url',
  `video` varchar(450) DEFAULT NULL COMMENT 'video url',
  `audio` varchar(450) DEFAULT NULL COMMENT 'audio url',
  `text` varchar(450) DEFAULT NULL,
  `file` varchar(450) DEFAULT NULL COMMENT 'file url',
  `website` varchar(450) NOT NULL DEFAULT 'http://www.red-arrows.cn/',
  `telephone` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `person` varchar(45) DEFAULT NULL COMMENT 'Contact person',
  PRIMARY KEY (`idconstitute`,`uuid`,`time`),
  UNIQUE KEY `idconstitute_UNIQUE` (`idconstitute`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='constitute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constitute`
--

LOCK TABLES `constitute` WRITE;
/*!40000 ALTER TABLE `constitute` DISABLE KEYS */;
/*!40000 ALTER TABLE `constitute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 11:07:28
