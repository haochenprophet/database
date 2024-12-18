CREATE DATABASE  IF NOT EXISTS `history` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `history`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: history
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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `idhistory` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'start',
  `end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `what` varchar(500) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(45) NOT NULL,
  `text` varchar(500) DEFAULT NULL,
  `where` varchar(100) DEFAULT NULL,
  `nation` varchar(100) DEFAULT NULL COMMENT 'country',
  `region` varchar(200) DEFAULT NULL COMMENT 'area',
  `who` varchar(100) DEFAULT NULL,
  `why` varchar(500) DEFAULT NULL,
  `evaluate` varchar(500) DEFAULT NULL,
  `how` varchar(500) DEFAULT NULL COMMENT 'how to do',
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `coordinate` varchar(45) DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL,
  `audio` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idhistory`,`uuid`,`time`,`when`,`end`,`what`,`title`,`type`,`priority`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'458f4335-75bf-41dc-b976-fe080c54753f','2019-09-24 17:37:44','2019-09-24 09:33:32','2019-09-24 09:33:32','建立全球统一记录历史数据库','记录历史','科技','用数据库记录历史','苏州','中国','江苏','赤箭智能科技','人类历史和事件记录混乱','帮助人类更加准确的记录历史','推动使用全球统一历史记录数据库应用',0,'check in','','Hunter','https://www.red-arrows.cn/history.php','','','','',''),(2,'767b5e19-590c-4f7a-800e-4758b738eca4','2019-09-25 13:42:20','2019-09-25 13:36:35','2019-09-25 13:36:35','北京大兴国际机场正式投运','北京大兴国际机场','经济','北京大兴国际机场正式投运','北京大兴国际机场','中国','北京','中国','北京国际航班众多，提升北京航空运载能力','加速北京航空运输能力','加强中国多用途机场建设，提升航运能力',0,'check in','','Hunter','https://www.thepaper.cn/newsDetail_forward_4519795','','','','',''),(3,'8af5f884-e994-457d-92e2-71273a5a34f1','2019-09-25 14:44:28','2019-09-25 14:37:42','2019-09-25 14:37:42','阿里巴巴旗下半导体公司平头哥发布AI推理芯片含光800','阿里巴巴旗下半导体公司平头哥发布AI推理芯片含光800','科技','平头哥成立以来发布的首款硬件产品，一秒可以处理7.8万张图片。','杭州云栖大会','中国','杭州','阿里巴巴达摩院','阿里巴巴转向技术驱动，进军全栈,芯片,系统,应用技术行列','中国芯片行业，正由市场主流的科技公司推动，逐步形成自成体系的产业','开放技术，构建生态，产生价值，形成商机，',0,'check in','','Hunter','https://www.thepaper.cn/newsDetail_forward_4520260','','','','','');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'computer','2019-07-03 14:35:17');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 16:15:07
