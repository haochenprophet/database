CREATE DATABASE  IF NOT EXISTS `sop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sop`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sop
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
-- Table structure for table `sop`
--

DROP TABLE IF EXISTS `sop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sop` (
  `idsop` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `item` varchar(256) NOT NULL,
  `class` varchar(45) NOT NULL DEFAULT 'all',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `step` double DEFAULT NULL,
  `input` varchar(1024) DEFAULT NULL,
  `operate` varchar(1024) DEFAULT NULL,
  `output` varchar(1024) DEFAULT NULL,
  `archive` varchar(1024) DEFAULT NULL,
  `archive_type` varchar(45) DEFAULT NULL,
  `archive_md5` varchar(45) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `author` varchar(45) DEFAULT 'hunter',
  `status` varchar(45) DEFAULT 'normal',
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`idsop`,`uuid`,`item`),
  UNIQUE KEY `idsop_UNIQUE` (`idsop`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sop';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sop`
--

LOCK TABLES `sop` WRITE;
/*!40000 ALTER TABLE `sop` DISABLE KEYS */;
INSERT INTO `sop` VALUES (1,'3071e9af-a6b4-47bf-945c-4cab3c418a72','账单发票票据表单填写提交流程','all','2019-01-17 16:10:53',1,'准备条件','发票的电子文件，图片，照片\r\n发票号码，申请人身份证号码','','','','','','hunter','normal',0),(2,'432b8df3-f769-4781-9adf-a220584d71ce','账单发票票据表单填写提交流程','all','2019-01-17 16:12:11',2,'进入网址','http://www.red-arrows.cn/bill_add.php','','','','','','hunter','normal',0),(3,'c32854dc-6c76-486b-8b8d-7f697bf17e1f','账单发票票据表单填写提交流程','all','2019-01-17 16:22:23',3,'填写表单','选择发票文件，填写发票日期，发票号码InvoiceNumber，\r\n姓名who，身份证号码IDcard,发票产生地址where，大概事由what，\r\n资金流向to，\r\n发票金额amount 注意+-，备注','','','','','发票金额amount 流入公司为正+，否则为负','hunter','normal',0),(4,'059e077a-173e-4ecc-9eef-66865b9abe7a','账单发票票据表单填写提交流程','all','2019-01-17 16:27:24',4,'提交表单','1.点击提交按钮提交表单\r\n','查看是否生成记录','','','','如果遇到错误刷新填写页面重新填写','hunter','normal',0),(5,'a3fc3dbb-058d-4ffb-85e5-7a0f66f9bc08','创建新SOP流程','all','2019-01-28 15:12:20',1,'打开URL增加一个SOP项目','https://www.red-arrows.cn/sop_add_item.php','查看是否生成记录','','','','','hunter','normal',0),(6,'f856d0dc-8847-41b5-973d-a7575fb03200','创建新SOP流程','all','2019-01-28 15:20:12',2,'在浏览器打开URL增加SOP STEP','https://www.red-arrows.cn/sop_add.php','','','','','','hunter','normal',0),(7,'2293aa2e-60d9-4779-9ac1-b98e2397848d','创建新SOP流程','all','2019-01-28 15:27:20',2.1,'填写表单','1.选择ExistItem 如果所需要的item存在，则在 CreateItem 直接输入一个新item.\r\n2.填写类型 Class ，默认all\r\n3.修改Step 默认为1\r\n4.填写相应step 输入条件Input Condition\r\n5.填写相应操作Operate\r\n6.填写输出结果Output Result\r\n7.填写备注Remark，Status 状态，Priority优先级，Author作者，上传的文档Archive\r\n','','','','','','hunter','normal',0),(8,'8529d406-be6d-47f2-b477-983fb55dd4cc','创建新SOP流程','all','2019-01-28 15:28:28',3,'提交表单','点击提交表单','检测输出结果','','','','','hunter','normal',0);
/*!40000 ALTER TABLE `sop` ENABLE KEYS */;
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

--
-- Table structure for table `uuid`
--

DROP TABLE IF EXISTS `uuid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uuid` (
  `iduuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `name` varchar(256) NOT NULL,
  `class` varchar(45) NOT NULL DEFAULT 'all',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(200) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduuid`,`uuid`,`name`),
  UNIQUE KEY `idsop_item_UNIQUE` (`iduuid`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='uuid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuid`
--

LOCK TABLES `uuid` WRITE;
/*!40000 ALTER TABLE `uuid` DISABLE KEYS */;
INSERT INTO `uuid` VALUES (1,'3071e9af-a6b4-47bf-945c-4cab3c418a72','账单发票票据表单填写提交流程','all','2019-01-17 16:10:53',NULL,NULL,NULL,NULL),(2,'f8039627-3691-4357-9b83-880ad84c3b51','创建新SOP流程','all','2019-01-21 18:29:35','cn','hunter','normal',0);
/*!40000 ALTER TABLE `uuid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 15:30:58
