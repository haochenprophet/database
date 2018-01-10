CREATE DATABASE  IF NOT EXISTS `law` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `law`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: law
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
-- Table structure for table `law`
--

DROP TABLE IF EXISTS `law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `law` (
  `idlaw` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `chapter` int(11) NOT NULL,
  `chapter_name` text NOT NULL,
  `clause` int(11) NOT NULL,
  `content` text NOT NULL,
  `remark` text COMMENT 'who : author',
  `type` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `where` varchar(45) DEFAULT NULL COMMENT 'create location',
  `who` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlaw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law`
--

LOCK TABLES `law` WRITE;
/*!40000 ALTER TABLE `law` DISABLE KEYS */;
/*!40000 ALTER TABLE `law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `what` text NOT NULL COMMENT 'law name',
  `what_type` varchar(45) NOT NULL DEFAULT 'local' COMMENT 'local,file,http,https,ssh',
  `where` varchar(200) NOT NULL COMMENT 'law file/link  path',
  `country` varchar(45) NOT NULL DEFAULT 'china',
  `logo` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time ',
  `status` varchar(45) NOT NULL DEFAULT 'normal' COMMENT 'normal ,abnormal',
  `remark` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'patent_sys','中华人民共和国宪法-2004','local','law/中华人民共和国宪法-2004.pdf','china',NULL,'2017-04-27 11:53:15','normal','宪法',100),(2,'patent_sys','中华人民共和国专利法-2008','local','law/中华人民共和国专利法-2008.pdf','china',NULL,'2017-04-27 11:55:05','normal','专利法',96),(3,'patent_sys','中华人民共和国专利法实施细则-2003','local','law/中华人民共和国专利法实施细则-2003.pdf','china',NULL,'2017-04-27 11:55:49','normal','专利法实施细则',98),(4,'patent_sys','中华人民共和国民事诉讼法-2012','local','law/中华人民共和国民事诉讼法-2012.pdf','china',NULL,'2017-04-27 11:56:33','normal','民事诉讼法',99),(5,'patent_sys','中华人民共和国专利法实施细则-2010','local','law/中华人民共和国专利法实施细则-2010.pdf','china',NULL,'2017-06-01 19:48:17','normal','',97),(6,'patent_sys','中华人民共和国劳动法','local','law/中华人民共和国劳动法.pdf','china',NULL,'2017-12-24 22:38:17','normal','',95),(7,'hunter','中华人民共和国刑法-2015修正','doc','law/中华人民共和国刑法-2015修正.pdf','china','img/law.jpg','2018-01-10 16:56:45','normal','utf8',94);
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-10 16:59:11
