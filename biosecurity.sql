CREATE DATABASE  IF NOT EXISTS `biosecurity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `biosecurity`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: biosecurity
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
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL,
  `where` varchar(400) NOT NULL COMMENT 'detailed address',
  `nation` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `organization` varchar(400) NOT NULL COMMENT 'Hospital name',
  `who` varchar(45) NOT NULL COMMENT 'Patient name',
  `id_card` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL COMMENT 'Patient''s contact phone number',
  `address` varchar(45) DEFAULT NULL COMMENT 'Patient''s contact address',
  `profession` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL COMMENT 'Work place',
  `guardian` varchar(45) DEFAULT NULL COMMENT 'Guardian name',
  `contact` varchar(450) DEFAULT NULL COMMENT 'Guardian Contact',
  `what` varchar(800) DEFAULT NULL COMMENT 'Content of report',
  `why` varchar(800) DEFAULT NULL COMMENT 'cause of disease',
  `etiology` varchar(100) DEFAULT NULL COMMENT 'Virus name, bacteria name, ',
  `contagious` varchar(45) DEFAULT NULL COMMENT 'Is it contagious',
  `how` varchar(800) DEFAULT NULL COMMENT 'How to deal with and solve',
  `level` varchar(45) NOT NULL DEFAULT 'normal' COMMENT 'emergency level:normal,high,low',
  `amount` int(11) NOT NULL DEFAULT '1',
  `reporter` varchar(200) DEFAULT NULL COMMENT 'reporter',
  `telephone` varchar(45) DEFAULT NULL COMMENT 'reporter telephone',
  `priority` int(11) DEFAULT '0' COMMENT 'Priority of feedback processing',
  `status` varchar(45) DEFAULT NULL COMMENT 'Current processing status',
  `remark` varchar(1000) DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  `result` varchar(1000) DEFAULT NULL,
  `file` varchar(450) DEFAULT NULL COMMENT 'Medical records file Video url or UUID',
  `video` varchar(450) DEFAULT NULL COMMENT 'Video url or UUID',
  `audio` varchar(450) DEFAULT NULL COMMENT 'audio url or UUID',
  `image` varchar(450) DEFAULT NULL COMMENT 'image url or UUID',
  PRIMARY KEY (`idreport`,`uuid`,`time`,`when`,`nation`,`province`,`city`,`organization`,`who`,`id_card`),
  UNIQUE KEY `idreport_UNIQUE` (`idreport`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' Direct Report System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(200) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','CDC_GOV','website','https://www.cdc.gov/','img/biosecurity.jpg','2020-03-21 14:02:02','normal','utf8',0,'china'),(2,'198382.com','CDC_CN','website','http://www.chinacdc.cn/','img/biosecurity.jpg','2020-03-21 14:04:12','normal','utf8',0,'china'),(3,'198382.com','WHO','website','https://www.who.int/','img/who.jpg','2020-03-21 14:10:19','normal','utf8',0,'china'),(4,'198382.com','中草药(Chinese Herbal Antidote)','website','http://www.tiprpress.com','img/herbs.jpg','2020-03-24 18:54:53','normal','utf8',0,'china'),(5,'198382.com','Epidemiology Direct Reporting System','website','biosecurity_report.php','img/biosecurity.jpg','2020-06-10 17:26:06','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virus`
--

DROP TABLE IF EXISTS `virus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `virus` (
  `idvirus` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT 'Animals, plants, bacteria, viruses',
  `structure` varchar(45) NOT NULL COMMENT 'Biological structure Single-stranded RNA viruses, double-stranded RNA viruses, single-stranded DNA viruses and double-stranded DNA viruses',
  `contagious` varchar(45) NOT NULL COMMENT 'Is it contagious',
  `conceal` int(11) NOT NULL DEFAULT '0' COMMENT 'Virus incubation period',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Levels of danger',
  `infectiousness` varchar(1000) DEFAULT NULL COMMENT 'infect way',
  `origin` varchar(1000) DEFAULT NULL COMMENT 'Virus origin',
  `who` varchar(45) DEFAULT NULL COMMENT 'author',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idvirus`,`uuid`,`time`,`name`,`type`,`structure`,`contagious`),
  UNIQUE KEY `idvirus_UNIQUE` (`idvirus`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virus`
--

LOCK TABLES `virus` WRITE;
/*!40000 ALTER TABLE `virus` DISABLE KEYS */;
/*!40000 ALTER TABLE `virus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 20:08:08
