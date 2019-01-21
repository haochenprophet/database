CREATE DATABASE  IF NOT EXISTS `table` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `table`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: table
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
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='url_typw';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'create','2018-01-15 14:38:44'),(2,'drop','2018-01-15 14:38:44'),(3,'select','2018-01-15 14:38:44'),(4,'update','2018-01-15 14:38:44'),(5,'insert','2018-01-15 14:38:44'),(6,'delete','2018-01-15 14:38:44'),(7,'alter','2018-01-15 14:38:44');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL DEFAULT 'hunter' COMMENT 'who create the link item .',
  `what` varchar(45) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) NOT NULL DEFAULT 'normal',
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','create_url','create','table/create_url.sql','img/url.png','2018-01-12 16:07:43','normal','utf8',0,'china'),(2,'hunter','create_item','create','table/create_item.sql','img/item.jpg','2018-02-06 18:40:17','normal','utf8',0,'china'),(3,'hunter','create_bill','create','table/create_bill.sql','img/bill.jpg','2018-02-09 15:11:07','normal','utf8',0,'china'),(4,'hunter','create_order','create','table/create_order.sql','img/order.jpg','2018-05-08 18:17:26','normal','utf8',0,'china'),(5,'hunter','create_sequence','create','table/create_sequence.sql','img/table.jpg','2018-05-24 09:53:13','normal','utf8',0,'china'),(6,'198382.com','create_checkpoint','create','table/create_checkpoint.sql','img/table.jpg','2018-11-06 17:10:46','normal','utf8',0,'china'),(7,'198382.com','create_uuid','create','table/create_uuid.sql','img/table.jpg','2019-01-17 15:01:13','normal','utf8',0,'china'),(8,'198382.com','create_message','create','table/create_message.sql','img/table.jpg','2019-01-17 15:02:19','normal','utf8',0,'china'),(9,'198382.com','create_people','create','table/create_people.sql','img/table.jpg','2019-01-17 15:03:58','normal','utf8',0,'china'),(10,'198382.com','create_type','create','table/create_type.sql','img/table.jpg','2019-01-18 16:39:53','normal','utf8',0,'china'),(11,'198382.com','create_status','create','table/create_status.sql','img/table.jpg','2019-01-19 21:35:31','normal','utf8',0,'china'),(12,'198382.com','create_psq5what','website','table/create_psq5what.sql','img/table.jpg','2019-01-21 17:44:03','normal','utf8',0,'china');
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

-- Dump completed on 2019-01-21 17:45:11
