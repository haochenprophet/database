CREATE DATABASE  IF NOT EXISTS `bookmark` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookmark`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookmark
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
-- Table structure for table `patent_law`
--

DROP TABLE IF EXISTS `patent_law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'audio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
INSERT INTO `patent_law` VALUES (1,'中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','2017-04-21 01:25:06','china','','','','',''),(2,'中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','中华人民共和国专利法','2017-04-21 01:25:14','china','','','','','');
/*!40000 ALTER TABLE `patent_law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_law_implementation_rules`
--

DROP TABLE IF EXISTS `patent_law_implementation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law_implementation_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'vedio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_implementation_rules`
--

LOCK TABLES `patent_law_implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_implementation_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law_implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 17:26:37
