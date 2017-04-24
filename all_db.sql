-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: code
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
-- Current Database: `code`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `code` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_danish_ci */;

USE `code`;

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang` (
  `idlang` int(11) NOT NULL AUTO_INCREMENT,
  `lang` text NOT NULL,
  `language` text NOT NULL,
  PRIMARY KEY (`idlang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang`
--

LOCK TABLES `lang` WRITE;
/*!40000 ALTER TABLE `lang` DISABLE KEYS */;
INSERT INTO `lang` VALUES (1,'cn','中文简体'),(2,'en','English');
/*!40000 ALTER TABLE `lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string`
--

DROP TABLE IF EXISTS `string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string` (
  `idstring` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  `lang` varchar(45) NOT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who is the author',
  `where` text,
  `remark` text,
  PRIMARY KEY (`idstring`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
INSERT INTO `string` VALUES (1,'HOME','Home','en','2017-04-09 16:26:20','hunter','china','utf8'),(2,'PROJECT','Project','en','2017-04-09 16:38:59','hunter','china','utf8'),(3,'KNOWLEDGE','Knowledge','en','2017-04-09 16:43:15','hunter','china','utf8'),(4,'TEST','Test','en','2017-04-09 16:47:37','hunter','china','utf8'),(5,'CODE','Code','en','2017-04-09 17:00:46','hunter','china','utf8'),(6,'HOME','主页','cn','2017-04-10 14:05:51','hunter','china','utf8'),(7,'PROJECT','项目','cn','2017-04-10 14:19:08','hunter','china','utf8'),(8,'BOOKMARK','BookMark','en','2017-04-10 14:20:45','hunter','china','utf8'),(9,'BOOKMARK','书签','cn','2017-04-10 14:22:02','hunter','china','utf8'),(10,'KNOWLEDGE','知识','cn','2017-04-10 15:24:30','hunter','china','utf8'),(11,'TRANSLATE','翻译','cn','2017-04-10 15:27:12','hunter','china','utf8'),(12,'TRANSLATE','Translate','en','2017-04-10 15:33:59','hunter','china','utf8'),(13,'TEST','测试','cn','2017-04-10 15:37:41','hunter','china','utf8'),(14,'LAYOUT','Layout','en','2017-04-10 15:38:48','hunter','china','utf8'),(15,'LAYOUT','布局','cn','2017-04-10 15:39:45','hunter','china','utf8'),(16,'FILE','File','en','2017-04-10 15:41:06','hunter','china','utf8'),(17,'FILE','文件','cn','2017-04-10 15:41:22','hunter','china','utf8'),(18,'DOWNLOAD','Download','en','2017-04-10 15:41:49','hunter','china','utf8'),(19,'DOWNLOAD','下载','cn','2017-04-10 15:42:05','hunter','china','utf8'),(20,'GITTEST','GitTest','en','2017-04-10 15:42:28','hunter','china','utf8'),(21,'GITTEST','Git测试','cn','2017-04-10 15:46:45','hunter','china','utf8'),(22,'CODE','代码','cn','2017-04-10 15:47:17','hunter','china','utf8'),(23,'LOGIN','登录','cn','2017-04-10 15:47:47','hunter','china','utf8'),(24,'LOGIN','Login','en','2017-04-10 15:47:59','hunter','china','utf8'),(25,'REGISTER','Register','en','2017-04-10 15:48:33','hunter','china','utf8'),(26,'REGISTER','注册','cn','2017-04-10 15:48:49','hunter','china','utf8'),(27,'MAIL','邮件','cn','2017-04-10 15:49:13','hunter','china','utf8'),(28,'MAIL','Mail','en','2017-04-10 15:49:35','hunter','china','utf8'),(29,'PATENT_SYS','Patent_SYS','en','2017-04-10 15:50:19','hunter','china','utf8'),(30,'PATENT_SYS','专利系统','cn','2017-04-10 15:50:36','hunter','china','utf8'),(31,'LANGUAGE','语言','cn','2017-04-10 18:27:30','hunter','china','utf8'),(32,'LANGUAGE','Language','en','2017-04-10 18:28:13','hunter','china','utf8'),(33,'USER_NAME','Username','en','2017-04-13 10:34:53','hunter','china','utf8'),(34,'USER_NAME','用户名','cn','2017-04-13 10:35:14','hunter','china','utf8'),(35,'PASSWORD','密码','cn','2017-04-13 10:35:41','hunter','china','utf8'),(36,'PASSWORD','Password','en','2017-04-13 10:35:56','hunter','china','utf8'),(37,'CONFIRM_PASSWORD','Confirm Password','en','2017-04-13 10:47:29','hunter','china','utf8'),(38,'CONFIRM_PASSWORD','确认密码','cn','2017-04-13 10:48:07','hunter','china','utf8'),(39,'EMAIL','Email','en','2017-04-13 10:49:43','hunter','china','utf8'),(40,'EMAIL','电子邮件','cn','2017-04-13 10:50:13','hunter','china','utf8'),(41,'PASSWORD_RECOVER_QUESTION','Password recover question','en','2017-04-13 10:52:18','hunter','china','utf8'),(42,'PASSWORD_RECOVER_QUESTION','密码恢复问题','cn','2017-04-13 10:52:32','hunter','china','utf8'),(43,'PASSWORD_RECOVER_ANSWER','Password recover answer','en','2017-04-13 10:54:21','hunter','china','utf8'),(44,'PASSWORD_RECOVER_ANSWER','密码恢复答案','cn','2017-04-13 10:54:36','hunter','china','utf8'),(45,'PASSWORD_RECOVER_MAIL','Password recover mail','en','2017-04-13 10:55:45','hunter','china','utf8'),(46,'PASSWORD_RECOVER_MAIL','密码恢复邮箱','cn','2017-04-13 10:56:14','hunter','china','utf8'),(47,'COMMIT','提交','cn','2017-04-13 11:07:59','hunter','china','utf8'),(48,'COMMIT','Commit','en','2017-04-13 11:08:14','hunter','china','utf8'),(49,'COMMIT_MESSAGE','提交信息','cn','2017-04-13 17:34:52','hunter','china','utf8'),(50,'COMMIT_MESSAGE','Commit Message','en','2017-04-13 17:35:20','hunter','china','utf8'),(51,'OPTIONS','选项','cn','2017-04-13 17:36:25','hunter','china','utf8'),(52,'OPTIONS','Options','en','2017-04-13 17:36:40','hunter','china','utf8'),(53,'TITLE','标题','cn','2017-04-14 13:39:45','hunter','china','utf8'),(54,'TITLE','Title','en','2017-04-14 13:39:59','hunter','china','utf8'),(55,'URL','URL','en','2017-04-14 13:40:33','hunter','china','utf8'),(56,'URL','URL','cn','2017-04-14 13:40:39','hunter','china','utf8'),(57,'TYPE','Type','en','2017-04-14 13:41:12','hunter','china','utf8'),(58,'TYPE','类型','cn','2017-04-14 13:41:24','hunter','china','utf8'),(59,'STATUS','状态','cn','2017-04-14 13:41:51','hunter','china','utf8'),(60,'STATUS','Status','en','2017-04-14 13:42:25','hunter','china','utf8'),(61,'REMARK','备注','cn','2017-04-14 13:42:59','hunter','china','utf8'),(62,'REMARK','Remark','en','2017-04-14 13:43:17','hunter','china','utf8'),(63,'AUTHOR','Author','en','2017-04-14 13:43:41','hunter','china','utf8'),(64,'AUTHOR','作者','cn','2017-04-14 13:43:57','hunter','china','utf8'),(65,'FILENAME','Filename','en','2017-04-14 14:45:50','hunter','china','utf8'),(66,'FILENAME','文件名','cn','2017-04-14 14:46:08','hunter','china','utf8'),(67,'INDIVIDUAL_CENTER','IndividualCenter','en','2017-04-14 17:02:17','hunter','china','utf8'),(68,'INDIVIDUAL_CENTER','个人中心','cn','2017-04-14 17:02:34','hunter','china','utf8'),(69,'EXIT','退出','cn','2017-04-14 17:02:59','hunter','china','utf8'),(70,'EXIT','Exit','en','2017-04-14 17:03:10','hunter','china','utf8'),(71,'MENU','菜单','cn','2017-04-14 19:53:59','hunter','china','utf8'),(72,'MENU','Menu','en','2017-04-14 19:54:13','hunter','china','utf8'),(73,'PROJECT_NAME','项目名称','cn','2017-04-20 22:06:31','hunter','china','utf8'),(74,'PROJECT_NAME','ProjectName','en','2017-04-20 22:06:50','hunter','china','utf8'),(75,'SUBMIT','提交','cn','2017-04-20 22:14:15','hunter','china','utf8'),(76,'SUBMIT','Submit','en','2017-04-20 22:14:34','hunter','china','utf8'),(77,'LAW','法律法规','cn','2017-04-23 16:04:30','hunter','china','utf8'),(78,'LAW','Law','en','2017-04-23 16:05:00','hunter','china','utf8'),(79,'BOOK_NAME','BookName','en','2017-04-23 16:47:22','hunter','china','utf8'),(80,'BOOK_NAME','书名','cn','2017-04-23 16:47:43','hunter','china','utf8'),(81,'ORIGINAL','Original','en','2017-04-23 16:49:38','hunter','china','utf8'),(82,'ORIGINAL','原文','cn','2017-04-23 16:49:54','hunter','china','utf8'),(83,'MARK','标注','cn','2017-04-23 16:50:29','hunter','china','utf8'),(84,'MARK','Mark','en','2017-04-23 16:50:46','hunter','china','utf8'),(85,'COMMENT','Comment','en','2017-04-23 16:52:13','hunter','china','utf8'),(86,'COMMENT','评注','cn','2017-04-23 16:53:08','hunter','china','utf8'),(87,'LOCATION','Location','en','2017-04-23 16:54:21','hunter','china','utf8'),(88,'LOCATION','区位','cn','2017-04-23 16:54:54','hunter','china','utf8'),(89,'DEVICE','Device','en','2017-04-23 16:55:32','hunter','china','utf8'),(90,'DEVICE','设备','cn','2017-04-23 16:55:45','hunter','china','utf8'),(91,'IMAGE','Image','en','2017-04-23 16:56:29','hunter','china','utf8'),(92,'IMAGE','图片','cn','2017-04-23 16:56:52','hunter','china','utf8'),(93,'AUDIO','Audio','en','2017-04-23 16:57:35','hunter','china','utf8'),(94,'AUDIO','音频','cn','2017-04-23 16:57:52','hunter','china','utf8'),(95,'VEDIO','Vedio','en','2017-04-23 16:58:22','hunter','china','utf8'),(96,'VEDIO','视频','cn','2017-04-23 16:58:37','hunter','china','utf8');
/*!40000 ALTER TABLE `string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `idtemp` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL COMMENT 'Who is the author',
  `where` text NOT NULL,
  `name` text NOT NULL,
  `temp` text NOT NULL,
  `time` datetime NOT NULL,
  `code_type` varchar(45) NOT NULL,
  `comment` text,
  `remark` text,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtemp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'code'
--

--
-- Current Database: `company`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `company` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `company`;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL,
  `item` text,
  `type` varchar(45) DEFAULT NULL COMMENT 'income and expenses',
  `infor` text,
  `from_who` text,
  `to_who` varchar(45) DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL COMMENT 'Out of account',
  `to` varchar(45) DEFAULT NULL COMMENT 'Go to account number',
  `serial_number` varchar(45) DEFAULT NULL,
  `how` float DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `location` text,
  `approved_person` varchar(45) DEFAULT NULL COMMENT 'Signature, or certification, or confirmation',
  `receipt` blob COMMENT 'Transaction credentials',
  `remark` text COMMENT 'Place of the transaction',
  PRIMARY KEY (`idaccount`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `idattendance` int(11) NOT NULL,
  `who` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where attendance',
  `worker_number` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `abnormal` varchar(45) DEFAULT NULL,
  `ab_type` varchar(45) DEFAULT NULL,
  `what_ab` text,
  `ab_s_time` datetime DEFAULT NULL,
  `ab_e_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idattendance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `idcode` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `what` text,
  `where` varchar(45) DEFAULT NULL,
  `what_time` varchar(45) DEFAULT NULL COMMENT 'last create time ',
  `description` varchar(45) DEFAULT NULL COMMENT '{inpu,out put , usage }',
  `input` varchar(45) DEFAULT NULL COMMENT 'code input ',
  `ouput` varchar(45) DEFAULT NULL COMMENT 'code out put',
  `language` varchar(45) DEFAULT NULL COMMENT 'c ,c++ ,java,python, shell ,sql , object-c ,asm , html,php, js, asp , make, and so on ',
  `status` varchar(45) DEFAULT NULL COMMENT 'Verification passed, unauthenticated, under development, published, debug',
  `remark` text,
  PRIMARY KEY (`idcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commit`
--

DROP TABLE IF EXISTS `commit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commit` (
  `idcommit` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL,
  `what` text,
  `where` text,
  `what_title` varchar(45) NOT NULL,
  `what_time` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcommit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commit`
--

LOCK TABLES `commit` WRITE;
/*!40000 ALTER TABLE `commit` DISABLE KEYS */;
/*!40000 ALTER TABLE `commit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creative`
--

DROP TABLE IF EXISTS `creative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creative` (
  `idcreative` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who''s creative',
  `work_number` int(11) DEFAULT NULL,
  `where` text COMMENT 'Creative location',
  `time` datetime DEFAULT NULL COMMENT 'Creative time',
  `what` text COMMENT 'Creative content',
  `how` text COMMENT 'How creative content is realized',
  `status` varchar(45) DEFAULT NULL COMMENT 'Has been achieved, Is being realized, Plan to achieve ,can not achieve',
  `remark` text,
  PRIMARY KEY (`idcreative`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creative`
--

LOCK TABLES `creative` WRITE;
/*!40000 ALTER TABLE `creative` DISABLE KEYS */;
/*!40000 ALTER TABLE `creative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `where` text,
  `type` varchar(45) DEFAULT NULL,
  `infor` text,
  `starus` varchar(45) DEFAULT NULL,
  `remark` text,
  `contribution` double DEFAULT NULL COMMENT 'Contribution value',
  `level` int(11) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `iddevice` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` text NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL COMMENT 'Existing location or place of sale.',
  `count` int(11) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `worker_number` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Lost,Damage,Normal,Lend,sell ',
  `custodian` varchar(45) DEFAULT NULL COMMENT 'By hand people, Lend or sell .',
  `borrower` varchar(45) DEFAULT NULL,
  `borrow_time` datetime DEFAULT NULL,
  `return_time` datetime DEFAULT NULL COMMENT 'Return or unsubscribe',
  `sell_time` datetime DEFAULT NULL,
  `price` text COMMENT 'Cost or purchase price',
  `sell_price` text COMMENT 'Shipping or monopoly prices',
  `remark` text,
  PRIMARY KEY (`iddevice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `idfeedback` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who''s feedback ,user name ,or login id ',
  `worker_number` int(11) DEFAULT NULL,
  `what` text COMMENT 'What is the content of the feedback',
  `where` text COMMENT 'Where the feedback, feedback there',
  `how` text,
  `what_time` datetime DEFAULT NULL COMMENT 'feedback time ',
  `fb_value` int(11) DEFAULT NULL COMMENT 'The value of the feedback information',
  `fb_priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Has responded, has not replied, has responded, has been processed, has not yet been processed, processed',
  `remark` varchar(45) DEFAULT NULL COMMENT 'How to respond to or process feedback',
  PRIMARY KEY (`idfeedback`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idea` (
  `ididea` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `what` text,
  `who` varchar(45) DEFAULT NULL COMMENT 'owner job_number ',
  `worker_number` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `location` text,
  `remark` text,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ididea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idea`
--

LOCK TABLES `idea` WRITE;
/*!40000 ALTER TABLE `idea` DISABLE KEYS */;
/*!40000 ALTER TABLE `idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `idissue` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL COMMENT 'Find the problem worker number',
  `who` varchar(45) DEFAULT NULL COMMENT 'Who found the problem.',
  `who_owner` varchar(45) DEFAULT NULL COMMENT 'Who will solve the problem',
  `what` text COMMENT 'what problem is found and problem description .',
  `how` text COMMENT 'How to solve the problem.',
  `where` text COMMENT 'Where the problem was found',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Processing ,Has been resolved,unsolved,Has been revoked',
  `remark` text,
  PRIMARY KEY (`idissue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market` (
  `idmarket` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `who_owner` varchar(45) DEFAULT NULL,
  `what_want` varchar(45) DEFAULT NULL,
  `when_start` datetime DEFAULT NULL,
  `when_end` datetime DEFAULT NULL,
  `how_count` int(11) DEFAULT NULL,
  `how_money` double DEFAULT NULL,
  `where` text,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idmarket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) NOT NULL,
  `chinese_name` text,
  `english_name` text,
  `gender` varchar(4) DEFAULT NULL,
  `Identity_number` text,
  `birthday` date DEFAULT NULL,
  `work_email` text,
  `private_email` text,
  `contact_number` text,
  `social_account` text,
  `bank_card` text,
  `houses_provident_fund` text,
  `position` text,
  `department` text,
  `basic_salary` float DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `education` text,
  `graduated_school` text,
  `health_condition` text,
  `hobby` text,
  `personcol` text,
  `specialty` text,
  `work_experience` text,
  `ability` text,
  `status` text,
  `remark` text,
  PRIMARY KEY (`idperson`,`worker_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `what` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production` (
  `idproduction` int(11) NOT NULL AUTO_INCREMENT COMMENT 'production management',
  `what` varchar(45) DEFAULT NULL,
  `how_many` varchar(45) DEFAULT NULL COMMENT 'How much to produce',
  `how_time` int(11) DEFAULT NULL COMMENT 'how much time is required',
  `when_start` datetime DEFAULT NULL COMMENT 'When to start',
  `when_end` datetime DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where to produce',
  `priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'complete,processing,has not started',
  `remark` text,
  PRIMARY KEY (`idproduction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release`
--

DROP TABLE IF EXISTS `release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release` (
  `idrelease` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `what` varchar(45) DEFAULT NULL,
  `when` datetime DEFAULT NULL,
  `where` text,
  `version` varchar(45) DEFAULT NULL,
  `infor` text,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idrelease`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release`
--

LOCK TABLES `release` WRITE;
/*!40000 ALTER TABLE `release` DISABLE KEYS */;
/*!40000 ALTER TABLE `release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair`
--

DROP TABLE IF EXISTS `repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repair` (
  `idrepair` int(11) NOT NULL AUTO_INCREMENT,
  `what` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `who_owner` varchar(45) DEFAULT NULL,
  `when_shart` datetime DEFAULT NULL,
  `when_end` datetime DEFAULT NULL,
  `how_rep` text,
  `where` text,
  `cost` double DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idrepair`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair`
--

LOCK TABLES `repair` WRITE;
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `idrequest` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) NOT NULL,
  `who` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `ifnor` text,
  `how_many` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `where` text COMMENT 'location',
  `remark` text,
  `status` varchar(45) DEFAULT NULL COMMENT 'In the request, In response,finish ,break',
  `feedback` text COMMENT 'feed back information ',
  PRIMARY KEY (`idrequest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `idreview` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '#0. idea/creative->\n#1. issue/request->\n#2. plan/source->\n#3. code/action->\n#4. commit/schedule->\n#5. test/Quality->\n#6. review/repair->\n',
  `id_type` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `work_number` varchar(45) DEFAULT NULL,
  `what` text COMMENT 'view content',
  `what_time` datetime DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idreview`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `idservice` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who made a service request',
  `who_owner` varchar(45) DEFAULT NULL COMMENT 'The owner of the request',
  `what` varchar(45) DEFAULT NULL COMMENT 'Request content',
  `where` varchar(45) DEFAULT NULL COMMENT 'The requested location',
  `contact` text,
  `worker_number` int(11) DEFAULT NULL COMMENT 'Request the worker number of the attribution',
  `how` text COMMENT 'How to fix the request',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `feedback` text,
  `remark` text,
  PRIMARY KEY (`idservice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `idsource` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who can provide resources',
  `what` varchar(45) DEFAULT NULL COMMENT 'What resources name can be provided,  ',
  `type` varchar(45) DEFAULT NULL COMMENT 'Resource Type',
  `how` int(11) DEFAULT NULL COMMENT 'How much resources .',
  `price` double DEFAULT NULL COMMENT 'how money',
  `where` text COMMENT 'Where is the resource location?',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'How is the resource state?Available, not available ,Normal, damaged, occupied, does not exist',
  `remark` text COMMENT 'how much is it',
  PRIMARY KEY (`idsource`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `work_number` int(11) DEFAULT NULL,
  `what` text,
  `how` text COMMENT 'How to test and test methods.',
  `where` text,
  `idrequest` int(11) DEFAULT NULL COMMENT 'Testing requirements, link form table request',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `idwork` int(11) NOT NULL,
  `work_content` text,
  `owner` varchar(45) DEFAULT NULL,
  `worker_number` int(11) NOT NULL,
  `project` varchar(45) DEFAULT NULL COMMENT 'Affiliated projects',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Finish,Hang,suspend,Doing Running,Stop,Abolished . ',
  `remark` text COMMENT 'ower job_number',
  PRIMARY KEY (`idwork`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'company'
--

--
-- Current Database: `sys`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sys` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sys`;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2017-02-21 07:25:25',NULL),('diagnostics.include_raw','OFF','2017-02-21 07:25:25',NULL),('ps_thread_trx_info.max_length','65535','2017-02-21 07:25:25',NULL),('statement_performance_analyzer.limit','100','2017-02-21 07:25:25',NULL),('statement_performance_analyzer.view',NULL,'2017-02-21 07:25:25',NULL),('statement_truncate_len','64','2017-02-21 07:25:25',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_insert_set_user` BEFORE INSERT ON `sys_config` FOR EACH ROW BEGIN IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN SET NEW.set_by = USER(); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_update_set_user` BEFORE UPDATE ON `sys_config` FOR EACH ROW BEGIN IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN SET NEW.set_by = USER(); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sys'
--
/*!50003 DROP FUNCTION IF EXISTS `extract_schema_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_schema_from_file_name`( path VARCHAR(512) ) RETURNS varchar(64) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw file path, and attempts to extract the schema name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Currently relies on the fact that a table data file will be within a \n specified database directory (will not work with partitions or tables\n that specify an individual DATA_DIRECTORY).\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the schema name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n +----------------------------------------------------------------------------+\n | sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n +----------------------------------------------------------------------------+\n | employees                                                                  |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `extract_table_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_table_from_file_name`( path VARCHAR(512) ) RETURNS varchar(64) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw file path, and extracts the table name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the table name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n +---------------------------------------------------------------------------+\n | sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n +---------------------------------------------------------------------------+\n | employee                                                                  |\n +---------------------------------------------------------------------------+\n 1 row in set (0.02 sec)\n '
BEGIN RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_bytes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_bytes`( bytes TEXT ) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw bytes value, and converts it to a human readable format.\n \n Parameters\n \n bytes (TEXT):\n A raw bytes value.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n +----------+\n | size     |\n +----------+\n | 2.09 PiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(2348723492723) AS size;\n +----------+\n | size     |\n +----------+\n | 2.14 TiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(23487234) AS size;\n +-----------+\n | size      |\n +-----------+\n | 22.40 MiB |\n +-----------+\n 1 row in set (0.00 sec)\n '
BEGIN IF bytes IS NULL THEN RETURN NULL; ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), ' PiB'); ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), ' TiB'); ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), ' GiB'); ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), ' MiB'); ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), ' KiB'); ELSE RETURN CONCAT(ROUND(bytes, 0), ' bytes'); END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_path`( in_path VARCHAR(512) ) RETURNS varchar(512) CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw path value, and strips out the datadir or tmpdir\n replacing with @@datadir and @@tmpdir respectively. \n \n Also normalizes the paths across operating systems, so backslashes\n on Windows are converted to forward slashes\n \n Parameters\n \n path (VARCHAR(512)):\n The raw file path value to format.\n \n Returns\n \n VARCHAR(512) CHARSET UTF8\n \n Example\n \n mysql> select @@datadir;\n +-----------------------------------------------+\n | @@datadir                                     |\n +-----------------------------------------------+\n | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n +-----------------------------------------------+\n 1 row in set (0.06 sec)\n \n mysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n +--------------------------+\n | path                     |\n +--------------------------+\n | @@datadir/mysql/proc.MYD |\n +--------------------------+\n 1 row in set (0.03 sec)\n '
BEGIN DECLARE v_path VARCHAR(512); DECLARE v_undo_dir VARCHAR(1024);  DECLARE path_separator CHAR(1) DEFAULT '/';  IF @@global.version_compile_os LIKE 'win%' THEN SET path_separator = '\\'; END IF;  IF in_path LIKE '/private/%' THEN SET v_path = REPLACE(in_path, '/private', ''); ELSE SET v_path = in_path; END IF;  SET v_undo_dir = IFNULL((SELECT VARIABLE_VALUE FROM performance_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');  IF v_path IS NULL THEN RETURN NULL; ELSEIF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.slave_load_tmpdir, IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.slave_load_tmpdir, CONCAT('@@slave_load_tmpdir', IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.innodb_data_home_dir, IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.innodb_data_home_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.innodb_log_group_home_dir, IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.innodb_log_group_home_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(v_undo_dir, IF(SUBSTRING(v_undo_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, v_undo_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_undo_dir, -1) = path_separator, path_separator, ''))); ELSEIF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, ''))); END IF;  RETURN v_path; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_statement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_statement`( statement LONGTEXT ) RETURNS longtext CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Formats a normalized statement, truncating it if it is > 64 characters long by default.\n \n To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n variable with `sys_config` table to a different value. Alternatively, to change it just for just \n your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n \n Useful for printing statement related data from Performance Schema from \n the command line.\n \n Parameters\n \n statement (LONGTEXT): \n The statement to format.\n \n Returns\n \n LONGTEXT\n \n Example\n \n mysql> SELECT sys.format_statement(digest_text)\n ->   FROM performance_schema.events_statements_summary_by_digest\n ->  ORDER by sum_timer_wait DESC limit 5;\n +-------------------------------------------------------------------+\n | sys.format_statement(digest_text)                                 |\n +-------------------------------------------------------------------+\n | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n +-------------------------------------------------------------------+\n 5 rows in set (0.00 sec)\n '
BEGIN IF @sys.statement_truncate_len IS NULL THEN SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64); END IF;  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' '); ELSE  RETURN REPLACE(statement, '\n', ' '); END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_time`( picoseconds TEXT ) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a raw picoseconds value, and converts it to a human readable form.\n \n Picoseconds are the precision that all latency values are printed in \n within Performance Schema, however are not user friendly when wanting\n to scan output from the command line.\n \n Parameters\n \n picoseconds (TEXT): \n The raw picoseconds value to convert.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select format_time(342342342342345);\n +------------------------------+\n | format_time(342342342342345) |\n +------------------------------+\n | 00:05:42                     |\n +------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(342342342);\n +------------------------+\n | format_time(342342342) |\n +------------------------+\n | 342.34 us              |\n +------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(34234);\n +--------------------+\n | format_time(34234) |\n +--------------------+\n | 34.23 ns           |\n +--------------------+\n 1 row in set (0.00 sec)\n '
BEGIN IF picoseconds IS NULL THEN RETURN NULL; ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w'); ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d'); ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h'); ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m'); ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s'); ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms'); ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us'); ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns'); ELSE RETURN CONCAT(picoseconds, ' ps'); END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_add`( in_list TEXT, in_add_value TEXT ) RETURNS text CHARSET utf8
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a list, and a value to add to the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to add a value to\n \n in_add_value (TEXT):\n The value to add to the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------+\n | @@sql_mode                                                                        |\n +-----------------------------------------------------------------------------------+\n | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\n Query OK, 0 rows affected (0.06 sec)\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n '
BEGIN  IF (in_add_value IS NULL) THEN SIGNAL SQLSTATE '02200' SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL', MYSQL_ERRNO = 1138; END IF;  IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN RETURN in_add_value; END IF;  RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_drop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_drop`( in_list TEXT, in_drop_value TEXT ) RETURNS text CHARSET utf8
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to drop a value from\n \n in_drop_value (TEXT):\n The value to drop from the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\n Query OK, 0 rows affected (0.03 sec)\n \n mysql> select @@sql_mode;\n +----------------------------------------------------------------------------+\n | @@sql_mode                                                                 |\n +----------------------------------------------------------------------------+\n | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n '
BEGIN  IF (in_drop_value IS NULL) THEN SIGNAL SQLSTATE '02200' SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL', MYSQL_ERRNO = 1138; END IF;  IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN RETURN in_list; END IF;  RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_account_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_account_enabled`( in_host VARCHAR(60),  in_user VARCHAR(32) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Determines whether instrumentation of an account is enabled \n within Performance Schema.\n \n Parameters\n \n in_host VARCHAR(60): \n The hostname of the account to check.\n in_user VARCHAR(32):\n The username of the account to check.\n \n Returns\n \n ENUM(''YES'', ''NO'', ''PARTIAL'')\n \n Example\n \n mysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n +------------------------------------------------+\n | sys.ps_is_account_enabled(''localhost'', ''root'') |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n 1 row in set (0.01 sec)\n '
BEGIN RETURN IF(EXISTS(SELECT 1 FROM performance_schema.setup_actors WHERE (`HOST` = '%' OR in_host LIKE `HOST`) AND (`USER` = '%' OR `USER` = in_user) AND (`ENABLED` = 'YES') ), 'YES', 'NO' ); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_consumer_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_consumer_enabled`( in_consumer varchar(64) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n within the Performance Schema.\n \n Parameters\n \n in_consumer VARCHAR(64): \n The name of the consumer to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n +-----------------------------------------------------+\n | sys.ps_is_consumer_enabled(''events_stages_history'') |\n +-----------------------------------------------------+\n | NO                                                  |\n +-----------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN ( SELECT (CASE WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO') ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES' AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current') ) = 'YES', 'YES', 'NO') END) AS IsEnabled FROM performance_schema.setup_consumers c INNER JOIN performance_schema.setup_consumers cg INNER JOIN performance_schema.setup_consumers ct WHERE cg.NAME       = 'global_instrumentation' AND ct.NAME   = 'thread_instrumentation' AND c.NAME    = in_consumer ); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_enabled`( in_instrument VARCHAR(128) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns whether an instrument is enabled by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n +--------------------------------------------------------------+\n | sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n +--------------------------------------------------------------+\n | YES                                                          |\n +--------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_enabled ENUM('YES', 'NO');  SET v_enabled = IF(in_instrument LIKE 'wait/io/file/%' OR in_instrument LIKE 'wait/io/table/%' OR in_instrument LIKE 'statement/%' OR in_instrument LIKE 'memory/performance_schema/%' OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')  OR in_instrument LIKE 'stage/innodb/%' OR in_instrument = 'stage/sql/copy to tmp table'  , 'YES', 'NO' );  RETURN v_enabled; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_timed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_timed`( in_instrument VARCHAR(128) ) RETURNS enum('YES','NO') CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns whether an instrument is timed by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(''YES'', ''NO'')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n +------------------------------------------------------------+\n | sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n +------------------------------------------------------------+\n | YES                                                        |\n +------------------------------------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_timed ENUM('YES', 'NO');  SET v_timed = IF(in_instrument LIKE 'wait/io/file/%' OR in_instrument LIKE 'wait/io/table/%' OR in_instrument LIKE 'statement/%' OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')  OR in_instrument LIKE 'stage/innodb/%' OR in_instrument = 'stage/sql/copy to tmp table'  , 'YES', 'NO' );  RETURN v_timed; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_thread_instrumented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_thread_instrumented`( in_connection_id BIGINT UNSIGNED ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Checks whether the provided connection id is instrumented within Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to check.\n \n Returns\n \n ENUM(''YES'', ''NO'', ''UNKNOWN'')\n \n Example\n \n mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n +------------------------------------------------+\n | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n '
BEGIN DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');  IF (in_connection_id IS NULL) THEN RETURN NULL; END IF;  SELECT INSTRUMENTED INTO v_enabled FROM performance_schema.threads  WHERE PROCESSLIST_ID = in_connection_id;  IF (v_enabled IS NULL) THEN RETURN 'UNKNOWN'; ELSE RETURN v_enabled; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_account`( in_thread_id BIGINT UNSIGNED ) RETURNS text CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Return the user@host account for the given Performance Schema thread id.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the account for.\n \n Example\n \n mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n +-----------+------------------+------------------+\n | thread_id | processlist_user | processlist_host |\n +-----------+------------------+------------------+\n |        23 | NULL             | NULL             |\n |        30 | root             | localhost        |\n |        31 | msandbox         | localhost        |\n |        32 | msandbox         | localhost        |\n +-----------+------------------+------------------+\n 4 rows in set (0.00 sec)\n \n mysql> select sys.ps_thread_account(31);\n +---------------------------+\n | sys.ps_thread_account(31) |\n +---------------------------+\n | msandbox@localhost        |\n +---------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN (SELECT IF( type = 'FOREGROUND', CONCAT(processlist_user, '@', processlist_host), type ) AS account FROM `performance_schema`.`threads` WHERE thread_id = in_thread_id); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_id`( in_connection_id BIGINT UNSIGNED ) RETURNS bigint(20) unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Return the Performance Schema THREAD_ID for the specified connection ID.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to return the thread id for. If NULL, the current\n connection thread id is returned.\n \n Example\n \n mysql> SELECT sys.ps_thread_id(79);\n +----------------------+\n | sys.ps_thread_id(79) |\n +----------------------+\n |                   98 |\n +----------------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n +-----------------------------------+\n | sys.ps_thread_id(CONNECTION_ID()) |\n +-----------------------------------+\n |                                98 |\n +-----------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN (SELECT THREAD_ID FROM `performance_schema`.`threads` WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID()) ); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_stack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_stack`( thd_id BIGINT UNSIGNED, debug BOOLEAN ) RETURNS longtext CHARSET latin1
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Outputs a JSON formatted stack of all statements, stages and events\n within Performance Schema for the specified thread.\n \n Parameters\n \n thd_id (BIGINT UNSIGNED):\n The id of the thread to trace. This should match the thread_id\n column from the performance_schema.threads table.\n in_verbose (BOOLEAN):\n Include file:lineno information in the events.\n \n Example\n \n (line separation added for output)\n \n mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n *************************** 1. row ***************************\n thread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n "mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events": \n [{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info": \n "sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n ...\n '
BEGIN  DECLARE json_objects LONGTEXT;   UPDATE performance_schema.threads SET instrumented = 'NO' WHERE processlist_id = CONNECTION_ID();   SET SESSION group_concat_max_len=@@global.max_allowed_packet;  SELECT GROUP_CONCAT(CONCAT( '{' , CONCAT_WS( ', ' , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"') , CONCAT('"event_id": "', event_id, '"') , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))   , CONCAT( '"event_info": "' , CASE WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\') WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\') ELSE event_name END , '"' ) , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"') , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"') , CASE  WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"' WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"' WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"' WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"' WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"' WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"' WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"' WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"' WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"' WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"' ELSE ''  END                    ) , '}' ) ORDER BY event_id ASC SEPARATOR ',') event INTO json_objects FROM (  (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,  CONCAT(sql_text, '\\n', 'errors: ', errors, '\\n', 'warnings: ', warnings, '\\n', 'lock time: ', ROUND(lock_time/1000000, 2),'us\\n', 'rows affected: ', rows_affected, '\\n', 'rows sent: ', rows_sent, '\\n', 'rows examined: ', rows_examined, '\\n', 'tmp tables: ', created_tmp_tables, '\\n', 'tmp disk tables: ', created_tmp_disk_tables, '\\n', 'select scan: ', select_scan, '\\n', 'select full join: ', select_full_join, '\\n', 'select full range join: ', select_full_range_join, '\\n', 'select range: ', select_range, '\\n', 'select range check: ', select_range_check, '\\n',  'sort merge passes: ', sort_merge_passes, '\\n', 'sort rows: ', sort_rows, '\\n', 'sort range: ', sort_range, '\\n', 'sort scan: ', sort_scan, '\\n', 'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n', 'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n' ) AS wait_info FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id) UNION  (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)  UNION  (SELECT thread_id, event_id,  CONCAT(event_name ,  IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),  IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''), IF(event_name LIKE 'wait/io/file%', '\\n', ''), IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),  IF(object_name IS NOT NULL,  IF (event_name LIKE 'wait/io/socket%', CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)), object_name), ''),  IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n' ) AS event_name, timer_wait, timer_start, nesting_event_id, source AS wait_info FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events  ORDER BY event_id;  RETURN CONCAT('{',  CONCAT_WS(',',  '"rankdir": "LR"', '"nodesep": "0.10"', CONCAT('"stack_created": "', NOW(), '"'), CONCAT('"mysql_version": "', VERSION(), '"'), CONCAT('"mysql_user": "', CURRENT_USER(), '"'), CONCAT('"events": [', IFNULL(json_objects,''), ']') ), '}');  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_trx_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_trx_info`( in_thread_id BIGINT UNSIGNED ) RETURNS longtext CHARSET utf8
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns a JSON object with info on the given threads current transaction, \n and the statements it has already executed, derived from the\n performance_schema.events_transactions_current and\n performance_schema.events_statements_history tables (so the consumers \n for these also have to be enabled within Performance Schema to get full\n data in the object).\n \n When the output exceeds the default truncation length (65535), a JSON error\n object is returned, such as:\n \n { "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n \n Similar error objects are returned for other warnings/and exceptions raised\n when calling the function.\n \n The max length of the output of this function can be controlled with the\n ps_thread_trx_info.max_length variable set via sys_config, or the\n @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the transaction info for.\n \n Example\n \n SELECT sys.ps_thread_trx_info(48)\\G\n *************************** 1. row ***************************\n sys.ps_thread_trx_info(48): [\n {\n "time": "790.70 us",\n "state": "COMMITTED",\n "mode": "READ WRITE",\n "autocommitted": "NO",\n "gtid": "AUTOMATIC",\n "isolation": "REPEATABLE READ",\n "statements_executed": [\n {\n "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n "time": "471.02 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 1,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n },\n {\n "sql_text": "COMMIT",\n "time": "254.42 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 0,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n }\n ]\n },\n {\n "time": "426.20 us",\n "state": "COMMITTED",\n "mode": "READ WRITE",\n "autocommitted": "NO",\n "gtid": "AUTOMATIC",\n "isolation": "REPEATABLE READ",\n "statements_executed": [\n {\n "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n "time": "107.33 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 1,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n },\n {\n "sql_text": "COMMIT",\n "time": "213.23 us",\n "schema": "trx",\n "rows_examined": 0,\n "rows_affected": 0,\n "rows_sent": 0,\n "tmp_tables": 0,\n "tmp_disk_tables": 0,\n "sort_rows": 0,\n "sort_merge_passes": 0\n }\n ]\n }\n ]\n 1 row in set (0.03 sec)\n '
BEGIN DECLARE v_output LONGTEXT DEFAULT '{}'; DECLARE v_msg_text TEXT DEFAULT ''; DECLARE v_signal_msg TEXT DEFAULT ''; DECLARE v_mysql_errno INT; DECLARE v_max_output_len BIGINT; DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION BEGIN GET DIAGNOSTICS CONDITION 1 v_msg_text = MESSAGE_TEXT, v_mysql_errno = MYSQL_ERRNO;  IF v_mysql_errno = 1260 THEN SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }'); ELSE SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }'); END IF;  RETURN v_signal_msg; END;  IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535); END IF;  IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN SET @old_group_concat_max_len = @@session.group_concat_max_len; SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5); SET SESSION group_concat_max_len = v_max_output_len; END IF;  SET v_output = ( SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info FROM (SELECT trxi.thread_id,  trxi.event_id, GROUP_CONCAT( IFNULL( CONCAT('\n  {\n', '    "time": "', IFNULL(sys.format_time(trxi.timer_wait), ''), '",\n', '    "state": "', IFNULL(trxi.state, ''), '",\n', '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n', '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n', '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n', '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n', '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'), '  }' ),  '')  ORDER BY event_id) AS trx_info  FROM ( (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level FROM performance_schema.events_transactions_current WHERE thread_id = in_thread_id AND end_event_id IS NULL) UNION (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level FROM performance_schema.events_transactions_history WHERE thread_id = in_thread_id) ) AS trxi LEFT JOIN (SELECT thread_id, nesting_event_id, GROUP_CONCAT( IFNULL( CONCAT('\n      {\n', '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n', '        "time": "', IFNULL(sys.format_time(timer_wait), ''), '",\n', '        "schema": "', IFNULL(current_schema, ''), '",\n', '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n', '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n', '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n', '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n', '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n', '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n', '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n', '      }'), '') ORDER BY event_id) AS stmts FROM performance_schema.events_statements_history WHERE sql_text IS NOT NULL AND thread_id = in_thread_id GROUP BY thread_id, nesting_event_id ) AS s  ON trxi.thread_id = s.thread_id  AND trxi.event_id = s.nesting_event_id WHERE trxi.thread_id = in_thread_id GROUP BY trxi.thread_id, trxi.event_id ) trxs GROUP BY thread_id );  IF (@old_group_concat_max_len IS NOT NULL) THEN SET SESSION group_concat_max_len = @old_group_concat_max_len; END IF;  RETURN v_output; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `quote_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes an unquoted identifier (schema name, table name, etc.) and\n returns the identifier quoted with backticks.\n \n Parameters\n \n in_identifier (TEXT):\n The identifier to quote.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n +-----------------+\n | Identifier      |\n +-----------------+\n | `my_identifier` |\n +-----------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n +----------------+\n | Identifier     |\n +----------------+\n | `my``idenfier` |\n +----------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`'); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sys_get_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `sys_get_config`( in_variable_name VARCHAR(128), in_default_value VARCHAR(128) ) RETURNS varchar(128) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the value for the requested variable using the following logic:\n \n 1. If the option exists in sys.sys_config return the value from there.\n 2. Else fall back on the provided default value.\n \n Notes for using sys_get_config():\n \n * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n It is then expected that the caller is able to handle NULL for the given configuration option.\n * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n * If you want to check whether the configuration option has already been set and if not assign with\n the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n using an IF (...) THEN ... END IF; block (see example below).\n \n Parameters\n \n in_variable_name (VARCHAR(128)):\n The name of the config option to return the value for.\n \n in_default_value (VARCHAR(128)):\n The default value to return if the variable does not exist in sys.sys_config.\n \n Returns\n \n VARCHAR(128)\n \n Example\n \n mysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n +-------+\n | Value |\n +-------+\n | 64    |\n +-------+\n 1 row in set (0.00 sec)\n \n mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\n Query OK, 0 rows affected (0.00 sec)\n \n IF (@sys.statement_truncate_len IS NULL) THEN\n SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\n END IF;\n '
BEGIN DECLARE v_value VARCHAR(128) DEFAULT NULL;  SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);  IF (v_value IS NULL) THEN SET v_value = in_default_value; END IF;  RETURN v_value; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_major` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_major`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the major version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_major();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_major() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 5                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_minor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_minor`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the minor (release series) version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.server_minor();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_minor() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 7                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_patch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_patch`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Returns the patch release version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_patch();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_patch() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 9                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n '
BEGIN RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_synonym_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `create_synonym_db`( IN in_db_name VARCHAR(64),  IN in_synonym VARCHAR(64) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes a source database name and synonym name, and then creates the \n synonym database with views that point to all of the tables within\n the source database.\n \n Useful for creating a "ps" synonym for "performance_schema",\n or "is" instead of "information_schema", for example.\n \n Parameters\n \n in_db_name (VARCHAR(64)):\n The database name that you would like to create a synonym for.\n in_synonym (VARCHAR(64)):\n The database synonym name.\n \n Example\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | sys                |\n | test               |\n +--------------------+\n 5 rows in set (0.00 sec)\n \n mysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n +---------------------------------------+\n | summary                               |\n +---------------------------------------+\n | Created 74 views in the `ps` database |\n +---------------------------------------+\n 1 row in set (8.57 sec)\n \n Query OK, 0 rows affected (8.57 sec)\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | ps                 |\n | sys                |\n | test               |\n +--------------------+\n 6 rows in set (0.00 sec)\n \n mysql> SHOW FULL TABLES FROM ps;\n +------------------------------------------------------+------------+\n | Tables_in_ps                                         | Table_type |\n +------------------------------------------------------+------------+\n | accounts                                             | VIEW       |\n | cond_instances                                       | VIEW       |\n | events_stages_current                                | VIEW       |\n | events_stages_history                                | VIEW       |\n ...\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_db_name_check VARCHAR(64); DECLARE v_db_err_msg TEXT; DECLARE v_table VARCHAR(64); DECLARE v_views_created INT DEFAULT 0;  DECLARE db_doesnt_exist CONDITION FOR SQLSTATE '42000'; DECLARE db_name_exists CONDITION FOR SQLSTATE 'HY000';  DECLARE c_table_names CURSOR FOR  SELECT TABLE_NAME  FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = in_db_name;  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SELECT SCHEMA_NAME INTO v_db_name_check FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = in_db_name;  IF v_db_name_check IS NULL THEN SET v_db_err_msg = CONCAT('Unknown database ', in_db_name); SIGNAL SQLSTATE 'HY000' SET MESSAGE_TEXT = v_db_err_msg; END IF;  SELECT SCHEMA_NAME INTO v_db_name_check FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = in_synonym;  IF v_db_name_check = in_synonym THEN SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists'); SIGNAL SQLSTATE 'HY000' SET MESSAGE_TEXT = v_db_err_msg; END IF;  SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym)); PREPARE create_db_stmt FROM @create_db_stmt; EXECUTE create_db_stmt; DEALLOCATE PREPARE create_db_stmt;  SET v_done = FALSE; OPEN c_table_names; c_table_names: LOOP FETCH c_table_names INTO v_table; IF v_done THEN LEAVE c_table_names; END IF;  SET @create_view_stmt = CONCAT( 'CREATE SQL SECURITY INVOKER VIEW ', sys.quote_identifier(in_synonym), '.', sys.quote_identifier(v_table), ' AS SELECT * FROM ', sys.quote_identifier(in_db_name), '.', sys.quote_identifier(v_table) ); PREPARE create_view_stmt FROM @create_view_stmt; EXECUTE create_view_stmt; DEALLOCATE PREPARE create_view_stmt;  SET v_views_created = v_views_created + 1; END LOOP; CLOSE c_table_names;  SELECT CONCAT( 'Created ', v_views_created, ' view', IF(v_views_created != 1, 's', ''), ' in the ', sys.quote_identifier(in_synonym), ' database' ) AS summary;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `diagnostics`( IN in_max_runtime int unsigned, IN in_interval int unsigned, IN in_auto_config enum ('current', 'medium', 'full') )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n \n * The GLOBAL VARIABLES\n * Several sys schema views including metrics or equivalent (depending on version and settings)\n * Queries in the 95th percentile\n * Several ndbinfo views for MySQL Cluster\n * Replication (both master and slave) information.\n \n Some of the sys schema views are calculated as initial (optional), overall, delta:\n \n * The initial view is the content of the view at the start of this procedure.\n This output will be the same as the the start values used for the delta view.\n The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n * The overall view is the content of the view at the end of this procedure.\n This output is the same as the end values used for the delta view.\n The overall view is always included.\n * The delta view is the difference from the beginning to the end. Note that for min and max values\n they are simply the min or max value from the end view respectively, so does not necessarily reflect\n the minimum/maximum value in the monitored period.\n Note: except for the metrics views the delta is only calculation between the first and last outputs.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Versions supported:\n * MySQL 5.6: 5.6.10 and later\n * MySQL 5.7: 5.7.9 and later\n \n Parameters\n \n in_max_runtime (INT UNSIGNED):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n in_interval (INT UNSIGNED):\n How long to sleep between data collections.\n Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n in_auto_config (ENUM(''current'', ''medium'', ''full''))\n Automatically enable Performance Schema instruments and consumers.\n NOTE: The more that are enabled, the more impact on the performance.\n Supported values are:\n * current - use the current settings.\n * medium - enable some settings. This requires the SUPER privilege.\n * full - enables all settings. This will have a big impact on the\n performance - be careful using this option. This requires\n the SUPER privilege.\n If another setting the ''current'' is chosen, the current settings\n are restored at the end of the procedure.\n \n \n Configuration Options\n \n sys.diagnostics.allow_i_s_tables\n Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n Default is ''OFF''.\n \n sys.diagnostics.include_raw\n Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n Use this to get the initial values of the various views.\n Default is ''OFF''.\n \n sys.statement_truncate_len\n How much of queries in the process list output to include.\n Default is 64.\n \n sys.debug\n Whether to provide debugging output.\n Default is ''OFF''. Set to ''ON'' to include.\n \n \n Example\n \n To create a report and append it to the file diag.out:\n \n mysql> TEE diag.out;\n mysql> CALL sys.diagnostics(120, 30, ''current'');\n ...\n mysql> NOTEE;\n '
BEGIN DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0; DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT 'NO'; DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM('YES', 'NO'); DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8; DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT; DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED; DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0; DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50; DECLARE v_done BOOLEAN DEFAULT FALSE; DECLARE c_ndbinfo CURSOR FOR SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'ndbinfo' AND TABLE_NAME NOT IN ( 'blocks', 'config_params', 'dict_obj_types', 'disk_write_speed_base', 'memory_per_fragment', 'memoryusage', 'operations_per_fragment', 'threadblocks' ); DECLARE c_sysviews_w_delta CURSOR FOR SELECT table_name FROM tmp_sys_views_delta ORDER BY table_name;  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_disable_thread(CONNECTION_ID()); END IF;  IF (in_max_runtime < in_interval) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval'; END IF; IF (in_max_runtime = 0) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0'; END IF; IF (in_interval = 0) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'in_interval must be greater than 0'; END IF;  IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF'); END IF; IF (@sys.diagnostics.include_raw IS NULL) THEN SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF'); END IF; IF (@sys.debug IS NULL) THEN SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF'); END IF; IF (@sys.statement_truncate_len IS NULL) THEN SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' ); END IF;  SET @log_bin := @@sql_log_bin; IF (@log_bin = 1) THEN SET sql_log_bin = 0; END IF;  SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (', '''innodb_buffer_pool_pages_total'', ', '''innodb_page_size'', ', '''last_query_cost'', ', '''last_query_partial_plans'', ', '''qcache_total_blocks'', ', '''slave_last_heartbeat'', ', '''ssl_ctx_verify_depth'', ', '''ssl_ctx_verify_mode'', ', '''ssl_session_cache_size'', ', '''ssl_verify_depth'', ', '''ssl_verify_mode'', ', '''ssl_version'', ', '''buffer_flush_lsn_avg_rate'', ', '''buffer_flush_pct_for_dirty'', ', '''buffer_flush_pct_for_lsn'', ', '''buffer_pool_pages_total'', ', '''lock_row_lock_time_avg'', ', '''lock_row_lock_time_max'', ', '''innodb_page_size''', ')');  IF (in_auto_config <> 'current') THEN IF (@sys.debug = 'ON') THEN SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug'; END IF; CALL sys.ps_setup_save(0);  IF (in_auto_config = 'medium') THEN UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history%';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES' WHERE NAME NOT LIKE 'wait/synch/%'; ELSEIF (in_auto_config = 'full') THEN UPDATE performance_schema.setup_consumers SET ENABLED = 'YES';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES'; END IF;  UPDATE performance_schema.threads SET INSTRUMENTED = 'YES' WHERE PROCESSLIST_ID <> CONNECTION_ID(); END IF;  SET v_start        = UNIX_TIMESTAMP(NOW(2)), in_interval    = IFNULL(in_interval, 30), in_max_runtime = IFNULL(in_max_runtime, 60);  SET v_banner = REPEAT( '-', LEAST( GREATEST( 36, CHAR_LENGTH(VERSION()), CHAR_LENGTH(@@global.version_comment), CHAR_LENGTH(@@global.version_compile_os), CHAR_LENGTH(@@global.version_compile_machine), CHAR_LENGTH(@@global.socket), CHAR_LENGTH(@@global.datadir) ), 64 ) ); SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value' UNION ALL SELECT 'Port' AS 'Name', @@global.port AS 'Value' UNION ALL SELECT 'Socket' AS 'Name', @@global.socket AS 'Value' UNION ALL SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value' UNION ALL SELECT 'Server UUID' AS 'Name', @@global.server_uuid AS 'Value' UNION ALL SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value' UNION ALL SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value' UNION ALL SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value' UNION ALL SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value' UNION ALL SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value' UNION ALL SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value' UNION ALL SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value' UNION ALL SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value' UNION ALL SELECT 'Local Time' AS 'Name', NOW() AS 'Value' UNION ALL SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value' UNION ALL SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value' UNION ALL SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';  SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'), v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'), v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'), v_has_ps_replication = IF(v_has_ps = 'YES' AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'replication_applier_status'), 'YES', 'NO' ), v_has_replication    =  IF(v_has_ps_replication = 'YES', IF((SELECT COUNT(*) FROM performance_schema.replication_connection_status) > 0, 'YES', 'NO'), IF(@@master_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_master_info) > 0, 'YES', 'NO'), IF(@@relay_log_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_relay_log_info) > 0, 'YES', 'NO'), 'MAYBE')) ) , v_has_metrics        = IF(v_has_ps = 'YES' OR (sys.version_major() = 5 AND sys.version_minor() = 6), 'YES', 'NO'), v_has_ps_vars        = 'NO';   SET v_has_ps_vars = IF(@@global.show_compatibility_56, 'NO', 'YES');  SET v_has_ps_vars = 'YES';  IF (@sys.debug = 'ON') THEN SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster', v_has_ps AS 'Has_Performance_Schema', v_has_ps_vars AS 'Has_P_S_SHOW_Variables', v_has_metrics AS 'Has_metrics', v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication'; END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS'; PREPARE stmt_innodb_status FROM @sys.diagnostics.sql; END IF;  IF (v_has_ps = 'YES') THEN SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS'; PREPARE stmt_ps_status FROM @sys.diagnostics.sql; END IF;  IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS'; PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql; END IF;  SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT( ''SELECT '', GROUP_CONCAT( CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN ( (''io_global_by_file_by_bytes'', ''total''), (''io_global_by_wait_by_bytes'', ''total_requested'') ) THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time('', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated'' OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'') THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME) ELSE COLUMN_NAME END ORDER BY ORDINAL_POSITION SEPARATOR '',\n       '' ), ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}'' ) AS Query INTO @sys.diagnostics.sql_select FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ? GROUP BY TABLE_NAME';  SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT( ''SELECT '', GROUP_CONCAT( CASE WHEN FIND_IN_SET(COLUMN_NAME COLLATE utf8_general_ci, diag.pk) THEN COLUMN_NAME WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME COLLATE utf8_general_ci = ''write_pct'' THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'', ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '', COLUMN_NAME) WHEN (diag.TABLE_NAME, COLUMN_NAME) IN ( (''io_global_by_file_by_bytes'', ''total''), (''io_global_by_wait_by_bytes'', ''total_requested'') ) THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME) WHEN COLUMN_NAME COLLATE utf8_general_ci = ''avg_latency'' THEN CONCAT(''sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))'', ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency'' THEN CONCAT(''sys.format_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'', ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency'' THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'') THEN CONCAT(''sys.format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'', ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '', COLUMN_NAME) WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated'' OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'') THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME) END ORDER BY ORDINAL_POSITION SEPARATOR '',\n       '' ), ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')'' ) AS Query INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta diag INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME COLLATE utf8_general_ci = CONCAT(''x$'', diag.TABLE_NAME) WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ? GROUP BY diag.TABLE_NAME';  IF (v_has_ps = 'YES') THEN DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta; CREATE TEMPORARY TABLE tmp_sys_views_delta ( TABLE_NAME varchar(64) NOT NULL, order_by text COMMENT 'ORDER BY clause for the initial and overall views', order_by_delta text COMMENT 'ORDER BY clause for the delta views', where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0', limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view', pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace', PRIMARY KEY (TABLE_NAME) );  IF (@sys.debug = 'ON') THEN SELECT 'Populating tmp_sys_views_delta' AS 'Debug'; END IF; INSERT INTO tmp_sys_views_delta VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC', '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC', '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'), ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC', '(e.io_latency-IFNULL(s.io_latency, 0)) DESC', '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'), ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'), ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'), ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'), ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'), ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'), ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC', '(e.total-IFNULL(s.total, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'), ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'), ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC', '(e.total_requested-IFNULL(s.total_requested, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'), ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'), ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC', '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC', '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0', 100, 'table_schema,table_name,index_name'), ('schema_table_statistics'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'), ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC', '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC', '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'), ('user_summary'                       , '%{TABLE}.statement_latency DESC', '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC', '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'), ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC', '(e.io_latency-IFNULL(s.io_latency, 0)) DESC', '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'), ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC', 'e.user, (e.latency-IFNULL(s.latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'), ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'), ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'), ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'), ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC', 'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'), ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'), ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC', 'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'), ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC', 'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'), ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC', '(e.total_latency-IFNULL(s.total_latency, 0)) DESC', '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events') ; END IF;   SELECT '  =======================  Configuration  =======================  ' AS ''; SELECT 'GLOBAL VARIABLES' AS 'The following output is:'; IF (v_has_ps_vars = 'YES') THEN SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME; ELSE SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME; END IF;  IF (v_has_ps = 'YES') THEN SELECT 'Performance Schema Setup - Actors' AS 'The following output is:'; SELECT * FROM performance_schema.setup_actors;  SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:'; SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS FROM performance_schema.setup_consumers;  SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:'; SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass', ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct', ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct' FROM performance_schema.setup_instruments GROUP BY SUBSTRING_INDEX(NAME, '/', 2) ORDER BY SUBSTRING_INDEX(NAME, '/', 2);  SELECT 'Performance Schema Setup - Objects' AS 'The following output is:'; SELECT * FROM performance_schema.setup_objects;  SELECT 'Performance Schema Setup - Threads' AS 'The following output is:'; SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct' FROM performance_schema.threads GROUP BY TYPE; END IF;   IF (v_has_replication = 'NO') THEN SELECT 'No Replication Configured' AS 'Replication Status'; ELSE SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication - Connection Configuration' AS 'The following output is:'; SELECT * FROM performance_schema.replication_connection_configuration ORDER BY CHANNEL_NAME ; END IF;  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication - Applier Configuration' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME; END IF;  IF (@@master_info_repository = 'TABLE') THEN SELECT 'Replication - Master Info Repository Configuration' AS 'The following output is:'; SELECT  Channel_name, Host, User_name, Port, Connect_retry, Enabled_ssl, Ssl_ca, Ssl_capath, Ssl_cert, Ssl_cipher, Ssl_key, Ssl_verify_server_cert, Heartbeat, Bind, Ignored_server_ids, Uuid, Retry_count, Ssl_crl, Ssl_crlpath, Tls_version, Enabled_auto_position FROM mysql.slave_master_info ORDER BY Channel_name ; END IF;  IF (@@relay_log_info_repository = 'TABLE') THEN SELECT 'Replication - Relay Log Repository Configuration' AS 'The following output is:'; SELECT  Channel_name, Sql_delay, Number_of_workers, Id FROM mysql.slave_relay_log_info ORDER BY Channel_name ; END IF; END IF;   IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SELECT 'Cluster Thread Blocks' AS 'The following output is:'; SELECT * FROM ndbinfo.threadblocks; END IF;  IF (v_has_ps = 'YES') THEN IF (@sys.diagnostics.include_raw = 'ON') THEN SELECT '  ========================  Initial Status  ========================  ' AS ''; END IF;  DROP TEMPORARY TABLE IF EXISTS tmp_digests_start; CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL); CALL sys.statement_performance_analyzer('snapshot', NULL, NULL); CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start'); IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug'; SELECT @sys.diagnostics.sql AS 'Debug'; END IF; PREPARE stmt_gen_query FROM @sys.diagnostics.sql; END IF; SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  IF (@sys.debug = 'ON') THEN SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug'; END IF;  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`')); CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name); EXECUTE stmt_gen_query USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME COLLATE utf8_general_ci = v_table_name; SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select); END IF; END LOOP; CLOSE c_sysviews_w_delta;  IF (@sys.diagnostics.include_raw = 'ON') THEN DEALLOCATE PREPARE stmt_gen_query; END IF; END IF;  SET v_sql_status_summary_select = 'SELECT Variable_name', v_sql_status_summary_delta  = '', v_sql_status_summary_from   = '';  REPEAT  SET v_output_count = v_output_count + 1; IF (v_output_count > 1) THEN SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start); SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:'; DO SLEEP(in_interval); END IF; SET v_iter_start = UNIX_TIMESTAMP(NOW(2));  SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';  IF (@@log_bin = 1) THEN SELECT 'SHOW MASTER STATUS' AS 'The following output is:'; SHOW MASTER STATUS; END IF;  IF (v_has_replication <> 'NO') THEN SELECT 'SHOW SLAVE STATUS' AS 'The following output is:'; SHOW SLAVE STATUS;  IF (v_has_ps_replication = 'YES') THEN SELECT 'Replication Connection Status' AS 'The following output is:'; SELECT * FROM performance_schema.replication_connection_status;  SELECT 'Replication Applier Status' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status ORDER BY CHANNEL_NAME;  SELECT 'Replication Applier Status - Coordinator' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status_by_coordinator ORDER BY CHANNEL_NAME;  SELECT 'Replication Applier Status - Worker' AS 'The following output is:'; SELECT * FROM performance_schema.replication_applier_status_by_worker ORDER BY CHANNEL_NAME, WORKER_ID; END IF;  IF (@@master_info_repository = 'TABLE') THEN SELECT 'Replication - Master Log Status' AS 'The following output is:'; SELECT Master_log_name, Master_log_pos FROM mysql.slave_master_info; END IF;  IF (@@relay_log_info_repository = 'TABLE') THEN SELECT 'Replication - Relay Log Status' AS 'The following output is:'; SELECT sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos FROM mysql.slave_relay_log_info;  SELECT 'Replication - Worker Status' AS 'The following output is:'; SELECT Id, sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos, sys.format_path(Checkpoint_relay_log_name) AS Checkpoint_relay_log_name, Checkpoint_relay_log_pos, Checkpoint_master_log_name, Checkpoint_master_log_pos, Checkpoint_seqno, Checkpoint_group_size, HEX(Checkpoint_group_bitmap) AS Checkpoint_group_bitmap , Channel_name FROM mysql.slave_worker_info ORDER BY  Channel_name, Id; END IF; END IF;  SET v_table_name = CONCAT('tmp_metrics_', v_output_count); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));  CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' ( Variable_name VARCHAR(193) NOT NULL, Variable_value VARCHAR(1024), Type VARCHAR(225) NOT NULL, Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL, PRIMARY KEY (Type, Variable_name) ) ENGINE = InnoDB DEFAULT CHARSET=utf8'));  IF (v_has_metrics) THEN SET @sys.diagnostics.sql = CONCAT( 'INSERT INTO ', v_table_name, ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics' ); ELSE SET @sys.diagnostics.sql = CONCAT( 'INSERT INTO ', v_table_name, '(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, ''\n'', ''\\\\n'') AS Variable_value, ''Global Status'' AS Type, ''YES'' AS Enabled FROM performance_schema.global_status ) UNION ALL ( SELECT NAME AS Variable_name, COUNT AS Variable_value, CONCAT(''InnoDB Metrics - '', SUBSYSTEM) AS Type, IF(STATUS = ''enabled'', ''YES'', ''NO'') AS Enabled FROM information_schema.INNODB_METRICS WHERE NAME NOT IN ( ''lock_row_lock_time'', ''lock_row_lock_time_avg'', ''lock_row_lock_time_max'', ''lock_row_lock_waits'', ''buffer_pool_reads'', ''buffer_pool_read_requests'', ''buffer_pool_write_requests'', ''buffer_pool_wait_free'', ''buffer_pool_read_ahead'', ''buffer_pool_read_ahead_evicted'', ''buffer_pool_pages_total'', ''buffer_pool_pages_misc'', ''buffer_pool_pages_data'', ''buffer_pool_bytes_data'', ''buffer_pool_pages_dirty'', ''buffer_pool_bytes_dirty'', ''buffer_pool_pages_free'', ''buffer_pages_created'', ''buffer_pages_written'', ''buffer_pages_read'', ''buffer_data_reads'', ''buffer_data_written'', ''file_num_open_files'', ''os_log_bytes_written'', ''os_log_fsyncs'', ''os_log_pending_fsyncs'', ''os_log_pending_writes'', ''log_waits'', ''log_write_requests'', ''log_writes'', ''innodb_dblwr_writes'', ''innodb_dblwr_pages_written'', ''innodb_page_size'') ) UNION ALL ( SELECT ''NOW()'' AS Variable_name, NOW(3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled ) UNION ALL ( SELECT ''UNIX_TIMESTAMP()'' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled ) ORDER BY Type, Variable_name;' ); END IF; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);  CALL sys.execute_prepared_stmt( CONCAT('(SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()'')') ); SET v_output_time = @sys.diagnostics.output_time;  SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ', CONCAT( LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '), IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''') ) AS ''Output ', v_output_count, ''''), v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, ' ', IF(v_output_count = 1, '  FROM ', '       INNER JOIN '), v_table_name, ' s', v_output_count, IF (v_output_count = 1, '', ' USING (Type, Variable_name)')); IF (v_output_count > 1) THEN SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ', IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2), (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value) ), '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)'' ), '''' ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')'''); END IF;  SET v_output_time_prev = v_output_time;  IF (@sys.diagnostics.include_raw = 'ON') THEN IF (v_has_metrics) THEN SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:'; ELSE SELECT 'sys.metrics equivalent' AS 'The following output is:'; END IF; CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name')); END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:'; EXECUTE stmt_innodb_status; SELECT 'InnoDB - Transactions' AS 'The following output is:'; SELECT * FROM information_schema.INNODB_TRX; END IF;  IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:'; EXECUTE stmt_ndbcluster_status;  SELECT 'ndbinfo.memoryusage' AS 'The following output is:'; SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages, ROUND(100*(used/total), 2) AS 'Used %' FROM ndbinfo.memoryusage;  SET v_done = FALSE; OPEN c_ndbinfo; c_ndbinfo_loop: LOOP FETCH c_ndbinfo INTO v_table_name; IF v_done THEN LEAVE c_ndbinfo_loop; END IF;  SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`')); END LOOP; CLOSE c_ndbinfo;  SELECT * FROM information_schema.FILES; END IF;  SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:'; SELECT processlist.* FROM sys.processlist;  IF (v_has_ps = 'YES') THEN IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:'; SELECT * FROM sys.latest_file_io; END IF;  IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_host_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_thread_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_by_user_by_current_bytes;  SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:'; SELECT * FROM sys.memory_global_by_current_bytes; END IF; END IF;  SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start); UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;  IF (v_has_ps = 'YES') THEN SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:'; EXECUTE stmt_ps_status; END IF;  IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN DEALLOCATE PREPARE stmt_innodb_status; END IF; IF (v_has_ps = 'YES') THEN DEALLOCATE PREPARE stmt_ps_status; END IF; IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN DEALLOCATE PREPARE stmt_ndbcluster_status; END IF;   SELECT '  ============================  Schema Information  ============================  ' AS '';  SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;  IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN SELECT 'Storage Engine Usage' AS 'The following output is:'; SELECT ENGINE, COUNT(*) AS NUM_TABLES, sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH, sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH, sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL FROM information_schema.TABLES GROUP BY ENGINE;  SELECT 'Schema Object Overview' AS 'The following output is:'; SELECT * FROM sys.schema_object_overview;  SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:'; SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables FROM information_schema.TABLES LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME AND STATISTICS.INDEX_NAME = 'PRIMARY' WHERE STATISTICS.TABLE_NAME IS NULL AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys') AND TABLES.TABLE_TYPE = 'BASE TABLE' GROUP BY TABLES.TABLE_SCHEMA, ENGINE; END IF;  IF (v_has_ps = 'YES') THEN SELECT 'Unused Indexes' AS 'The following output is:'; SELECT object_schema, COUNT(*) AS NumUnusedIndexes FROM performance_schema.table_io_waits_summary_by_index_usage  WHERE index_name IS NOT NULL AND count_star = 0 AND object_schema NOT IN ('mysql', 'sys') AND index_name != 'PRIMARY' GROUP BY object_schema; END IF;  IF (v_has_ps = 'YES') THEN SELECT '  =========================  Overall Status  =========================  ' AS '';  SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:'; CALL sys.ps_statement_avg_latency_histogram();  CALL sys.statement_performance_analyzer('snapshot', NULL, NULL); CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');  SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end'); IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug'; SELECT @sys.diagnostics.sql AS 'Debug'; END IF; PREPARE stmt_gen_query FROM @sys.diagnostics.sql;  SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  IF (@sys.debug = 'ON') THEN SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug'; END IF;  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`')); CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));  IF (@sys.diagnostics.include_raw = 'ON') THEN SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name); EXECUTE stmt_gen_query USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME COLLATE utf8_general_ci = v_table_name; SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select); END IF; END LOOP; CLOSE c_sysviews_w_delta;  DEALLOCATE PREPARE stmt_gen_query;   SELECT '  ======================  Delta Status  ======================  ' AS '';  CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile'); CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);  DROP TEMPORARY TABLE tmp_digests_start;  IF (@sys.debug = 'ON') THEN SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug'; SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug'; END IF; PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;  SET v_old_group_concat_max_len = @@session.group_concat_max_len; SET @@session.group_concat_max_len = 2048; SET v_done = FALSE; OPEN c_sysviews_w_delta; c_sysviews_w_delta_loop: LOOP FETCH c_sysviews_w_delta INTO v_table_name; IF v_done THEN LEAVE c_sysviews_w_delta_loop; END IF;  SET @sys.diagnostics.table_name = v_table_name; EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name; SELECT CONCAT(@sys.diagnostics.sql_select, IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''), IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''), IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '') ) INTO @sys.diagnostics.sql_select FROM tmp_sys_views_delta WHERE TABLE_NAME COLLATE utf8_general_ci = v_table_name;  SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:'; CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);  CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`')); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`')); END LOOP; CLOSE c_sysviews_w_delta; SET @@session.group_concat_max_len = v_old_group_concat_max_len;  DEALLOCATE PREPARE stmt_gen_query_delta; DROP TEMPORARY TABLE tmp_sys_views_delta; END IF;  IF (v_has_metrics) THEN SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:'; ELSE SELECT 'sys.metrics equivalent' AS 'The following output is:'; END IF; CALL sys.execute_prepared_stmt( CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from, ' ORDER BY Type, Variable_name' ) );  SET v_count = 0; WHILE (v_count < v_output_count) DO SET v_count = v_count + 1; SET v_table_name = CONCAT('tmp_metrics_', v_count); CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name)); END WHILE;  IF (in_auto_config <> 'current') THEN CALL sys.ps_setup_reload_saved(); SET sql_log_bin = @log_bin; END IF;  SET @sys.diagnostics.output_time            = NULL, @sys.diagnostics.sql                    = NULL, @sys.diagnostics.sql_gen_query_delta    = NULL, @sys.diagnostics.sql_gen_query_template = NULL, @sys.diagnostics.sql_select             = NULL, @sys.diagnostics.table_name             = NULL;  IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  IF (@log_bin = 1) THEN SET sql_log_bin = @log_bin; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `execute_prepared_stmt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `execute_prepared_stmt`( IN in_query longtext CHARACTER SET UTF8 )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n so the procedure is mainly useful for executing one off dynamically created queries.\n \n The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n \n \n Parameters\n \n in_query (longtext CHARACTER SET UTF8):\n The query to execute.\n \n \n Configuration Options\n \n sys.debug\n Whether to provide debugging output.\n Default is ''OFF''. Set to ''ON'' to include.\n \n \n Example\n \n mysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n +------------------------+-------+---------------------+--------+\n | variable               | value | set_time            | set_by |\n +------------------------+-------+---------------------+--------+\n | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n +------------------------+-------+---------------------+--------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN IF (@sys.debug IS NULL) THEN SET @sys.debug = sys.sys_get_config('debug', 'OFF'); END IF;  IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query"; END IF;  SET @sys.execute_prepared_stmt.sql = in_query;  IF (@sys.debug = 'ON') THEN SELECT @sys.execute_prepared_stmt.sql AS 'Debug'; END IF; PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql; EXECUTE sys_execute_prepared_stmt; DEALLOCATE PREPARE sys_execute_prepared_stmt;  SET @sys.execute_prepared_stmt.sql = NULL; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_disable_background_threads();\n +--------------------------------+\n | summary                        |\n +--------------------------------+\n | Disabled 18 background threads |\n +--------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'NO' WHERE type = 'BACKGROUND';  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_consumer`( IN consumer VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using "%consumer%") of consumers to disable\n \n Example\n \n To disable all consumers:\n \n mysql> CALL sys.ps_setup_disable_consumer('''');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 15 consumers    |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just the event_stage consumers:\n \n mysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 3 consumers   |\n +------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.setup_consumers SET enabled = 'NO' WHERE name LIKE CONCAT('%', consumer, '%');  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_instrument`( IN in_pattern VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using "%in_pattern%") of events to disable\n \n Example\n \n To disable all mutex instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 155 instruments |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 1 instruments |\n +------------------------+\n 1 row in set (0.00 sec)\n \n To disable all instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument('''');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 547 instruments |\n +--------------------------+\n 1 row in set (0.01 sec)\n '
BEGIN UPDATE performance_schema.setup_instruments SET enabled = 'NO', timed = 'NO' WHERE name LIKE CONCAT('%', in_pattern, '%');  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_thread`( IN in_connection_id BIGINT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Disable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_disable_thread(3);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.01 sec)\n \n To disable the current connection:\n \n mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'NO' WHERE processlist_id = in_connection_id;  SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_enable_background_threads();\n +-------------------------------+\n | summary                       |\n +-------------------------------+\n | Enabled 18 background threads |\n +-------------------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'YES' WHERE type = 'BACKGROUND';  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_consumer`( IN consumer VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using "%consumer%") of consumers to enable\n \n Example\n \n To enable all consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer('''');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 10 consumers    |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just "waits" consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer(''waits'');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 3 consumers   |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN UPDATE performance_schema.setup_consumers SET enabled = 'YES' WHERE name LIKE CONCAT('%', consumer, '%');  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_instrument`( IN in_pattern VARCHAR(128) )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using "%in_pattern%") of events to enable\n \n Example\n \n To enable all mutex instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 155 instruments |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 1 instruments |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n \n To enable all instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument('''');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 547 instruments |\n +-------------------------+\n 1 row in set (0.01 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n '
BEGIN UPDATE performance_schema.setup_instruments SET enabled = 'YES', timed = 'YES' WHERE name LIKE CONCAT('%', in_pattern, '%');  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_thread`( IN in_connection_id BIGINT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Enable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_enable_thread(3);\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.01 sec)\n \n To enable the current connection:\n \n mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.00 sec)\n '
BEGIN UPDATE performance_schema.threads SET instrumented = 'YES' WHERE processlist_id = in_connection_id;  SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reload_saved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Reloads a saved Performance Schema configuration,\n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_save(), to \n save a configuration.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_save();\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_lock_result INT; DECLARE v_lock_used_by BIGINT; DECLARE v_signal_message TEXT; DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN SIGNAL SQLSTATE VALUE '90001' SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?'; END;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;  IF (v_lock_used_by != CONNECTION_ID()) THEN SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by); SIGNAL SQLSTATE VALUE '90002' SET MESSAGE_TEXT = v_signal_message; END IF;  DELETE FROM performance_schema.setup_actors; INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;  BEGIN DECLARE v_name varchar(64); DECLARE v_enabled enum('YES', 'NO'); DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET v_done = FALSE; OPEN c_consumers; c_consumers_loop: LOOP FETCH c_consumers INTO v_name, v_enabled; IF v_done THEN LEAVE c_consumers_loop; END IF;  UPDATE performance_schema.setup_consumers SET ENABLED = v_enabled WHERE NAME = v_name; END LOOP; CLOSE c_consumers; END;  UPDATE performance_schema.setup_instruments INNER JOIN tmp_setup_instruments USING (NAME) SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED, performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED; BEGIN DECLARE v_thread_id bigint unsigned; DECLARE v_instrumented enum('YES', 'NO'); DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET v_done = FALSE; OPEN c_threads; c_threads_loop: LOOP FETCH c_threads INTO v_thread_id, v_instrumented; IF v_done THEN LEAVE c_threads_loop; END IF;  UPDATE performance_schema.threads SET INSTRUMENTED = v_instrumented WHERE THREAD_ID = v_thread_id; END LOOP; CLOSE c_threads; END;  UPDATE performance_schema.threads SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL, sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER), 'YES') WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);  DROP TEMPORARY TABLE tmp_setup_actors; DROP TEMPORARY TABLE tmp_setup_consumers; DROP TEMPORARY TABLE tmp_setup_instruments; DROP TEMPORARY TABLE tmp_threads;  SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;  SET sql_log_bin = @log_bin;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reset_to_default` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reset_to_default`( IN in_verbose BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Resets the Performance Schema setup to the default settings.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each setup stage (including the SQL) whilst running.\n \n Example\n \n mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n *************************** 1. row ***************************\n status: Resetting: setup_actors\n DELETE\n FROM performance_schema.setup_actors\n WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')\n 1 row in set (0.00 sec)\n \n *************************** 1. row ***************************\n status: Resetting: setup_actors\n INSERT IGNORE INTO performance_schema.setup_actors\n VALUES (''%'', ''%'', ''%'')\n 1 row in set (0.00 sec)\n ...\n \n mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n Query OK, 0 rows affected (0.00 sec)\n '
BEGIN SET @query = 'DELETE FROM performance_schema.setup_actors WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.setup_instruments SET ENABLED = sys.ps_is_instrument_default_enabled(NAME), TIMED   = sys.ps_is_instrument_default_timed(NAME)';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.setup_consumers SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'DELETE FROM performance_schema.setup_objects WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%''  AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' ) OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''), (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''), (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''), (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''), (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ), (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';  IF (in_verbose) THEN SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt;  SET @query = 'UPDATE performance_schema.threads SET INSTRUMENTED = ''YES''';  IF (in_verbose) THEN SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status; END IF;  PREPARE reset_stmt FROM @query; EXECUTE reset_stmt; DEALLOCATE PREPARE reset_stmt; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_save`( IN in_timeout INT )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Saves the current configuration of Performance Schema, \n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_reload_saved(), to \n restore the saved config.\n \n The named lock "sys.ps_setup_save" is taken before the\n current configuration is saved. If the attempt to get the named\n lock times out, an error occurs.\n \n The lock is released after the settings have been restored by\n calling ps_setup_reload_saved().\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_timeout INT\n The timeout in seconds used when trying to obtain the lock.\n A negative timeout means infinite timeout.\n \n Example\n \n mysql> CALL sys.ps_setup_save(-1);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments \n ->    SET enabled = ''YES'', timed = ''YES'';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n '
BEGIN DECLARE v_lock_result INT;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;  IF v_lock_result THEN DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors; DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers; DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments; DROP TEMPORARY TABLE IF EXISTS tmp_threads;  CREATE TEMPORARY TABLE tmp_setup_actors LIKE performance_schema.setup_actors; CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers; CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments; CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);  INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors; INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers; INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments; INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads; ELSE SIGNAL SQLSTATE VALUE '90000' SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration'; END IF;  SET sql_log_bin = @log_bin; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled`( IN in_show_instruments BOOLEAN, IN in_show_threads BOOLEAN )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disable Performance Schema configuration.\n \n Disabled users is only available for MySQL 5.7.6 and later.\n In earlier versions it was only possible to enable users.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print disabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print disabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +--------------------+\n | disabled_users     |\n +--------------------+\n | ''mark''@''localhost'' |\n +--------------------+\n 1 row in set (0.00 sec)\n \n +-------------+----------------------+---------+-------+\n | object_type | objects              | enabled | timed |\n +-------------+----------------------+---------+-------+\n | EVENT       | mysql.%              | NO      | NO    |\n | EVENT       | performance_schema.% | NO      | NO    |\n | EVENT       | information_schema.% | NO      | NO    |\n | FUNCTION    | mysql.%              | NO      | NO    |\n | FUNCTION    | performance_schema.% | NO      | NO    |\n | FUNCTION    | information_schema.% | NO      | NO    |\n | PROCEDURE   | mysql.%              | NO      | NO    |\n | PROCEDURE   | performance_schema.% | NO      | NO    |\n | PROCEDURE   | information_schema.% | NO      | NO    |\n | TABLE       | mysql.%              | NO      | NO    |\n | TABLE       | performance_schema.% | NO      | NO    |\n | TABLE       | information_schema.% | NO      | NO    |\n | TRIGGER     | mysql.%              | NO      | NO    |\n | TRIGGER     | performance_schema.% | NO      | NO    |\n | TRIGGER     | information_schema.% | NO      | NO    |\n +-------------+----------------------+---------+-------+\n 15 rows in set (0.00 sec)\n \n +----------------------------------+\n | disabled_consumers               |\n +----------------------------------+\n | events_stages_current            |\n | events_stages_history            |\n | events_stages_history_long       |\n | events_statements_history        |\n | events_statements_history_long   |\n | events_transactions_history      |\n | events_transactions_history_long |\n | events_waits_current             |\n | events_waits_history             |\n | events_waits_history_long        |\n +----------------------------------+\n 10 rows in set (0.00 sec)\n \n Empty set (0.00 sec)\n \n +---------------------------------------------------------------------------------------+-------+\n | disabled_instruments                                                                  | timed |\n +---------------------------------------------------------------------------------------+-------+\n | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n ...\n | memory/sql/servers_cache                                                              | NO    |\n | memory/sql/udf_mem                                                                    | NO    |\n | wait/lock/metadata/sql/mdl                                                            | NO    |\n +---------------------------------------------------------------------------------------+-------+\n 547 rows in set (0.00 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n '
BEGIN SELECT @@performance_schema AS performance_schema_enabled;   SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS disabled_users FROM performance_schema.setup_actors WHERE enabled = 'NO' ORDER BY disabled_users;   SELECT object_type, CONCAT(object_schema, '.', object_name) AS objects, enabled, timed FROM performance_schema.setup_objects WHERE enabled = 'NO' ORDER BY object_type, objects;  SELECT name AS disabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'NO' ORDER BY disabled_consumers;  IF (in_show_threads) THEN SELECT IF(name = 'thread/sql/one_connection',  CONCAT(processlist_user, '@', processlist_host),  REPLACE(name, 'thread/', '')) AS disabled_threads, TYPE AS thread_type FROM performance_schema.threads WHERE INSTRUMENTED = 'NO' ORDER BY disabled_threads; END IF;  IF (in_show_instruments) THEN SELECT name AS disabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'NO' ORDER BY disabled_instruments; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_consumers();\n \n +---------------------------+\n | disabled_consumers        |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n '
BEGIN SELECT name AS disabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'NO' ORDER BY disabled_consumers; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently disabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_instruments();\n '
BEGIN SELECT name AS disabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'NO' ORDER BY disabled_instruments; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled`( IN in_show_instruments BOOLEAN, IN in_show_threads BOOLEAN )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled Performance Schema configuration.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print enabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print enabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +---------------+\n | enabled_users |\n +---------------+\n | ''%''@''%''       |\n +---------------+\n 1 row in set (0.01 sec)\n \n +-------------+---------+---------+-------+\n | object_type | objects | enabled | timed |\n +-------------+---------+---------+-------+\n | EVENT       | %.%     | YES     | YES   |\n | FUNCTION    | %.%     | YES     | YES   |\n | PROCEDURE   | %.%     | YES     | YES   |\n | TABLE       | %.%     | YES     | YES   |\n | TRIGGER     | %.%     | YES     | YES   |\n +-------------+---------+---------+-------+\n 5 rows in set (0.01 sec)\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n \n +---------------------------------+-------------+\n | enabled_threads                 | thread_type |\n +---------------------------------+-------------+\n | sql/main                        | BACKGROUND  |\n | sql/thread_timer_notifier       | BACKGROUND  |\n | innodb/io_ibuf_thread           | BACKGROUND  |\n | innodb/io_log_thread            | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/page_cleaner_thread      | BACKGROUND  |\n | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n | innodb/srv_error_monitor_thread | BACKGROUND  |\n | innodb/srv_monitor_thread       | BACKGROUND  |\n | innodb/srv_master_thread        | BACKGROUND  |\n | innodb/srv_purge_thread         | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/buf_dump_thread          | BACKGROUND  |\n | innodb/dict_stats_thread        | BACKGROUND  |\n | sql/signal_handler              | BACKGROUND  |\n | sql/compress_gtid_table         | FOREGROUND  |\n | root@localhost                  | FOREGROUND  |\n +---------------------------------+-------------+\n 22 rows in set (0.01 sec)\n \n +-------------------------------------+-------+\n | enabled_instruments                 | timed |\n +-------------------------------------+-------+\n | wait/io/file/sql/map                | YES   |\n | wait/io/file/sql/binlog             | YES   |\n ...\n | statement/com/Error                 | YES   |\n | statement/com/                      | YES   |\n | idle                                | YES   |\n +-------------------------------------+-------+\n 210 rows in set (0.08 sec)\n \n Query OK, 0 rows affected (0.89 sec)\n '
BEGIN SELECT @@performance_schema AS performance_schema_enabled;  SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users FROM performance_schema.setup_actors  WHERE enabled = 'YES'  ORDER BY enabled_users;  SELECT object_type, CONCAT(object_schema, '.', object_name) AS objects, enabled, timed FROM performance_schema.setup_objects WHERE enabled = 'YES' ORDER BY object_type, objects;  SELECT name AS enabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'YES' ORDER BY enabled_consumers;  IF (in_show_threads) THEN SELECT IF(name = 'thread/sql/one_connection',  CONCAT(processlist_user, '@', processlist_host),  REPLACE(name, 'thread/', '')) AS enabled_threads, TYPE AS thread_type FROM performance_schema.threads WHERE INSTRUMENTED = 'YES' ORDER BY enabled_threads; END IF;  IF (in_show_instruments) THEN SELECT name AS enabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'YES' ORDER BY enabled_instruments; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_consumers();\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n '
BEGIN SELECT name AS enabled_consumers FROM performance_schema.setup_consumers WHERE enabled = 'YES' ORDER BY enabled_consumers; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Shows all currently enabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_instruments();\n '
BEGIN SELECT name AS enabled_instruments, timed FROM performance_schema.setup_instruments WHERE enabled = 'YES' ORDER BY enabled_instruments; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_statement_avg_latency_histogram` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Outputs a textual histogram graph of the average latency values\n across all normalized queries tracked within the Performance Schema\n events_statements_summary_by_digest table.\n \n Can be used to show a very high level picture of what kind of \n latency distribution statements running within this instance have.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n *************************** 1. row ***************************\n Performance Schema Statement Digest Average Latency Histogram:\n \n . = 1 unit\n * = 2 units\n # = 3 units\n \n (0 - 38ms)     240 | ################################################################################\n (38 - 77ms)    38  | ......................................\n (77 - 115ms)   3   | ...\n (115 - 154ms)  62  | *******************************\n (154 - 192ms)  3   | ...\n (192 - 231ms)  0   |\n (231 - 269ms)  0   |\n (269 - 307ms)  0   |\n (307 - 346ms)  0   |\n (346 - 384ms)  1   | .\n (384 - 423ms)  1   | .\n (423 - 461ms)  0   |\n (461 - 499ms)  0   |\n (499 - 538ms)  0   |\n (538 - 576ms)  0   |\n (576 - 615ms)  1   | .\n \n Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n '
BEGIN SELECT CONCAT('\n', '\n  . = 1 unit', '\n  * = 2 units', '\n  # = 3 units\n', @label := CONCAT(@label_inner := CONCAT('\n(0 - ', ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)), (@unit := 'ms'), ')'), REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us <= @bucket_size), 0)), REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),  @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''), @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'), REPEAT(' ', @max_label_size - LENGTH(@label_inner)), @count_in_bucket := IFNULL((SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution AS b1  WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)), REPEAT(' ', @max_label_len - LENGTH(@label)), '| ', IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),  	             IF(@count_in_bucket < @one_unit, @count_in_bucket, 	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),  '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'  ) AS `Performance Schema Statement Digest Average Latency Histogram`;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_statement_digest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_statement_digest`( IN in_digest VARCHAR(32), IN in_runtime INT,  IN in_interval DECIMAL(2,2), IN in_start_fresh BOOLEAN, IN in_auto_enable BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Traces all instrumentation within Performance Schema for a specific\n Statement Digest. \n \n When finding a statement of interest within the \n performance_schema.events_statements_summary_by_digest table, feed\n the DIGEST MD5 value in to this procedure, set how long to poll for, \n and at what interval to poll, and it will generate a report of all \n statistics tracked within Performance Schema for that digest for the\n interval.\n \n It will also attempt to generate an EXPLAIN for the longest running \n example of the digest during the interval. Note this may fail, as:\n \n * Performance Schema truncates long SQL_TEXT values (and hence the \n EXPLAIN will fail due to parse errors)\n * the default schema is sys (so tables that are not fully qualified\n in the query may not be found)\n * some queries such as SHOW are not supported in EXPLAIN.\n \n When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n output generated.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_digest (VARCHAR(32)):\n The statement digest identifier you would like to analyze\n in_runtime (INT):\n The number of seconds to run analysis for\n in_interval (DECIMAL(2,2)):\n The interval (in seconds, may be fractional) at which to try\n and take snapshots\n in_start_fresh (BOOLEAN):\n Whether to TRUNCATE the events_statements_history_long and\n events_stages_history_long tables before starting\n in_auto_enable (BOOLEAN):\n Whether to automatically turn on required consumers\n \n Example\n \n mysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n 1 row in set (9.11 sec)\n \n +------------+-----------+-----------+-----------+---------------+------------+------------+\n | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n 1 row in set (9.11 sec)\n \n +------------------------------------------+-------+-----------+\n | event_name                               | count | latency   |\n +------------------------------------------+-------+-----------+\n | stage/sql/checking query cache for query |    16 | 724.37 us |\n | stage/sql/statistics                     |    16 | 546.92 us |\n | stage/sql/freeing items                  |    18 | 520.11 us |\n | stage/sql/init                           |    51 | 466.80 us |\n ...\n | stage/sql/cleaning up                    |    18 | 11.92 us  |\n | stage/sql/executing                      |    16 | 6.95 us   |\n +------------------------------------------+-------+-----------+\n 17 rows in set (9.12 sec)\n \n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n 1 row in set (9.16 sec)\n \n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n 1 row in set (9.16 sec)\n \n // Truncated for clarity...\n +-----------------------------------------------------------------+\n | sql_text                                                        |\n +-----------------------------------------------------------------+\n | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n +-----------------------------------------------------------------+\n 1 row in set (9.17 sec)\n \n +------------------------------------------+-----------+\n | event_name                               | latency   |\n +------------------------------------------+-----------+\n | stage/sql/init                           | 8.61 us   |\n | stage/sql/Waiting for query cache lock   | 453.23 us |\n | stage/sql/init                           | 331.07 ns |\n | stage/sql/checking query cache for query | 43.04 us  |\n ...\n | stage/sql/freeing items                  | 30.46 us  |\n | stage/sql/cleaning up                    | 662.13 ns |\n +------------------------------------------+-----------+\n 18 rows in set (9.23 sec)\n \n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n 1 row in set (9.27 sec)\n \n Query OK, 0 rows affected (9.28 sec)\n '
BEGIN  DECLARE v_start_fresh BOOLEAN DEFAULT false; DECLARE v_auto_enable BOOLEAN DEFAULT false; DECLARE v_explain     BOOLEAN DEFAULT true; DECLARE v_this_thread_enabed ENUM('YES', 'NO'); DECLARE v_runtime INT DEFAULT 0; DECLARE v_start INT DEFAULT 0; DECLARE v_found_stmts INT;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); CALL sys.ps_setup_disable_thread(CONNECTION_ID());  DROP TEMPORARY TABLE IF EXISTS stmt_trace; CREATE TEMPORARY TABLE stmt_trace ( thread_id BIGINT UNSIGNED, timer_start BIGINT UNSIGNED, event_id BIGINT UNSIGNED, sql_text longtext, timer_wait BIGINT UNSIGNED, lock_time BIGINT UNSIGNED, errors BIGINT UNSIGNED, mysql_errno INT, rows_sent BIGINT UNSIGNED, rows_affected BIGINT UNSIGNED, rows_examined BIGINT UNSIGNED, created_tmp_tables BIGINT UNSIGNED, created_tmp_disk_tables BIGINT UNSIGNED, no_index_used BIGINT UNSIGNED, PRIMARY KEY (thread_id, timer_start) );  DROP TEMPORARY TABLE IF EXISTS stmt_stages; CREATE TEMPORARY TABLE stmt_stages ( event_id BIGINT UNSIGNED, stmt_id BIGINT UNSIGNED, event_name VARCHAR(128), timer_wait BIGINT UNSIGNED, PRIMARY KEY (event_id) );  SET v_start_fresh = in_start_fresh; IF v_start_fresh THEN TRUNCATE TABLE performance_schema.events_statements_history_long; TRUNCATE TABLE performance_schema.events_stages_history_long; END IF;  SET v_auto_enable = in_auto_enable; IF v_auto_enable THEN CALL sys.ps_setup_save(0);  UPDATE performance_schema.threads SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');  UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history' AND NAME NOT LIKE 'events_wait%' AND NAME NOT LIKE 'events_transactions%' AND NAME <> 'statements_digest';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES' WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%'; END IF;  WHILE v_runtime < in_runtime DO SELECT UNIX_TIMESTAMP() INTO v_start;  INSERT IGNORE INTO stmt_trace SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,  rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used FROM performance_schema.events_statements_history_long WHERE digest = in_digest;  INSERT IGNORE INTO stmt_stages SELECT stages.event_id, stmt_trace.event_id, stages.event_name, stages.timer_wait FROM performance_schema.events_stages_history_long AS stages JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;  SELECT SLEEP(in_interval) INTO @sleep; SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start); END WHILE;  SELECT "SUMMARY STATISTICS";  SELECT COUNT(*) executions, sys.format_time(SUM(timer_wait)) AS exec_time, sys.format_time(SUM(lock_time)) AS lock_time, SUM(rows_sent) AS rows_sent, SUM(rows_affected) AS rows_affected, SUM(rows_examined) AS rows_examined, SUM(created_tmp_tables) AS tmp_tables, SUM(no_index_used) AS full_scans FROM stmt_trace;  SELECT event_name, COUNT(*) as count, sys.format_time(SUM(timer_wait)) as latency FROM stmt_stages GROUP BY event_name ORDER BY SUM(timer_wait) DESC;  SELECT "LONGEST RUNNING STATEMENT";  SELECT thread_id, sys.format_time(timer_wait) AS exec_time, sys.format_time(lock_time) AS lock_time, rows_sent, rows_affected, rows_examined, created_tmp_tables AS tmp_tables, no_index_used AS full_scan FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  SELECT sql_text FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  SELECT sql_text, event_id INTO @sql, @sql_id FROM stmt_trace ORDER BY timer_wait DESC LIMIT 1;  IF (@sql_id IS NOT NULL) THEN SELECT event_name, sys.format_time(timer_wait) as latency FROM stmt_stages WHERE stmt_id = @sql_id ORDER BY event_id; END IF;  DROP TEMPORARY TABLE stmt_trace; DROP TEMPORARY TABLE stmt_stages;  IF (@sql IS NOT NULL) THEN SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql); BEGIN DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;  PREPARE explain_stmt FROM @stmt; END;  IF (v_explain) THEN EXECUTE explain_stmt; DEALLOCATE PREPARE explain_stmt; END IF; END IF;  IF v_auto_enable THEN CALL sys.ps_setup_reload_saved(); END IF; IF (v_this_thread_enabed = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  SET sql_log_bin = @log_bin; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_thread`( IN in_thread_id BIGINT UNSIGNED, IN in_outfile VARCHAR(255), IN in_max_runtime DECIMAL(20,2), IN in_interval DECIMAL(20,2), IN in_start_fresh BOOLEAN, IN in_auto_setup BOOLEAN, IN in_debug BOOLEAN )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Dumps all data within Performance Schema for an instrumented thread,\n to create a DOT formatted graph file. \n \n Each resultset returned from the procedure should be used for a complete graph\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The thread that you would like a stack trace for\n in_outfile  (VARCHAR(255)):\n The filename the dot file will be written to\n in_max_runtime (DECIMAL(20,2)):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds.\n in_interval (DECIMAL(20,2)): \n How long to sleep between data collections. \n Use NULL to get the default which is 1 second.\n in_start_fresh (BOOLEAN):\n Whether to reset all Performance Schema data before tracing.\n in_auto_setup (BOOLEAN):\n Whether to disable all other threads and enable all consumers/instruments. \n This will also reset the settings at the end of the run.\n in_debug (BOOLEAN):\n Whether you would like to include file:lineno in the graph\n \n Example\n \n mysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n \n +---------------------------------------------+\n | Info                                        |\n +---------------------------------------------+\n | Data collection starting for THREAD_ID = 25 |\n +---------------------------------------------+\n 1 row in set (0.03 sec)\n \n +-----------------------------------------------------------+\n | Info                                                      |\n +-----------------------------------------------------------+\n | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n +-----------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PDF                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PNG                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (60.32 sec)\n '
BEGIN DECLARE v_done bool DEFAULT FALSE; DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0; DECLARE v_min_event_id bigint unsigned DEFAULT 0; DECLARE v_this_thread_enabed ENUM('YES', 'NO'); DECLARE v_event longtext; DECLARE c_stack CURSOR FOR SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''),  event_id, '; ', event_id, ' [label="', '(', sys.format_time(timer_wait), ') ', IF (event_name NOT LIKE 'wait/io%',  SUBSTRING_INDEX(event_name, '/', -2),  IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%', SUBSTRING_INDEX(event_name, '/', -4), event_name) ), IF (event_name LIKE 'transaction', IFNULL(CONCAT('\\n', wait_info), ''), ''), IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''), IF (in_debug AND event_name LIKE 'wait%', wait_info, ''), '", ',  CASE WHEN event_name LIKE 'wait/io/file%' THEN  'shape=box, style=filled, color=red' WHEN event_name LIKE 'wait/io/table%' THEN  'shape=box, style=filled, color=green' WHEN event_name LIKE 'wait/io/socket%' THEN 'shape=box, style=filled, color=yellow' WHEN event_name LIKE 'wait/synch/mutex%' THEN 'style=filled, color=lightskyblue' WHEN event_name LIKE 'wait/synch/cond%' THEN 'style=filled, color=darkseagreen3' WHEN event_name LIKE 'wait/synch/rwlock%' THEN 'style=filled, color=orchid' WHEN event_name LIKE 'wait/synch/sxlock%' THEN 'style=filled, color=palevioletred'  WHEN event_name LIKE 'wait/lock%' THEN 'shape=box, style=filled, color=tan' WHEN event_name LIKE 'statement/%' THEN CONCAT('shape=box, style=bold', CASE WHEN event_name LIKE 'statement/com/%' THEN ' style=filled, color=darkseagreen' ELSE IF((timer_wait/1000000000000) > @@long_query_time,  ' style=filled, color=red',  ' style=filled, color=lightblue') END ) WHEN event_name LIKE 'transaction' THEN 'shape=box, style=filled, color=lightblue3' WHEN event_name LIKE 'stage/%' THEN 'style=filled, color=slategray3' WHEN event_name LIKE '%idle%' THEN 'shape=box, style=filled, color=firebrick3' ELSE '' END, '];\n' ) event, event_id FROM ( (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, CONCAT('trx_id: ',  IFNULL(trx_id, ''), '\\n', 'gtid: ', IFNULL(gtid, ''), '\\n', 'state: ', state, '\\n', 'mode: ', access_mode, '\\n', 'isolation: ', isolation_level, '\\n', 'autocommit: ', autocommit, '\\n', 'savepoints: ', number_of_savepoints, '\\n' ) AS wait_info FROM performance_schema.events_transactions_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,  CONCAT('statement: ', sql_text, '\\n', 'errors: ', errors, '\\n', 'warnings: ', warnings, '\\n', 'lock time: ', sys.format_time(lock_time),'\\n', 'rows affected: ', rows_affected, '\\n', 'rows sent: ', rows_sent, '\\n', 'rows examined: ', rows_examined, '\\n', 'tmp tables: ', created_tmp_tables, '\\n', 'tmp disk tables: ', created_tmp_disk_tables, '\\n' 'select scan: ', select_scan, '\\n', 'select full join: ', select_full_join, '\\n', 'select full range join: ', select_full_range_join, '\\n', 'select range: ', select_range, '\\n', 'select range check: ', select_range_check, '\\n',  'sort merge passes: ', sort_merge_passes, '\\n', 'sort rows: ', sort_rows, '\\n', 'sort range: ', sort_range, '\\n', 'sort scan: ', sort_scan, '\\n', 'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n', 'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n' ) AS wait_info FROM performance_schema.events_statements_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info FROM performance_schema.events_stages_history_long  WHERE thread_id = in_thread_id AND event_id > v_min_event_id) UNION  (SELECT thread_id, event_id,  CONCAT(event_name,  IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),  IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''), IF(event_name LIKE 'wait/io/file%', '\\n', ''), IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),  IF(object_name IS NOT NULL,  IF (event_name LIKE 'wait/io/socket%', CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)), object_name), '' ), IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n' ) AS event_name, timer_wait, timer_start, nesting_event_id, source AS wait_info FROM performance_schema.events_waits_history_long WHERE thread_id = in_thread_id AND event_id > v_min_event_id) ) events  ORDER BY event_id; DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  SET @log_bin := @@sql_log_bin; SET sql_log_bin = 0;  SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); CALL sys.ps_setup_disable_thread(CONNECTION_ID());  IF (in_auto_setup) THEN CALL sys.ps_setup_save(0);  DELETE FROM performance_schema.setup_actors;  UPDATE performance_schema.threads SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');  UPDATE performance_schema.setup_consumers SET ENABLED = 'YES' WHERE NAME NOT LIKE '%\_history';  UPDATE performance_schema.setup_instruments SET ENABLED = 'YES', TIMED   = 'YES'; END IF;  IF (in_start_fresh) THEN TRUNCATE performance_schema.events_transactions_history_long; TRUNCATE performance_schema.events_statements_history_long; TRUNCATE performance_schema.events_stages_history_long; TRUNCATE performance_schema.events_waits_history_long; END IF;  DROP TEMPORARY TABLE IF EXISTS tmp_events; CREATE TEMPORARY TABLE tmp_events ( event_id bigint unsigned NOT NULL, event longblob, PRIMARY KEY (event_id) );  INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n', '// Stack created .....: ', NOW(), '\n', '// MySQL version .....: ', VERSION(), '\n', '// MySQL hostname ....: ', @@hostname, '\n', '// MySQL port ........: ', @@port, '\n', '// MySQL socket ......: ', @@socket, '\n', '// MySQL user ........: ', CURRENT_USER(), '\n'));  SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';  SET v_min_event_id = 0, v_start        = UNIX_TIMESTAMP(), in_interval    = IFNULL(in_interval, 1.00), in_max_runtime = IFNULL(in_max_runtime, 60.00);  WHILE (v_runtime < in_max_runtime AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO SET v_done = FALSE; OPEN c_stack; c_stack_loop: LOOP FETCH c_stack INTO v_event, v_min_event_id; IF v_done THEN LEAVE c_stack_loop; END IF;  IF (LENGTH(v_event) > 0) THEN INSERT INTO tmp_events VALUES (v_min_event_id, v_event); END IF; END LOOP; CLOSE c_stack;  SELECT SLEEP(in_interval) INTO @sleep; SET v_runtime = (UNIX_TIMESTAMP() - v_start); END WHILE;  INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');  SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY '''''); PREPARE stmt_output FROM @query; EXECUTE stmt_output; DEALLOCATE PREPARE stmt_output;  SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info'; SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF'; SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG'; DROP TEMPORARY TABLE tmp_events;  IF (in_auto_setup) THEN CALL sys.ps_setup_reload_saved(); END IF; IF (v_this_thread_enabed = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  SET sql_log_bin = @log_bin; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_truncate_all_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_truncate_all_tables`( IN in_verbose BOOLEAN )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Truncates all summary tables within Performance Schema, \n resetting all aggregated instrumentation as a snapshot.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each TRUNCATE statement before running\n \n Example\n \n mysql> CALL sys.ps_truncate_all_tables(false);\n +---------------------+\n | summary             |\n +---------------------+\n | Truncated 44 tables |\n +---------------------+\n 1 row in set (0.10 sec)\n \n Query OK, 0 rows affected (0.10 sec)\n '
BEGIN DECLARE v_done INT DEFAULT FALSE; DECLARE v_total_tables INT DEFAULT 0; DECLARE v_ps_table VARCHAR(64); DECLARE ps_tables CURSOR FOR SELECT table_name  FROM INFORMATION_SCHEMA.TABLES  WHERE table_schema = 'performance_schema'  AND (table_name LIKE '%summary%'  OR table_name LIKE '%history%'); DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;  OPEN ps_tables;  ps_tables_loop: LOOP FETCH ps_tables INTO v_ps_table; IF v_done THEN LEAVE ps_tables_loop; END IF;  SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table); IF in_verbose THEN SELECT CONCAT('Running: ', @truncate_stmt) AS status; END IF;  PREPARE truncate_stmt FROM @truncate_stmt; EXECUTE truncate_stmt; DEALLOCATE PREPARE truncate_stmt;  SET v_total_tables = v_total_tables + 1; END LOOP;  CLOSE ps_tables;  SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `statement_performance_analyzer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `statement_performance_analyzer`( IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'), IN in_table VARCHAR(129), IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom') )
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Create a report of the statements running on the server.\n \n The views are calculated based on the overall and/or delta activity.\n \n Requires the SUPER privilege for "SET sql_log_bin = 0;".\n \n Parameters\n \n in_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n The action to take. Supported actions are:\n * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n performance_schema.events_statements_summary_by_digest, but by setting in_table\n this can be overwritten to copy the content of the specified table.\n The snapshot is stored in the sys.tmp_digests temporary table.\n * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n exists, a new will be created.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n in_table and the snapshot. An existing snapshot must exist.\n The action uses the sys.tmp_digests_delta temporary table.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * save          Save the snapshot in the table specified by in_table. The table must exists and have\n the correct structure.\n If no snapshot exists, a new is created.\n * cleanup       Remove the temporary tables used for the snapshot and delta.\n \n in_table (VARCHAR(129)):\n The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n for quoting. Periods (.) are not supported in the database and table names.\n \n The meaning of the table for each action supporting the argument is:\n \n * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n the current content of performance_schema.events_statements_summary_by_digest.\n * overall       The table with the content to create the overall analyzis for. The following values\n can be used:\n - A table name - use the content of that table.\n - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n - NULL         - use the last stored snapshot.\n * delta         The table name is mandatory and specified the reference view to compare the currently\n stored snapshot against. If no snapshot exists, a new will be created.\n * create_table  The name of the regular table to create.\n * create_tmp    The name of the temporary table to create.\n * save          The name of the table to save the currently stored snapshot into.\n \n in_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n Which views to include:  * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view * analysis                          Based on the sys.statement_analysis view * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view * with_full_table_scans             Based on the sys.statements_with_full_table_scans view * with_sorting                      Based on the sys.statements_with_sorting view * with_temp_tables                  Based on the sys.statements_with_temp_tables view * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query  Default is to include all except ''custom''.   Configuration Options  sys.statement_performance_analyzer.limit The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view). If not set the limit is 100.  sys.statement_performance_analyzer.view Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0. If specifying a view, use the same format as for in_table.  sys.debug Whether to provide debugging output. Default is ''OFF''. Set to ''ON'' to include.   Example  To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest and the delta for a 1 minute period:  1. Create a temporary table to store the initial snapshot. 2. Create the initial snapshot. 3. Save the initial snapshot in the temporary table. 4. Wait one minute. 5. Create a new snapshot. 6. Perform analyzis based on the new snapshot. 7. Perform analyzis based on the delta between the initial and new snapshots.  mysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL); Query OK, 0 rows affected (0.08 sec)  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL); Query OK, 0 rows affected (0.00 sec)  mysql> DO SLEEP(60); Query OK, 0 rows affected (1 min 0.00 sec)  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.05 sec)  ...  mysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.03 sec)  ...   To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:  mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL); Query OK, 0 rows affected (0.01 sec)                                     mysql> SET @sys.statement_performance_analyzer.limit = 10; Query OK, 0 rows affected (0.00 sec)            mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans''); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.01 sec)  ...  +-------------------------------------+ | Next Output                         | +-------------------------------------+ | Top 10 Queries with Full Table Scan | +-------------------------------------+ 1 row in set (0.09 sec)  ...   Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using the watch command in Linux.  mysql> CREATE OR REPLACE VIEW mydb.my_statements AS -> SELECT sys.format_statement(DIGEST_TEXT) AS query, ->        SCHEMA_NAME AS db, ->        COUNT_STAR AS exec_count, ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency, ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency, ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg, ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg, ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg, ->        DIGEST AS digest ->   FROM performance_schema.events_statements_summary_by_digest -> ORDER BY SUM_TIMER_WAIT DESC; Query OK, 0 rows affected (0.01 sec)  mysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL); Query OK, 0 rows affected (0.10 sec)  shell$ watch -n 60 "mysql sys --table -e " > SET @sys.statement_performance_analyzer.view = ''mydb.my_statements''; > SET @sys.statement_performance_analyzer.limit = 10; > CALL statement_performance_analyzer(''snapshot'', NULL, NULL); > CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom''); > CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL); > ""  Every 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014  +----------------------------------+ | Next Output                      | +----------------------------------+ | Top 10 Queries Using Custom View | +----------------------------------+ +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           | +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ ... '
BEGIN DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT ''; DECLARE v_this_thread_enabled ENUM('YES', 'NO'); DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE; DECLARE v_digests_table VARCHAR(133); DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT ''; DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64); DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text; DECLARE v_sql longtext; DECLARE v_error_msg VARCHAR(128);   SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID(); IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_disable_thread(CONNECTION_ID()); END IF;  SET @log_bin := @@sql_log_bin; IF (@log_bin = 1) THEN SET sql_log_bin = 0; END IF;   IF (@sys.statement_performance_analyzer.limit IS NULL) THEN SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100'); END IF; IF (@sys.debug IS NULL) THEN SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF'); END IF;   IF (in_table = 'NOW()') THEN SET v_force_new_snapshot = TRUE, in_table             = NULL; ELSEIF (in_table IS NOT NULL) THEN IF (NOT INSTR(in_table, '.')) THEN SET v_table_db   = DATABASE(), v_table_name = in_table; ELSE SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1); SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2); END IF;  SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');  IF (@sys.debug = 'ON') THEN SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug'; END IF;  IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  CALL sys.table_exists(v_table_db, v_table_name, v_table_exists); IF (@sys.debug = 'ON') THEN SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug'; END IF;  IF (v_table_exists = 'BASE TABLE') THEN SET v_checksum_ref = ( SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest' ), v_checksum_table = ( SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name );  IF (v_checksum_ref <> v_checksum_table) THEN SET v_error_msg = CONCAT('The table ', IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table), ' has the wrong definition.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF; END IF; END IF;   IF (in_views IS NULL OR in_views = '') THEN SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables'; END IF;   CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists); IF (@sys.debug = 'ON') THEN SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug'; END IF;  CASE WHEN in_action IN ('snapshot', 'overall') THEN IF (in_table IS NOT NULL) THEN IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.', ' The table ', IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table), ' does not exist.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF; END IF;  WHEN in_action IN ('delta', 'save') THEN IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.', IF(in_table IS NOT NULL, CONCAT(' The table ', IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table), ' does not exist.'), '')); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.'; END IF; WHEN in_action = 'create_tmp' THEN IF (v_table_exists = 'TEMPORARY') THEN SET v_error_msg = CONCAT('Cannot create the table ', IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table), ' as it already exists.'); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  WHEN in_action = 'create_table' THEN IF (v_table_exists <> '') THEN SET v_error_msg = CONCAT('Cannot create the table ', IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table), ' as it already exists', IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.')); SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg; END IF;  WHEN in_action = 'cleanup' THEN DO (SELECT 1); ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot'; END CASE;  SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} ( `SCHEMA_NAME` varchar(64) DEFAULT NULL, `DIGEST` varchar(32) DEFAULT NULL, `DIGEST_TEXT` longtext, `COUNT_STAR` bigint(20) unsigned NOT NULL, `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL, `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL, `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL, `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL, `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL, `SUM_ERRORS` bigint(20) unsigned NOT NULL, `SUM_WARNINGS` bigint(20) unsigned NOT NULL, `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL, `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL, `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL, `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL, `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL, `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL, `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL, `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL, `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL, `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL, `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL, `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL, `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL, `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL, `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL, `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL, `FIRST_SEEN` timestamp NULL DEFAULT NULL, `LAST_SEEN` timestamp NULL DEFAULT NULL, INDEX (SCHEMA_NAME, DIGEST) ) DEFAULT CHARSET=utf8';  IF (v_force_new_snapshot OR in_action = 'snapshot' OR (in_action = 'overall' AND in_table IS NULL) OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY') ) THEN IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN IF (@sys.debug = 'ON') THEN SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug'; END IF; DROP TEMPORARY TABLE IF EXISTS tmp_digests; END IF; CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));  SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ', IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table)); CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (in_action IN ('create_table', 'create_tmp')) THEN IF (in_action = 'create_table') THEN CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table)); ELSE CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table)); END IF; ELSEIF (in_action = 'save') THEN CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table)); CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests')); ELSEIF (in_action = 'cleanup') THEN DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests; DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta; ELSEIF (in_action IN ('overall', 'delta')) THEN IF (in_action = 'overall') THEN IF (in_table IS NULL) THEN SET v_digests_table = 'tmp_digests'; ELSE SET v_digests_table = v_quoted_table; END IF; ELSE SET v_digests_table = 'tmp_digests_delta'; DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta; CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests; SET v_sql = CONCAT('INSERT INTO tmp_digests_delta SELECT `d_end`.`SCHEMA_NAME`, `d_end`.`DIGEST`, `d_end`.`DIGEST_TEXT`, `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'', `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'', `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'', IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'', `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'', `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'', `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'', `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'', `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'', `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'', `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'', `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'', `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'', `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'', `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'', `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'', `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'', `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'', `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'', `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'', `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'', `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'', `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'', `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'', `d_end`.`FIRST_SEEN`, `d_end`.`LAST_SEEN` FROM tmp_digests d_end LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST` AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME` OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL) ) WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0'); CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';  DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1; DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2; DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;  CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 ( cnt bigint unsigned NOT NULL, avg_us decimal(21,0) NOT NULL, PRIMARY KEY (avg_us) ) ENGINE=InnoDB;  SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1 SELECT COUNT(*) cnt,  ROUND(avg_timer_wait/1000000) AS avg_us FROM ', v_digests_table, ' GROUP BY avg_us'); CALL sys.execute_prepared_stmt(v_sql);  CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1; INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;  CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us ( avg_us decimal(21,0) NOT NULL, percentile decimal(46,4) NOT NULL, PRIMARY KEY (avg_us) ) ENGINE=InnoDB;  SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us SELECT s2.avg_us avg_us, IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile FROM tmp_digest_avg_latency_distribution1 AS s1 JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us GROUP BY s2.avg_us HAVING percentile > 0.95 ORDER BY percentile LIMIT 1'); CALL sys.execute_prepared_stmt(v_sql);  SET v_sql = REPLACE( REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ), 'sys.x$ps_digest_95th_percentile_by_avg_us', '`sys`.`x$ps_digest_95th_percentile_by_avg_us`' ); CALL sys.execute_prepared_stmt(v_sql);  DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1; DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2; DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us; END IF;  IF (FIND_IN_SET('analysis', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_sorting', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('with_temp_tables', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output'; SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables' ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF; CALL sys.execute_prepared_stmt(v_sql); END IF;  IF (FIND_IN_SET('custom', in_views)) THEN SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';  IF (@sys.statement_performance_analyzer.view IS NULL) THEN SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL); END IF; IF (@sys.statement_performance_analyzer.view IS NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.'; END IF;  IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN SET v_custom_db   = DATABASE(), v_custom_name = @sys.statement_performance_analyzer.view; ELSE SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1); SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2); END IF;  CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists); IF (v_custom_view_exists <> 'VIEW') THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.'; END IF;  SET v_sql = REPLACE( (SELECT VIEW_DEFINITION FROM information_schema.VIEWS WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name ), '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table ); ELSE SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table); END IF;  IF (@sys.statement_performance_analyzer.limit > 0) THEN SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit); END IF;  CALL sys.execute_prepared_stmt(v_sql); END IF; END IF;  IF (v_this_thread_enabled = 'YES') THEN CALL sys.ps_setup_enable_thread(CONNECTION_ID()); END IF;  IF (@log_bin = 1) THEN SET sql_log_bin = @log_bin; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `table_exists`( IN in_db VARCHAR(64), IN in_table VARCHAR(64), OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') )
    SQL SECURITY INVOKER
    COMMENT '\n Description\n \n Tests whether the table specified in in_db and in_table exists either as a regular\n table, or as a temporary table. The returned value corresponds to the table that\n will be used, so if there''s both a temporary and a permanent table with the given\n name, then ''TEMPORARY'' will be returned.\n \n Parameters\n \n in_db (VARCHAR(64)):\n The database name to check for the existance of the table in.\n \n in_table (VARCHAR(64)):\n The name of the table to check the existance of.\n \n out_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n The return value: whether the table exists. The value is one of:\n * ''''           - the table does not exist neither as a base table, view, nor temporary table.\n * ''BASE TABLE'' - the table name exists as a permanent base table table.\n * ''VIEW''       - the table name exists as a view.\n * ''TEMPORARY''  - the table name exists as a temporary table.\n \n Example\n \n mysql> CREATE DATABASE db1;\n Query OK, 1 row affected (0.07 sec)\n \n mysql> use db1;\n Database changed\n mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE view v_t1 AS SELECT * FROM t1;\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | TEMPORARY  |\n +------------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | BASE TABLE |\n +------------+\n 1 row in set (0.01 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +---------+\n | @exists |\n +---------+\n | VIEW    |\n +---------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.01 sec)\n \n +---------+\n | @exists |\n +---------+\n |         |\n +---------+\n 1 row in set (0.00 sec)\n '
BEGIN DECLARE v_error BOOLEAN DEFAULT FALSE; DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE; DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;  SET out_exists = '';  IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE `', in_db, '`.`', in_table, '` (id INT PRIMARY KEY)'); PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL; EXECUTE stmt_create_table; DEALLOCATE PREPARE stmt_create_table; IF (v_error) THEN SET out_exists = 'TEMPORARY'; ELSE SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE `', in_db, '`.`', in_table, '`'); PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL; EXECUTE stmt_drop_table; DEALLOCATE PREPARE stmt_drop_table; SET out_exists = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table); END IF; ELSE SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM `', in_db, '`.`', in_table, '`'); PREPARE stmt_select FROM @sys.tmp.table_exists.SQL; IF (NOT v_error) THEN DEALLOCATE PREPARE stmt_select; SET out_exists = 'TEMPORARY'; END IF; END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `iwant`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `iwant` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `iwant`;

--
-- Table structure for table `demand`
--

DROP TABLE IF EXISTS `demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `who` text NOT NULL,
  `type` text NOT NULL,
  `object` text NOT NULL,
  `location` text NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `image` longblob,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand`
--

LOCK TABLES `demand` WRITE;
/*!40000 ALTER TABLE `demand` DISABLE KEYS */;
INSERT INTO `demand` VALUES (1,'lulu','hource','paik-666','shang hai',99999,999,'2017-02-21 15:40:36','2017-02-21 15:40:36','2017-02-21 15:40:36',NULL,'888888'),(2,'hao','house','paik-666','shang hai',666666,666,'2016-11-27 18:00:00','2016-11-27 18:00:00','2017-02-21 15:40:54',NULL,'666666');
/*!40000 ALTER TABLE `demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'iwant'
--

--
-- Current Database: `user`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `user` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `user`;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(45) NOT NULL,
  `LoginMail` varchar(95) NOT NULL,
  `Password` text,
  `SafeMail` varchar(45) DEFAULT NULL,
  `PasswordRecoverQuestion` varchar(45) DEFAULT NULL,
  `PasswordRecoverAnswer` text,
  `Status` int(11) DEFAULT '0',
  `RegisterDate` date DEFAULT NULL,
  PRIMARY KEY (`id`,`LoginName`,`LoginMail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Dan-dan_Xue','dan-dan_xue@asus.com','b03c6e18072db193c9a91d33e84e09e4','dan-dan_xue@asus.com','My OA?','ffb4513f2a3a46ad17d19ff6b56f9a2d',0,'2012-02-26'),(2,'Hubert','Hubert_Zhang@asus.com','5c613856b215b68999efb8eed5755b74','Hubert_Zhang@asus.com','Name','dc647eb65e6711e155375218212b3964',0,'2012-02-26'),(3,'Hunter_Chen','Hunter_Chen@asus.com','d1071878263c8e3aa1de4a863d40b62d','Hunter_Chen@asus.com','My name is?','6f7f62ba4458f067cfc7afa32b3c7b8a',0,'2012-02-26'),(4,'Hao__Chen','xhfch@126.com','d1071878263c8e3aa1de4a863d40b62d','xhfch@126.com','My name is?','02839ed514749f635038586b1846c6b5',0,'2012-02-26');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'user'
--

--
-- Current Database: `file`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `file` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `file`;

--
-- Table structure for table `infor`
--

DROP TABLE IF EXISTS `infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infor` (
  `idinfor` int(11) NOT NULL AUTO_INCREMENT,
  `where` text NOT NULL COMMENT 'where: the file URL path  ',
  `name` text NOT NULL COMMENT 'file name',
  `what` varchar(45) NOT NULL COMMENT 'what ,type,comment,',
  `who` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `depend_id` int(11) NOT NULL DEFAULT '0' COMMENT 'like project ID',
  `how` int(11) NOT NULL DEFAULT '0' COMMENT 'how long size',
  PRIMARY KEY (`idinfor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infor`
--

LOCK TABLES `infor` WRITE;
/*!40000 ALTER TABLE `infor` DISABLE KEYS */;
/*!40000 ALTER TABLE `infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'file'
--

--
-- Current Database: `law`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `law` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `law`;

--
-- Table structure for table `law`
--

DROP TABLE IF EXISTS `law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `law` (
  `idlaw` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `chapter` int(11) NOT NULL,
  `clause` int(11) NOT NULL,
  `content` text NOT NULL,
  `remark` text COMMENT 'who : author',
  `type` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `where` varchar(45) DEFAULT NULL COMMENT 'create location',
  `who` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlaw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law`
--

LOCK TABLES `law` WRITE;
/*!40000 ALTER TABLE `law` DISABLE KEYS */;
/*!40000 ALTER TABLE `law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'law'
--

--
-- Current Database: `task`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `task` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `task`;

--
-- Dumping routines for database 'task'
--

--
-- Current Database: `knowledge`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `knowledge` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `knowledge`;

--
-- Table structure for table `k_links`
--

DROP TABLE IF EXISTS `k_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_links` (
  `idbooklink` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` text NOT NULL COMMENT 'what the link item information ?',
  `what_type` varchar(45) DEFAULT NULL,
  `where` text NOT NULL COMMENT 'where the URL address',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idbooklink`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_links`
--

LOCK TABLES `k_links` WRITE;
/*!40000 ALTER TABLE `k_links` DISABLE KEYS */;
INSERT INTO `k_links` VALUES (1,'hunter','translate.google.cn','translate','http://translate.google.cn/','2017-04-05 02:30:57','',''),(2,'hunter','bing.com','search','http://www.bing.com/','2017-04-05 02:32:03','',''),(3,'hunter','google.com','search','http://www.google.com/','2017-04-05 02:32:41','',''),(4,'hunter','msdn.microsoft','doc','https://msdn.microsoft.com','2017-04-05 02:33:16','',''),(5,'hunter','IBM Knowledge Center','doc','http://www.ibm.com/support/knowledgecenter/en/','2017-04-05 02:34:30','',''),(6,'hunter','Apple Developers Center','doc','https://developer.apple.com/','2017-04-05 02:36:48','',''),(7,'hunter','Apple API Reference','doc','https://developer.apple.com/reference/','2017-04-05 02:39:27','',''),(8,'hunter','Apple Guides and Sample Code','doc','https://developer.apple.com/library/prerelease/content/navigation/','2017-04-05 02:40:10','',''),(9,'hunter','VirtualBox Technical documentation','doc','https://www.virtualbox.org/wiki/Technical_documentation','2017-04-05 02:40:35','',''),(10,'hunter','Git Documentation','doc','https://git-scm.com/doc','2017-04-05 02:40:58','',''),(11,'hunter','Lean-x','doc','http://www.tutorialspoint.com/','2017-04-05 02:41:21','',''),(12,'hunter','perldoc.perl.org','doc','http://perldoc.perl.org/','2017-04-05 02:41:41','',''),(13,'hunter','GNU C Reference Manual','doc','http://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html','2017-04-05 02:42:06','',''),(14,'hunter','Linux C++ Software Development','doc','http://www.yolinux.com/TUTORIALS/LinuxTutorialC%2B%2B.html','2017-04-05 02:42:32','',''),(15,'hunter','C++  keyword','doc','http://en.cppreference.com/w/cpp/keyword','2017-04-05 02:42:55','',''),(16,'hunter','C++ STL Tutorial','doc technical','http://www.tutorialspoint.com/cplusplus/cpp_stl_tutorial.htm','2017-04-05 02:44:49','',''),(17,'hunter','My SQL documentation','doc technical','http://dev.mysql.com/doc/','2017-04-05 02:45:12','',''),(18,'hunter','PHP Manual','doc technical','http://www.php.net/manual/en/index.php','2017-04-05 02:45:34','',''),(19,'hunter','w3.standards','doc technical','https://www.w3.org/standards/','2017-04-05 02:45:55','',''),(20,'hunter','w3school.cn','doc technical','http://www.w3school.com.cn/','2017-04-05 02:46:16','',''),(21,'hunter','w3school.bootcss','doc technical','http://w3schools.bootcss.com/html/default.html','2017-04-05 02:46:38','',''),(22,'hunter','HTTP protocols','doc technical protocol','https://www.w3.org/Protocols/','2017-04-05 02:47:22','',''),(23,'hunter','html.com','doc technical','http://html.com/','2017-04-05 02:48:03','',''),(24,'hunter','java','doc technical language develop','https://www.oracle.com/java/index.html','2017-04-05 02:48:48','',''),(25,'hunter','fileformat.book','doc technical','http://www.fileformat.info/resource/book/index.htm','2017-04-05 02:52:07','',''),(26,'hunter','U-Boot.manual','doc technical','http://www.denx.de/wiki/DULG/Manual','2017-04-05 02:53:45','',''),(27,'hunter','yoctoproject.doc','doc technical','https://www.yoctoproject.org/documentation','2017-04-05 02:54:11','',''),(28,'hunter','openembedded.org','doc technical','http://www.openembedded.org/wiki/Main_Page','2017-04-05 02:54:35','',''),(29,'hunter','bitbake-user-manual','doc technical','https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html','2017-04-05 02:54:56','',''),(30,'hunter','Windows driver development','doc technical develop','https://msdn.microsoft.com/en-us/windows/hardware/ff960953.aspx','2017-04-05 02:55:27','',''),(31,'hunter','linux-man-pages','doc technical linux ','https://linux.die.net/man/','2017-04-05 02:56:01','',''),(32,'hunter','centos.doc','doc technical linux ','https://www.centos.org/docs/','2017-04-05 02:56:26','',''),(33,'hunter','IEEE-POSIX','doc technical','http://get.posixcertified.ieee.org/','2017-04-05 02:56:54','',''),(34,'hunter','i2c-bus','doc technical','http://www.i2c-bus.org/i2c-bus/','2017-04-05 02:57:18','',''),(35,'hunter','docker-library','doc technical','https://github.com/docker-library','2017-04-05 02:58:53','',''),(36,'hunter','python3-doc','doc technical','https://docs.python.org/3/','2017-04-05 02:59:13','',''),(37,'hunter','lamp-web','doc technical','http://www.lampweb.org/','2017-04-05 02:59:29','',''),(38,'hunter','nginx-docs','doc technical','http://nginx.org/en/docs/','2017-04-05 02:59:56','',''),(39,'hunter','gitlabhq','doc technical','https://github.com/gitlabhq','2017-04-05 03:00:20','',''),(40,'hunter','gnu-make','doc technical','http://www.gnu.org/software/make/manual/make.html','2017-04-05 03:00:40','',''),(41,'hunter','iso639-2:language code','doc technical','https://www.loc.gov/standards/iso639-2/php/code_list.php','2017-04-05 03:01:02','',''),(42,'hunter','countrycode','doc technical','https://countrycode.org/','2017-04-05 03:01:28','',''),(43,'hunter','multi-language php','doc technical','http://www.bitrepository.com/php-how-to-add-multi-language-support-to-a-website.html','2017-04-05 03:01:58','',''),(44,'hunter','GNU/Linux Command-Line Tools Summary','doc technical','https://linux.die.net/Linux-CLI/','2017-04-05 03:02:23','',''),(45,'hunter','css color ','doc technical','http://www.w3school.com.cn/cssref/css_colornames.asp','2017-04-06 08:04:40','',''),(46,'hunter','PHP class','doc technical','http://php.net/manual/en/language.oop5.php','2017-04-07 03:03:53','',''),(47,'hunter','pop3_blog_cn','doc technical','http://blog.csdn.net/bripengandre/article/details/2192111','2017-04-11 18:18:06','',''),(48,'hunter','IBM Advance Toolchain for PowerLinux Documentation','doc technical','https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W51a7ffcf4dfd_4b40_9d82_446ebc23c550/page/IBM%20Advance%20Toolchain%20for%20PowerLinux%20Documentation','2017-04-14 10:13:36','normal','IBM developerworks'),(49,'hunter',' IBM Software Development Kit for Linux on Power (SDK) ','doc technical','https://developer.ibm.com/linuxonpower/sdk/','2017-04-14 10:18:51','normal','IBM developerworks');
/*!40000 ALTER TABLE `k_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_type`
--

DROP TABLE IF EXISTS `k_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_type` (
  `idk_type` int(11) NOT NULL AUTO_INCREMENT,
  `what` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idk_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_type`
--

LOCK TABLES `k_type` WRITE;
/*!40000 ALTER TABLE `k_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'knowledge'
--

--
-- Current Database: `bookmark`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bookmark` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookmark`;

--
-- Table structure for table `patent_law`
--

DROP TABLE IF EXISTS `patent_law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'audio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
INSERT INTO `patent_law` VALUES (1,'中华人民共和国专利法','','\r\n中华人民共和国主席令\r\n\r\n第 八号\r\n\r\n《全国人民代表大会常务委员会关于修改〈中华人民共和国专利法〉的决定》已由中华人民共和国第十一届全国人民代表大会常务委员会第六次会议于2008年12月27日通过，现予公布，自2009年10月1日起施行。\r\n\r\n中华人民共和国主席胡锦涛\r\n\r\n2008年12月27日\r\n\r\n（1984年3月12日第六届全国人民代表大会常务委员会第四次会议通过根据1992年9月4日第七届全国人民代表大会常务委员会第二十七次会议《关于修改〈中华人民共和国专利法〉的决定》第一次修正根据2000年8月25日第九届全国人民代表大会常务委员会第十七次会议《关于修改〈中华人民共和国专利法〉的决定》第二次修正根据2008年12月27日第十一届全国人民代表大会常务委员会第六次会议《关于修改〈中华人民共和国专利法〉的决定》第三次修正）','','','2017-04-21 01:35:51','china','','','','',''),(2,'目 录','','目 录\r\n\r\n第一章 总则\r\n\r\n第二章 授予专利权的条件\r\n\r\n第三章 专利的申请\r\n\r\n第四章专利申请的审查和批准\r\n\r\n第五章专利权的期限、终止和无效\r\n\r\n第六章专利实施的强制许可\r\n\r\n第七章 专利权的保护\r\n\r\n第八章 附则','','','2017-04-21 01:38:39','china','','','','',''),(3,'第一章 总 则\r\n','','第一条为了保护专利权人的合法权益，鼓励发明创造，推动发明创造的应用，提高创新能力，促进科学技术进步和经济社会发展，制定本法。\r\n','保护+鼓励+推动+提高+促进+制定.','','2017-04-21 01:40:39','china','','','','',''),(4,'第一章 总 则\r\n','','第二条本法所称的发明创造是指发明、实用新型和外观设计。\r\n\r\n发明，是指对产品、方法或者其改进所提出的新的技术方案。\r\n\r\n实用新型，是指对产品的形状、构造或者其结合所提出的适于实用的新的技术方案。\r\n\r\n外观设计，是指对产品的形状、图案或者其结合以及色彩与形状、图案的结合所作出的富有美感并适于工业应用的新设计。','发明创造类型:发明+实用新型+外观设计.','','2017-04-21 01:41:57','china','','','','',''),(5,'第一章 总 则\r\n','','第三条国务院专利行政部门负责管理全国的专利工作；统一受理和审查专利申请，依法授予专利权。\r\n省、自治区、直辖市人民政府管理专利工作的部门负责本行政区域内的专利管理工作。','全国:国务院专利行政部门 .地方:省、自治区、直辖市人民政府管理专利工作的部门.','','2017-04-21 01:43:51','china','','','','',''),(6,'第一章 总 则\r\n','','第四条申请专利的发明创造涉及国家安全或者重大利益需要保密的，按照国家有关规定办理。\r\n','checklist_item:申请专利的发明创造涉及国家安全或者重大利益需要保密','','2017-04-21 01:45:07','china','','','','',''),(7,'第一章 总 则\r\n','','五条对违反法律、社会公德或者妨害公共利益的发明创造，不授予专利权。\r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造，不授予专利权。\r\n','checklist_item:\r\n违反法律、社会公德或者妨害公共利益的发明创造. \r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造\r\nY:reject N:goon','','2017-04-21 01:46:40','china','','','','',''),(8,'第一章 总 则\r\n','','第六条 执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造为职务发明创造。\r\n职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人。\r\n非职务发明创造，申请专利的权利属于发明人或者设计人；\r\n申请被批准后，该发明人或者设计人为专利权人。\r\n利用本单位的物质技术条件所完成的发明创造，\r\n单位与发明人或者设计人订有合同，对申请专利的权利和专利权的归属作出约定的，从其约定。','是否为职务发明创造:\r\nchecklist_item:\r\n执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造\r\nY:职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人\r\nN:专利的权利属于发明人或者设计人；','','2017-04-21 01:53:34','china','','','','',''),(9,'第一章 总 则\r\n','','第七条 对发明人或者设计人的非职务发明创造专利申请，任何单位或者个人不得压制。','check_item:非职务发明创造专利申请，单位或者个人是否有存在压制问题。:\r\nY: go to report warning. \r\nN: go on .','','2017-04-21 01:56:12','china','','','','',''),(10,'第一章 总 则\r\n','','第八条 两个以上单位或者个人合作完成的发明创造、一个单位或者个人接受其他单位或者个人委托所完成的发明创造，除另有协议的以外，申请专利的权利属于完成或者共同完成的单位或者个人；申请被批准后，申请的单位或者个人为专利权人。\r\n','check_item:是否为两个及两个以上合作完成发明创造? \r\ncheck_item:是否为一个单位或者个人接受其他单位或者个人委托所完成的发明创造?\r\nY: 申请专利的权利属于完成或者共同完成的单位或者个人 \r\n','','2017-04-21 01:58:49','china','','','','',''),(11,'第一章 总 则\r\n','','第九条同样的发明创造只能授予一项专利权。但是，同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利，先获得的实用新型专利权尚未终止，且申请人声明放弃该实用新型专利权的，可以授予发明专利权。两个以上的申请人分别就同样的发明创造申请专利的，专利权授予最先申请的人。\r\n','check_item:是否存在同样的发明创造? \r\ncheck_item:是否为同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利?\r\ncheck_item:先获得的实用新型专利权尚未终止是否终止?\r\n{check_item:申请人声明放弃该实用新型专利权的是否放弃实用新型专利权?Y:可以授予发明专利权}\r\ncheck_item:是否存在两个以上的申请人分别就同样的发明创造申请专利的，Y: ?专利权授予最先: 申请的人。\r\n','','2017-04-21 02:03:45','china','','','','',''),(12,'第一章 总 则','','第十条 专利申请权和专利权可以转让。中国单位或者个人向外国人、外国企业或者外国其他组织转让专利申请权或者专利权的，应当依照有关法律、行政法规的规定办理手续。转让专利申请权或者专利权的，当事人应当订立书面合同，并向国务院专利行政部门登记，由国务院专利行政部门予以公告。专利申请权或者专利权的转让自登记之日起生效。','object:国单位或者个人向外国人、外国企业或者外国其他组织\r\naction:申请：转让专利权和申请权; 转让:办理手续 ;登记:国务院专利行政部门;公告：国务院专利行政部门; 生效：时间\r\noutput:书面合同','','2017-04-23 12:36:05','china','','','','',''),(13,'第一章 总 则','','第十一条发明和实用新型专利权被授予后，除本法另有规定的以外，任何单位或者个人未经专利权人许可，都不得实施其专利，即不得为生产经营目的制造、使用、许诺销售、销售、进口其专利产品，或者使用其专利方法以及使用、许诺销售、销售、进口依照该专利方法直接获得的产品。\r\n\r\n外观设计专利权被授予后，任何单位或者个人未经专利权人许可，都不得实施其专利，即不得为生产经营目的制造、许诺销售、销售、进口其外观设计专利产品。','action: 实施专利执法检查','','2017-04-23 13:32:16','china','','','','',''),(14,'第一章 总 则','','第十二条任何单位或者个人实施他人专利的，应当与专利权人订立实施许可合同，向专利权人支付专利使用费。被许可人无权允许合同规定以外的任何单位或者个人实施该专利。\r\n','object:单位，个人\r\naction:申请：实施专利 ，签订：实施专利合同 支付：专利权人费用','','2017-04-23 13:36:16','china','','','','',''),(15,'第一章 总 则','','第十三条发明专利申请公布后，申请人可以要求实施其发明的单位或者个人支付适当的费用。\r\n','object:申请人（单位，个人）\r\naction:要求：实施专利支付费用 签订：实施专利合同 支付：专利权人费用','','2017-04-23 13:45:28','china','','','','',''),(16,'第一章 总 则','','第十四条国有企业事业单位的发明专利，对国家利益或者公共利益具有重大意义的，国务院有关主管部门和省、自治区、直辖市人民政府报经国务院批准，可以决定在批准的范围内推广应用，允许指定的单位实施，由实施单位按照国家规定向专利权人支付使用费。','','','2017-04-23 15:34:18','china','','','','',''),(17,'第一章 总 则','','第十五条专利申请权或者专利权的共有人对权利的行使有约定的，从其约定。没有约定的，共有人可以单独实施或者以普通许可方式许可他人实施该专利；许可他人实施该专利的，收取的使用费应当在共有人之间分配。\r\n除前款规定的情形外，行使共有的专利申请权或者专利权应当取得全体共有人的同意。','action:确认：共有人共同确认许可和实施。','','2017-04-23 15:38:38','china','','','','',''),(18,'第一章 总 则','','第十六条被授予专利权的单位应当对职务发明创造的发明人或者设计人给予奖励；发明创造专利实施后，根据其推广应用的范围和取得的经济效益，对发明人或者设计人给予合理的报酬。\r\n','object:被授予专利权的单位\r\naction:奖励：职务发明创造的发明人或者设计人给予奖。支付：根据经济效益对发明人或者设计人给予合理的报酬','','2017-04-23 15:43:28','china','','','','',''),(19,'第一章 总 则','','第十七条发明人或者设计人有权在专利文件中写明自己是发明人或者设计人。\r\n\r\n专利权人有权在其专利产品或者该产品的包装上标明专利标识。\n','object:发明人或者设计人\r\naction:署名：在专利文件中写明自己是发明人或者设计人','','2017-04-23 15:45:40','china','','','','',''),(20,'第一章 总 则','','第十八条在中国没有经常居所或者营业所的外国人、外国企业或者外国其他组织在中国申请专利的，依照其所属国同中国签订的协议或者共同参加的国际条约，或者依照互惠原则，根据本法办理。\r\n\r\n','object:外国人、外国企业或者外国其他组织\r\naction:申请：依据','','2017-04-23 15:51:04','china','','','','',''),(21,'第一章 总 则','','第十九条在中国没有经常居所或者营业所的外国人、外国企业或者外国其他组织在中国申请专利和办理其他专利事务的，应当委托依法设立的专利代理机构办理。\r\n\r\n中国单位或者个人在国内申请专利和办理其他专利事务的，可以委托依法设立的专利代理机构办理。\r\n\r\n专利代理机构应当遵守法律、行政法规，按照被代理人的委托办理专利申请或者其他专利事务；对被代理人发明创造的内容，除专利申请已经公布或者公告的以外，负有保密责任。专利代理机构的具体管理办法由国务院规定。\r\n\r\n','action：委托','','2017-04-23 16:25:03','china','','','','',''),(22,'第一章 总 则','','第二十条任何单位或者个人将在中国完成的发明或者实用新型向外国申请专利的，应当事先报经国务院专利行政部门进行保密审查。保密审查的程序、期限等按照国务院的规定执行。\r\n\r\n中国单位或者个人可以根据中华人民共和国参加的有关国际条约提出专利国际申请。申请人提出专利国际申请的，应当遵守前款规定。\r\n\r\n国务院专利行政部门依照中华人民共和国参加的有关国际条约、本法和国务院有关规定处理专利国际申请。\r\n\r\n对违反本条第一款规定向外国申请专利的发明或者实用新型，在中国申请专利的，不授予专利权。','object:任何单位或者个人\r\naction：外国申请专利;保密审查;国际申请;','','2017-04-23 16:28:42','china','','','','',''),(23,'第一章 总 则','','第二十一条国务院专利行政部门及其专利复审委员会应当按照客观、公正、准确、及时的要求，依法处理有关专利的申请和请求。\r\n\r\n国务院专利行政部门应当完整、准确、及时发布专利信息，定期出版专利公报。\r\n\r\n在专利申请公布或者公告前，国务院专利行政部门的工作人员及有关人员对其内容负有保密责任。','object:务院专利行政部门及其专利复审委员会\r\naction：申请和请求;发布专利信息;保密责任;','','2017-04-23 16:32:02','china','','','','',''),(24,'第二章 授予专利权的条件','','第二章 授予专利权的条件','object:务院专利行政部门\r\naction：授予专利权;','','2017-04-23 16:33:52','china','','','','',''),(25,'第二章 授予专利权的条件','','第二十二条授予专利权的发明和实用新型，应当具备新颖性、创造性和实用性。\r\n\r\n新颖性，是指该发明或者实用新型不属于现有技术；也没有任何单位或者个人就同样的发明或者实用新型在申请日以前向国务院专利行政部门提出过申请，并记载在申请日以后公布的专利申请文件或者公告的专利文件中。\r\n\r\n创造性，是指与现有技术相比，该发明具有突出的实质性特点和显著的进步，该实用新型具有实质性特点和进步。\r\n\r\n实用性，是指该发明或者实用新型能够制造或者使用，并且能够产生积极效果。\r\n\r\n本法所称现有技术，是指申请日以前在国内外为公众所知的技术。','object:务院专利行政部门\r\naction：check:发明和实用新型，应当具备新颖性、创造性和实用性。','','2017-04-23 16:34:57','china','','','','',''),(26,'第二章 授予专利权的条件','','第二十三条授予专利权的外观设计，应当不属于现有设计；也没有任何单位或者个人就同样的外观设计在申请日以前向国务院专利行政部门提出过申请，并记载在申请日以后公告的专利文件中。\r\n\r\n授予专利权的外观设计与现有设计或者现有设计特征的组合相比，应当具有明显区别。\r\n\r\n授予专利权的外观设计不得与他人在申请日以前已经取得的合法权利相冲突。\r\n\r\n本法所称现有设计，是指申请日以前在国内外为公众所知的设计。','object:务院专利行政部门\r\naction：check:外观设计，不属于现有设计;已有同样专利提出过申请;有明显区别;\r\n与他人在申请日以前已经取得的合法权利相冲突。\r\n','','2017-04-23 16:39:12','china','','','','',''),(27,'第二章 授予专利权的条件','','第二十四条申请专利的发明创造在申请日以前六个月内，有下列情形之一的，不丧失新颖性：\r\n\r\n（一）在中国政府主办或者承认的国际展览会上首次展出的；\r\n\r\n（二）在规定的学术会议或者技术会议上首次发表的；\r\n\r\n（三）他人未经申请人同意而泄露其内容的。\r\n','object:务院专利行政部门\r\naction：check:不丧失新颖性情况。\r\n','','2017-04-23 16:44:23','china','','','','',''),(28,'第二章 授予专利权的条件','','第二十四条申请专利的发明创造在申请日以前六个月内，有下列情形之一的，不丧失新颖性：\r\n\r\n（一）在中国政府主办或者承认的国际展览会上首次展出的；\r\n\r\n（二）在规定的学术会议或者技术会议上首次发表的；\r\n\r\n（三）他人未经申请人同意而泄露其内容的。\r\n','object:务院专利行政部门\r\naction：check:不丧失新颖性情况。\r\n','','2017-04-23 16:46:19','china','','','','',''),(29,'第二章 授予专利权的条件','','第二十五条对下列各项，不授予专利权：\r\n（一）科学发现；\r\n（二）智力活动的规则和方法；\r\n（三）疾病的诊断和治疗方法；\r\n（四）动物和植物品种；\r\n（五）用原子核变换方法获得的物质；\r\n（六）对平面印刷品的图案、色彩或者二者的结合作出的主要起标识作用的设计。\r\n\r\n对前款第（四）项所列产品的生产方法，可以依照本法规定授予专利权。','action:check:+ reject 1,2,3,4,5,6 ','','2017-04-24 03:30:31','china','','','','',''),(30,'第三章 专利的申请','','第二十六条申请发明或者实用新型专利的，应当提交请求书、说明书及其摘要和权利要求书等文件。\r\n\r\n请求书应当写明发明或者实用新型的名称，发明人的姓名，申请人姓名或者名称、地址，以及其他事项。\r\n\r\n说明书应当对发明或者实用新型作出清楚、完整的说明，以所属技术领域的技术人员能够实现为准；必要的时候，应当有附图。摘要应当简要说明发明或者实用新型的技术要点。\r\n\r\n权利要求书应当以说明书为依据，清楚、简要地限定要求专利保护的范围。\r\n\r\n依赖遗传资源完成的发明创造，申请人应当在专利申请文件中说明该遗传资源的直接来源和原始来源；申请人无法说明原始来源的，应当陈述理由。','action:申请: 提交:交请求书、说明书以及摘要,权利要求书, write:实用新型的名称，发明人的姓名，申请人姓名或者名称、地址\r\n\r\ncheck formar:请求书,说明书,权利要求书','','2017-04-24 03:34:49','china','','','','',''),(31,'第三章 专利的申请','','第二十七条申请外观设计专利的，应当提交请求书、该外观设计的图片或者照片以及对该外观设计的简要说明等文件。\r\n\r\n申请人提交的有关图片或者照片应当清楚地显示要求专利保护的产品的外观设计。','check format:请求书,外观设计的图片或者照片,外观设计的简要说明','','2017-04-24 03:36:24','china','','','','',''),(32,'第三章 专利的申请','','第二十八条国务院专利行政部门收到专利申请文件之日为申请日。如果申请文件是邮寄的，以寄出的邮戳日为申请日。\r\n','action:record 申请日','','2017-04-24 03:37:16','china','','','','',''),(33,'第三章 专利的申请','','第二十九条申请人自发明或者实用新型在外国第一次提出专利申请之日起十二个月内，或者自外观设计在外国第一次提出专利申请之日起六个月内，又在中国就相同主题提出专利申请的，依照该外国同中国签订的协议或者共同参加的国际条约，或者依照相互承认优先权的原则，可以享有优先权。\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check country 外国,check :优先权','','2017-04-24 03:38:59','china','','','','',''),(34,'第三章 专利的申请','','第三十条申请人要求优先权的，应当在申请的时候提出书面声明，并且在三个月内提交第一次提出的专利申请文件的副本；未提出书面声明或者逾期未提交专利申请文件副本的，视为未要求优先权。\r\n\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check :优先权书面声明,check 第一次提出的专利申请文件的副本','','2017-04-24 03:39:56','china','','','','',''),(35,'第三章 专利的申请','','第三十一条一件发明或者实用新型专利申请应当限于一项发明或者实用新型。属于一个总的发明构思的两项以上的发明或者实用新型，可以作为一件申请提出。\r\n\r\n一件外观设计专利申请应当限于一项外观设计。同一产品两项以上的相似外观设计，或者用于同一类别并且成套出售或者使用的产品的两项以上外观设计，可以作为一件申请提出。\r\n\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check :一次申请仅限一项发明或者实用新型,外观设计,check 优先权','','2017-04-24 03:42:06','china','','','','',''),(36,'第三章 专利的申请','','第三十二条申请人可以在被授予专利权之前随时撤回其专利申请。\r\n','action:撤回专利申请 .','','2017-04-24 03:42:49','china','','','','',''),(37,'第三章 专利的申请','','第三十三条申请人可以对其专利申请文件进行修改，但是，对发明和实用新型专利申请文件的修改不得超出原说明书和权利要求书记载的范围，对外观设计专利申请文件的修改不得超出原图片或者照片表示的范围。\r\n\r\n','action:文件修改:check 修改是否超出原申请范围 .','','2017-04-24 03:44:10','china','','','','',''),(38,'\r\n第四章专利申请的审查和批准','','\r\n第四章专利申请的审查和批准','','','2017-04-24 03:44:37','china','','','','',''),(39,'\r\n第四章专利申请的审查和批准','','第三十四条国务院专利行政部门收到发明专利申请后，经初步审查认为符合本法要求的，自申请日起满十八个月，即行公布。国务院专利行政部门可以根据申请人的请求早日公布其申请。\r\n','action:公布:自申请日起满十八个月，即行公布,早日公布:请求书. 申请人的请求早日公布其申请','','2017-04-24 03:45:45','china','','','','',''),(40,'\r\n第四章专利申请的审查和批准','','第三十五条发明专利申请自申请日起三年内，国务院专利行政部门可以根据申请人随时提出的请求，对其申请进行实质审查；申请人无正当理由逾期不请求实质审查的，该申请即被视为撤回。\r\n\r\n国务院专利行政部门认为必要的时候，可以自行对发明专利申请进行实质审查。','action:实质审查:自行对发明专利申请进行实质审查,撤回','','2017-04-24 03:47:14','china','','','','','');
/*!40000 ALTER TABLE `patent_law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_law_implementation_rules`
--

DROP TABLE IF EXISTS `patent_law_implementation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law_implementation_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'vedio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_implementation_rules`
--

LOCK TABLES `patent_law_implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_implementation_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law_implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bookmark'
--

--
-- Current Database: `question`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `question` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `question`;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sQ` text NOT NULL,
  `sA` text NOT NULL,
  `sR` text NOT NULL,
  `sF` text,
  `sD` text,
  `depend` int(30) DEFAULT '0',
  `result` int(11) DEFAULT '0',
  `status` int(30) DEFAULT '0',
  `action` int(30) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'question'
--

--
-- Current Database: `patent`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `patent` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `patent`;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `idproject` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `item` longtext,
  `infor` blob,
  `type` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `depend_id` int(11) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL,
  `position` tinytext,
  `source` blob,
  `url` longtext,
  `status` varchar(45) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`idproject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'patent'
--

--
-- Current Database: `code`
--

USE `code`;

--
-- Current Database: `company`
--

USE `company`;

--
-- Current Database: `sys`
--

USE `sys`;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`INNODB_LOCK_WAITS` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`INNODB_LOCKS` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`INNODB_LOCKS` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size'))) union all (select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `columns`.`TABLE_SCHEMA` AS `table_schema`,`columns`.`TABLE_NAME` AS `table_name`,`columns`.`COLUMN_NAME` AS `column_name`,`columns`.`DATA_TYPE` AS `data_type`,`columns`.`COLUMN_TYPE` AS `column_type`,(locate('unsigned',`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`tables`.`AUTO_INCREMENT` AS `auto_increment`,(`tables`.`AUTO_INCREMENT` / ((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`columns`.`TABLE_SCHEMA` = `tables`.`TABLE_SCHEMA`) and (`columns`.`TABLE_NAME` = `tables`.`TABLE_NAME`)))) where ((`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`columns`.`EXTRA` = 'auto_increment')) order by (`tables`.`AUTO_INCREMENT` / ((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `tables`.`TABLE_SCHEMA`,`tables`.`TABLE_TYPE` union select `statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `statistics`.`TABLE_SCHEMA`,`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if((`redundant_keys`.`subpart_exists` or `dominant_keys`.`subpart_exists`),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql') and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY')) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`INNODB_LOCK_WAITS` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`INNODB_LOCKS` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`INNODB_LOCKS` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `statistics`.`TABLE_SCHEMA` AS `table_schema`,`statistics`.`TABLE_NAME` AS `table_name`,`statistics`.`INDEX_NAME` AS `index_name`,max(`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if(isnull(`statistics`.`SUB_PART`),0,1)) AS `subpart_exists`,group_concat(`statistics`.`COLUMN_NAME` order by `statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`statistics`.`INDEX_TYPE` = 'BTREE') and (`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `statistics`.`TABLE_SCHEMA`,`statistics`.`TABLE_NAME`,`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `iwant`
--

USE `iwant`;

--
-- Current Database: `user`
--

USE `user`;

--
-- Current Database: `file`
--

USE `file`;

--
-- Current Database: `law`
--

USE `law`;

--
-- Current Database: `task`
--

USE `task`;

--
-- Current Database: `knowledge`
--

USE `knowledge`;

--
-- Current Database: `bookmark`
--

USE `bookmark`;

--
-- Current Database: `question`
--

USE `question`;

--
-- Current Database: `patent`
--

USE `patent`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24 17:42:48
