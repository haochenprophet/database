-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: invoice
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','invoice introduce','website','https://zhuanlan.zhihu.com/p/19701523','img/invoice.jpg','2019-01-15 15:29:45','normal','utf8',0,'china'),(2,'198382.com','invoice number','website','https://baike.baidu.com/item/%E5%8F%91%E7%A5%A8%E5%8F%B7%E7%A0%81/10934187','img/invoice.jpg','2019-01-15 15:32:22','normal','utf8',0,'china'),(3,'198382.com','睿琪票据','website','https://fapiao.glority.cn/','img/invoice.jpg','2019-01-16 15:00:12','normal','utf8',0,'china'),(4,'198382.com','科目余额表','website','https://baike.baidu.com/item/%E7%A7%91%E7%9B%AE%E4%BD%99%E9%A2%9D%E8%A1%A8/1050791?fr=aladdin','img/invoice.jpg','2019-01-18 13:43:42','normal','utf8',0,'china'),(5,'198382.com','资产负债表','website','https://baike.baidu.com/item/%E8%B5%84%E4%BA%A7%E8%B4%9F%E5%80%BA%E8%A1%A8','img/invoice.jpg','2019-01-18 13:44:34','normal','utf8',0,'china'),(6,'198382.com','利润表','website','https://baike.baidu.com/item/%E5%88%A9%E6%B6%A6%E8%A1%A8','img/invoice.jpg','2019-01-18 13:46:05','normal','utf8',0,'china'),(7,'198382.com','应付职工薪酬表','website','https://wenku.baidu.com/view/714d4c926c175f0e7dd13741.html','img/invoice.jpg','2019-01-18 13:47:49','normal','utf8',0,'china'),(8,'198382.com','财务表格模板大全','website','https://wenku.baidu.com/view/75bdd7ef767f5acfa0c7cd48.html','img/invoice.jpg','2019-01-18 14:26:58','normal','utf8',0,'china');
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

-- Dump completed on 2019-01-18 23:15:38
