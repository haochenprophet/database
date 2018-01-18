CREATE DATABASE  IF NOT EXISTS `weapon` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `weapon`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: weapon
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','spacex','website','http://www.spacex.com/','img/spacex.jpg','2018-01-18 14:10:49','normal','utf8',100,'china'),(2,'hunter','lockheedmartin','website','http://www.lockheedmartin.com/','img/LM-logo.png','2018-01-18 14:19:17','normal','utf8',99,'china'),(3,'hunter','boeing','website','http://www.boeing.com/','img/boeing.png','2018-01-18 14:22:41','normal','utf8',98,'china'),(4,'hunter','nasa','website','https://www.nasa.gov/','img/nasa.jpg','2018-01-18 14:25:36','normal','utf8',97,'china'),(5,'hunter','raytheon','website','https://www.raytheon.com/','img/rtn_logo.gif','2018-01-18 14:33:14','normal','utf8',96,'china'),(6,'hunter','northropgrumman','website','http://www.northropgrumman.com','img/northropgrumman.png','2018-01-18 14:43:49','normal','utf8',95,'china'),(7,'hunter','generaldynamics','website','http://www.generaldynamics.com/','img/generaldynamics.jpg','2018-01-18 14:51:03','normal','utf8',94,'china'),(8,'hunter','l3t','website','https://www.l3t.com/','img/l3-logo.png','2018-01-18 14:56:20','normal','utf8',93,'china'),(9,'hunter','utc','website','http://www.utc.com','img/utc.jpg','2018-01-18 14:59:48','normal','utf8',92,'china'),(10,'hunter','baesystems','website','https://www.baesystems.com','img/baesystems.png','2018-01-18 15:03:21','normal','utf8',92,'china'),(11,'hunter','baesystems','website','http://www.airbus.com/','img/Airbus.png','2018-01-18 15:07:16','normal','utf8',91,'china'),(12,'hunter','ge','website','https://www.ge.com/','img/ge.jpg','2018-01-18 15:14:43','normal','utf8',90,'china'),(13,'hunter','mhi','website','https://www.mhi.com/','img/mhi.png','2018-01-18 15:20:03','normal','utf8',89,'china'),(14,'hunter','rheinmetall','website','https://www.rheinmetall.com','img/rheinmetall.jpg','2018-01-18 15:27:23','normal','utf8',88,'china'),(15,'hunter','heckler-koch','website','https://www.heckler-koch.com','img/heckler-koch.jpg','2018-01-18 15:30:50','normal','utf8',87,'china'),(16,'hunter','dassault-aviation','website','https://www.dassault-aviation.com','img/Dassault-Aviation.png','2018-01-18 15:35:11','normal','utf8',86,'china'),(17,'hunter','OKA','website','http://www.uacrussia.ru','img/OKA.png','2018-01-18 15:44:53','normal','utf8',101,'china'),(18,'hunter','rafael','website','http://www.rafael.co.il','img/rafael.png','2018-01-18 15:58:10','normal','utf8',86,'china'),(19,'hunter','iai','website','http://www.iai.co.il/','img/iai.png','2018-01-18 16:02:02','normal','utf8',86,'china'),(20,'hunter','imisystems','website','http://www.imisystems.com/','img/IMISystems.png','2018-01-18 16:05:03','normal','utf8',86,'china'),(21,'hunter','elbitsystems','website','http://elbitsystems.com/','img/elbitsystems.png','2018-01-18 16:07:16','normal','utf8',86,'china'),(22,'hunter','Leonardo','website','http://www.leonardocompany.com','img/Leonardo.png','2018-01-18 16:18:18','normal','utf8',85,'china'),(23,'hunter','bel','website','http://bel-india.com/','img/bel.jpg','2018-01-18 16:25:11','normal','utf8',84,'china'),(24,'hunter','electricdatasystems','website','http://www.electricdatasystems.com/','img/EDS-logo.png','2018-01-18 16:28:53','normal','utf8',83,'china');
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

-- Dump completed on 2018-01-18 16:29:50
