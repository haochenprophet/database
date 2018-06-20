CREATE DATABASE  IF NOT EXISTS `libary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `libary`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: libary
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
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (15,'198382.com','C++ Standard Library','website','http://www.cplusplus.com/reference/clibrary/','img/libary.jpg','2018-06-20 14:33:15','normal','utf8',0,'china'),(16,'198382.com','C++ boost','website',' https://www.boost.org/','img/libary.jpg','2018-06-20 14:35:31','normal','utf8',0,'china'),(17,'198382.com','C++ libcinder','website','https://www.libcinder.org/','img/libary.jpg','2018-06-20 14:36:42','normal','utf8',0,'china'),(18,'198382.com','C++ dlib','website','http://dlib.net/','img/libary.jpg','2018-06-20 14:38:02','normal','utf8',0,'china'),(19,'198382.com','C++ facebook folly','website','https://github.com/facebook/folly','img/libary.jpg','2018-06-20 14:42:21','normal','utf8',0,'china'),(20,'198382.com','C++ juce','website','https://juce.com/','img/libary.jpg','2018-06-20 14:43:15','normal','utf8',0,'china'),(21,'198382.com','C++ facebook-libphenom','website','http://facebook.github.io/libphenom/','img/libary.jpg','2018-06-20 14:44:59','normal','utf8',0,'china'),(22,'198382.com','C++ libsourcey','website','https://sourcey.com/libsourcey/','img/libary.jpg','2018-06-20 14:46:10','normal','utf8',0,'china'),(23,'198382.com','C++ openframeworks','website','https://openframeworks.cc/','img/libary.jpg','2018-06-20 14:48:46','normal','utf8',0,'china'),(24,'198382.com','C++ QT','website','https://www.qt.io/','img/libary.jpg','2018-06-20 14:49:19','normal','utf8',0,'china'),(25,'198382.com','C++ reasoning','website','http://www.reasoning.biz/index.htm','img/libary.jpg','2018-06-20 14:50:28','normal','utf8',0,'china'),(26,'198382.com','C++ ROOT','website','https://root.cern.ch/','img/libary.jpg','2018-06-20 14:51:33','normal','utf8',0,'china'),(27,'198382.com','C++ stlport','website','http://www.stlport.org/','img/libary.jpg','2018-06-20 14:52:06','normal','utf8',0,'china'),(28,'198382.com','C++ stxxl','website','http://stxxl.org/','img/libary.jpg','2018-06-20 14:52:40','normal','utf8',0,'china'),(29,'198382.com','C++ ultimatepp','website','https://www.ultimatepp.org/','img/libary.jpg','2018-06-20 14:53:15','normal','utf8',0,'china'),(30,'198382.com','C++ WTL','website','https://sourceforge.net/projects/wtl/','img/libary.jpg','2018-06-20 14:54:30','normal','utf8',0,'china'),(31,'198382.com','C++ Libary list','website','http://en.cppreference.com/w/cpp/links/libs','img/libary.jpg','2018-06-20 15:03:54','normal','utf8',0,'china');
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

-- Dump completed on 2018-06-20 15:07:23
