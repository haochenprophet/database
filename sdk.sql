CREATE DATABASE  IF NOT EXISTS `sdk` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sdk`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sdk
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','IBM Software Development Kit for Linux on Power (SDK)','website','https://developer.ibm.com/linuxonpower/sdk-packages/','img/ibm.jpg','2018-05-09 15:59:46','normal','utf8',100,'china'),(2,'hunter','android-sdk','website','https://android-sdk.en.softonic.com/','img/android.jpg','2018-05-09 16:03:06','normal','utf8',100,'china'),(3,'hunter','windows-10-sdk','website','https://developer.microsoft.com/en-US/windows/downloads/windows-10-sdk','img/windows.jpg','2018-05-09 16:04:22','normal','utf8',100,'china'),(4,'hunter','java sdk','website','http://www.oracle.com/technetwork/java/javase/downloads/index.html','img/windows.jpg','2018-05-09 16:05:56','normal','utf8',100,'china'),(5,'hunter','intel  UEFI SDK','website','https://www.intel.com/content/www/us/en/architecture-and-technology/unified-extensible-firmware-interface/uefi-driver-and-application-tool-resources.html','img/intel.jpg','2018-05-09 16:11:40','normal','utf8',100,'china'),(6,'hunter','NXP Layerscape Software Development Kit','website','https://www.nxp.com/support/developer-resources/run-time-software/linux-software-and-development-tools/layerscape-software-development-kit:LAYERSCAPE-SDK','img/nxp.jpg','2018-05-09 16:13:37','normal','utf8',100,'china'),(7,'hunter','windows-hardware kits','website','https://developer.microsoft.com/en-us/windows/hardware/download-kits-windows-hardware-development','img/windows.jpg','2018-05-09 16:15:59','normal','utf8',100,'china'),(8,'hunter','The Linux Device Driver Kit','website','https://lwn.net/Articles/184988/','img/linux.jpg','2018-05-09 16:17:10','normal','utf8',100,'china'),(9,'hunter','Apache OpenOffice Software Development Kit (SDK)','website','http://www.openoffice.org/api/SDK/index.html','img/apache.jpg','2018-05-09 16:23:20','normal','utf8',100,'china'),(10,'hunter','SDK - the Ubuntu SDK','website','https://docs.ubuntu.com/phone/en/platform/sdk/','img/ubuntu.jpg','2018-05-09 16:27:19','normal','utf8',100,'china'),(11,'hunter','Qt SDK','website','https://www.qt.io/download','img/qt.jpg','2018-05-09 16:29:19','normal','utf8',100,'china'),(12,'hunter','Intel® FPGA SDK for OpenCL','website','https://www.altera.com/products/design-software/embedded-software-developers/opencl/overview.html','img/intel.jpg','2018-05-09 16:30:41','normal','utf8',100,'china'),(13,'hunter','FPGA SDK','website','http://www.fpgadeveloper.com/category/tutorials/sdk','img/fgpa.jpg','2018-05-09 16:32:21','normal','utf8',100,'china'),(14,'hunter','SDK for ZTEX FPGA Boards','website','https://www.ztex.de/firmware-kit/','img/fgpa.jpg','2018-05-09 16:32:55','normal','utf8',100,'china');
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

-- Dump completed on 2018-05-09 16:36:05
