CREATE DATABASE  IF NOT EXISTS `logistics` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `logistics`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: logistics
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
-- Table structure for table `locate`
--

DROP TABLE IF EXISTS `locate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locate` (
  `idlocate` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL COMMENT 'Serial number',
  `owner` varchar(45) NOT NULL COMMENT 'who thing''s  owner ',
  `address` varchar(45) NOT NULL COMMENT 'owner address ',
  `logistics` varchar(45) NOT NULL COMMENT 'Logistics company name',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `locate` varchar(100) NOT NULL COMMENT 'where of things',
  `tel` varchar(45) NOT NULL COMMENT 'telephone of ower',
  `what` varchar(45) DEFAULT NULL COMMENT 'what thing',
  `latitude` double DEFAULT NULL COMMENT 'Logistics company',
  `longitude` double DEFAULT NULL COMMENT 'Logistics company',
  `audio` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `vedio` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idlocate`,`number`),
  UNIQUE KEY `idlocate_UNIQUE` (`idlocate`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Location of things';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locate`
--

LOCK TABLES `locate` WRITE;
/*!40000 ALTER TABLE `locate` DISABLE KEYS */;
/*!40000 ALTER TABLE `locate` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='logistics URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','ems','website','http://www.ems.com.cn/','img/ems.jpg','2018-01-11 18:07:00','normal','utf8',100,'china'),(2,'hunter','sf-express','website','http://www.sf-express.com','img/sf-express.jpg','2018-01-11 18:11:05','normal','utf8',99,'china'),(3,'hunter','yto','website','http://www.yto.net.cn','img/yto.jpg','2018-01-11 18:14:31','normal','utf8',98,'china'),(4,'hunter','sto','website','http://www.sto.cn/','img/sto.jpg','2018-01-11 18:17:06','normal','utf8',97,'china'),(5,'hunter','ttkdex','website','http://www.ttkdex.com/','img/ttkdex.jpg','2018-01-11 18:22:06','normal','utf8',96,'china'),(6,'hunter','yundaex','website','http://yundaex.com','img/yundaex.png','2018-01-11 18:25:13','normal','utf8',95,'china'),(7,'hunter','zto','website','http://www.zto.com/','img/zto.png','2018-01-11 18:27:37','normal','utf8',95,'china'),(8,'hunter','zjs','website','http://www.zjs.com.cn/','img/zjs.jpg','2018-01-11 18:31:30','normal','utf8',94,'china'),(9,'hunter','htky365','website','http://www.htky365.com/','img/bst.jpg','2018-01-11 18:34:07','normal','utf8',94,'china'),(10,'hunter','fedex','website','https://www.fedex.com/cn/index.html','img/fedex.jpg','2018-01-11 18:37:10','normal','utf8',93,'china'),(11,'hunter','ups','website','https://www.ups.com','img/ups.jpg','2018-01-11 18:39:15','normal','utf8',93,'china'),(12,'hunter','dhl','website','http://www.cn.dhl.com/','img/dhl.jpg','2018-01-11 18:42:26','normal','utf8',92,'china'),(13,'hunter','deppon','website','https://www.deppon.com/','img/deppon.jpg','2018-01-11 18:45:44','normal','utf8',93,'china');
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

-- Dump completed on 2018-01-11 18:47:24
