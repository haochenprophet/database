CREATE DATABASE  IF NOT EXISTS `customer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `customer`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: customer
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
INSERT INTO `url` VALUES (1,'198382.com','苏州键烁电子科技有限公司','BIOS','http://www.new-touch.com.cn/','img/customer.png','2019-02-27 11:43:03','normal','utf8',0,'china'),(2,'198382.com','苏州名硕电脑','BIOS','http://resume.sz.pegatroncorp.com','img/customer.png','2019-02-27 13:54:39','normal','utf8',0,'china'),(3,'198382.com','苏州高新区科技创新局','BIOS','http://www.snd.gov.cn/snd/zdzwxx/028033/20181127/a07f1701-17a0-4eca-9ab5-0f3010641295.html','img/customer.png','2019-02-27 14:03:22','normal','联系部门：苏州高新区科技创新局  电    话：0512-68751599  地    址：苏州高新区科普路58号科技大厦1501室  邮    编：215163  ',0,'china'),(4,'198382.com','苏州紫山龙霖信息技术有限公司','BIOS','http://www.11467.com/qiye/47492582.htm','img/customer.png','2019-02-27 14:06:24','normal','utf8',0,'china'),(5,'198382.com','哈曼汽车电子系统','BIOS','https://www.harman.com/','img/customer.png','2019-02-28 13:26:37','normal','utf8',0,'china'),(6,'198382.com','仁宝信息技术','BIOS','http://www.compal.com','img/customer.png','2019-02-28 13:29:39','normal','utf8',0,'china'),(7,'198382.com','深圳市国鑫恒宇科技有限公司','BIOS','http://www.gooxi.com.cn/index.html','img/customer.png','2019-02-28 13:34:38','normal','utf8',0,'china'),(8,'198382.com','宝龙达信息技术股份有限公司','BIOS','http://www.bitland.com.cn/','img/customer.png','2019-02-28 13:39:42','normal','utf8',0,'china'),(9,'198382.com','环达电脑上海有限公司','BIOS','http://www.tyan.com','img/customer.png','2019-02-28 13:45:21','normal','utf8',0,'china'),(10,'198382.com','天弘电子上海有限公司','BIOS','http://www.celestica.com','img/customer.png','2019-02-28 13:48:54','normal','utf8',0,'china'),(11,'198382.com','上海岱诺信息技术有限公司','BIOS','http://www.likuso.com/city3/167277.html','img/customer.png','2019-02-28 13:56:32','normal','utf8',0,'china'),(12,'198382.com','华勤通讯','BIOS','http://www.huaqin.com/','img/customer.png','2019-02-28 14:00:09','normal','utf8',0,'china'),(13,'198382.com','上海小魅科技有限公司','BIOS','https://www.qichacha.com/firm_61435a0baf71ec10b2b1775968b11fb6.html','img/customer.png','2019-02-28 14:17:06','normal','utf8',0,'china'),(14,'198382.com','澜起科技股份有限公司','BIOS','https://www.qichacha.com/firm_5d72abda51e3915d88954505ac9cdbeb.html','img/customer.png','2019-02-28 14:20:50','normal','utf8',0,'china'),(15,'198382.com','深圳市领存技术有限公司','BIOS','https://www.qichacha.com/firm_67921922c66521d1f4b39a49e421bd33.html','img/customer.png','2019-02-28 14:22:58','normal','utf8',0,'china'),(16,'198382.com','上海闻泰电子科技有限公司','BIOS','https://www.qichacha.com/firm_cd54df07984858766f9813878f696afb.html','img/customer.png','2019-02-28 14:27:36','normal','utf8',0,'china');
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

-- Dump completed on 2019-02-28 14:43:38
