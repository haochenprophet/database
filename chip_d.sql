CREATE DATABASE  IF NOT EXISTS `chip` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `chip`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: chip
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','AMD','chip','https://www.amd.com','img/amd.jpeg','2017-12-22 16:57:47','normal','utf8',97,'china'),(2,'hunter','Intel','chip','https://www.intel.com','img/intel.jpeg','2017-12-22 16:59:14','normal','utf8',100,'china'),(3,'hunter','ARM','chip','https://www.arm.com','img/arm.jpeg','2017-12-22 17:00:28','normal','utf8',99,'china'),(4,'hunter','IBM','chip','https://www.ibm.com','img/ibm.jpeg','2017-12-22 17:02:22','normal','utf8',98,'china'),(5,'hunter','NVIDIA','chip','http://www.nvidia.com','img/nvidia.jpeg','2017-12-22 17:05:34','normal','utf8',96,'china'),(6,'hunter','xilinx','chip','http://www.xilinx.com/','img/xilinx.jpeg','2017-12-22 17:09:33','normal','utf8',95,'china'),(7,'hunter','aspeedtech','chip','https://www.aspeedtech.com/','img/aspeed.jpeg','2017-12-22 17:14:40','normal','utf8',94,'china'),(8,'hunter','qemu','website','https://www.qemu.org/','img/qemu.jpg','2018-02-01 15:47:39','normal','utf8',0,'china'),(9,'hunter','qualcomm','website','https://www.qualcomm.com/','img/qualcommimg.jpg','2018-04-30 11:35:32','normal','utf8',0,'china'),(10,'hunter','nxp','website','https://www.nxp.com/','img/nxp.jpg','2018-04-30 11:40:42','normal','utf8',0,'china'),(11,'hunter','broadcom','website','https://www.broadcom.com/','img/broadcom.jpg','2018-04-30 11:43:19','normal','utf8',0,'china'),(12,'hunter','TI','website','http://www.ti.com/','img/ti.jpg','2018-04-30 11:49:04','normal','utf8',0,'china'),(13,'hunter','skyworks','website','http://www.skyworksinc.com','img/skyworks.jpg','2018-04-30 11:53:42','normal','utf8',0,'china'),(14,'hunter','samsung','website','https://www.samsung.com','img/samsung.jpg','2018-04-30 11:59:32','normal','utf8',0,'china'),(15,'hunter','tsmc','website','http://www.tsmc.com','img/tsmc.jpg','2018-04-30 12:08:06','normal','utf8',0,'china'),(16,'hunter','skhynix','website','https://www.skhynix.com','img/skhynix.png','2018-04-30 12:14:35','normal','utf8',0,'china'),(17,'hunter','micron','website','https://www.micron.com/','img/micron.png','2018-04-30 12:21:45','normal','utf8',0,'china'),(18,'hunter','renesas','website','https://www.renesas.com/','img/renesas.jpg','2018-04-30 12:26:14','normal','utf8',0,'china'),(19,'198382.com','haisi','website','http://www.hisilicon.com/','img/haisi.jpeg','2020-08-14 17:42:24','normal','utf8',0,'china'),(20,'198382.com','SMIC','website','http://www.smics.com/','img/smic.png','2020-08-14 17:46:19','normal','utf8',0,'china'),(21,'198382.com','mediatek','website','https://www.mediatek.cn/','img/mediatek.jpg','2020-08-14 17:53:59','normal','utf8',0,'china'),(22,'198382.com','loongson','website','http://www.loongson.cn/','img/loongson.gif','2020-08-14 18:00:46','normal','utf8',0,'china'),(23,'198382.com','phytium','website','http://www.phytium.com.cn/','img/phytium.png','2020-08-14 18:11:06','normal','utf8',0,'china'),(24,'198382.com','unisoc','website','http://www.unisoc.com/','img/unisoc.jpg','2020-08-14 18:17:40','normal','utf8',0,'china');
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

-- Dump completed on 2020-08-14 18:21:29
