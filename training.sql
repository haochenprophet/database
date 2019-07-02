CREATE DATABASE  IF NOT EXISTS `training` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `training`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: training
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
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `idtraining` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL,
  `type` varchar(45) NOT NULL,
  `what` varchar(45) NOT NULL,
  `text` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL,
  `audio` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `who` varchar(100) DEFAULT NULL,
  `where` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtraining`,`uuid`,`time`,`title`,`priority`,`type`,`what`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'f949f1e9-a7bb-478b-9af1-a12d57c8d092','2019-05-29 20:55:20','莫尔斯电码.MP4','computer','信息编码','摩尔斯电码（又译为摩斯密码，Morse code）是一种时通时断的信号代码，通过不同的排列顺序来表达不同的英文字母、数字和标点符号。','https://baike.baidu.com/item/%E6%91%A9%E5%B0%94%E6%96%AF%E7%94%B5%E7%A0%81/1527853?fromtitle=%E8%8E%AB%E5%B0%94%E6%96%AF%E7%94%B5%E7%A0%81&fromid=1969326',0,'check in','','teaching/vedio/莫尔斯电码.MP4','teaching/audio/audio.txt','teaching/image/标准摩尔斯电码对照表.jpg','Hunter','苏州赤箭智能科技有限公司'),(2,'e51009f9-aee8-4596-84c7-64151aa37729','2019-05-31 16:51:11','ASCII（American Standard Code for Information Interchange:美国信息交换标准代码）','computer','信息编码','是基于拉丁字母的一套电脑编码系统，主要用于显示现代英语和其他西欧语言。它是现今最通用的信息交换标准，并等同于国际标准ISO/IEC 646','https://baike.baidu.com/item/ASCII/309296',0,'check in','','','','teaching/image/ASCII.jpg','Hunter','苏州赤箭智能科技有限公司'),(3,'7d60d9b1-10fe-45e3-9fc5-3e9c171a7826','2019-05-31 17:00:28','Unicode 统一字符集','computer','信息编码','它为每种语言中的每个字符设定了统一而且唯一的二进制编码，以满足跨语言、跨平台进行文本转换、处理的要求。1990年开始研发，1994年正式公布','https://unicode-table.com/cn/',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(4,'58f7fbc4-6b2e-44e6-8e0b-653fa4016929','2019-07-02 16:58:12','磁盘如何存储数据和信息的','computer','硬盘工作原理','利用磁性材料，的N极和S极分别表示0/1 ','https://www.bilibili.com/video/av23292731?from=search&seid=1776348324633341622',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(5,'4420c553-8d0b-4491-b559-d012d5d0ddbb','2019-07-02 17:16:19','CPU 是如何被生产制造的？','computer','CPU','1.设计电路 2.生产晶片 3.光刻电路 4.制造晶体管 5.注铜形成集成电路 6.封装测试','https://www.bilibili.com/video/av22768580?from=search&seid=10458902702751761659',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(6,'36ad1dd6-2dfa-4789-9651-baca12680b4a','2019-07-02 17:24:05','如何组装一台台式机','computer','电脑组装','1.机箱 2.主板 3.CPU 4.内存 5. 硬盘 6.电源 7.连接线','https://www.bilibili.com/video/av36071622?from=search&seid=5305596244694996071',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(7,'d45f0586-9b5e-4ca5-8b0d-bf0a171a20a5','2019-07-02 18:02:53','C语言程序设计','computer','计算机程序设计','关键字， 数据类型、运算符与表达式 ，函数，文件，数组，结构体，指针，类','teaching/archive/c语言.pdf',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(8,'2b826908-66b5-4b4e-b32b-6620a415968f','2019-07-02 18:05:48','C# 和 Visual Studio Code 入门','computer','计算机程序设计','.NET Core 提供了快速运行的模块化平台，用于创建在 Windows、Linux 和 macOS 上运行的应用程序。','https://docs.microsoft.com/zh-cn/dotnet/core/tutorials/with-visual-studio-code',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司');
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
INSERT INTO `what` VALUES (1,'信息编码','2019-05-31 16:42:26'),(2,'硬盘工作原理','2019-07-02 16:41:43'),(3,'CPU','2019-07-02 17:04:22'),(4,'电脑组装','2019-07-02 17:20:44'),(5,'计算机程序设计','2019-07-02 17:58:53');
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-02 18:17:54
