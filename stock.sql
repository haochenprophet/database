CREATE DATABASE  IF NOT EXISTS `stock` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stock`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: stock
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `ID`
--

DROP TABLE IF EXISTS `ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ID` (
  `idID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idID`,`ID`),
  UNIQUE KEY `number_UNIQUE` (`ID`),
  UNIQUE KEY `idID_UNIQUE` (`idID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ID`
--

LOCK TABLES `ID` WRITE;
/*!40000 ALTER TABLE `ID` DISABLE KEYS */;
INSERT INTO `ID` VALUES (1,'sh000001','上证指数','http://www.sse.com.cn/','cn','上证','2018-02-13 20:20:30','hunter',0,'nomal',''),(2,'sh000006','地产指数','http://www.sse.com.cn/','cn','上证','2018-02-13 20:30:36','hunter',0,'nomal',''),(3,'sh000003','B股指数','http://www.sse.com.cn/','cn','上证','2018-02-13 20:32:28','hunter',0,'nomal',''),(4,'sh000005','商业指数','http://www.sse.com.cn/','cn','上证','2018-02-13 20:45:48','hunter',0,'nomal',''),(5,'sh000015','上证50','http://www.sse.com.cn/','cn','上证','2018-02-13 20:46:43','hunter',0,'nomal',''),(6,'sz399001','深证成指','http://www.szse.cn/','cn','深证','2018-02-13 20:50:16','hunter',0,'nomal',''),(7,'sz399005','中小板指','http://www.sse.com.cn/','cn','深证','2018-02-13 20:52:59','hunter',0,'nomal',''),(8,'sz399006','创业板指','http://www.sse.com.cn/','cn','深证','2018-02-13 20:54:21','hunter',0,'nomal','');
/*!40000 ALTER TABLE `ID` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
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

-- Dump completed on 2018-02-13 20:57:47
