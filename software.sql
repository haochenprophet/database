CREATE DATABASE  IF NOT EXISTS `software` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `software`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: software
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','openstack','website','https://www.openstack.org/','img/openstack.jpg','2018-01-31 17:32:29','normal','utf8',100,'china'),(2,'hunter','processon','website','https://www.processon.com/','img/process_on.png','2018-01-31 17:45:03','normal','utf8',99,'china'),(3,'hunter','opencv','website','https://opencv.org/','img/opencv.png','2018-01-31 17:50:59','normal','utf8',98,'china'),(4,'hunter','nvidia-opencl','website','https://developer.nvidia.com/opencl','img/nv-opencl.png','2018-01-31 17:56:48','normal','utf8',98,'china'),(5,'hunter','intel-opencl','website','https://software.intel.com/en-us/intel-opencl','img/Intel-OpenCL.png','2018-01-31 17:59:26','normal','utf8',97,'china'),(6,'hunter','opencl','website','https://www.khronos.org/opencl/','img/opencl.png','2018-01-31 18:00:32','normal','utf8',96,'china'),(7,'hunter','amd-opencl','website','https://developer.amd.com/tools-and-sdks/opencl-zone/','img/amd-opencl.png','2018-01-31 18:19:40','normal','utf8',94,'china'),(8,'hunter','capi-snap','website','https://developer.ibm.com/linuxonpower/capi/snap/','img/capi-snap.png','2018-01-31 18:32:47','normal','utf8',93,'china'),(9,'hunter','cmake','website','https://cmake.org/','img/cmake.png','2018-01-31 18:37:51','normal','utf8',92,'china'),(10,'hunter','qt','website','https://www.qt.io/','img/qt.jpg','2018-01-31 18:46:20','normal','utf8',90,'china');
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

-- Dump completed on 2018-01-31 18:48:13
