CREATE DATABASE  IF NOT EXISTS `pc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pc`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pc
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','HP','website','http://www8.hp.com','img/hp.jpg','2018-01-19 10:22:10','normal','utf8',100,'china'),(2,'hunter','DELL','website','http://www.dell.com','img/dell.jpg','2018-01-19 10:23:31','normal','utf8',99,'china'),(3,'hunter','ASUS','website','https://www.asus.com','img/asus.jpg','2018-01-19 10:25:44','normal','utf8',98,'china'),(4,'hunter','apple','website','https://www.apple.com','img/apple.jpg','2018-01-19 10:26:33','normal','utf8',97,'china'),(5,'hunter','lenovo','website','https://www.lenovo.com.cn/','img/lenovo.jpg','2018-01-19 10:28:38','normal','utf8',96,'china'),(6,'hunter','acer','website','https://www.acer.com','img/acer.jpg','2018-01-19 10:37:00','normal','utf8',95,'china'),(7,'hunter','toshiba','website','http://www.toshiba.com.cn/','img/toshiba.jpg','2018-01-19 10:41:23','normal','utf8',94,'china'),(8,'hunter','samsung','website','http://www.samsung.com','img/samsung.jpg','2018-01-19 10:43:14','normal','utf8',93,'china'),(9,'hunter','tongfangpc','website','http://www.tongfangpc.com/','img/tongfangpc.jpg','2018-01-19 10:45:03','normal','utf8',92,'china'),(10,'hunter','hasee','website','http://www.hasee.com','img/hasee.jpg','2018-01-19 10:47:30','normal','utf8',91,'china'),(11,'hunter','haseefujitsu','website','http://www.fujitsu.com','img/fujitsu.jpg','2018-01-19 10:49:26','normal','utf8',90,'china'),(12,'hunter','huawei','website','http://www.huawei.com','img/huawei.png','2018-01-19 10:50:24','normal','utf8',89,'china'),(13,'hunter','mi','website','https://www.mi.com','img/mi.jpg','2018-01-19 10:53:56','normal','utf8',88,'china'),(14,'hunter','sony','website','http://www.sony.com.cn/','img/sony.jpg','2018-01-19 10:59:24','normal','utf8',93,'china');
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

-- Dump completed on 2018-01-19 11:01:02
