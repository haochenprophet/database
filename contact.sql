CREATE DATABASE  IF NOT EXISTS `contact` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `contact`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: contact
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `idcontact` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `what` text NOT NULL COMMENT 'contact name',
  `url` text NOT NULL COMMENT 'contact file/link  path',
  `type` varchar(45) NOT NULL DEFAULT 'local' COMMENT 'local,file,http,https,ssh',
  `status` varchar(45) NOT NULL DEFAULT 'normal' COMMENT 'normal ,abnormal',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time ',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'WeChat','https://web.wechat.com/','local','normal','2017-06-03 20:50:12','china','patent_sys',0,'utf8'),(2,'QQ','http://w.qq.com/','local','normal','2017-06-03 20:52:29','china','patent_sys',0,'utf8'),(3,'Skype','https://login.skype.com','local','normal','2017-06-03 20:55:34','china','patent_sys',0,'utf8'),(4,'qq-Weibo','http://t.qq.com/','local','normal','2017-06-03 21:02:55','china','patent_sys',0,'utf8'),(5,'facebook','https://www.facebook.com','local','normal','2017-06-03 21:06:08','china','patent_sys',0,'utf8');
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

-- Dump completed on 2017-06-03 21:10:28
