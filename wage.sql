CREATE DATABASE  IF NOT EXISTS `wage` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `wage`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: wage
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaddress`,`name`),
  UNIQUE KEY `idaddress_UNIQUE` (`idaddress`),
  UNIQUE KEY `address_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'苏州赤箭智能科技有限公司','2019-05-13 18:23:08');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org`
--

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `org` (
  `idorg` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorg`,`name`),
  UNIQUE KEY `idorg_UNIQUE` (`idorg`),
  UNIQUE KEY `org_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;
INSERT INTO `org` VALUES (1,'董事局','2019-05-12 21:20:16'),(2,'监事局','2019-05-12 21:20:46'),(3,'财务税务','2019-05-12 21:21:04'),(4,'人力资源','2019-05-12 21:21:14'),(5,'企业规划','2019-05-13 14:24:13'),(6,'产品设计','2019-05-13 14:24:30'),(7,'结构外观','2019-05-13 14:26:15'),(8,'Hardware','2019-05-13 14:26:42'),(9,'Firmware','2019-05-13 14:28:04'),(10,'BIOS','2019-05-13 14:28:44'),(11,'BMC','2019-05-13 14:28:53'),(12,'OS','2019-05-13 14:29:06'),(13,'Driver','2019-05-13 14:29:38'),(14,'Application','2019-05-13 14:29:57'),(15,'Website','2019-05-13 14:30:07'),(16,'品质管理','2019-05-13 14:30:48'),(17,'仓储物流','2019-05-13 14:31:04'),(18,'客户服务','2019-05-13 14:31:12'),(19,'教育训练','2019-05-13 14:31:32'),(20,'专利法务','2019-05-13 14:31:46'),(21,'运营管理','2019-05-13 14:33:01'),(22,'生产制造','2019-05-13 18:37:39'),(23,'业务营销','2019-05-13 18:38:30'),(24,'总务安全','2019-05-13 18:45:58'),(25,'党组工会','2019-05-13 18:50:36');
/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`,`name`),
  UNIQUE KEY `idstatus_UNIQUE` (`idstatus`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'check in','2019-01-19 21:50:03'),(2,'paid','2019-01-19 21:54:15'),(3,'unpaid','2019-01-19 21:54:58');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'dynamic','2019-05-13 14:38:28'),(2,'static','2019-05-13 14:39:25'),(3,'deduct','2019-05-13 15:37:19');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wage`
--

DROP TABLE IF EXISTS `wage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wage` (
  `idwage` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'identity number',
  `who` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'name',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `org` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'organization, department,team',
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'what_type',
  `what` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `why` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'how to do ',
  `how` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `count` decimal(65,2) NOT NULL DEFAULT '1.00',
  `amount` decimal(65,2) NOT NULL COMMENT 'amount',
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive_md5` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `archive` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idwage`,`uuid`,`ID`,`who`,`when`,`time`,`org`,`type`,`what`),
  UNIQUE KEY `idwage_UNIQUE` (`idwage`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wage`
--

LOCK TABLES `wage` WRITE;
/*!40000 ALTER TABLE `wage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what`
--

DROP TABLE IF EXISTS `what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `what` (
  `idwhat` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwhat`,`name`),
  UNIQUE KEY `idwhat_UNIQUE` (`idwhat`),
  UNIQUE KEY `what_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
INSERT INTO `what` VALUES (1,'基本工资','2019-05-13 15:00:08'),(2,'年终奖金','2019-05-13 15:00:35'),(3,'季度奖金','2019-05-13 15:00:45'),(4,'项目奖金','2019-05-13 15:00:53'),(5,'职位津贴','2019-05-13 15:01:06'),(6,'住房津贴','2019-05-13 15:01:16'),(7,'餐饮补贴','2019-05-13 15:02:11'),(8,'交通补贴','2019-05-13 15:02:28'),(9,'通信补贴','2019-05-13 15:02:38'),(10,'教育津贴','2019-05-13 15:03:58'),(11,'重疾保险','2019-05-13 15:04:31'),(12,'养老保险','2019-05-13 15:05:10'),(13,'医疗保险','2019-05-13 15:05:29'),(14,'失业保险','2019-05-13 15:06:03'),(15,'工伤保险','2019-05-13 15:06:31'),(16,'生育保险','2019-05-13 15:06:47'),(17,'住房公积金','2019-05-13 15:07:05'),(18,'意外保险','2019-05-13 15:08:10'),(19,'加班工资','2019-05-13 15:12:28'),(20,'股份分红','2019-05-13 15:15:06'),(21,'业绩奖金','2019-05-13 15:24:24'),(22,'个税扣减','2019-05-13 15:39:28'),(23,'计时工资','2019-05-13 15:40:22'),(24,'记次工资','2019-05-16 17:45:58'),(25,'计件工资','2019-05-16 17:46:20'),(26,'计分工资','2019-05-16 17:46:34'),(27,'计项工资','2019-05-16 17:46:44'),(28,'其他','2019-05-16 17:46:59');
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who`
--

DROP TABLE IF EXISTS `who`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `who` (
  `idwho` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name_en` varchar(45) COLLATE utf8_bin NOT NULL,
  `name_cn` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `org` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'organization',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwho`,`ID`,`name_en`,`name_cn`),
  UNIQUE KEY `idwho_UNIQUE` (`idwho`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `name_en_UNIQUE` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who`
--

LOCK TABLES `who` WRITE;
/*!40000 ALTER TABLE `who` DISABLE KEYS */;
INSERT INTO `who` VALUES (1,'320323198306180035','Hunter','陈浩','董事局','2019-05-12 20:20:03');
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

-- Dump completed on 2019-05-16 17:57:44
