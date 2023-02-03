CREATE DATABASE  IF NOT EXISTS `organ` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `organ`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: organ
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `organ`
--

DROP TABLE IF EXISTS `organ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organ` (
  `idorgan` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(200) DEFAULT NULL COMMENT 'Address information',
  `donor_id` varchar(45) NOT NULL COMMENT 'from:Donor ID Number or ID card',
  `acceptor_id` varchar(45) NOT NULL COMMENT 'to:Acceptor ID Number or ID Card',
  `from` varchar(200) NOT NULL COMMENT 'from:information Donor',
  `to` varchar(200) NOT NULL COMMENT 'to:Information',
  `information` varchar(200) DEFAULT NULL COMMENT 'Etiology Information',
  `type` varchar(45) NOT NULL COMMENT 'IN/OUT',
  `doc_number` varchar(45) NOT NULL COMMENT 'Document number of written agreement',
  `amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(65,2) NOT NULL DEFAULT '0.00',
  `quantity` double NOT NULL DEFAULT '1',
  `archive` varchar(200) DEFAULT NULL,
  `archive_type` varchar(100) DEFAULT NULL,
  `archive_md5` varchar(45) DEFAULT NULL,
  `organization` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `authorize` varchar(100) NOT NULL DEFAULT 'approved',
  `url` varchar(200) DEFAULT NULL,
  `imgage` varchar(200) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'nomal',
  `remark` varchar(200) DEFAULT NULL,
  `author` varchar(45) NOT NULL DEFAULT 'organ',
  PRIMARY KEY (`idorgan`,`uuid`,`doc_number`,`donor_id`,`acceptor_id`),
  UNIQUE KEY `idorgan_UNIQUE` (`idorgan`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb3 COMMENT='Organ transplant recordal registration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organ`
--

LOCK TABLES `organ` WRITE;
/*!40000 ALTER TABLE `organ` DISABLE KEYS */;
/*!40000 ALTER TABLE `organ` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 16:39:44
