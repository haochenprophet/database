CREATE DATABASE  IF NOT EXISTS `pctest` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pctest`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pctest
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
INSERT INTO `url` VALUES (1,'hunter','pctest','website','http://www.pctest.com/','img/pctestlogo.png','2018-02-01 16:35:17','normal','utf8',100,'china'),(2,'hunter','IPDT','website','https://downloadcenter.intel.com/download/19792/Intel-Processor-Diagnostic-Tool','img/intel.jpg','2018-02-01 16:40:04','normal','utf8',100,'china'),(3,'hunter','memtest','website','http://www.memtest.org/','img/memtest86.png','2018-02-01 16:41:43','normal','utf8',100,'china'),(4,'hunter','biosbits','website','https://biosbits.org/','img/biosbits.jpg','2018-02-01 16:49:24','normal','utf8',100,'china'),(5,'hunter','rs232','website','https://www.eltima.com/rs232-testing-software/','img/com.jpg','2018-02-01 16:59:59','normal','utf8',100,'china'),(6,'hunter','rweverything','website','http://rweverything.com/','img/rweverything.png','2018-02-01 17:02:42','normal','utf8',100,'china'),(7,'hunter','seatools','website','https://www.seagate.com/cn/zh/support/downloads/seatools/','img/seatools.jpg','2018-02-01 17:06:24','normal','utf8',100,'china'),(8,'hunter','pcitest','website','http://pcisig.com/developers/compliance-program','img/pcisig.png','2018-02-01 17:11:01','normal','utf8',100,'china'),(9,'hunter','sata','website','https://www.iol.unh.edu/testing/storage/sata/tools','img/sata.jpg','2018-02-01 17:13:31','normal','utf8',100,'china'),(10,'hunter','usb','website','https://docs.microsoft.com/zh-cn/windows-hardware/drivers/usbcon/','img/usb.jpg','2018-02-01 17:16:25','normal','utf8',100,'china'),(11,'hunter','Bluetooth','website','https://msdn.microsoft.com/en-us/library/ms893172.aspx','img/bluetooth.jpg','2018-02-01 17:18:20','normal','utf8',100,'china'),(12,'hunter','spec','website','https://www.spec.org/','img/spec.png','2018-02-01 17:23:49','normal','utf8',100,'china');
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

-- Dump completed on 2018-02-01 17:26:36
