-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: spec
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
-- Current Database: `spec`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `spec` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spec`;

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
INSERT INTO `url` VALUES (1,'hunter','IPMI2.0','doc','spec/ipmi.pdf','img/spec.jpg','2018-03-06 14:35:37','normal','utf8',100,'china'),(2,'hunter','ACPI','website','http://www.acpi.info/spec.htm','img/spec.jpg','2018-03-06 14:37:39','normal','utf8',100,'china'),(3,'hunter','UEFI2.6','doc','spec/UEFI2.6.pdf','img/spec.jpg','2018-03-06 14:41:42','normal','utf8',100,'china'),(4,'hunter','USB Spec','website','http://www.usb.org/developers/docs/','img/spec.jpg','2018-03-06 14:45:20','normal','utf8',100,'china'),(5,'hunter','PCIE','website','https://pcisig.com/specifications/pciexpress/','img/spec.jpg','2018-03-06 14:48:33','normal','utf8',100,'china'),(6,'hunter','SMBIOS','website','https://www.dmtf.org/','img/spec.jpg','2018-03-06 14:50:22','normal','utf8',100,'china'),(7,'hunter','Intel Datasheet','website','https://www.intel.com/content/www/us/en/processors/core/core-technical-resources.html','img/spec.jpg','2018-03-06 14:51:45','normal','utf8',99,'china'),(8,'hunter','spd DDR4','website','http://www.simmtester.com/page/news/showpubnews.asp?num=184','img/spec.jpg','2018-03-06 14:57:03','normal','utf8',99,'china'),(9,'hunter','i2c bus','website','http://www.i2c-bus.org/','img/spec.jpg','2018-03-06 14:58:01','normal','utf8',99,'china'),(10,'hunter','LPC','website','spec/LPC.pdf','img/spec.jpg','2018-03-06 15:00:44','normal','utf8',99,'china'),(11,'hunter','C++','website','https://isocpp.org/std/the-standard','img/spec.jpg','2018-03-06 15:04:46','normal','utf8',101,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `cloud`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cloud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cloud`;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','amazon','cloud','https://aws.amazon.com/','img/amazon.jpg','2017-12-31 23:35:49','normal','utf8',100,'china'),(2,'hunter','icloud','cloud','https://www.apple.com/cn/icloud/','img/apple.jpg','2017-12-31 23:38:40','normal','utf8',99,'china'),(3,'hunter','google','cloud','https://cloud.google.com/','img/google.jpg','2017-12-31 23:41:02','normal','utf8',98,'china'),(4,'hunter','microsoft','cloud','https://azure.microsoft.com/','img/microsoft.jpg','2017-12-31 23:44:39','normal','utf8',97,'china'),(5,'hunter','ibm','cloud','https://www.ibm.com/cloud/','img/ibm.jpg','2017-12-31 23:46:54','normal','utf8',96,'china'),(6,'hunter','oracle','cloud','https://cloud.oracle.com','img/oracle.jpg','2017-12-31 23:56:51','normal','utf8',95,'china'),(7,'hunter','aliyun','cloud','https://cn.aliyun.com/','img/aliyun.jpg','2018-01-01 00:12:09','normal','utf8',94,'china'),(8,'hunter','baidu','cloud','https://pan.baidu.com/','img/baidu_cloud.png','2018-01-01 00:13:53','normal','utf8',93,'china'),(9,'hunter','tencent','cloud','https://cloud.tencent.com/','img/tencent_cloud.jpg','2018-01-01 00:16:25','normal','utf8',92,'china'),(10,'hunter','sinacloud','cloud','https://www.sinacloud.com/','img/sinacloud_logo.png','2018-01-01 00:20:22','normal','utf8',91,'china'),(11,'hunter','huaweicloud','cloud','http://www.huaweicloud.com/','img/huawei.png','2018-01-01 00:23:18','normal','utf8',90,'china'),(12,'hunter','lenovo','cloud','https://pim.lenovo.com/','img/lenovo.jpg','2018-01-01 00:27:32','normal','utf8',89,'china');
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

-- Dump completed on 2018-03-06  7:40:26
