CREATE DATABASE  IF NOT EXISTS `item` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `item`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: item
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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item` varchar(1024) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `goal` varchar(1024) NOT NULL,
  `earn` double NOT NULL DEFAULT '0' COMMENT 'Donor income',
  `priority` int(11) NOT NULL DEFAULT '0',
  `creator` varchar(1024) NOT NULL,
  `executor` varchar(1024) NOT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'star time',
  `end` datetime DEFAULT NULL COMMENT 'end time',
  `request` varchar(1024) DEFAULT NULL,
  `method` varchar(1024) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `father` varchar(45) NOT NULL DEFAULT '0' COMMENT 'depend father item uuid',
  `child` varchar(45) NOT NULL DEFAULT '0' COMMENT 'child itme uuid',
  `url` varchar(1024) NOT NULL COMMENT 'url ',
  `path` varchar(1024) DEFAULT NULL COMMENT 'path of workspace',
  `size` bigint(20) NOT NULL DEFAULT '107374182400' COMMENT 'path space size ',
  `image` varchar(1024) DEFAULT NULL COMMENT 'file name ',
  `audio` varchar(1024) DEFAULT NULL COMMENT 'file name',
  `video` varchar(1024) DEFAULT NULL COMMENT 'file name',
  `group` varchar(1024) DEFAULT NULL COMMENT 'work group',
  `address` varchar(1024) DEFAULT NULL,
  `mail` varchar(1024) DEFAULT NULL,
  `tel` varchar(1024) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`iditem`,`uuid`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `iditem_UNIQUE` (`iditem`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'8dca28b3-084f-456d-98d7-03ac28568f01','2018-02-08 11:40:03','核名','注册','注册',0,0,'hunter','hunter','智能,科技,生命','2018-02-08 11:40:03','2018-02-08 11:31:10','身份证号码、\r\n公司名字、\r\n经营范围、\r\n注册资本、\r\n股东持股比例、\r\n地址。','各个区注册流程不同，\r\n新区、吴中、市区、相城可以在现场核名，\r\n园区只能在网上核名，现在苏\r\n州所有的区都可以网上核名，\r\n一个身份证一次只能核一个名字。',0,'0','0','苏州市工商局','register',107374182400,'image','audio','vedio','hunter,lulu','苏州','patent_sys@126.com','123','nomal','核名'),(2,'6427e831-9b76-4faa-8da8-86f089419361','2018-02-08 11:44:51','设立','注册','设立',0,0,'hunter','hunter','设立','2018-02-08 11:44:51','2018-02-08 11:42:47','身份证号码、\r\n经营范围、\r\n注册资本、\r\n股东持股比例、\r\n地址。','设立',0,'0','0','工商局网站','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','设立'),(3,'ddb8b4a9-0c62-49f5-916b-5133198657b4','2018-02-08 11:50:20','工商交材料','注册','交材',0,0,'hunter','hunter','材料','2018-02-08 11:50:20','2018-02-08 11:45:41','材料清单','工商交材料,预审通过后，\r\n在网上打印相关资料交到工商联办窗口',0,'0','0','工商局网站','register',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','交材'),(4,'529f5216-458f-4b45-9baf-2387906cffd2','2018-02-08 11:52:42','执照','注册','执照',0,0,'hunter','hunter','执照','2018-02-08 11:52:42','2018-02-08 11:51:21','5days+ID','工商局',0,'0','0','工商局网站','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','执照'),(5,'f27194a2-a6da-409f-b757-2ec293f4b673','2018-02-08 11:55:04','刻章','注册','刻章',0,0,'hunter','hunter','刻章','2018-02-08 11:55:04','2018-02-08 11:53:23','公安窗口审批','去有资质的刻章店刻章',0,'0','0','公安窗口','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','刻章'),(6,'8f503ab3-e0e2-4a98-a930-a75fb92499dc','2018-02-08 11:58:31','开户','注册','开户',0,0,'hunter','hunter','银行开户','2018-02-08 11:58:31','2018-02-08 11:55:52','执照正副本原件、\r\n公章、\r\n财务章、\r\n法人章、\r\n法人身份证原件\r\n开户需要提前(5天)预约','选择银行办理开户',0,'0','0','银行','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','银行开户'),(7,'ec1e8fd5-4f76-477d-93a8-7a74db3f22fc','2018-02-08 12:00:52','新办企业套餐','注册','新办企业套餐',0,0,'hunter','hunter','办理CA证书','2018-02-08 12:00:52','2018-02-08 11:59:13','代扣税协议签，\r\n','登录江苏电子税务局，\r\n做新办企业套餐。',0,'0','0','江苏电子税务局','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','新办企业套餐'),(8,'94cca8cb-e191-4850-8684-922adee78726','2018-02-08 12:04:20','办CA','注册','办CA',0,0,'hunter','hunter','办CA','2018-02-08 12:04:20','2018-02-08 12:02:23','新办企业套餐，\r\n公章、\r\n执照复印件、','行政服务中心设立窗口\r\nCA证书是用于企业申报的工具',0,'0','0','行政服务中心','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','办CA'),(9,'3b11c13c-0d1b-49a0-897f-b24a149405a3','2018-02-08 14:20:02','ProjectPlan','Project','for all people of the world.',0,0,'hunter','hunter','ai-device,notebook,Bluetooth,\r\nopen-test,open-erp,e-gov,website,stock','2018-02-08 14:20:02','2018-05-08 14:15:53','money','H/W\r\nS/W',0,'0','0','none','none',107374182400,'none','none','none','hunter','china','patent_sys@126.com','123','nomal','ProjectPlan');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
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

-- Dump completed on 2018-02-08 18:40:00
