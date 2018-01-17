CREATE DATABASE  IF NOT EXISTS `military` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `military`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: military
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
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(45) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
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
INSERT INTO `url` VALUES (1,'hunter','china','website','http://www.mod.gov.cn/','img/china.jpg','2018-01-17 16:40:58','normal','utf8',100,'china'),(2,'hunter','USA','website','https://www.defense.gov/',' img/usa.jpg','2018-01-17 16:45:55','normal','utf8',99,'china'),(3,'hunter','russia','website','http://www.mil.ru/ ','img/russia.png','2018-01-17 16:50:47','normal','utf8',98,'china'),(4,'hunter','UnitedKingdom','website','http://www.mod.uk/','img/UnitedKingdom.jpg','2018-01-17 16:53:06','normal','utf8',97,'china'),(5,'hunter','France','website','https://www.defense.gouv.fr/','img/france.jpg','2018-01-17 16:56:38','normal','utf8',96,'china'),(6,'hunter','Germany','website','https://www.bundeswehr.de/','img/Germany.jpg','2018-01-17 17:00:08','normal','utf8',95,'china'),(7,'hunter','India','website','https://mod.gov.in/','img/India.jpg','2018-01-17 17:03:04','normal','utf8',94,'china'),(8,'hunter','Israel','website','https://www.idf.il/','img/Israel.jpg','2018-01-17 17:05:05','normal','utf8',93,'china'),(9,'hunter','Italy','website','http://www.difesa.it/','img/Italy.jpg','2018-01-17 17:09:14','normal','utf8',92,'china'),(10,'hunter','Australia','website','http://www.defence.gov.au/','img/Australia.jpg','2018-01-17 17:11:15','normal','utf8',91,'china'),(11,'hunter','Japan','website','http://www.mod.go.jp/','img/Japan.jpg','2018-01-17 17:17:48','normal','utf8',90,'china'),(12,'hunter','Canada','website','http://www.forces.gc.ca/','img/Canada.jpg','2018-01-17 17:23:07','normal','utf8',94,'china');
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

-- Dump completed on 2018-01-17 17:28:04
