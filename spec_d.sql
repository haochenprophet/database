-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: spec
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','IPMI2.0','doc','spec/ipmi.pdf','img/spec.jpg','2018-03-06 14:35:37','normal','utf8',100,'china'),(2,'hunter','ACPI','website','http://www.acpi.info/spec.htm','img/spec.jpg','2018-03-06 14:37:39','normal','utf8',100,'china'),(3,'hunter','UEFI2.6','doc','spec/UEFI2.6.pdf','img/spec.jpg','2018-03-06 14:41:42','normal','utf8',100,'china'),(4,'hunter','USB Spec','website','http://www.usb.org/developers/docs/','img/spec.jpg','2018-03-06 14:45:20','normal','utf8',100,'china'),(5,'hunter','PCIE','website','https://pcisig.com/specifications/pciexpress/','img/spec.jpg','2018-03-06 14:48:33','normal','utf8',100,'china'),(6,'hunter','SMBIOS','website','https://www.dmtf.org/','img/spec.jpg','2018-03-06 14:50:22','normal','utf8',100,'china'),(7,'hunter','Intel Datasheet','website','https://www.intel.com/content/www/us/en/processors/core/core-technical-resources.html','img/spec.jpg','2018-03-06 14:51:45','normal','utf8',99,'china'),(8,'hunter','spd DDR4','website','http://www.simmtester.com/page/news/showpubnews.asp?num=184','img/spec.jpg','2018-03-06 14:57:03','normal','utf8',99,'china'),(9,'hunter','i2c bus','website','http://www.i2c-bus.org/','img/spec.jpg','2018-03-06 14:58:01','normal','utf8',99,'china'),(10,'hunter','LPC','website','spec/LPC.pdf','img/spec.jpg','2018-03-06 15:00:44','normal','utf8',99,'china'),(11,'hunter','C++','website','spec/LPC.pdf','https://isocpp.org/std/the-standard','2018-03-06 15:04:46','normal','utf8',101,'china');
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

-- Dump completed on 2018-03-06 15:06:30
