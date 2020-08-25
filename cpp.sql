CREATE DATABASE  IF NOT EXISTS `cpp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cpp`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cpp
-- ------------------------------------------------------
-- Server version	8.0.13-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(200) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
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
INSERT INTO `url` VALUES (1,'198382.com','cplusplus.com','website','http://www.cplusplus.com/','img/cpp.jpg','2020-08-14 19:04:57','normal','utf8',0,'china'),(2,'198382.com','microsoft->C++','website','https://docs.microsoft.com/en-us/cpp/','img/cpp.jpg','2020-08-14 19:09:21','normal','utf8',0,'china'),(3,'198382.com','cplusplus.org','website','http://www.cplusplus.org/','img/cpp.jpg','2020-08-14 19:13:37','normal','utf8',0,'china'),(4,'198382.com','ISO C++','website','https://isocpp.org/','img/cpp.jpg','2020-08-14 19:14:44','normal','utf8',0,'china'),(5,'198382.com','cprogramming.com','website','https://www.cprogramming.com/','img/cpp.jpg','2020-08-14 19:16:22','normal','utf8',0,'china'),(6,'198382.com','GNU make','website','https://www.gnu.org/software/make/manual/make.html','img/cpp.jpg','2020-08-14 19:22:46','normal','utf8',0,'china'),(7,'198382.com','gnu.org','website','https://www.gnu.org/','img/cpp.jpg','2020-08-14 19:24:07','normal','utf8',0,'china'),(8,'198382.com','GNU->gcc','website','https://www.gnu.org/software/gcc/','img/cpp.jpg','2020-08-14 19:26:58','normal','utf8',0,'china'),(9,'198382.com','Apple-xcode for C++','website','https://www.cprogramming.com/xcode.html','img/cpp.jpg','2020-08-14 19:32:40','normal','utf8',0,'china'),(10,'198382.com','qt.io','website','https://www.qt.io/','img/cpp.jpg','2020-08-25 16:40:43','normal','utf8',0,'china'),(11,'198382.com','google.skia-2d gui','website','https://github.com/google/skia','img/cpp.jpg','2020-08-25 16:43:13','normal','utf8',0,'china'),(12,'198382.com','MFC','website','https://docs.microsoft.com/zh-cn/cpp/mfc/','img/cpp.jpg','2020-08-25 16:45:54','normal','utf8',0,'china'),(13,'198382.com','microsoft.STL','website','https://github.com/microsoft/STL','img/cpp.jpg','2020-08-25 16:49:55','normal','utf8',0,'china'),(14,'198382.com','microsoft.STL.doc','website','https://docs.microsoft.com/en-us/cpp/standard-library/','img/cpp.jpg','2020-08-25 16:56:10','normal','utf8',0,'china'),(15,'198382.com','tensorflow','website','https://github.com/tensorflow','img/cpp.jpg','2020-08-25 17:01:23','normal','utf8',0,'china'),(16,'198382.com','Xilinx.XRT','website','https://github.com/Xilinx/XRT','img/cpp.jpg','2020-08-25 17:06:50','normal','utf8',0,'china');
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

-- Dump completed on 2020-08-25 17:08:15
