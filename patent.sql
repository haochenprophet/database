CREATE DATABASE  IF NOT EXISTS `patent` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `patent`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: patent
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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `idproject` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `item` longtext,
  `infor` blob,
  `type` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `depend_id` int(11) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL,
  `position` tinytext,
  `source` blob,
  `url` longtext,
  `status` varchar(45) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`idproject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','sipo','website','http://cpquery.sipo.gov.cn/','img/gjzscqj.png','2018-01-22 17:14:53','normal','utf8',100,'china'),(2,'hunter','epo','website','http://www.epo.org/','img/epo.gif','2018-01-22 17:20:40','normal','utf8',99,'china'),(3,'hunter','uspto','website','https://www.uspto.gov/','img/uspto.png','2018-01-22 17:23:05','normal','utf8',98,'china'),(4,'hunter','jpo','website','http://www.jpo.go.jp/','img/jpo.png','2018-01-22 17:24:49','normal','utf8',97,'china'),(5,'hunter','kipris','website','http://kipris.or.kr/enghome/main.jsp','img/kiiris.gif','2018-01-22 17:29:13','normal','utf8',96,'china'),(6,'hunter','dpma','website','https://www.dpma.de/','img/patent-dpma.gif','2018-01-22 17:31:57','normal','utf8',95,'china'),(7,'hunter','ipd','website','http://www.ipd.gov.hk/','img/hk_po.jpg','2018-01-22 17:33:42','normal','utf8',94,'china'),(8,'hunter','wpio','website','http://www.wipo.int','img/wpio.png','2018-01-22 17:37:24','normal','utf8',93,'china'),(9,'hunter','oapl','website','http://www.oapi.int/','img/oapl.jpg','2018-01-22 17:39:38','normal','utf8',92,'china'),(10,'hunter','ipindia','website','http://www.ipindia.nic.in/','img/ipindia.png','2018-01-22 17:41:55','normal','utf8',91,'china'),(11,'hunter','rupto','website','http://www.rupto.ru/rupto/portal/start?lang=en','img/rupto.png','2018-01-22 17:43:35','normal','utf8',90,'china'),(12,'hunter','ipaustralia','website','https://www.ipaustralia.gov.au/','img/ipaustralia.png','2018-01-22 17:45:15','normal','utf8',89,'china'),(13,'hunter','uibm','website','http://www.uibm.gov.it/','img/uibm.jpg','2018-01-22 17:47:01','normal','utf8',88,'china'),(14,'hunter','Canada','website','http://www.ic.gc.ca','img/Canada.jpg','2018-01-22 17:49:23','normal','utf8',87,'china'),(15,'hunter','inpi','website','https://www.inpi.fr/fr','img/inpi.jpg','2018-01-22 17:51:15','normal','utf8',86,'china'),(16,'hunter','patent','website','http://www.sipo.gov.cn/xglj/201509/t20150917_1177472.html','img/otherpo.jpg','2018-01-22 17:52:32','normal','utf8',85,'china');
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

-- Dump completed on 2018-01-22 17:57:01
