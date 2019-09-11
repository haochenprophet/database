CREATE DATABASE  IF NOT EXISTS `card` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `card`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: card
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `idcard` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) COLLATE utf8_bin NOT NULL,
  `owner` varchar(45) COLLATE utf8_bin NOT NULL,
  `number` varchar(45) COLLATE utf8_bin NOT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` datetime DEFAULT NULL,
  `where` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `what` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `from` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `to` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `why` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `how` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idcard`,`uuid`,`time`,`who`,`owner`,`number`,`when`),
  UNIQUE KEY `idcard_UNIQUE` (`idcard`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'1ef2122f-5afc-44b0-aedc-f4a3956192b3','2019-08-12 17:11:48','郭建华','中国银行苏州科技城支行','6217906101006580349','2019-08-12 00:00:00','0000-00-00 00:00:00','苏州科技城','劳务费支付账户','bank','苏州赤箭智能科技有限公司','郭建华','BMC技术咨询','转账支付','check in',0,''),(2,'c53a6d8e-4605-4a15-9052-d4e7debfc7d8','2019-08-12 17:18:04','许丹念','上海浦发银行漕河泾支行','6217920118801773','2019-08-12 00:00:00','0000-00-00 00:00:00','上海漕河泾经济开发区','劳务费支付账户','bank','苏州赤箭智能科技有限公司','许丹念','业务拓展','转账支付','check in',0,''),(3,'a0da5814-7b6f-4935-b28b-28c3b6b8991f','2019-08-12 17:25:34','武哲','招商银行吴中支行','6214835219645841','2019-08-12 00:00:00','0000-00-00 00:00:00','苏州吴中','劳务费支付账户','bank','苏州赤箭智能科技有限公司','武哲','业务拓展','转账支付','check in',0,''),(4,'e16379d2-1476-43b5-8c79-de7a07d44db1','2019-08-22 09:56:48','郑辰','上海浦东大道支行','6214850213827675','2019-08-22 00:00:00','0000-00-00 00:00:00','上海浦东大','技术咨询服务费','bank','苏州赤箭智能科技有限公司','郑辰','BMC技术咨询','转账支付','check in',0,''),(5,'bf5d32b9-4602-4847-84a7-263fcd6152ef','2019-09-11 09:58:41','杨庆虎','招商银行上海分行徐家汇支行','6214850217541157','2019-09-11 09:55:31','0000-00-00 00:00:00','上海分行徐家汇','劳务及工资卡','bank','苏州赤箭智能科技有限公司','杨庆虎','劳务及工资卡支付','转账支付','check in',0,''),(6,'90fc0d45-5b60-4df6-87b1-2b92b3b8a942','2019-09-11 10:02:35','顾晴兰','建设银行苏州工业园区支行','6227002001650368789','2019-09-11 09:59:10','0000-00-00 00:00:00','苏州工业园区','AI-Lao 爱老站项目劳务工资','bank','苏州赤箭智能科技有限公司','顾晴兰','劳务及工资','转账支付','check in',0,'');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`,`name`),
  UNIQUE KEY `idstatus_UNIQUE` (`idstatus`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what`
--

DROP TABLE IF EXISTS `what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `what` (
  `idwhat` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwhat`,`name`),
  UNIQUE KEY `idwhat_UNIQUE` (`idwhat`),
  UNIQUE KEY `what_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who`
--

DROP TABLE IF EXISTS `who`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `who` (
  `idwho` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) COLLATE utf8_bin NOT NULL,
  `name_en` varchar(45) COLLATE utf8_bin NOT NULL,
  `name_cn` varchar(45) COLLATE utf8_bin NOT NULL,
  `org` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'organization',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwho`,`ID`,`name_en`,`name_cn`),
  UNIQUE KEY `idwho_UNIQUE` (`idwho`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `name_en_UNIQUE` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who`
--

LOCK TABLES `who` WRITE;
/*!40000 ALTER TABLE `who` DISABLE KEYS */;
/*!40000 ALTER TABLE `who` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-11 10:19:42
