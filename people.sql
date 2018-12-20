CREATE DATABASE  IF NOT EXISTS `people` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `people`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: people
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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `idpeople` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `id_card` varchar(45) DEFAULT NULL COMMENT 'ID card',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `born` datetime DEFAULT NULL COMMENT 'When was born',
  `name` varchar(45) DEFAULT NULL COMMENT ' who is he/She? name list',
  `gender` varchar(45) DEFAULT NULL COMMENT 'What gender',
  `country` varchar(45) DEFAULT NULL COMMENT 'which country',
  `address` varchar(100) DEFAULT NULL COMMENT 'where address',
  `title` varchar(100) DEFAULT NULL COMMENT 'Job title',
  `job` varchar(500) DEFAULT NULL COMMENT 'Where is the job?',
  `religion` varchar(45) DEFAULT NULL COMMENT 'What religion',
  `party` varchar(45) DEFAULT NULL COMMENT 'what political party',
  `credit` varchar(45) DEFAULT NULL COMMENT 'Social credit',
  `wish` varchar(300) DEFAULT NULL COMMENT 'What is wish?',
  `achievement` varchar(300) DEFAULT NULL COMMENT 'What is the achievement?',
  `influence` varchar(300) DEFAULT NULL COMMENT 'How big is social influence?',
  `email` varchar(100) DEFAULT NULL COMMENT 'What is the email address?',
  `telephone` varchar(45) DEFAULT NULL COMMENT 'telephone',
  `wealth` varchar(100) DEFAULT NULL COMMENT 'How much is personal wealth?',
  `priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `evaluate` varchar(300) DEFAULT NULL,
  `record` text COMMENT 'Bad or good record',
  `remark` text,
  `url` varchar(200) DEFAULT NULL COMMENT 'Personal website',
  `photo` varchar(200) DEFAULT NULL COMMENT 'photo url',
  `blog` varchar(200) DEFAULT NULL COMMENT 'blog url',
  `audio` varchar(200) DEFAULT NULL COMMENT 'audio url ',
  `video` varchar(200) DEFAULT NULL COMMENT 'video url',
  `living` tinyint(4) NOT NULL DEFAULT '1',
  `death_time` datetime DEFAULT NULL COMMENT 'What time of death',
  `testament` text,
  `testament_time` datetime DEFAULT NULL,
  `history` text COMMENT ' history',
  `case_history` text COMMENT 'case history',
  `insurance` text,
  `family` varchar(500) DEFAULT NULL,
  `organization` varchar(300) DEFAULT NULL,
  `land` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idpeople`,`uuid`),
  UNIQUE KEY `idpeople_UNIQUE` (`idpeople`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='people';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pid`
--

DROP TABLE IF EXISTS `pid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pid` (
  `idpid` int(11) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  `born` varchar(45) DEFAULT NULL COMMENT 'when',
  `country` varchar(45) DEFAULT NULL COMMENT 'where',
  `address` varchar(45) DEFAULT NULL COMMENT 'where',
  `name` varchar(45) DEFAULT NULL COMMENT 'who',
  `gender` varchar(45) DEFAULT NULL COMMENT 'what',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpid`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='people id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pid`
--

LOCK TABLES `pid` WRITE;
/*!40000 ALTER TABLE `pid` DISABLE KEYS */;
/*!40000 ALTER TABLE `pid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 16:54:18
