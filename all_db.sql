-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: logistics
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
-- Current Database: `logistics`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `logistics` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `logistics`;

--
-- Table structure for table `locate`
--

DROP TABLE IF EXISTS `locate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locate` (
  `idlocate` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL COMMENT 'Serial number',
  `owner` varchar(45) NOT NULL COMMENT 'who thing''s  owner ',
  `address` varchar(45) NOT NULL COMMENT 'owner address ',
  `logistics` varchar(45) NOT NULL COMMENT 'Logistics company name',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `locate` varchar(100) NOT NULL COMMENT 'where of things',
  `tel` varchar(45) NOT NULL COMMENT 'telephone of ower',
  `what` varchar(45) DEFAULT NULL COMMENT 'what thing',
  `latitude` double DEFAULT NULL COMMENT 'Logistics company',
  `longitude` double DEFAULT NULL COMMENT 'Logistics company',
  `audio` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `vedio` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idlocate`,`number`),
  UNIQUE KEY `idlocate_UNIQUE` (`idlocate`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Location of things';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locate`
--

LOCK TABLES `locate` WRITE;
/*!40000 ALTER TABLE `locate` DISABLE KEYS */;
/*!40000 ALTER TABLE `locate` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='logistics URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','ems','website','http://www.ems.com.cn/','img/ems.jpg','2018-01-11 18:07:00','normal','utf8',100,'china'),(2,'hunter','sf-express','website','http://www.sf-express.com','img/sf-express.jpg','2018-01-11 18:11:05','normal','utf8',99,'china'),(3,'hunter','yto','website','http://www.yto.net.cn','img/yto.jpg','2018-01-11 18:14:31','normal','utf8',98,'china'),(4,'hunter','sto','website','http://www.sto.cn/','img/sto.jpg','2018-01-11 18:17:06','normal','utf8',97,'china'),(5,'hunter','ttkdex','website','http://www.ttkdex.com/','img/ttkdex.jpg','2018-01-11 18:22:06','normal','utf8',96,'china'),(6,'hunter','yundaex','website','http://yundaex.com','img/yundaex.png','2018-01-11 18:25:13','normal','utf8',95,'china'),(7,'hunter','zto','website','http://www.zto.com/','img/zto.png','2018-01-11 18:27:37','normal','utf8',95,'china'),(8,'hunter','zjs','website','http://www.zjs.com.cn/','img/zjs.jpg','2018-01-11 18:31:30','normal','utf8',94,'china'),(9,'hunter','htky365','website','http://www.htky365.com/','img/bst.jpg','2018-01-11 18:34:07','normal','utf8',94,'china'),(10,'hunter','fedex','website','https://www.fedex.com/cn/index.html','img/fedex.jpg','2018-01-11 18:37:10','normal','utf8',93,'china'),(11,'hunter','ups','website','https://www.ups.com','img/ups.jpg','2018-01-11 18:39:15','normal','utf8',93,'china'),(12,'hunter','dhl','website','http://www.cn.dhl.com/','img/dhl.jpg','2018-01-11 18:42:26','normal','utf8',92,'china'),(13,'hunter','deppon','website','https://www.deppon.com/','img/deppon.jpg','2018-01-11 18:45:44','normal','utf8',93,'china'),(14,'hunter','jdwl','website','http://www.jdwl.com/','img/jd.jpg','2018-01-12 13:29:47','normal','utf8',98,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
INSERT INTO `string` VALUES (1,'HOME','Home','en','2017-04-09 16:26:20','hunter','china','utf8'),(2,'PROJECT','Project','en','2017-04-09 16:38:59','hunter','china','utf8'),(3,'KNOWLEDGE','Knowledge','en','2017-04-09 16:43:15','hunter','china','utf8'),(4,'TEST','Test','en','2017-04-09 16:47:37','hunter','china','utf8'),(5,'CODE','Code','en','2017-04-09 17:00:46','hunter','china','utf8'),(6,'HOME','主页','cn','2017-04-10 14:05:51','hunter','china','utf8'),(7,'PROJECT','项目','cn','2017-04-10 14:19:08','hunter','china','utf8'),(8,'BOOKMARK','BookMark','en','2017-04-10 14:20:45','hunter','china','utf8'),(9,'BOOKMARK','书签','cn','2017-04-10 14:22:02','hunter','china','utf8'),(10,'KNOWLEDGE','知识','cn','2017-04-10 15:24:30','hunter','china','utf8'),(11,'TRANSLATE','翻译','cn','2017-04-10 15:27:12','hunter','china','utf8'),(12,'TRANSLATE','Translate','en','2017-04-10 15:33:59','hunter','china','utf8'),(13,'TEST','测试','cn','2017-04-10 15:37:41','hunter','china','utf8'),(14,'LAYOUT','Layout','en','2017-04-10 15:38:48','hunter','china','utf8'),(15,'LAYOUT','布局','cn','2017-04-10 15:39:45','hunter','china','utf8'),(16,'FILE','File','en','2017-04-10 15:41:06','hunter','china','utf8'),(17,'FILE','文件','cn','2017-04-10 15:41:22','hunter','china','utf8'),(18,'DOWNLOAD','Download','en','2017-04-10 15:41:49','hunter','china','utf8'),(19,'DOWNLOAD','下载','cn','2017-04-10 15:42:05','hunter','china','utf8'),(20,'GITTEST','GitTest','en','2017-04-10 15:42:28','hunter','china','utf8'),(21,'GITTEST','Git测试','cn','2017-04-10 15:46:45','hunter','china','utf8'),(22,'CODE','代码','cn','2017-04-10 15:47:17','hunter','china','utf8'),(23,'LOGIN','登录','cn','2017-04-10 15:47:47','hunter','china','utf8'),(24,'LOGIN','Login','en','2017-04-10 15:47:59','hunter','china','utf8'),(25,'REGISTER','Register','en','2017-04-10 15:48:33','hunter','china','utf8'),(26,'REGISTER','注册','cn','2017-04-10 15:48:49','hunter','china','utf8'),(27,'MAIL','邮件','cn','2017-04-10 15:49:13','hunter','china','utf8'),(28,'MAIL','Mail','en','2017-04-10 15:49:35','hunter','china','utf8'),(29,'PATENT_SYS','Patent_SYS','en','2017-04-10 15:50:19','hunter','china','utf8'),(30,'PATENT_SYS','专利系统','cn','2017-04-10 15:50:36','hunter','china','utf8'),(31,'LANGUAGE','语言','cn','2017-04-10 18:27:30','hunter','china','utf8'),(32,'LANGUAGE','Language','en','2017-04-10 18:28:13','hunter','china','utf8'),(33,'USER_NAME','Username','en','2017-04-13 10:34:53','hunter','china','utf8'),(34,'USER_NAME','用户名','cn','2017-04-13 10:35:14','hunter','china','utf8'),(35,'PASSWORD','密码','cn','2017-04-13 10:35:41','hunter','china','utf8'),(36,'PASSWORD','Password','en','2017-04-13 10:35:56','hunter','china','utf8'),(37,'CONFIRM_PASSWORD','Confirm Password','en','2017-04-13 10:47:29','hunter','china','utf8'),(38,'CONFIRM_PASSWORD','确认密码','cn','2017-04-13 10:48:07','hunter','china','utf8'),(39,'EMAIL','Email','en','2017-04-13 10:49:43','hunter','china','utf8'),(40,'EMAIL','电子邮件','cn','2017-04-13 10:50:13','hunter','china','utf8'),(41,'PASSWORD_RECOVER_QUESTION','Password recover question','en','2017-04-13 10:52:18','hunter','china','utf8'),(42,'PASSWORD_RECOVER_QUESTION','密码恢复问题','cn','2017-04-13 10:52:32','hunter','china','utf8'),(43,'PASSWORD_RECOVER_ANSWER','Password recover answer','en','2017-04-13 10:54:21','hunter','china','utf8'),(44,'PASSWORD_RECOVER_ANSWER','密码恢复答案','cn','2017-04-13 10:54:36','hunter','china','utf8'),(45,'PASSWORD_RECOVER_MAIL','Password recover mail','en','2017-04-13 10:55:45','hunter','china','utf8'),(46,'PASSWORD_RECOVER_MAIL','密码恢复邮箱','cn','2017-04-13 10:56:14','hunter','china','utf8'),(47,'COMMIT','提交','cn','2017-04-13 11:07:59','hunter','china','utf8'),(48,'COMMIT','Commit','en','2017-04-13 11:08:14','hunter','china','utf8'),(49,'COMMIT_MESSAGE','提交信息','cn','2017-04-13 17:34:52','hunter','china','utf8'),(50,'COMMIT_MESSAGE','Commit Message','en','2017-04-13 17:35:20','hunter','china','utf8'),(51,'OPTIONS','选项','cn','2017-04-13 17:36:25','hunter','china','utf8'),(52,'OPTIONS','Options','en','2017-04-13 17:36:40','hunter','china','utf8'),(53,'TITLE','标题','cn','2017-04-14 13:39:45','hunter','china','utf8'),(54,'TITLE','Title','en','2017-04-14 13:39:59','hunter','china','utf8'),(55,'URL','URL','en','2017-04-14 13:40:33','hunter','china','utf8'),(56,'URL','URL','cn','2017-04-14 13:40:39','hunter','china','utf8'),(57,'TYPE','Type','en','2017-04-14 13:41:12','hunter','china','utf8'),(58,'TYPE','类型','cn','2017-04-14 13:41:24','hunter','china','utf8'),(59,'STATUS','状态','cn','2017-04-14 13:41:51','hunter','china','utf8'),(60,'STATUS','Status','en','2017-04-14 13:42:25','hunter','china','utf8'),(61,'REMARK','备注','cn','2017-04-14 13:42:59','hunter','china','utf8'),(62,'REMARK','Remark','en','2017-04-14 13:43:17','hunter','china','utf8'),(63,'AUTHOR','Author','en','2017-04-14 13:43:41','hunter','china','utf8'),(64,'AUTHOR','作者','cn','2017-04-14 13:43:57','hunter','china','utf8'),(65,'FILENAME','Filename','en','2017-04-14 14:45:50','hunter','china','utf8'),(66,'FILENAME','文件名','cn','2017-04-14 14:46:08','hunter','china','utf8'),(67,'INDIVIDUAL_CENTER','IndividualCenter','en','2017-04-14 17:02:17','hunter','china','utf8'),(68,'INDIVIDUAL_CENTER','个人中心','cn','2017-04-14 17:02:34','hunter','china','utf8'),(69,'EXIT','退出','cn','2017-04-14 17:02:59','hunter','china','utf8'),(70,'EXIT','Exit','en','2017-04-14 17:03:10','hunter','china','utf8'),(71,'MENU','菜单','cn','2017-04-14 19:53:59','hunter','china','utf8'),(72,'MENU','Menu','en','2017-04-14 19:54:13','hunter','china','utf8'),(73,'PROJECT_NAME','项目名称','cn','2017-04-20 22:06:31','hunter','china','utf8'),(74,'PROJECT_NAME','ProjectName','en','2017-04-20 22:06:50','hunter','china','utf8'),(75,'SUBMIT','提交','cn','2017-04-20 22:14:15','hunter','china','utf8'),(76,'SUBMIT','Submit','en','2017-04-20 22:14:34','hunter','china','utf8'),(77,'LAW','法律法规','cn','2017-04-23 16:04:30','hunter','china','utf8'),(78,'LAW','Law','en','2017-04-23 16:05:00','hunter','china','utf8'),(79,'BOOK_NAME','BookName','en','2017-04-23 16:47:22','hunter','china','utf8'),(80,'BOOK_NAME','书名','cn','2017-04-23 16:47:43','hunter','china','utf8'),(81,'ORIGINAL','Original','en','2017-04-23 16:49:38','hunter','china','utf8'),(82,'ORIGINAL','原文','cn','2017-04-23 16:49:54','hunter','china','utf8'),(83,'MARK','标注','cn','2017-04-23 16:50:29','hunter','china','utf8'),(84,'MARK','Mark','en','2017-04-23 16:50:46','hunter','china','utf8'),(85,'COMMENT','Comment','en','2017-04-23 16:52:13','hunter','china','utf8'),(86,'COMMENT','评注','cn','2017-04-23 16:53:08','hunter','china','utf8'),(87,'LOCATION','Location','en','2017-04-23 16:54:21','hunter','china','utf8'),(88,'LOCATION','区位','cn','2017-04-23 16:54:54','hunter','china','utf8'),(89,'DEVICE','Device','en','2017-04-23 16:55:32','hunter','china','utf8'),(90,'DEVICE','设备','cn','2017-04-23 16:55:45','hunter','china','utf8'),(91,'IMAGE','Image','en','2017-04-23 16:56:29','hunter','china','utf8'),(92,'IMAGE','图片','cn','2017-04-23 16:56:52','hunter','china','utf8'),(93,'AUDIO','Audio','en','2017-04-23 16:57:35','hunter','china','utf8'),(94,'AUDIO','音频','cn','2017-04-23 16:57:52','hunter','china','utf8'),(95,'VEDIO','Vedio','en','2017-04-23 16:58:22','hunter','china','utf8'),(96,'VEDIO','视频','cn','2017-04-23 16:58:37','hunter','china','utf8'),(97,'ADD','增加','cn','2017-04-27 02:12:34','hunter','china','utf8'),(98,'ADD','Add','en','2017-04-27 02:12:49','hunter','china','utf8'),(99,'INQUIRY','Inquiry','en','2017-04-27 02:15:55','hunter','china','utf8'),(100,'INQUIRY','查询','cn','2017-04-27 02:16:06','hunter','china','utf8'),(101,'SERVER_NAME','localhost','en','2017-06-01 22:27:14','hunter','china','utf8'),(102,'SERVER_NAME','localhost','cn','2017-06-01 22:27:24','hunter','china','utf8'),(103,'USER_NAME_DB','patent','en','2017-06-01 22:28:45','hunter','china','utf8'),(104,'USER_NAME_DB','patent','cn','2017-06-01 22:28:52','hunter','china','utf8'),(105,'USER_PSW_DB','patent','cn','2017-06-01 22:29:55','hunter','china','utf8'),(106,'USER_PSW_DB','patent','en','2017-06-01 22:30:01','hunter','china','utf8'),(107,'SERVER_NAME_DB','localhost','cn','2017-06-01 22:31:17','hunter','china','utf8'),(108,'SERVER_NAME_DB','localhost','en','2017-06-01 22:31:24','hunter','china','utf8'),(109,'NEWS','新闻','cn','2017-12-14 15:40:52','hunter','china','null'),(110,'NEWS','NEWS','en','2017-12-14 15:41:15','hunter','china','null'),(111,'MAP','地图','cn','2017-12-14 17:26:46','hunter','china','null'),(112,'MAP','MAP','en','2017-12-14 17:27:07','hunter','china','null'),(113,'INFO','信息','cn','2017-12-14 17:29:27','hunter','china','null'),(114,'INFO','info','en','2017-12-14 17:29:43','hunter','china','null'),(115,'CONTACT','Contact','en','2017-12-14 17:30:37','hunter','china','null'),(116,'CONTACT','联系人','cn','2017-12-14 17:30:54','hunter','china','null'),(117,'LIFE','生活','cn','2017-12-14 17:45:52','hunter','china','null'),(118,'LIFE','Life','en','2017-12-14 17:46:07','hunter','china','null'),(119,'TEMPLATE','Template','en','2017-12-15 16:32:03','hunter','china','null'),(120,'TEMPLATE','示例','cn','2017-12-15 16:32:58','hunter','china','null'),(121,'EDUCATION','教育','cn','2017-12-18 12:02:21','hunter','china','utf8'),(122,'EDUCATION','Education','en','2017-12-18 12:02:33','hunter','china','utf8'),(123,'MEDICAL','医疗','cn','2017-12-19 16:32:52','hunter','china','utf8'),(124,'MEDICAL','Medical','en','2017-12-19 16:33:12','hunter','china','utf8'),(125,'AI','AI','en','2017-12-19 16:33:47','hunter','china','utf8'),(126,'AI','人工智能','cn','2017-12-19 16:34:01','hunter','china','utf8'),(127,'LOGO','图标','cn','2017-12-20 19:41:58','hunter','china','utf8'),(128,'LOGO','Logo','en','2017-12-20 19:42:17','hunter','china','utf8'),(129,'CHIP','Chip','en','2017-12-22 17:31:03','hunter','china','utf8'),(130,'AIPROJECT','AI-Prohect','en','2017-12-22 17:31:33','hunter','china','utf8'),(131,'AIPROJECT','人工智能项目','cn','2017-12-22 17:31:51','hunter','china','utf8'),(132,'CHIP','芯片','cn','2017-12-22 17:32:09','hunter','china','utf8'),(133,'DEBT_WAGES','讨工资','cn','2017-12-23 10:59:15','hunter','china','utf8'),(134,'DEBT_WAGES','DebtWages','en','2017-12-23 10:59:27','hunter','china','utf8'),(135,'QUESTION','问题','cn','2017-12-24 23:14:13','hunter','china','utf8'),(136,'QUESTION','Question','en','2017-12-24 23:14:46','hunter','china','utf8'),(137,'BEFORE_KEY','键值前','cn','2017-12-27 14:53:28','hunter','china','utf8'),(138,'BEFORE_KEY','BeforeKey','en','2017-12-27 14:53:50','hunter','china','utf8'),(139,'AFTER_KEY','键值后','cn','2017-12-27 14:54:14','hunter','china','utf8'),(140,'AFTER_KEY','AfterKey','en','2017-12-27 14:54:33','hunter','china','utf8'),(141,'NAME','Name','en','2017-12-27 14:54:53','hunter','china','utf8'),(142,'NAME','名称','cn','2017-12-27 14:55:02','hunter','china','utf8'),(143,'SEARCH','搜索','cn','2017-12-27 14:55:28','hunter','china','utf8'),(144,'SEARCH','Search','en','2017-12-27 14:55:46','hunter','china','utf8'),(145,'VIDEO','Video','en','2017-12-28 15:02:07','hunter','china','utf8'),(146,'VIDEO','视频','cn','2017-12-28 15:02:23','hunter','china','utf8'),(147,'TOOL','工具','cn','2017-12-29 16:29:41','hunter','china','utf8'),(148,'TOOL','Tool','en','2017-12-29 16:29:53','hunter','china','utf8'),(149,'EGOV','e-gov','en','2017-12-29 23:35:28','hunter','china','utf8'),(150,'EGOV','电子政务','cn','2017-12-29 23:35:47','hunter','china','utf8'),(151,'USER','User','en','2017-12-30 00:21:12','hunter','china','utf8'),(152,'USER','用户','cn','2017-12-30 00:21:25','hunter','china','utf8'),(153,'FARMLAND','Farmland','en','2017-12-30 00:41:56','hunter','china','utf8'),(154,'FARMLAND','农田','cn','2017-12-30 00:42:29','hunter','china','utf8'),(155,'GOVWR','Government working report','en','2018-01-02 13:22:12','hunter','china','utf8'),(156,'GOVWR','政府工作报告','cn','2018-01-02 13:22:32','hunter','china','utf8'),(157,'CLOUD','Cloud','en','2018-01-02 17:10:18','hunter','china','utf8'),(158,'CLOUD','云服务','cn','2018-01-02 17:10:34','hunter','china','utf8'),(159,'BLOG','博客','cn','2018-01-02 18:28:23','hunter','china','utf8'),(160,'BLOG','Blog','en','2018-01-02 18:28:41','hunter','china','utf8'),(161,'PRIORITY','Priority','en','2018-01-10 14:17:26','hunter','china','utf8'),(162,'PRIORITY','优先级','cn','2018-01-10 14:17:38','hunter','china','utf8'),(163,'LOGISTICS','Logistics','en','2018-01-11 17:50:11','hunter','china','utf8'),(164,'LOGISTICS','物流','cn','2018-01-11 17:50:26','hunter','china','utf8'),(165,'TABLE','Table','en','2018-01-12 14:31:45','hunter','china','utf8'),(166,'TABLE','表','cn','2018-01-12 14:32:01','hunter','china','utf8'),(167,'CREATE','Create','en','2018-01-12 14:36:14','hunter','china','utf8'),(168,'CREATE','创建','cn','2018-01-12 14:36:32','hunter','china','utf8'),(169,'BIOS','BIOS','en','2018-01-12 14:38:02','hunter','china','utf8'),(170,'BIOS','BIOS','cn','2018-01-12 14:38:08','hunter','china','utf8'),(171,'DATABASE','数据库','cn','2018-01-15 15:02:33','hunter','china','utf8'),(172,'DATABASE','Database','en','2018-01-15 15:02:45','hunter','china','utf8'),(173,'MILITARY','Military','en','2018-01-17 15:32:00','hunter','china','utf8'),(174,'MILITARY','军事','cn','2018-01-17 15:32:11','hunter','china','utf8'),(175,'WEAPON','Weapon','en','2018-01-17 16:28:59','hunter','china','utf8'),(176,'WEAPON','武器','cn','2018-01-17 16:29:07','hunter','china','utf8'),(177,'PC','电脑','cn','2018-01-19 10:12:13','hunter','china','utf8'),(178,'PC','PersonalComputer','en','2018-01-19 10:12:32','hunter','china','utf8'),(179,'STOCK','Stock','en','2018-01-22 16:52:13','hunter','china','utf8'),(180,'STOCK','股市','cn','2018-01-22 16:52:23','hunter','china','utf8'),(181,'PATENT','专利','cn','2018-01-22 17:08:24','hunter','china','utf8'),(182,'PATENT','Patent','en','2018-01-22 17:08:37','hunter','china','utf8');
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
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idcode_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `suffix` varchar(45) NOT NULL,
  `header` varchar(45) DEFAULT NULL,
  `lib` varchar(45) DEFAULT NULL,
  `inc` varchar(45) DEFAULT NULL COMMENT 'include',
  `class` varchar(45) DEFAULT NULL,
  `package` varchar(45) DEFAULT NULL,
  `project` varchar(45) DEFAULT NULL,
  `option` varchar(45) DEFAULT NULL,
  `config` varchar(45) DEFAULT NULL,
  `imort` varchar(45) DEFAULT NULL,
  `export` varchar(45) DEFAULT NULL,
  `exe` varchar(45) DEFAULT NULL,
  `obj` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcode_type`),
  UNIQUE KEY `idcode_type_UNIQUE` (`idcode_type`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='code_type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'c','c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'c++','cpp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'c#','cs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'object-c','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'java','java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'php','php',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'js','js',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'python','py',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'asp','aso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'perl','pl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'bat','bat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'sql','sql',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'pascal','pas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'vb','vb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'delphi','pas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'html','htm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'xml','xml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'asm','asm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'asl','asl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'css','css',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'shell','sh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'awk','awk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'nmake','mak',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'make','mak',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `chip`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `chip` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `chip`;

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','AMD','chip','https://www.amd.com','img/amd.jpeg','2017-12-22 16:57:47','normal','utf8',97,'china'),(2,'hunter','Intel','chip','https://www.intel.com','img/intel.jpeg','2017-12-22 16:59:14','normal','utf8',100,'china'),(3,'hunter','ARM','chip','https://www.arm.com','img/arm.jpeg','2017-12-22 17:00:28','normal','utf8',99,'china'),(4,'hunter','IBM','chip','https://www.ibm.com','img/ibm.jpeg','2017-12-22 17:02:22','normal','utf8',98,'china'),(5,'hunter','NVIDIA','chip','http://www.nvidia.com','img/nvidia.jpeg','2017-12-22 17:05:34','normal','utf8',96,'china'),(6,'hunter','xilinx','chip','http://www.xilinx.com/','img/xilinx.jpeg','2017-12-22 17:09:33','normal','utf8',95,'china'),(7,'hunter','aspeedtech','chip','https://www.aspeedtech.com/','img/aspeed.jpeg','2017-12-22 17:14:40','normal','utf8',94,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `bluetooth`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bluetooth` /*!40100 DEFAULT CHARACTER SET utf16 */;

USE `bluetooth`;

--
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost` (
  `idcost` int(11) NOT NULL AUTO_INCREMENT,
  `idobject` int(11) DEFAULT NULL,
  `object` varchar(45) DEFAULT NULL,
  `relegation` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost`
--

LOCK TABLES `cost` WRITE;
/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who is the customer?',
  `type` varchar(45) NOT NULL DEFAULT 'ordinary' COMMENT 'Customer type:ordinary.special;personal,company,government,community,organization,hospital,school',
  `country` varchar(45) DEFAULT NULL,
  `planet` varchar(45) NOT NULL DEFAULT 'earth',
  `area` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where is the customer?\n',
  `l_l` varchar(45) DEFAULT NULL COMMENT 'Latitude and longitude',
  `contact` varchar(45) DEFAULT NULL COMMENT 'Contact information',
  `mail` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL COMMENT 'Customer URL\n',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data entry data time',
  `start` datetime DEFAULT NULL COMMENT 'Cooperation start time\n',
  `end` datetime DEFAULT NULL COMMENT 'Cooperation end time',
  `what` varchar(45) DEFAULT NULL COMMENT 'What is the cooperation?',
  `introduction` varchar(45) DEFAULT NULL COMMENT 'Introduction ',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Credit accumulated',
  `group` varchar(45) DEFAULT NULL COMMENT 'Customer working group',
  `credit` int(11) NOT NULL DEFAULT '100' COMMENT 'Credit points',
  `remark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Customer status:new,old;stable,unstable,big,small ',
  `pioneer` varchar(45) DEFAULT NULL COMMENT 'Customer pioneer',
  `file` varchar(45) DEFAULT NULL COMMENT 'About the customer''s file path. (url)',
  `logo` varchar(45) DEFAULT NULL COMMENT 'About the customer''s logo file name.',
  `image` varchar(45) DEFAULT NULL COMMENT 'About the customer''s picture file name.\n',
  `audio` varchar(45) DEFAULT NULL COMMENT 'About the customer''s audio file name.\n',
  `vedio` varchar(45) DEFAULT NULL COMMENT 'About the customer''s video file name .',
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetype`
--

DROP TABLE IF EXISTS `devicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetype` (
  `iddevicetype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddevicetype`),
  UNIQUE KEY `iddevicetype_UNIQUE` (`iddevicetype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetype`
--

LOCK TABLES `devicetype` WRITE;
/*!40000 ALTER TABLE `devicetype` DISABLE KEYS */;
INSERT INTO `devicetype` VALUES (1,'scales','2017-07-30 04:51:33',NULL),(2,'PCBA','2017-07-30 12:07:06',NULL),(3,'product','2017-07-30 12:07:06',NULL);
/*!40000 ALTER TABLE `devicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fail`
--

DROP TABLE IF EXISTS `fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fail` (
  `idfail` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) NOT NULL,
  `s_mac` text NOT NULL,
  `chip` varchar(45) DEFAULT NULL,
  `order_from` text,
  `type` text,
  `weight` text,
  `resistance` text,
  `voltage` text,
  `rssi` text,
  `version` text,
  `name` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `line` text,
  `who` text,
  `result` text,
  `remark` text,
  PRIMARY KEY (`idfail`),
  UNIQUE KEY `idproduct_UNIQUE` (`idfail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fail`
--

LOCK TABLES `fail` WRITE;
/*!40000 ALTER TABLE `fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line` (
  `idline` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL COMMENT 'Production line number',
  `name` varchar(45) DEFAULT NULL COMMENT 'Production line name',
  `who` varchar(45) DEFAULT NULL COMMENT 'Who is the owner of the line',
  `what` varchar(45) DEFAULT NULL COMMENT 'What product name\n',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation time',
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Start time\n',
  `end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'End Time',
  `where` varchar(45) DEFAULT NULL COMMENT 'WHERE: Production line address and location\n',
  `capacity` varchar(45) DEFAULT NULL COMMENT 'Production capacity',
  `status` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL COMMENT 'Contact information',
  `level` int(11) DEFAULT NULL COMMENT 'The overall level of production lines',
  PRIMARY KEY (`idline`,`guid`,`number`),
  UNIQUE KEY `idline_UNIQUE` (`idline`),
  UNIQUE KEY `guid_UNIQUE` (`guid`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (2,'748cf4ba-68ee-4875-9065-ddf614f7af02','1','2','3','5','2018-01-19 15:30:22','2018-01-19 15:30:22','2018-01-19 15:30:22','5','5','5','5',4);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mac`
--

DROP TABLE IF EXISTS `mac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mac` (
  `idmac` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`mac`),
  UNIQUE KEY `mac_UNIQUE` (`mac`),
  UNIQUE KEY `idmac_UNIQUE` (`idmac`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mac`
--

LOCK TABLES `mac` WRITE;
/*!40000 ALTER TABLE `mac` DISABLE KEYS */;
INSERT INTO `mac` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,16);
/*!40000 ALTER TABLE `mac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiel` (
  `idmateriel` bigint(64) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `what` varchar(45) DEFAULT NULL,
  `when` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Planet ,coordinate {latitude,Longitude}',
  `who` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL COMMENT 'What quantity',
  `status` varchar(45) DEFAULT NULL COMMENT 'How the state\n',
  `how` varchar(45) DEFAULT NULL COMMENT 'How much value',
  `remark` varchar(45) DEFAULT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Entry Time\n',
  `security` varchar(45) DEFAULT NULL COMMENT 'Security Level',
  `excute` varchar(45) DEFAULT NULL COMMENT 'Excuting operate \n',
  `time` datetime DEFAULT NULL COMMENT 'excute time',
  PRIMARY KEY (`idmateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiel`
--

LOCK TABLES `materiel` WRITE;
/*!40000 ALTER TABLE `materiel` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idstatus` int(11) NOT NULL,
  `devicetype` int(11) DEFAULT NULL,
  `number` varchar(45) NOT NULL COMMENT 'order number',
  `name` varchar(45) DEFAULT NULL COMMENT 'product name',
  `quantity` int(11) NOT NULL,
  `deliverytime` datetime NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) NOT NULL COMMENT 'Order owner\n',
  `unitprice` double DEFAULT NULL,
  `total` double DEFAULT NULL COMMENT 'total amount~= up*quantity',
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idorder`,`number`),
  KEY `index` (`idstatus`,`deliverytime`,`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,0,0,'1233','电子秤',11,'2018-01-19 15:37:11','2018-01-19 15:37:11','2018-01-19 15:37:48','11',11,11,'未生产');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatus` (
  `idorderstatus` int(11) NOT NULL AUTO_INCREMENT,
  `what` text COMMENT 'what contents',
  `when` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'when create time',
  PRIMARY KEY (`idorderstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) NOT NULL,
  `s_mac` text NOT NULL,
  `chip` varchar(45) DEFAULT NULL,
  `order_from` text,
  `type` text,
  `weight` text,
  `resistance` text,
  `voltage` text,
  `rssi` text,
  `version` text,
  `name` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `line` text,
  `who` text,
  `result` text,
  `remark` text,
  PRIMARY KEY (`mac`),
  UNIQUE KEY `idproduct_UNIQUE` (`idproduct`),
  UNIQUE KEY `mac_UNIQUE` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'root','2017-07-30 12:21:16'),(2,'admin','2017-07-30 12:21:16'),(3,'user','2017-07-30 12:21:16');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `when` datetime DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `what` text,
  `how` varchar(45) DEFAULT NULL COMMENT 'resut',
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testitem`
--

DROP TABLE IF EXISTS `testitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testitem` (
  `idtestitem` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned DEFAULT '1' COMMENT 'Deveiice  Type : ',
  `item` text,
  `sel` varchar(4) DEFAULT 'YES' COMMENT 'YES==test  ,NO ==NA test',
  `min` text,
  `max` text,
  `must` text,
  `mask` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `author` text,
  `remark` text,
  PRIMARY KEY (`idtestitem`),
  UNIQUE KEY `idtestitem_UNIQUE` (`idtestitem`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testitem`
--

LOCK TABLES `testitem` WRITE;
/*!40000 ALTER TABLE `testitem` DISABLE KEYS */;
INSERT INTO `testitem` VALUES (1,1,'Name','YES',NULL,NULL,'FLYCO FH7001/2/3 ',NULL,'2017-07-29 17:28:04','hunter',NULL),(2,1,'Version','YES',NULL,NULL,'1.0.39.1',NULL,'2017-07-29 17:28:04','hunter',NULL),(3,1,'MAC','YES',NULL,NULL,NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(4,1,'RSSI','YES','-99','-1',NULL,NULL,'2017-07-29 17:19:30','hunter',NULL),(5,1,'Voltage','YES','0','20',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(6,1,'Resistance','YES','0','1000',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(7,1,'Weight','YES','0','300',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL);
/*!40000 ALTER TABLE `testitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `iduser_UNIQUE` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `idworker` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL,
  `idstatus` int(11) NOT NULL,
  PRIMARY KEY (`idworker`),
  UNIQUE KEY `idworker_UNIQUE` (`idworker`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,'zhangsan','2018-01-19 15:34:14','在职',0);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `radar`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `radar` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `radar`;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `iddata` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `millisecond` int(11) NOT NULL DEFAULT '0',
  `microsecond` int(11) NOT NULL DEFAULT '0',
  `nanosecond` int(11) NOT NULL DEFAULT '0',
  `data` longblob COMMENT 'radar data form Radar information collection system\n',
  `data_type` varchar(45) NOT NULL DEFAULT 'General' COMMENT 'radar data type :General data,Meteorological data ,Flight control information,\n',
  `data_grade` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'Normal' COMMENT 'normal, error , ... ',
  `source_from` varchar(45) DEFAULT NULL COMMENT 'data come from like device ID,IP Addr,',
  `source_to` varchar(45) DEFAULT NULL COMMENT 'source from ,to ,source stream .',
  `location` varchar(60) NOT NULL DEFAULT '0,0,0' COMMENT 'like GPS, Coordinate System,Geographic coordinate system ,Projection coordinate system,''x,y,z-0,0,0''',
  `creator` varchar(45) DEFAULT NULL COMMENT 'data creator ',
  `remark` text,
  PRIMARY KEY (`iddata`),
  UNIQUE KEY `iddata_UNIQUE` (`iddata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Current Database: `video`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `video` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `video`;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','youtube','video','https://www.youtube.com/','img/youtube.jpg','2017-12-20 19:00:05','normal','utf8',0,'china'),(2,'hunter','youku','video','http://www.youku.com/','img/youku.jpg','2017-12-20 19:15:41','normal','utf8',0,'china'),(3,'hunter','tudou','video','http://www.tudou.com/','img/tudou.jpg','2017-12-20 19:16:52','normal','utf8',0,'china'),(4,'hunter','sina','video','http://video.sina.com.cn/','img/sina_vedio.jpg','2017-12-20 19:17:48','normal','utf8',0,'china'),(5,'hunter','iqiyi','video','http://www.iqiyi.com/','img/qq_vedio.jpg','2017-12-20 19:18:38','normal','utf8',0,'china'),(6,'hunter','ifeng','video','http://v.ifeng.com/','img/ifeng_vedio.jpg','2017-12-20 19:19:45','normal','utf8',0,'china'),(7,'hunter','baidu','video','http://video.baidu.com/','img/baidu_vedio.jpg','2017-12-20 19:21:13','normal','utf8',0,'china'),(8,'hunter','CCTV','video','http://tv.cctv.com/','img/cctv-video.jpg','2017-12-21 16:16:17','normal','utf8',0,'china'),(9,'hunter','imooc','website','https://www.imooc.com/','img/imooc.jpg','2017-12-29 11:56:49','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Current Database: `table`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `table` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `table`;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='url_typw';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'create','2018-01-15 14:38:44'),(2,'drop','2018-01-15 14:38:44'),(3,'select','2018-01-15 14:38:44'),(4,'update','2018-01-15 14:38:44'),(5,'insert','2018-01-15 14:38:44'),(6,'delete','2018-01-15 14:38:44'),(7,'alter','2018-01-15 14:38:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','create_url','create','table/create_url.sql','img/url.png','2018-01-12 16:07:43','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `education`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `education` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `education`;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','imooc','doc technical','https://www.imooc.com/','img/imooc.jpg','2017-12-29 11:59:32','normal','utf8',94,'china'),(2,'hunter','open163','website','https://open.163.com/','img/open163.jpg','2017-12-29 13:21:12','normal','utf8',95,'china'),(3,'hunter','study163','website','http://study.163.com/','img/yun163.png','2017-12-29 13:22:21','normal','utf8',96,'china'),(4,'hunter','xuetangx','website','http://www.xuetangx.com/','img/xuetangx.png','2017-12-29 13:23:09','normal','utf8',97,'china'),(5,'hunter','w3school','website','http://www.w3school.com.cn/','img/w3school.jpg','2017-12-29 13:23:53','normal','utf8',99,'china'),(6,'hunter','mysql.doc','website','https://dev.mysql.com/doc/','img/mysql.jpg','2017-12-29 13:24:43','normal','utf8',88,'china'),(7,'hunter','python.doc','website','https://www.python.org/doc/','img/python.jpg','2017-12-29 13:25:14','normal','utf8',87,'china'),(8,'hunter','apple.doc','website','https://developer.apple.com/documentation/','img/apple.jpg','2017-12-29 13:26:02','normal','utf8',93,'china'),(9,'hunter','javase','website','https://docs.oracle.com/javase/','img/java.png','2017-12-29 13:26:45','normal','utf8',86,'china'),(10,'hunter','tutorialspoint','website','https://www.tutorialspoint.com/','img/tutorial.png','2017-12-29 13:27:28','normal','utf8',85,'china'),(11,'hunter','first_edu','website','http://www.aajc.com/','img/first_edu.jpg','2017-12-29 13:28:34','normal','utf8',84,'china'),(12,'hunter','icourse','website','http://www.icourses.cn','img/icourse.jpg','2017-12-29 13:29:11','normal','utf8',83,'china'),(13,'hunter','php','website','http://php.net/','img/php.jpg','2017-12-29 13:30:10','normal','utf8',82,'china'),(14,'hunter','linuxdocs','website','http://linuxdocs.org/','img/linux.png','2017-12-29 15:12:27','normal','utf8',91,'china'),(15,'hunter','visualstudio','website','https://www.visualstudio.com/zh-hans/vs/getting-started/','img/microsoft.jpg','2017-12-29 07:27:57','normal','utf8',92,'china'),(16,'hunter','w3resource','website','https://www.w3resource.com/index.php','img/w3resource.jpg','2017-12-29 15:37:53','normal','utf8',98,'china'),(17,'hunter','CPP','website','http://www.cplusplus.com/reference/','img/cpp.jpg','2017-12-29 15:52:14','normal','utf8',89,'china'),(18,'hunter','mongodb','website','http://www.runoob.com/mongodb/mongodb-tutorial.html',' img/mongodb.png','2017-12-29 16:05:49','normal','utf8',90,'china'),(19,'hunter','runoob','website','http://www.runoob.com/','img/runoob.jpg','2017-12-29 16:17:29','normal','utf8',100,'china'),(20,'hunter','perl','website','https://www.perl.org/','img/perl.jpg','2017-12-29 17:20:29','normal','utf8',81,'china'),(21,'hunter','uefi','website','http://www.uefi.org/learning_center','img/uefi.jpg','2017-12-29 17:27:41','normal','utf8',79,'china'),(22,'hunter','Git','website','https://git-scm.com/book/zh/v2','img/git.jpg','2018-01-02 17:20:47','normal','utf8',80,'china'),(23,'hunter','ACPI','website','http://www.acpi.info/spec.htm','img/acpi.jpg','2018-01-02 17:29:19','normal','utf8',78,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `cloud`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cloud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cloud`;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','amazon','cloud','https://aws.amazon.com/','img/amazon.jpg','2017-12-31 23:35:49','normal','utf8',100,'china'),(2,'hunter','icloud','cloud','https://www.apple.com/cn/icloud/','img/apple.jpg','2017-12-31 23:38:40','normal','utf8',99,'china'),(3,'hunter','google','cloud','https://cloud.google.com/','img/google.jpg','2017-12-31 23:41:02','normal','utf8',98,'china'),(4,'hunter','microsoft','cloud','https://azure.microsoft.com/','img/microsoft.jpg','2017-12-31 23:44:39','normal','utf8',97,'china'),(5,'hunter','ibm','cloud','https://www.ibm.com/cloud/','img/ibm.jpg','2017-12-31 23:46:54','normal','utf8',96,'china'),(6,'hunter','oracle','cloud','https://cloud.oracle.com','img/oracle.jpg','2017-12-31 23:56:51','normal','utf8',95,'china'),(7,'hunter','aliyun','cloud','https://cn.aliyun.com/','img/aliyun.jpg','2018-01-01 00:12:09','normal','utf8',94,'china'),(8,'hunter','baidu','cloud','https://pan.baidu.com/','img/baidu_cloud.png','2018-01-01 00:13:53','normal','utf8',93,'china'),(9,'hunter','tencent','cloud','https://cloud.tencent.com/','img/tencent_cloud.jpg','2018-01-01 00:16:25','normal','utf8',92,'china'),(10,'hunter','sinacloud','cloud','https://www.sinacloud.com/','img/sinacloud_logo.png','2018-01-01 00:20:22','normal','utf8',91,'china'),(11,'hunter','huaweicloud','cloud','http://www.huaweicloud.com/','img/huawei.png','2018-01-01 00:23:18','normal','utf8',90,'china'),(12,'hunter','lenovo','cloud','https://pim.lenovo.com/','img/lenovo.jpg','2018-01-01 00:27:32','normal','utf8',89,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
  `chapter_name` text NOT NULL,
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
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `what` text NOT NULL COMMENT 'law name',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `country` varchar(45) NOT NULL DEFAULT 'china',
  `logo` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time ',
  `status` varchar(45) NOT NULL DEFAULT 'normal' COMMENT 'normal ,abnormal',
  `remark` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'patent_sys','中华人民共和国宪法-2004','local','law/中华人民共和国宪法-2004.pdf','china',NULL,'2017-04-27 11:53:15','normal','宪法',100,'china'),(2,'patent_sys','中华人民共和国专利法-2008','local','law/中华人民共和国专利法-2008.pdf','china',NULL,'2017-04-27 11:55:05','normal','专利法',96,'china'),(3,'patent_sys','中华人民共和国专利法实施细则-2003','local','law/中华人民共和国专利法实施细则-2003.pdf','china',NULL,'2017-04-27 11:55:49','normal','专利法实施细则',98,'china'),(4,'patent_sys','中华人民共和国民事诉讼法-2012','local','law/中华人民共和国民事诉讼法-2012.pdf','china',NULL,'2017-04-27 11:56:33','normal','民事诉讼法',99,'china'),(5,'patent_sys','中华人民共和国专利法实施细则-2010','local','law/中华人民共和国专利法实施细则-2010.pdf','china',NULL,'2017-06-01 19:48:17','normal','',97,'china'),(6,'patent_sys','中华人民共和国劳动法','local','law/中华人民共和国劳动法.pdf','china',NULL,'2017-12-24 22:38:17','normal','',95,'china'),(7,'hunter','中华人民共和国刑法-2015修正','doc','law/中华人民共和国刑法-2015修正.pdf','china','img/law.jpg','2018-01-10 16:56:45','normal','utf8',94,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
  `logo` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`idbooklink`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_links`
--

LOCK TABLES `k_links` WRITE;
/*!40000 ALTER TABLE `k_links` DISABLE KEYS */;
INSERT INTO `k_links` VALUES (1,'hunter','translate.google.cn','translate','http://translate.google.cn/',NULL,'2017-04-05 02:30:57','','',0),(2,'hunter','bing.com','search','http://www.bing.com/',NULL,'2017-04-05 02:32:03','','',0),(3,'hunter','google.com','search','http://www.google.com/',NULL,'2017-04-05 02:32:41','','',0),(4,'hunter','msdn.microsoft','doc','https://msdn.microsoft.com',NULL,'2017-04-05 02:33:16','','',0),(5,'hunter','IBM Knowledge Center','doc','http://www.ibm.com/support/knowledgecenter/en/',NULL,'2017-04-05 02:34:30','','',0),(6,'hunter','Apple Developers Center','doc','https://developer.apple.com/',NULL,'2017-04-05 02:36:48','','',0),(7,'hunter','Apple API Reference','doc','https://developer.apple.com/reference/',NULL,'2017-04-05 02:39:27','','',0),(8,'hunter','Apple Guides and Sample Code','doc','https://developer.apple.com/library/prerelease/content/navigation/',NULL,'2017-04-05 02:40:10','','',0),(9,'hunter','VirtualBox Technical documentation','doc','https://www.virtualbox.org/wiki/Technical_documentation',NULL,'2017-04-05 02:40:35','','',0),(10,'hunter','Git Documentation','doc','https://git-scm.com/doc',NULL,'2017-04-05 02:40:58','','',0),(11,'hunter','Lean-x','doc','http://www.tutorialspoint.com/',NULL,'2017-04-05 02:41:21','','',0),(12,'hunter','perldoc.perl.org','doc','http://perldoc.perl.org/',NULL,'2017-04-05 02:41:41','','',0),(13,'hunter','GNU C Reference Manual','doc','http://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html',NULL,'2017-04-05 02:42:06','','',0),(14,'hunter','Linux C++ Software Development','doc','http://www.yolinux.com/TUTORIALS/LinuxTutorialC%2B%2B.html',NULL,'2017-04-05 02:42:32','','',0),(15,'hunter','C++  keyword','doc','http://en.cppreference.com/w/cpp/keyword',NULL,'2017-04-05 02:42:55','','',0),(16,'hunter','C++ STL Tutorial','doc technical','http://www.tutorialspoint.com/cplusplus/cpp_stl_tutorial.htm',NULL,'2017-04-05 02:44:49','','',0),(17,'hunter','My SQL documentation','doc technical','http://dev.mysql.com/doc/',NULL,'2017-04-05 02:45:12','','',0),(18,'hunter','PHP Manual','doc technical','http://www.php.net/manual/en/index.php',NULL,'2017-04-05 02:45:34','','',0),(19,'hunter','w3.standards','doc technical','https://www.w3.org/standards/',NULL,'2017-04-05 02:45:55','','',0),(20,'hunter','w3school.cn','doc technical','http://www.w3school.com.cn/',NULL,'2017-04-05 02:46:16','','',0),(21,'hunter','w3school.bootcss','doc technical','http://w3schools.bootcss.com/html/default.html',NULL,'2017-04-05 02:46:38','','',0),(22,'hunter','HTTP protocols','doc technical protocol','https://www.w3.org/Protocols/',NULL,'2017-04-05 02:47:22','','',0),(23,'hunter','html.com','doc technical','http://html.com/',NULL,'2017-04-05 02:48:03','','',0),(24,'hunter','java','doc technical language develop','https://www.oracle.com/java/index.html',NULL,'2017-04-05 02:48:48','','',0),(25,'hunter','fileformat.book','doc technical','http://www.fileformat.info/resource/book/index.htm',NULL,'2017-04-05 02:52:07','','',0),(26,'hunter','U-Boot.manual','doc technical','http://www.denx.de/wiki/DULG/Manual',NULL,'2017-04-05 02:53:45','','',0),(27,'hunter','yoctoproject.doc','doc technical','https://www.yoctoproject.org/documentation',NULL,'2017-04-05 02:54:11','','',0),(28,'hunter','openembedded.org','doc technical','http://www.openembedded.org/wiki/Main_Page',NULL,'2017-04-05 02:54:35','','',0),(29,'hunter','bitbake-user-manual','doc technical','https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html',NULL,'2017-04-05 02:54:56','','',0),(30,'hunter','Windows driver development','doc technical develop','https://msdn.microsoft.com/en-us/windows/hardware/ff960953.aspx',NULL,'2017-04-05 02:55:27','','',0),(31,'hunter','linux-man-pages','doc technical linux ','https://linux.die.net/man/',NULL,'2017-04-05 02:56:01','','',0),(32,'hunter','centos.doc','doc technical linux ','https://www.centos.org/docs/',NULL,'2017-04-05 02:56:26','','',0),(33,'hunter','IEEE-POSIX','doc technical','http://get.posixcertified.ieee.org/',NULL,'2017-04-05 02:56:54','','',0),(34,'hunter','i2c-bus','doc technical','http://www.i2c-bus.org/i2c-bus/',NULL,'2017-04-05 02:57:18','','',0),(35,'hunter','docker-library','doc technical','https://github.com/docker-library',NULL,'2017-04-05 02:58:53','','',0),(36,'hunter','python3-doc','doc technical','https://docs.python.org/3/',NULL,'2017-04-05 02:59:13','','',0),(37,'hunter','lamp-web','doc technical','http://www.lampweb.org/',NULL,'2017-04-05 02:59:29','','',0),(38,'hunter','nginx-docs','doc technical','http://nginx.org/en/docs/',NULL,'2017-04-05 02:59:56','','',0),(39,'hunter','gitlabhq','doc technical','https://github.com/gitlabhq',NULL,'2017-04-05 03:00:20','','',0),(40,'hunter','gnu-make','doc technical','http://www.gnu.org/software/make/manual/make.html',NULL,'2017-04-05 03:00:40','','',0),(41,'hunter','iso639-2:language code','doc technical','https://www.loc.gov/standards/iso639-2/php/code_list.php',NULL,'2017-04-05 03:01:02','','',0),(42,'hunter','countrycode','doc technical','https://countrycode.org/',NULL,'2017-04-05 03:01:28','','',0),(43,'hunter','multi-language php','doc technical','http://www.bitrepository.com/php-how-to-add-multi-language-support-to-a-website.html',NULL,'2017-04-05 03:01:58','','',0),(44,'hunter','GNU/Linux Command-Line Tools Summary','doc technical','https://linux.die.net/Linux-CLI/',NULL,'2017-04-05 03:02:23','','',0),(45,'hunter','css color ','doc technical','http://www.w3school.com.cn/cssref/css_colornames.asp',NULL,'2017-04-06 08:04:40','','',0),(46,'hunter','PHP class','doc technical','http://php.net/manual/en/language.oop5.php',NULL,'2017-04-07 03:03:53','','',0),(47,'hunter','pop3_blog_cn','doc technical','http://blog.csdn.net/bripengandre/article/details/2192111',NULL,'2017-04-11 18:18:06','','',0),(48,'hunter','IBM Advance Toolchain for PowerLinux Documentation','doc technical','https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W51a7ffcf4dfd_4b40_9d82_446ebc23c550/page/IBM%20Advance%20Toolchain%20for%20PowerLinux%20Documentation',NULL,'2017-04-14 10:13:36','normal','IBM developerworks',0),(49,'hunter',' IBM Software Development Kit for Linux on Power (SDK) ','doc technical','https://developer.ibm.com/linuxonpower/sdk/',NULL,'2017-04-14 10:18:51','normal','IBM developerworks',0),(50,'hunter','cscript','doc technical','http://originaldll.com/file/cscript.exe/24146.html',NULL,'2017-04-26 21:46:03','normal','utf8',0),(51,'hunter','software.intel.com/en-us/html5','doc technical','https://software.intel.com/en-us/html5',NULL,'2017-04-26 22:21:01','normal','utf8',0),(52,'hunter','intel-software-technical-documentation','doc technical','https://software.intel.com/en-us/intel-software-technical-documentation',NULL,'2017-04-26 22:21:34','normal','utf8',0),(53,'hunter','intel-AI','doc technical','https://software.intel.com/en-us/ai',NULL,'2017-04-26 22:23:47','normal','utf8',0),(54,'hunter','PHP PDF Functions','doc technical','http://phptutorial.info/?pdf',NULL,'2017-04-27 16:01:12','normal','utf8',0),(55,'hunter','pdflib','doc technical','http://www.pdflib.com/',NULL,'2017-04-27 16:13:39','normal','utf8',0),(56,'hunter','php packages','doc technical','http://pecl.php.net/packages.php',NULL,'2017-04-28 17:02:31','normal','utf8',0),(57,'hunter','excel-easy VBA','doc technical','http://www.excel-easy.com/vba.html',NULL,'2017-05-02 09:43:58','normal','utf8',0),(58,'hunter','webkit','doc technical develop','https://webkit.org/',NULL,'2017-05-02 23:08:18','normal','utf8',0),(59,'patent_sys','linux kernel doc','doc technical','https://www.kernel.org/doc/',NULL,'2017-12-26 12:00:42','normal','utf8',0),(60,'hunter','microsoft .net for linux ','tech','https://www.microsoft.com/net/download/linux',NULL,'2017-12-26 13:54:48','normal','utf8',0),(61,'hunter','linuxdocs','doc technical','http://linuxdocs.org/',NULL,'2017-12-28 18:37:42','normal','utf8',0);
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
-- Current Database: `bios`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bios` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bios`;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','uefi','website','http://www.uefi.org/','img/uefi.jpg','2018-01-19 16:59:29','normal','utf8',100,'china'),(2,'hunter','uboot','website','http://www.denx.de','img/uboot.png','2018-01-19 17:05:13','normal','utf8',99,'china'),(3,'hunter','redboot','website','https://sourceware.org/redboot/','img/redboot.png','2018-01-19 17:09:06','normal','utf8',98,'china'),(4,'hunter','armboot','website','http://armboot.sourceforge.net/','img/armboot.gif','2018-01-19 17:11:14','normal','utf8',97,'china'),(5,'hunter','openbmc','website','https://github.com/openbmc','img/openbmc.png','2018-01-19 17:17:47','normal','utf8',96,'china'),(6,'hunter','open-power','website','https://github.com/open-power','img/open-power.png','2018-01-19 17:20:33','normal','utf8',95,'china'),(7,'hunter','yoctoproject','website','https://www.yoctoproject.org/','img/yocto.png','2018-01-19 17:26:13','normal','utf8',94,'china'),(8,'hunter','openembedded','website','https://www.openembedded.org','img/open-embedded.png','2018-01-19 17:33:06','normal','utf8',93,'china'),(9,'hunter','buildroot','website','https://buildroot.org/','img/buildroot.png','2018-01-19 17:35:49','normal','utf8',92,'china'),(10,'hunter','openmoko','website','http://openmoko.org/','img/openmoko.png','2018-01-19 17:38:47','normal','utf8',91,'china'),(11,'hunter','ami','website','https://ami.com','img/AMI.png','2018-01-19 17:41:41','normal','utf8',90,'china'),(12,'hunter','pcisig','website','https://pcisig.com/','img/pcisig.png','2018-01-19 17:46:10','normal','utf8',90,'china'),(13,'hunter','i2c-bus','website','https://www.i2c-bus.org/','img/i2c.jpg','2018-01-22 13:30:11','normal','utf8',89,'china'),(14,'hunter','jedec','website','https://www.jedec.org/','img/jedec.jpg','2018-01-22 13:37:26','normal','utf8',88,'china'),(15,'hunter','ietf','website','https://www.ietf.org/','img/ietf.gif','2018-01-22 13:41:57','normal','utf8',87,'china'),(16,'hunter','usb','website','https://www.intel.com/content/www/us/en/io/universal-serial-bus/universal-serial-bus.html','img/usb.jpg','2018-01-22 13:46:08','normal','utf8',86,'china'),(17,'hunter','skyfree','website','http://www.skyfree.org/','img/skyfree.gif','2018-01-22 14:04:58','normal','utf8',85,'china'),(18,'hunter','fileformat','website','http://www.fileformat.info/','img/fileformat.jpg','2018-01-22 14:19:11','normal','utf8',84,'china'),(19,'hunter','nmake','website','https://msdn.microsoft.com/en-us/library/dd9y37ha.aspx','img/nmake.jpg','2018-01-22 14:25:13','normal','utf8',83,'china'),(20,'hunter','gnu-make','website','https://www.gnu.org/software/make/manual/make.html','img/gnu-make.jpg','2018-01-22 14:28:24','normal','utf8',82,'china'),(21,'hunter','gcc','website','http://gcc.gnu.org/','img/gcc.png','2018-01-22 14:32:00','normal','utf8',81,'china'),(22,'hunter','CL','website','https://msdn.microsoft.com/en-us/library/9s7c9wdw.aspx','img/cl.jpg','2018-01-22 14:36:36','normal','utf8',80,'china'),(23,'hunter','masm32','website','http://www.masm32.com/','img/masm32.jpg','2018-01-22 14:40:03','normal','utf8',79,'china'),(24,'hunter','c++','website','https://gcc.gnu.org/projects/cxx-status.html','img/cpp.jpg','2018-01-22 14:45:05','normal','utf8',78,'china'),(25,'hunter','acpi','website','http://www.acpi.info/','img/acpi.jpg','2018-01-22 14:46:20','normal','utf8',77,'china'),(26,'hunter','smbios','website','https://www.dmtf.org/standards/smbios','img/dmtf.png','2018-01-22 14:49:44','normal','utf8',76,'china'),(27,'hunter','intle-menu','website','https://software.intel.com/en-us/articles/intel-sdm','img/intle-menu.png','2018-01-22 15:02:24','normal','utf8',99,'china'),(28,'hunter','matroska','website','https://www.matroska.org/technical/specs/codecid/index.html','img/matroska.png','2018-01-22 15:07:20','normal','utf8',77,'china'),(29,'hunter','sata','website','https://sata-io.org/','img/sata.jpg','2018-01-22 15:09:09','normal','utf8',73,'china'),(30,'hunter','rweverything','website','http://rweverything.com/','img/rweverything.png','2018-01-22 15:14:50','normal','utf8',72,'china'),(31,'hunter','memtest','website','http://www.memtest.org/','img/memtest86.png','2018-01-22 15:16:17','normal','utf8',71,'china'),(32,'hunter','skia','website','https://skia.org/','img/skia.png','2018-01-22 16:02:54','normal','utf8',69,'china'),(33,'hunter','open-bios','website','https://github.com/open-bios','img/openbios.png','2018-01-22 16:10:23','normal','utf8',68,'china'),(34,'hunter','insyde','website','https://www.insyde.com/','img/Insyde.png','2018-01-22 16:13:50','normal','utf8',67,'china'),(35,'hunter','phoenix','website','https://www.phoenix.com/','img/phoenix.png','2018-01-22 16:16:03','normal','utf8',66,'china'),(36,'hunter','member-roster','website','https://solutionsdirectory.intel.com/member-roster','img/solutions.jpg','2018-01-22 16:31:32','normal','utf8',65,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
INSERT INTO `patent_law` VALUES (1,'中华人民共和国专利法','','\r\n中华人民共和国主席令\r\n\r\n第 八号\r\n\r\n《全国人民代表大会常务委员会关于修改〈中华人民共和国专利法〉的决定》已由中华人民共和国第十一届全国人民代表大会常务委员会第六次会议于2008年12月27日通过，现予公布，自2009年10月1日起施行。\r\n\r\n中华人民共和国主席胡锦涛\r\n\r\n2008年12月27日\r\n\r\n（1984年3月12日第六届全国人民代表大会常务委员会第四次会议通过根据1992年9月4日第七届全国人民代表大会常务委员会第二十七次会议《关于修改〈中华人民共和国专利法〉的决定》第一次修正根据2000年8月25日第九届全国人民代表大会常务委员会第十七次会议《关于修改〈中华人民共和国专利法〉的决定》第二次修正根据2008年12月27日第十一届全国人民代表大会常务委员会第六次会议《关于修改〈中华人民共和国专利法〉的决定》第三次修正）','','','2017-04-21 01:35:51','china','','','','',''),(2,'目 录','','目 录\r\n\r\n第一章 总则\r\n\r\n第二章 授予专利权的条件\r\n\r\n第三章 专利的申请\r\n\r\n第四章专利申请的审查和批准\r\n\r\n第五章专利权的期限、终止和无效\r\n\r\n第六章专利实施的强制许可\r\n\r\n第七章 专利权的保护\r\n\r\n第八章 附则','','','2017-04-21 01:38:39','china','','','','',''),(3,'第一章 总 则\r\n','','第一条为了保护专利权人的合法权益，鼓励发明创造，推动发明创造的应用，提高创新能力，促进科学技术进步和经济社会发展，制定本法。\r\n','保护+鼓励+推动+提高+促进+制定.','','2017-04-21 01:40:39','china','','','','',''),(4,'第一章 总 则\r\n','','第二条本法所称的发明创造是指发明、实用新型和外观设计。\r\n\r\n发明，是指对产品、方法或者其改进所提出的新的技术方案。\r\n\r\n实用新型，是指对产品的形状、构造或者其结合所提出的适于实用的新的技术方案。\r\n\r\n外观设计，是指对产品的形状、图案或者其结合以及色彩与形状、图案的结合所作出的富有美感并适于工业应用的新设计。','发明创造类型:发明+实用新型+外观设计.','','2017-04-21 01:41:57','china','','','','',''),(5,'第一章 总 则\r\n','','第三条国务院专利行政部门负责管理全国的专利工作；统一受理和审查专利申请，依法授予专利权。\r\n省、自治区、直辖市人民政府管理专利工作的部门负责本行政区域内的专利管理工作。','全国:国务院专利行政部门 .地方:省、自治区、直辖市人民政府管理专利工作的部门.','','2017-04-21 01:43:51','china','','','','',''),(6,'第一章 总 则\r\n','','第四条申请专利的发明创造涉及国家安全或者重大利益需要保密的，按照国家有关规定办理。\r\n','checklist_item:申请专利的发明创造涉及国家安全或者重大利益需要保密','','2017-04-21 01:45:07','china','','','','',''),(7,'第一章 总 则\r\n','','五条对违反法律、社会公德或者妨害公共利益的发明创造，不授予专利权。\r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造，不授予专利权。\r\n','checklist_item:\r\n违反法律、社会公德或者妨害公共利益的发明创造. \r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造\r\nY:reject N:goon','','2017-04-21 01:46:40','china','','','','',''),(8,'第一章 总 则\r\n','','第六条 执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造为职务发明创造。\r\n职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人。\r\n非职务发明创造，申请专利的权利属于发明人或者设计人；\r\n申请被批准后，该发明人或者设计人为专利权人。\r\n利用本单位的物质技术条件所完成的发明创造，\r\n单位与发明人或者设计人订有合同，对申请专利的权利和专利权的归属作出约定的，从其约定。','是否为职务发明创造:\r\nchecklist_item:\r\n执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造\r\nY:职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人\r\nN:专利的权利属于发明人或者设计人；','','2017-04-21 01:53:34','china','','','','',''),(9,'第一章 总 则\r\n','','第七条 对发明人或者设计人的非职务发明创造专利申请，任何单位或者个人不得压制。','check_item:非职务发明创造专利申请，单位或者个人是否有存在压制问题。:\r\nY: go to report warning. \r\nN: go on .','','2017-04-21 01:56:12','china','','','','',''),(10,'第一章 总 则\r\n','','第八条 两个以上单位或者个人合作完成的发明创造、一个单位或者个人接受其他单位或者个人委托所完成的发明创造，除另有协议的以外，申请专利的权利属于完成或者共同完成的单位或者个人；申请被批准后，申请的单位或者个人为专利权人。\r\n','check_item:是否为两个及两个以上合作完成发明创造? \r\ncheck_item:是否为一个单位或者个人接受其他单位或者个人委托所完成的发明创造?\r\nY: 申请专利的权利属于完成或者共同完成的单位或者个人 \r\n','','2017-04-21 01:58:49','china','','','','',''),(11,'第一章 总 则\r\n','','第九条同样的发明创造只能授予一项专利权。但是，同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利，先获得的实用新型专利权尚未终止，且申请人声明放弃该实用新型专利权的，可以授予发明专利权。两个以上的申请人分别就同样的发明创造申请专利的，专利权授予最先申请的人。\r\n','check_item:是否存在同样的发明创造? \r\ncheck_item:是否为同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利?\r\ncheck_item:先获得的实用新型专利权尚未终止是否终止?\r\n{check_item:申请人声明放弃该实用新型专利权的是否放弃实用新型专利权?Y:可以授予发明专利权}\r\ncheck_item:是否存在两个以上的申请人分别就同样的发明创造申请专利的，Y: ?专利权授予最先: 申请的人。\r\n','','2017-04-21 02:03:45','china','','','','',''),(12,'第一章 总 则','','第十条 专利申请权和专利权可以转让。中国单位或者个人向外国人、外国企业或者外国其他组织转让专利申请权或者专利权的，应当依照有关法律、行政法规的规定办理手续。转让专利申请权或者专利权的，当事人应当订立书面合同，并向国务院专利行政部门登记，由国务院专利行政部门予以公告。专利申请权或者专利权的转让自登记之日起生效。','object:国单位或者个人向外国人、外国企业或者外国其他组织\r\naction:申请：转让专利权和申请权; 转让:办理手续 ;登记:国务院专利行政部门;公告：国务院专利行政部门; 生效：时间\r\noutput:书面合同','','2017-04-23 12:36:05','china','','','','',''),(13,'第一章 总 则','','第十一条发明和实用新型专利权被授予后，除本法另有规定的以外，任何单位或者个人未经专利权人许可，都不得实施其专利，即不得为生产经营目的制造、使用、许诺销售、销售、进口其专利产品，或者使用其专利方法以及使用、许诺销售、销售、进口依照该专利方法直接获得的产品。\r\n\r\n外观设计专利权被授予后，任何单位或者个人未经专利权人许可，都不得实施其专利，即不得为生产经营目的制造、许诺销售、销售、进口其外观设计专利产品。','action: 实施专利执法检查','','2017-04-23 13:32:16','china','','','','',''),(14,'第一章 总 则','','第十二条任何单位或者个人实施他人专利的，应当与专利权人订立实施许可合同，向专利权人支付专利使用费。被许可人无权允许合同规定以外的任何单位或者个人实施该专利。\r\n','object:单位，个人\r\naction:申请：实施专利 ，签订：实施专利合同 支付：专利权人费用','','2017-04-23 13:36:16','china','','','','',''),(15,'第一章 总 则','','第十三条发明专利申请公布后，申请人可以要求实施其发明的单位或者个人支付适当的费用。\r\n','object:申请人（单位，个人）\r\naction:要求：实施专利支付费用 签订：实施专利合同 支付：专利权人费用','','2017-04-23 13:45:28','china','','','','',''),(16,'第一章 总 则','','第十四条国有企业事业单位的发明专利，对国家利益或者公共利益具有重大意义的，国务院有关主管部门和省、自治区、直辖市人民政府报经国务院批准，可以决定在批准的范围内推广应用，允许指定的单位实施，由实施单位按照国家规定向专利权人支付使用费。','','','2017-04-23 15:34:18','china','','','','',''),(17,'第一章 总 则','','第十五条专利申请权或者专利权的共有人对权利的行使有约定的，从其约定。没有约定的，共有人可以单独实施或者以普通许可方式许可他人实施该专利；许可他人实施该专利的，收取的使用费应当在共有人之间分配。\r\n除前款规定的情形外，行使共有的专利申请权或者专利权应当取得全体共有人的同意。','action:确认：共有人共同确认许可和实施。','','2017-04-23 15:38:38','china','','','','',''),(18,'第一章 总 则','','第十六条被授予专利权的单位应当对职务发明创造的发明人或者设计人给予奖励；发明创造专利实施后，根据其推广应用的范围和取得的经济效益，对发明人或者设计人给予合理的报酬。\r\n','object:被授予专利权的单位\r\naction:奖励：职务发明创造的发明人或者设计人给予奖。支付：根据经济效益对发明人或者设计人给予合理的报酬','','2017-04-23 15:43:28','china','','','','',''),(19,'第一章 总 则','','第十七条发明人或者设计人有权在专利文件中写明自己是发明人或者设计人。\r\n\r\n专利权人有权在其专利产品或者该产品的包装上标明专利标识。\n','object:发明人或者设计人\r\naction:署名：在专利文件中写明自己是发明人或者设计人','','2017-04-23 15:45:40','china','','','','',''),(20,'第一章 总 则','','第十八条在中国没有经常居所或者营业所的外国人、外国企业或者外国其他组织在中国申请专利的，依照其所属国同中国签订的协议或者共同参加的国际条约，或者依照互惠原则，根据本法办理。\r\n\r\n','object:外国人、外国企业或者外国其他组织\r\naction:申请：依据','','2017-04-23 15:51:04','china','','','','',''),(21,'第一章 总 则','','第十九条在中国没有经常居所或者营业所的外国人、外国企业或者外国其他组织在中国申请专利和办理其他专利事务的，应当委托依法设立的专利代理机构办理。\r\n\r\n中国单位或者个人在国内申请专利和办理其他专利事务的，可以委托依法设立的专利代理机构办理。\r\n\r\n专利代理机构应当遵守法律、行政法规，按照被代理人的委托办理专利申请或者其他专利事务；对被代理人发明创造的内容，除专利申请已经公布或者公告的以外，负有保密责任。专利代理机构的具体管理办法由国务院规定。\r\n\r\n','action：委托','','2017-04-23 16:25:03','china','','','','',''),(22,'第一章 总 则','','第二十条任何单位或者个人将在中国完成的发明或者实用新型向外国申请专利的，应当事先报经国务院专利行政部门进行保密审查。保密审查的程序、期限等按照国务院的规定执行。\r\n\r\n中国单位或者个人可以根据中华人民共和国参加的有关国际条约提出专利国际申请。申请人提出专利国际申请的，应当遵守前款规定。\r\n\r\n国务院专利行政部门依照中华人民共和国参加的有关国际条约、本法和国务院有关规定处理专利国际申请。\r\n\r\n对违反本条第一款规定向外国申请专利的发明或者实用新型，在中国申请专利的，不授予专利权。','object:任何单位或者个人\r\naction：外国申请专利;保密审查;国际申请;','','2017-04-23 16:28:42','china','','','','',''),(23,'第一章 总 则','','第二十一条国务院专利行政部门及其专利复审委员会应当按照客观、公正、准确、及时的要求，依法处理有关专利的申请和请求。\r\n\r\n国务院专利行政部门应当完整、准确、及时发布专利信息，定期出版专利公报。\r\n\r\n在专利申请公布或者公告前，国务院专利行政部门的工作人员及有关人员对其内容负有保密责任。','object:务院专利行政部门及其专利复审委员会\r\naction：申请和请求;发布专利信息;保密责任;','','2017-04-23 16:32:02','china','','','','',''),(24,'第二章 授予专利权的条件','','第二章 授予专利权的条件','object:务院专利行政部门\r\naction：授予专利权;','','2017-04-23 16:33:52','china','','','','',''),(25,'第二章 授予专利权的条件','','第二十二条授予专利权的发明和实用新型，应当具备新颖性、创造性和实用性。\r\n\r\n新颖性，是指该发明或者实用新型不属于现有技术；也没有任何单位或者个人就同样的发明或者实用新型在申请日以前向国务院专利行政部门提出过申请，并记载在申请日以后公布的专利申请文件或者公告的专利文件中。\r\n\r\n创造性，是指与现有技术相比，该发明具有突出的实质性特点和显著的进步，该实用新型具有实质性特点和进步。\r\n\r\n实用性，是指该发明或者实用新型能够制造或者使用，并且能够产生积极效果。\r\n\r\n本法所称现有技术，是指申请日以前在国内外为公众所知的技术。','object:务院专利行政部门\r\naction：check:发明和实用新型，应当具备新颖性、创造性和实用性。','','2017-04-23 16:34:57','china','','','','',''),(26,'第二章 授予专利权的条件','','第二十三条授予专利权的外观设计，应当不属于现有设计；也没有任何单位或者个人就同样的外观设计在申请日以前向国务院专利行政部门提出过申请，并记载在申请日以后公告的专利文件中。\r\n\r\n授予专利权的外观设计与现有设计或者现有设计特征的组合相比，应当具有明显区别。\r\n\r\n授予专利权的外观设计不得与他人在申请日以前已经取得的合法权利相冲突。\r\n\r\n本法所称现有设计，是指申请日以前在国内外为公众所知的设计。','object:务院专利行政部门\r\naction：check:外观设计，不属于现有设计;已有同样专利提出过申请;有明显区别;\r\n与他人在申请日以前已经取得的合法权利相冲突。\r\n','','2017-04-23 16:39:12','china','','','','',''),(27,'第二章 授予专利权的条件','','第二十四条申请专利的发明创造在申请日以前六个月内，有下列情形之一的，不丧失新颖性：\r\n\r\n（一）在中国政府主办或者承认的国际展览会上首次展出的；\r\n\r\n（二）在规定的学术会议或者技术会议上首次发表的；\r\n\r\n（三）他人未经申请人同意而泄露其内容的。\r\n','object:务院专利行政部门\r\naction：check:不丧失新颖性情况。\r\n','','2017-04-23 16:44:23','china','','','','',''),(28,'第二章 授予专利权的条件','','第二十四条申请专利的发明创造在申请日以前六个月内，有下列情形之一的，不丧失新颖性：\r\n\r\n（一）在中国政府主办或者承认的国际展览会上首次展出的；\r\n\r\n（二）在规定的学术会议或者技术会议上首次发表的；\r\n\r\n（三）他人未经申请人同意而泄露其内容的。\r\n','object:务院专利行政部门\r\naction：check:不丧失新颖性情况。\r\n','','2017-04-23 16:46:19','china','','','','',''),(29,'第二章 授予专利权的条件','','第二十五条对下列各项，不授予专利权：\r\n（一）科学发现；\r\n（二）智力活动的规则和方法；\r\n（三）疾病的诊断和治疗方法；\r\n（四）动物和植物品种；\r\n（五）用原子核变换方法获得的物质；\r\n（六）对平面印刷品的图案、色彩或者二者的结合作出的主要起标识作用的设计。\r\n\r\n对前款第（四）项所列产品的生产方法，可以依照本法规定授予专利权。','action:check:+ reject 1,2,3,4,5,6 ','','2017-04-24 03:30:31','china','','','','',''),(30,'第三章 专利的申请','','第二十六条申请发明或者实用新型专利的，应当提交请求书、说明书及其摘要和权利要求书等文件。\r\n\r\n请求书应当写明发明或者实用新型的名称，发明人的姓名，申请人姓名或者名称、地址，以及其他事项。\r\n\r\n说明书应当对发明或者实用新型作出清楚、完整的说明，以所属技术领域的技术人员能够实现为准；必要的时候，应当有附图。摘要应当简要说明发明或者实用新型的技术要点。\r\n\r\n权利要求书应当以说明书为依据，清楚、简要地限定要求专利保护的范围。\r\n\r\n依赖遗传资源完成的发明创造，申请人应当在专利申请文件中说明该遗传资源的直接来源和原始来源；申请人无法说明原始来源的，应当陈述理由。','action:申请: 提交:交请求书、说明书以及摘要,权利要求书, write:实用新型的名称，发明人的姓名，申请人姓名或者名称、地址\r\n\r\ncheck formar:请求书,说明书,权利要求书','','2017-04-24 03:34:49','china','','','','',''),(31,'第三章 专利的申请','','第二十七条申请外观设计专利的，应当提交请求书、该外观设计的图片或者照片以及对该外观设计的简要说明等文件。\r\n\r\n申请人提交的有关图片或者照片应当清楚地显示要求专利保护的产品的外观设计。','check format:请求书,外观设计的图片或者照片,外观设计的简要说明','','2017-04-24 03:36:24','china','','','','',''),(32,'第三章 专利的申请','','第二十八条国务院专利行政部门收到专利申请文件之日为申请日。如果申请文件是邮寄的，以寄出的邮戳日为申请日。\r\n','action:record 申请日','','2017-04-24 03:37:16','china','','','','',''),(33,'第三章 专利的申请','','第二十九条申请人自发明或者实用新型在外国第一次提出专利申请之日起十二个月内，或者自外观设计在外国第一次提出专利申请之日起六个月内，又在中国就相同主题提出专利申请的，依照该外国同中国签订的协议或者共同参加的国际条约，或者依照相互承认优先权的原则，可以享有优先权。\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check country 外国,check :优先权','','2017-04-24 03:38:59','china','','','','',''),(34,'第三章 专利的申请','','第三十条申请人要求优先权的，应当在申请的时候提出书面声明，并且在三个月内提交第一次提出的专利申请文件的副本；未提出书面声明或者逾期未提交专利申请文件副本的，视为未要求优先权。\r\n\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check :优先权书面声明,check 第一次提出的专利申请文件的副本','','2017-04-24 03:39:56','china','','','','',''),(35,'第三章 专利的申请','','第三十一条一件发明或者实用新型专利申请应当限于一项发明或者实用新型。属于一个总的发明构思的两项以上的发明或者实用新型，可以作为一件申请提出。\r\n\r\n一件外观设计专利申请应当限于一项外观设计。同一产品两项以上的相似外观设计，或者用于同一类别并且成套出售或者使用的产品的两项以上外观设计，可以作为一件申请提出。\r\n\r\n\r\n申请人自发明或者实用新型在中国第一次提出专利申请之日起十二个月内，又向国务院专利行政部门就相同主题提出专利申请的，可以享有优先权。\r\n','action:check :一次申请仅限一项发明或者实用新型,外观设计,check 优先权','','2017-04-24 03:42:06','china','','','','',''),(36,'第三章 专利的申请','','第三十二条申请人可以在被授予专利权之前随时撤回其专利申请。\r\n','action:撤回专利申请 .','','2017-04-24 03:42:49','china','','','','',''),(37,'第三章 专利的申请','','第三十三条申请人可以对其专利申请文件进行修改，但是，对发明和实用新型专利申请文件的修改不得超出原说明书和权利要求书记载的范围，对外观设计专利申请文件的修改不得超出原图片或者照片表示的范围。\r\n\r\n','action:文件修改:check 修改是否超出原申请范围 .','','2017-04-24 03:44:10','china','','','','',''),(38,'\r\n第四章专利申请的审查和批准','','\r\n第四章专利申请的审查和批准','','','2017-04-24 03:44:37','china','','','','',''),(39,'\r\n第四章专利申请的审查和批准','','第三十四条国务院专利行政部门收到发明专利申请后，经初步审查认为符合本法要求的，自申请日起满十八个月，即行公布。国务院专利行政部门可以根据申请人的请求早日公布其申请。\r\n','action:公布:自申请日起满十八个月，即行公布,早日公布:请求书. 申请人的请求早日公布其申请','','2017-04-24 03:45:45','china','','','','',''),(40,'\r\n第四章专利申请的审查和批准','','第三十五条发明专利申请自申请日起三年内，国务院专利行政部门可以根据申请人随时提出的请求，对其申请进行实质审查；申请人无正当理由逾期不请求实质审查的，该申请即被视为撤回。\r\n\r\n国务院专利行政部门认为必要的时候，可以自行对发明专利申请进行实质审查。','action:实质审查:自行对发明专利申请进行实质审查,撤回','','2017-04-24 03:47:14','china','','','','',''),(41,'第四章专利申请的审查和批准','','第三十六条发明专利的申请人请求实质审查的时候，应当提交在申请日前与其发明有关的参考资料。\r\n\r\n发明专利已经在外国提出过申请的，国务院专利行政部门可以要求申请人在指定期限内提交该国为审查其申请进行检索的资料或者审查结果的资料；无正当理由逾期不提交的，该申请即被视为撤回。','object:发明专利的申请人\r\naction:提交材料:申请日前与其发明有关的参考资料+ 检索资料或者审查结果的资料\r\ncheck:外国提出过申请?','','2017-04-25 11:03:40','china','','','','',''),(42,'第四章专利申请的审查和批准','','第三十七条国务院专利行政部门对发明专利申请进行实质审查后，认为不符合本法规定的，应当通知申请人，要求其在指定的期限内陈述意见，或者对其申请进行修改；无正当理由逾期不答复的，该申请即被视为撤回。\r\n','object:国务院专利行政部门\r\naction:是否符合?null:通知 time(意见陈述or修改申请); \r\n','','2017-04-25 11:08:29','china','','','','',''),(43,'第四章专利申请的审查和批准','','第三十八条发明专利申请经申请人陈述意见或者进行修改后，国务院专利行政部门仍然认为不符合本法规定的，应当予以驳回。\r\n\r\n','object:国务院专利行政部门\r\naction:是否符合?null:通知 time(意见陈述or修改申请)\r\n-->符合本法规定?null:驳回\r\n','','2017-04-25 11:10:56','china','','','','',''),(44,'第四章专利申请的审查和批准','','第三十九条发明专利申请经实质审查没有发现驳回理由的，由国务院专利行政部门作出授予发明专利权的决定，发给发明专利证书，同时予以登记和公告。发明专利权自公告之日起生效。\r\n\r\n','object:国务院专利行政部门\r\naction:经实质审查没有发现驳回理由?通知{ time(发给发明专利证书&&登记和公告&&生效)}\r\n\r\n','','2017-04-25 11:13:23','china','','','','',''),(45,'第四章专利申请的审查和批准','','第四十条实用新型和外观设计专利申请经初步审查没有发现驳回理由的，由国务院专利行政部门作出授予实用新型专利权或者外观设计专利权的决定，发给相应的专利证书，同时予以登记和公告。实用新型专利权和外观设计专利权自公告之日起生效。\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\naction:\r\n(实用新型和外观设计专利)?\r\n{\r\n经初步审查没有发现驳回理由\r\n}\r\n:{经实质审查没有发现驳回理由?通知[ time(发给发明专利证书&&登记和公告&&生效)]}\r\n\r\n','','2017-04-25 11:17:11','china','','','','',''),(46,'第四章专利申请的审查和批准','','第四十一条国务院专利行政部门设立专利复审委员会。专利申请人对国务院专利行政部门驳回申请的决定不服的，可以自收到通知之日起三个月内，向专利复审委员会请求复审。专利复审委员会复审后，作出决定，并通知专利申请人。\r\n\r\n专利申请人对专利复审委员会的复审决定不服的，可以自收到通知之日起三个月内向人民法院起诉。\r\n\r\n\r\n\r\n','object:专利申请人->复审委员会;专利申请人->人民法院\r\naction:复审: time(三个月内)请求复审;\r\n      请人专利复审委员会复审后，作出决定，并通知专利申。\r\n起诉:time(三个月)','','2017-04-25 11:20:41','china','','','','',''),(47,'第五章专利权的期限、终止和无效','','第四十二条发明专利权的期限为二十年，实用新型专利权和外观设计专利权的期限为十年，均自申请日起计算。\r\n\r\n\r\n\r\n\r\n','event:发明专利权:time(二十年);实用新型专利权和外观设计专利权time(10)','','2017-04-25 11:22:55','china','','','','',''),(48,'第五章专利权的期限、终止和无效','','第四十三条专利权人应当自被授予专利权的当年开始缴纳年费。\r\n\r\n\r\n\r\n\r\n','event:缴纳年费','','2017-04-25 11:23:41','china','','','','',''),(49,'第五章专利权的期限、终止和无效','','第四十四条有下列情形之一的，专利权在期限届满前终止：\r\n（一）没有按照规定缴纳年费的；\r\n（二）专利权人以书面声明放弃其专利权的。\r\n专利权在期限届满前终止的，由国务院专利行政部门登记和公告。\r\n\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\naction:(缴纳年费or放弃其专利权)?登记和公告:;','','2017-04-25 11:25:28','china','','','','',''),(50,'第五章专利权的期限、终止和无效','','第四十五条自国务院专利行政部门公告授予专利权之日起，任何单位或者个人认为该专利权的授予不符合本法有关规定的，可以请求专利复审委员会宣告该专利权无效。\r\n\r\n\r\n\r\n\r\n\r\n','object:任何单位或者个人->国务院专利行政部门\r\naction:不符合本法 ? 宣告该专利权无效:;','','2017-04-25 11:27:11','china','','','','',''),(51,'第五章专利权的期限、终止和无效','','第四十六条专利复审委员会对宣告专利权无效的请求应当及时审查和作出决定，并通知请求人和专利权人。宣告专利权无效的决定，由国务院专利行政部门登记和公告。\r\n\r\n对专利复审委员会宣告专利权无效或者维持专利权的决定不服的，可以自收到通知之日起三个月内向人民法院起诉。人民法院应当通知无效宣告请求程序的对方当事人作为第三人参加诉讼。\r\n\r\n\r\n\r\n\r\n','object:任何单位或者个人->国务院专利行政部门;人民法院\r\naction:不符合本法 ? 宣告该专利权无效+通知请求人和专利权人+登记和公告:;\r\n(专利权无效或者维持专利权的决定不服)?起诉time(三个月)','','2017-04-25 11:29:42','china','','','','',''),(52,'第五章专利权的期限、终止和无效','','第四十七条宣告无效的专利权视为自始即不存在。\r\n宣告专利权无效的决定，对在宣告专利权无效前人民法院作出并已执行的专利侵权的判决、调解书，已经履行或者强制执行的专利侵权纠纷处理决定，以及已经履行的专利实施许可合同和专利权转让合同，不具有追溯力。但是因专利权人的恶意给他人造成的损失，应当给予赔偿。\r\n\r\n依照前款规定不返还专利侵权赔偿金、专利使用费、专利权转让费，明显违反公平原则的，应当全部或者部分返还。\r\n\r\n\r\n\r\n\r\n','object:人民法院\r\ncheck:if(恶意给他人造成的损失||明显违反公平原则)action:返还{专利侵权赔偿金、专利使用费、专利权转让费}','','2017-04-25 11:32:14','china','','','','',''),(53,'第六章专利实施的强制许可','','第四十八条有下列情形之一的，国务院专利行政部门根据具备实施条件的单位或者个人的申请，可以给予实施发明专利或者实用新型专利的制许可强：\r\n（一）专利权人自专利权被授予之日起满三年，且自提出专利申请之日起满四年，无正当理由未实施或者未充分实施其专利的；\r\n（二）专利权人行使专利权的行为被依法认定为垄断行为，为消除或者减少该行为对竞争产生的不利影响的。\r\n\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(无正当理由未实施或者未充分实施其专利&&time(3||4)||依法认定为垄断行为)\r\n{给予实施发明专利或者实用新型专利的制许可强}','','2017-04-25 11:36:08','china','','','','',''),(54,'第六章专利实施的强制许可','','第四十九条在国家出现紧急状态或者非常情况时，或者为了公共利益的目的，国务院专利行政部门可以给予实施发明专利或者实用新型专利的强制许可。\r\n\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(国家出现紧急状态||非常情况时||为了公共利益的目的)\r\n{给予实施发明专利或者实用新型专利的制许可强}','','2017-04-25 11:36:59','china','','','','',''),(55,'第六章专利实施的强制许可','','第五十条为了公共健康目的，对取得专利权的药品，国务院专利行政部门可以给予制造并将其出口到符合中华人民共和国参加的有关国际条约规定的国家或者地区的强制许可。\r\n\r\n\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(公共健康目&&取得专利权的药品)\r\n{可以给予:制造并将其出口到符合中华人民共和国参加的有关国际条约规定的国家或者地区的强制许可。}','','2017-04-25 11:38:37','china','','','','',''),(56,'第六章专利实施的强制许可','','第五十一条 一项取得专利权的发明或者实用新型比前已经取得专利权的发明或者实用新型具有显著经济意义的重大技术进步，其实施又有赖于前一发明或者实用新型的实施的，国务院专利行政部门根据后一专利权人的申请，可以给予实施前一发明或者实用新型的强制许可。\r\n\r\n在依照前款规定给予实施强制许可的情形下，国务院专利行政部门根据前一专利权人的申请，也可以给予实施后一发明或者实用新型的强制许可。\r\n\r\n\r\n\r\n\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(发明或者实用新型比前已经取得专利权的发明或者实用新型具有显著经济意义的重大技术进步\r\n&& 实施又有赖于前一发明或者实用新型的实施)\r\n{可以给予实施前一发明或者实用新型的强制许可。}','','2017-04-25 11:40:39','china','','','','',''),(57,'第六章专利实施的强制许可','','第五十二条强制许可涉及的发明创造为半导体技术的，其实施限于公共利益的目的和本法第四十八条第（二）项规定的情形。\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(涉及的发明创造为半导体技术\r\n  && 公共利益的目的\r\n  && 依法认定为垄断行为)\r\n{可以给予:实施强制许可涉及的发明创造为半导体技术强制许可。}','','2017-04-25 11:43:01','china','','','','',''),(58,'第六章专利实施的强制许可','','第五十三条除依照本法 第四十八条第（二）项、第五十条规定给予的强制许可外，强制许可的实施应当主要为了供应国内市场。\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(专利权的药品|| 依法认定为垄断行为)\r\n{可以给予:实施强制许可 && 强制许可的实施应当主要为了供应国内市场。}','','2017-04-25 11:45:27','china','','','','',''),(59,'第六章专利实施的强制许可','','第五十四条依照本法第四十八条第（一）项、第五十一条规定申请强制许可的单位或者个人应当提供证据，证明其以合理的条件请求专利权人许可其实施专利，但未能在合理的时间内获得许可。\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(无正当理由未实施或者未充分实施|| 显著经济意义的重大技术进步\r\n&&证据充分\r\n&&未能在合理的时间内获得许可)\r\n\r\n{可以给予:实施强制许可。}','','2017-04-25 11:48:26','china','','','','',''),(61,'第六章专利实施的强制许可','','第五十五条国务院专利行政部门作出的给予实施强制许可的决定，应当及时通知专利权人，并予以登记和公告。\r\n\r\n给予实施强制许可的决定，应当根据强制许可的理由规定实施的范围和时间。强制许可的理由消除并不再发生时，国务院专利行政部门应当根据专利权人的请求，经审查后作出终止实施强制许可的决定。\r\n\r\n','object:国务院专利行政部门\r\ncheck:\r\nif(实施强制许可)\r\n{通知专利权人，并予以登记和公告,规定实施的范围和时间}\r\n\r\nif(专利权人的请求&&强制许可的理由消除并不再发生)\r\n{经审查后作出终止实施强制许可的决定}\r\n','','2017-04-25 13:45:29','china','','','','',''),(62,'第六章专利实施的强制许可','','第五十六条取得实施强制许可的单位或者个人不享有独占的实施权，并且无权允许他人实施。\r\n','\r\n','','2017-04-25 13:46:20','china','','','','',''),(63,'第六章专利实施的强制许可','','第五十七条 取得实施强制许可的单位或者个人应当付给专利权人合理的使用费，或者依照中华人民共和国参加的有关国际条约的规定处理使用费问题。付给使用费的，其数额由双方协商；双方不能达成协议的，由国务院专利行政部门裁决。\r\n','\r\nif(取得实施强制许可)\r\n{\r\n付给专利权人合理的使用费,{其数额由双方协商||由国务院专利行政部门裁决}\r\n}','','2017-04-25 13:48:23','china','','','','',''),(64,'第六章专利实施的强制许可','','第五十八条专利权人对国务院专利行政部门关于实施强制许可的决定不服的，专利权人和取得实施强制许可的单位或者个人对国务院专利行政部门关于实施强制许可的使用费的裁决不服的，可以自收到通知之日起三个月内向人民法院起诉。\r\n','\r\nif(实施强制许可的决定不服||实施强制许可的使用费的裁决不服)\r\n{\r\n可以自收到通知之日起三个月内向人民法院起诉\r\n}','','2017-04-25 13:49:37','china','','','','',''),(65,'第七章 专利权的保护','','第七章 专利权的保护','','','2017-04-25 13:49:57','china','','','','',''),(66,'第七章 专利权的保护','','第五十九条发明或者实用新型专利权的保护范围以其权利要求的内容为准，说明书及附图可以用于解释权利要求的内容。\r\n\r\n外观设计专利权的保护范围以表示在图片或者照片中的该产品的外观设计为准，简要说明可以用于解释图片或者照片所表示的该产品的外观设计。','if(发明||实用新型专利权) {以其权利要求的内容为准，说明书及附图可以用于解释权利要求的内容}\r\nif(外观设计专利权) {保护范围以表示在图片或者照片中的该产品的外观设计为准}','','2017-04-25 13:52:32','china','','','','',''),(67,'第七章 专利权的保护','','第六十条 未经专利权人许可，实施其专利，即侵犯其专利权，引起纠纷的，由当事人协商解决；不愿协商或者协商不成的，专利权人或者利害关系人可以向人民法院起诉，也可以请求管理专利工作的部门处理。管理专利工作的部门处理时，认定侵权行为成立的，可以责令侵权人立即停止侵权行为，当事人不服的，可以自收到处理通知之日起十五日内依照《中华人民共和国行政诉讼法》法院起向人民诉；侵权人期满不起诉又不停止侵权行为的，管理专利工作的部门可以申请人民法院强制执行。进行处理的管理专利工作的部门应当事人的请求，可以就侵犯专利权的赔偿数额进行调解；调解不成的，当事人可以依照《中华人民共和国民事诉讼法》向人民法院起诉。','if(侵犯其专利权&&引起纠纷) \r\n{\r\n  if(当事人愿协商解决){}\r\n  if(不愿协商或者协商不成){专利权人或者利害关系人可以向人民法院起诉，OR 请求管理专利工作的部门处理}\r\n\r\n}\r\nif(认定侵权行为成立) {责令侵权人立即停止侵权行为}\r\nif(当事人不服){可以自收到处理通知之日起十五日内依照《中华人民共和国行政诉讼法》法院起向人民诉；}\r\nif(侵权人期满不起诉又不停止侵权行为){管理专利工作的部门可以申请人民法院强制执行}\r\nif(当事人的请求) {进行处理的管理专利工作的部门应当事人的请求，可以就侵犯专利权的赔偿数额进行调解}\r\nif(调解不成的){当事人可以依照《中华人民共和国民事诉讼法》向人民法院起诉。}','','2017-04-25 13:59:11','china','','','','',''),(68,'第七章 专利权的保护','','第六十一条专利侵权纠纷涉及新产品制造方法的发明专利的，制造同样产品的单位或者个人应当提供其产品制造方法不同于专利方法的证明。\r\n\r\n专利侵权纠纷涉及实用新型专利或者外观设计专利的，人民法院或者管理专利工作的部门可以要求专利权人或者利害关系人出具由国务院专利行政部门对相关实用新型或者外观设计进行检索、分析和评价后作出的专利权评价报告，作为审理、处理专利侵权纠纷的证据。\r\n','if(专利侵权纠纷涉及新产品制造方法的发明专利) {制造同样产品的单位或者个人应当提供其产品制造方法不同于专利方法的证明。}\r\nif(专利侵权纠纷涉及实用新型专利或者外观设计专利) \r\n{\r\n  专利权人或者利害关系人出具由国务院专利行政部门对相关实用新型或者外观设计\r\n  进行检索、分析和评价后作出的专利权评价报告，\r\n  作为审理、处理专利侵权纠纷的证据。\r\n}\r\n','','2017-04-25 14:02:33','china','','','','',''),(69,'第七章 专利权的保护','','第六十二条在专利侵权纠纷中，被控侵权人有证据证明其实施的技术或者设计属于现有技术或者现有设计的，不构成侵犯专利权。\r\n','if(控侵权人有证据证明其实施的技术或者设计属于现有技术或者现有设计)\r\n {不构成侵犯专利权}\r\n\r\n','','2017-04-25 14:03:45','china','','','','',''),(70,'第七章 专利权的保护','','第六十三条 假冒专利的，除依法承担民事责任外，由管理专利工作的部门责令改正并予公告，没收违法所得，可以并处违法所得四倍以下的罚款；没有违法所得的，可以处二十万元以下的罚款；构成犯罪的，依法追究刑事责任。\r\n','if(假冒专利){承担民事责任+管理专利工作的部门责令改正并予公告+没收违法所得+OR 可以并处违法所得四倍以下的罚款}\r\nif(没有违法所得) {check?可以处二十万元以下的罚款}\r\nif(构成犯罪){依法追究刑事责任}\r\n','','2017-04-25 14:07:38','china','','','','',''),(71,'第七章 专利权的保护','','第六十四条 管理专利工作的部门根据已经取得的证据，对涉嫌假冒专利行为进行查处时，可以询问有关当事人，调查与涉嫌违法行为有关的情况；对当事人涉嫌违法行为的场所实施现场检查；查阅、复制与涉嫌违法行为有关的合同、发票、账簿以及其他有关资料；检查与涉嫌违法行为有关的产品，对有证据证明是假冒专利的产品，可以查封或者扣押。\r\n\r\n管理专利工作的部门依法行使前款规定的职权时，当事人应当予以协助、配合，不得拒绝、阻挠。\r\n','if(涉嫌假冒专利行为进行查处时)\r\n{\r\ncheck?询问有关当事人，调查与涉嫌违法行为有关的情况\r\n+ 对当事人涉嫌违法行为的场所实施现场检查\r\n+查阅、复制与涉嫌违法行为有关的合同、发票、账簿以及其他有关资料\r\n+检查与涉嫌违法行为有关的产品，\r\n+if(证据证明是假冒专利的产品){check?查封或者扣押}\r\n+当事人应当予以协助、配合，不得拒绝、阻挠。\r\n}\r\n\r\n','','2017-04-25 14:11:16','china','','','','',''),(72,'第七章 专利权的保护','','第六十五条 侵犯专利权的赔偿数额按照权利人因被侵权所受到的实际损失确定；实际损失难以确定的，可以按照侵权人因侵权所获得的利益确定。权利人的损失或者侵权人获得的利益难以确定的，参照该专利许可使用费的倍数合理确定。赔偿数额还应当包括权利人为制止侵权行为所支付的合理开支。\r\n\r\n权利人的损失、侵权人获得的利益和专利许可使用费均难以确定的，人民法院可以根据专利权的类型、侵权行为的性质和情节等因素，确定给予一万元以上一百万元以下的赔偿。\r\n','if(实际损失确定){侵犯专利权的赔偿数额按照权利人因被侵权所受到的实际损失确定}\r\nif(实际损失难以确定){可以按照侵权人因侵权所获得的利益确定}\r\nif(权利人的损失或者侵权人获得的利益难以确定){参照该专利许可使用费的倍数合理确定}\r\nif(权利人的损失、侵权人获得的利益和专利许可使用费均难以确定)\r\n{人民法院可以根据专利权的类型、侵权行为的性质和情节等因素，确定给予一万元以上一百万元以下的赔偿}\r\n赔偿数额+=权利人为制止侵权行为所支付的合理开支。\r\n','','2017-04-25 14:15:12','china','','','','',''),(73,'第七章 专利权的保护','','第六十六条 专利权人或者利害关系人有证据证明他人正在实施或者即将实施侵犯专利权的行为，如不及时制止将会使其合法权益受到难以弥补的损害的，可以在起诉前向人民法院申请采取责令停止有关行为的措施。\r\n申请人提出申请时，应当提供担保；不提供担保的，驳回申请。\r\n人民法院应当自接受申请之时起四十八小时内作出裁定；有特殊情况需要延长的，可以延长四十八小时。裁定责令停止有关行为的，应当立即执行。当事人对裁定不服的，可以申请复议一次；复议期间不停止裁定的执行。\r\n申请人自人民法院采取责令停止有关行为的措施之日起十五日内不起诉的，人民法院应当解除该措施。\r\n申请有错误的，申请人应当赔偿被申请人因停止有关行为所遭受的损失。\r\n\r\n','if(实施侵犯专利权的不及时制止将会使其合法权益受到难以弥补的损害)\r\n{\r\n 可以在起诉前向人民法院申请采取责令停止有关行为的措施\r\n +if(申请人提出申请){应当提供担保}\r\n +if(不提供担保){驳回申请}\r\n}\r\nif(民法院应当自接受申请)\r\n{\r\n if(有特殊情况需要延长){可以延长四十八小时--96hour)\r\n else 四十八小时内作出裁定\r\n if(裁定责令停止有关行为){应当立即执行}\r\n if(当事人对裁定不服){可以申请复议一次；复议期间不停止裁定的执行}\r\n}\r\nif(法院采取责令停止&&起十五日内不起诉){人民法院应当解除该措施}\r\nif(申请有错误){申请人应当赔偿被申请人因停止有关行为所遭受的损失}\r\n\r\n','','2017-04-25 14:23:51','china','','','','',''),(74,'第七章 专利权的保护','','第六十七条 为了制止专利侵权行为，在证据可能灭失或者以后难以取得的情况下，专利权人或者利害关系人可以在起诉前向人民法院申请保全证据。\r\n人民法院采取保全措施，可以责令申请人提供担保；申请人不提供担保的，驳回申请。\r\n人民法院应当自接受申请之时起四十八小时内作出裁定；裁定采取保全措施的，应当立即执行。\r\n申请人自人民法院采取保全措施之日起十五日内不起诉的，人民法院应当解除该措施。\r\n\r\n','if(为了制止专利侵权行为&&证据可能灭失或者以后难以取得)\r\n{\r\n专利权人或者利害关系人可以在起诉前向人民法院申请保全证据\r\n +if(取保全措施){责令申请人提供担保}\r\n +if(申请人不提供担保){驳回申请}\r\n}\r\nif(民法院应当自接受申请)\r\n{ 四十八小时内作出裁定\r\n if(裁定采取保全措施的){应当立即执行}\r\n\r\n}\r\nif(人民法院采取保全措施&&取保全措施之日起十五日内不起诉){人民法院应当解除该措施}\r\n\r\n','','2017-04-25 14:28:04','china','','','','',''),(75,'第七章 专利权的保护','','第六十八条 侵犯专利权的诉讼时效为二年，自专利权人或者利害关系人得知或者应当得知侵权行为之日起计算。\r\n\r\n发明专利申请公布后至专利权授予前使用该发明未支付适当使用费的，专利权人要求支付使用费的诉讼时效为二年，自专利权人得知或者应当得知他人使用其发明之日起计算，但是，专利权人于专利权授予之日前即已得知或者应当得知的，自专利权授予之日起计算。\r\n\r\n\r\n','if(自专利权人或者利害关系人得知或者应当得知侵权行为之日,&&>二年)\r\n{\r\n{超出有效期驳回诉讼}\r\n}\r\nif(>专利权人要求支付使用费的诉讼时效为二年)\r\n{超出有效期驳回诉讼}\r\n','','2017-04-25 14:31:23','china','','','','',''),(76,'第七章 专利权的保护','','第六十九条有下列情形之一的，不视为侵犯专利权：\r\n（一）专利产品或者依照专利方法直接获得的产品，由专利权人或者经其许可的单位、个人售出后，使用、许诺销售、销售、进口该产品的；\r\n（二）在专利申请日前已经制造相同产品、使用相同方法或者已经作好制造、使用的必要准备，并且仅在原有范围内继续制造、使用的；\r\n（三）临时通过中国领陆、领水、领空的外国运输工具，依照其所属国同中国签订的协议或者共同参加的国际条约，或者依照互惠原则，为运输工具自身需要而在其装置和设备中使用有关专利的；\r\n（四）专为科学研究和实验而使用有关专利的；\r\n（五）为提供行政审批所需要的信息，制造、使用、进口专利药品或者专利医疗器械的，以及专门为其制造、进口专利药品或者专利医疗器械的。\r\n\r\n\r\n','\r\n','','2017-04-25 14:33:22','china','','','','',''),(77,'第七章 专利权的保护','','第七十条 为生产经营目的使用、许诺销售或者销售不知道是未经专利权人许可而制造并售出的专利侵权产品，能证明该产品合法来源的，不承担赔偿责任。\r\n\r\n\r\n\r\n','\r\nif(为生产经营目的&&不知道是未经专利权人许可&&能证明该产品合法来源){不承担赔偿责任}','','2017-04-25 14:34:53','china','','','','',''),(78,'第七章 专利权的保护','','第七十一条 违反本法第二十条规定向外国申请专利，泄露国家秘密的，由所在单位或者上级主管机关给予行政处分；构成犯罪的，依法追究刑事责任。\r\n\r\n\r\n\r\n','\r\nif(!保密审查&&向外国申请专利&&泄露国家秘密){由所在单位或者上级主管机关给予行政处分\r\n  if(构成犯罪) 依法追究刑事责任;\r\n}','','2017-04-25 14:37:09','china','','','','',''),(79,'第七章 专利权的保护','','第七十二条 侵夺发明人或者设计人的非职务发明创造专利申请权和本法规定的其他权益的，由所在单位或者上级主管机关给予行政处分。\r\n\r\n\r\n\r\n\r\n','if(!非职务发明创造&&侵夺发明人或者设计人的非职务发明创造专利申请权||法定的其他权益)\r\n{由所在单位或者上级主管机关给予行政处分}','','2017-04-25 14:39:20','china','','','','',''),(80,'第七章 专利权的保护','','第七十三条管理专利工作的部门不得参与向社会推荐专利产品等经营活动。\r\n管理专利工作的部门违反前款规定的，由其上级机关或者监察机关责令改正，消除影响，有违法收入的予以没收；情节严重的，对直接负责的主管人员和其他直接责任人员依法给予行政处分。\r\n\r\n\r\n\r\n','if(管理专利工作的部门参与向社会推荐专利产品等经营活动)\r\n{\r\n 由(其上级机关||监察机)关责令改正+ 消除影响 + if(有违法收入)没收违法收入\r\n if(情节严重){对直接负责的主管人员和其他直接责任人员依法给予行政处分}\r\n}','','2017-04-25 14:42:02','china','','','','',''),(81,'第七章 专利权的保护','','第七十四条 从事专利管理工作的国家机关工作人员以及其他有关国家机关工作人员玩忽职守、滥用职权、徇私舞弊，构成犯罪的，依法追究刑事责任；尚不构成犯罪的，依法给予行政处分。\r\n\r\n\r\n\r\n\r\n','object:从事专利管理工作的国家机关工作人员以及其他有关国家机关工作人员\r\n\r\nif(玩忽职守||滥用职权||徇私舞弊||构成犯罪){ 依法追究刑事责任} \r\nif(尚不构成犯罪){依法给予行政处分}','','2017-04-25 14:43:56','china','','','','',''),(82,'第八章 附则','','\r\n第七十五条向国务院专利行政部门申请专利和办理其他手续，应当按照规定缴纳费用。\r\n\r\n\r\n\r\n','if(向国务院专利行政部门申请专利和办理其他手续){应当按照规定缴纳费用}\r\n','','2017-04-25 14:44:54','china','','','','',''),(83,'第八章 附则','','第七十六条 本法自１９８５年４月１日起施行\r\n\r\n\r\n\r\n','\r\n','','2017-04-25 14:45:13','china','','','','','');
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
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'vedio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_implementation_rules`
--

LOCK TABLES `patent_law_implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_implementation_rules` DISABLE KEYS */;
INSERT INTO `patent_law_implementation_rules` VALUES (1,'中华人民共和国专利法实施细则\r\n','','中华人民共和国国务院令（第３６８号）　　\r\n现公布《国务院关于修改〈中华人民共和国专利法实施细则〉的决定》，自２００３年２月１日起施行。\r\n总 理 朱镕基\r\n二００二年十二月二十八日\r\n\r\n\r\n（２００１年６月１５日中华人民共和国国务院令第３０６号公布，根据２００２年１２月２８日《国务院关于修改〈中华人民共和国专利法实施细则〉的决定》修订）\r\n\r\n','\r\n','','2017-04-25 15:03:06','china','','','','',''),(2,'第一章 总 则\r\n','','第一章 总 则','\r\n','','2017-04-25 15:04:07','china','','','','',''),(3,'第一章 总 则','','第一条 根据《中华人民共和国专利法》（以下简称专利法），制定本细则。','\r\n','','2017-04-25 15:04:27','china','','','','',''),(4,'第一章 总 则\r \r ','','第二条 专利法所称发明，是指对产品、方法或者其改进所提出的新的技术方案。\r\n 专利法所称实用新型，是指对产品的形状、构造或者其结合所提出的适于实用的新的技术方案。\r\n 专利法所称外观设计，是指对产品的形状、图案或者其结合以及色彩与形状、图案的结合所作出的富有美感并适于工业应用的新设计。\r\n','','','2017-04-25 15:06:20','china','','','','',''),(5,'第一章 总 则	\r\n\r\n\r\n','','第三条 专利法和本细则规定的各种手续，应当以书面形式或者国务院专利行政部门规定的其他形式办理。\r\n','各种手续&&书面形式||规定的其他形式办理','','2017-04-25 15:08:54','china','','','','',''),(6,'第一章 总 则	\r\n\r\n\r\n','','第四条 依照专利法和本细则规定提交的各种文件应当使用中文；国家有统一规定的科技术语的，应当采用规范词；外国人名、地名和科技术语没有统一中文译文的，应当注明原文。\r\n\r\n依照专利法和本细则规定提交的各种证件和证明文件是外文的，国务院专利行政部门认为必要时，可以要求当事人在指定期限内附送中文译文；期满未附送的，视为未提交该证件和证明文件。\r\n','object:国务院专利行政部门\r\ncheck: 中文,用规范词,外国人名、地名和科技术语没有统一中文译文的，应当注明原文。\r\nif(各种证件和证明文件是外文)\r\n{必要时，可以要求当事人在指定期限内附送中文译文；期满未附送的，视为未提交该证件和证明文件。\r\n if(timeout) 视为未提交该证件和证明文件;\r\n}','','2017-04-25 15:11:50','china','','','','',''),(7,'第一章 总 则	\r\n\r\n\r\n','','第五条 向国务院专利行政部门邮寄的各种文件，以寄出的邮戳日为递交日；邮戳日不清晰的，除当事人能够提出证明外，以国务院专利行政部门收到日为递交日。\r\n\r\n    　　国务院专利行政部门的各种文件，可以通过邮寄、直接送交或者其他方式送达当事人。当事人委托专利代理机构的，文件送交专利代理机构；未委托专利代理机构的，文件送交请求书中指明的联系人。\r\n\r\n    　　国务院专利行政部门邮寄的各种文件，自文件发出之日起满15日，推定为当事人收到文件之日。\r\n\r\n    　　根据国务院专利行政部门规定应当直接送交的文件，以交付日为送达日。\r\n\r\n    　　文件送交地址不清，无法邮寄的，可以通过公告的方式送达当事人。自公告之日起满1个月，该文件视为已经送达。\r\n','object:国务院专利行政部门\r\ntime rule:\r\n','','2017-04-25 15:13:09','china','','','','',''),(8,'第一章 总 则	\r\n\r\n\r\n','','第六条 专利法和本细则规定的各种期限的第一日不计算在期限内。期限以年或者月计算的，以其最后一月的相应日为期限届满日；该月无相应日的，以该月最后一日为期限届满日；期限届满日是法定节假日的，以节假日后的第一个工作日为期限届满日。','object:国务院专利行政部门\r\ntime rule:\r\n','','2017-04-25 15:13:46','china','','','','',''),(9,'第一章 总 则	\r\n\r\n\r\n','','第七条 当事人因不可抗拒的事由而延误专利法或者本细则规定的期限或者国务院专利行政部门指定的期限，导致其权利丧失的，自障碍消除之日起２个月内，最迟自期限届满之日起２年内，可以向国务院专利行政部门说明理由并附具有关证明文件，请求恢复权利。\r\n\r\n    　　当事人因正当理由而延误专利法或者本细则规定的期限或者国务院专利行政部门指定的期限，导致其权利丧失的，可以自收到国务院专利行政部门的通知之日起２个月内向国务院专利行政部门说明理由，请求恢复权利。\r\n\r\n    　　当事人请求延长国务院专利行政部门指定的期限的，应当在期限届满前，向国务院专利行政部门说明理由并办理有关手续。\r\n\r\n    　　本条第一款和第二款的规定不适用专利法第二十四条、第二十九条、第四十二条、第六十二条规定的期限','if(因不可抗拒的事由延误&&导致其权利丧失 &&障碍消除之日起２个月内||最迟自期限届满之日起２年内)\r\n&&说明理由 + 具有关证明文件){恢复权利&&办理有关手续}','','2017-04-25 15:17:41','china','','','','',''),(10,'第一章 总 则	\r\n\r\n\r\n','','第八条 发明专利申请涉及国防方面的国家秘密需要保密的，由国防专利机构受理；国务院专利行政部门受理的涉及国防方面的国家秘密需要保密的发明专利申请，应当移交国防专利机构审查，由国务院专利行政部门根据国防专利机构的审查意见作出决定。\r\n\r\n    　　除前款规定的外，国务院专利行政部门受理发明专利申请后，应当将需要进行保密审查的申请转送国务院有关主管部门审查；有关主管部门应当自收到该申请之日起４个月内，将审查结果通知国务院专利行政部门；需要保密的，由国务院专利行政部门按照保密专利申请处理，并通知申请人','if(国防方面的国家秘密需要保密){国防专利机构受理 &&移交国防专利机构审查 }\r\nif(需要进行保密审查){国务院有关主管部门审查&&该申请之日起４个月内，将审查结果通知国务院专利行政部门}\r\nif(需要保密){由国务院专利行政部门按照保密专利申请处理 && 通知申请人}','','2017-04-25 15:20:31','china','','','','',''),(11,'第一章 总 则	\r\n\r\n\r\n','','第九条 专利法第五条所称违反国家法律的发明创造，不包括仅其实施为国家法律所禁止的发明创造。\r\n','','','2017-04-25 15:22:09','china','','','','',''),(12,'第一章 总 则	\r\n\r\n\r\n','','第十条 除专利法第二十八条和第四十二条规定的情形外，专利法所称申请日，有优先权的，指优先权日。\r\n\r\n    　　本细则所称申请日，除另有规定的外，是指专利法第二十八条规定的申请日。\r\n\r\n','','','2017-04-25 15:22:36','china','','','','',''),(13,'第一章 总 则	\r\n\r\n\r\n','','第十一条 专利法第六条所称执行本单位的任务所完成的职务发明创造，是指：\r\n    　　（一）在本职工作中作出的发明创造；\r\n    　　（二）履行本单位交付的本职工作之外的任务所作出的发明创造；\r\n    　　（三）退职、退休或者调动工作后１年内作出的，与其在原单位承担的本职工作或者原单位分配的任务有关的发明创造。\r\n\r\n    　　专利法第六条所称本单位，包括临时工作单位；专利法第六条所称本单位的物质技术条件，是指本单位的资金、设备、零部件、原材料或者不对外公开的技术资料等。\r\n\r\n','if(本职工作中作出的发明创造\r\n||履行本单位交付的本职工作之外的任务所作出的发明创造\r\n||退职、退休或者调动工作后１年内作出的，与其在原单位承担的本职工作或者原单位分配的任务有关的发明创造)\r\n{职务发明创造}\r\n\r\n物质技术条件:是指本单位的资金、设备、零部件、原材料或者不对外公开的技术资料等。','','2017-04-25 15:25:22','china','','','','',''),(14,'第一章 总 则	\r\n\r\n\r\n','','第十二条 专利法所称发明人或者设计人，是指对发明创造的实质性特点作出创造性贡献的人。\r\n在完成发明创造过程中，只负责组织工作的人、为物质技术条件的利用提供方便的人或者从事其他辅助工作的人，不是发明人或者设计人。','if(只负责组织工作的人、为物质技术条件的利用提供方便的人或者从事其他辅助工作的人){不是发明人或者设计人}','','2017-04-25 15:26:17','china','','','','',''),(15,'第一章 总 则	\r\n\r\n\r\n','','第十三条 同样的发明创造只能被授予一项专利。\r\n\r\n    　　依照专利法第九条的规定，两个以上的申请人在同一日分别就同样的发明创造申请专利的，应当在收到国务院专利行政部门的通知后自行协商确定申请人。','if(两个以上的申请人在同一日分别就同样的发明创造申请专利){国务院专利行政部门的通知&& 自行协商确定申请人}','','2017-04-25 15:27:31','china','','','','',''),(16,'第一章 总 则	\r\n\r\n\r\n','','第十四条 中国单位或者个人向外国人转让专利申请权或者专利权的，由国务院对外经济贸易主管部门会同国务院科学技术行政部门批准。\r\n','if(中国单位或者个人向外国人转让专利申请权或者专利权){国务院对外经济贸易主管部门会同国务院科学技术行政部门批准}','','2017-04-25 15:28:17','china','','','','',''),(17,'第一章 总 则	\r\n\r\n\r\n','','第十五条 除依照专利法第十条规定转让专利权外，专利权因其他事由发生转移的，当事人应当凭有关证明文件或者法律文书向国务院专利行政部门办理专利权人变更手续。\r\n\r\n    　　专利权人与他人订立的专利实施许可合同，应当自合同生效之日起３个月内向国务院专利行政部门备案。\r\n','if(专利权因发生转移){当事人应当凭有关证明文件或者法律文书向国务院专利行政部门办理专利权人变更手续}\r\nif(专利权人与他人订立的专利实施许可合同) {应当自合同生效之日起３个月内向国务院专利行政部门备案}','','2017-04-25 15:30:47','china','','','','',''),(18,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二章 专利的申请　　\r\n\r\n','','','2017-04-25 15:31:16','china','','','','',''),(19,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第十六条 以书面形式申请专利的，应当向国务院专利行政部门提交申请文件一式两份。\r\n\r\n    　　以国务院专利行政部门规定的其他形式申请专利的，应当符合规定的要求。\r\n\r\n    　　申请人委托专利代理机构向国务院专利行政部门申请专利和办理其他专利事务的，应当同时提交委托书，写明委托权限。\r\n\r\n    　　申请人有２人以上且未委托专利代理机构的，除请求书中另有声明的外，以请求书中指明的第一申请人为代表人。　　\r\n\r\n','if(以书面形式申请专利){提交申请文件一式两份}\r\nif(委托专利代理机构向国务院专利行政部门申请专利和办理其他专利事务) {应当同时提交委托书，写明委托权限}\r\nif(申请人有>=2人&&未委托专利代理机构&&!请求书中另有声明) {以请求书中指明的第一申请人为代表人}\r\n','','2017-04-25 15:34:41','china','','','','',''),(20,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第十七条 专利法第二十六条第二款所称请求书中的其他事项，是指：\r\n    　　（一）申请人的国籍；\r\n    　　（二）申请人是企业或者其他组织的，其总部所在地的国家；\r\n    　　（三）申请人委托专利代理机构的，应当注明的有关事项；\r\n              申请人未委托专利代理机构的，其联系人的姓名、地址、邮政编码及联系电话；\r\n    　　（四）要求优先权的，应当注明的有关事项；\r\n    　　（五）申请人或者专利代理机构的签字或者盖章；\r\n    　　（六）申请文件清单；\r\n    　　（七）附加文件清单；\r\n    　　（八）其他需要注明的有关事项。','请求书中的其他事项:\r\n国籍, \r\n联系人的姓名、地址、邮政编码及联系电话;\r\n签字或者盖章\r\n申请文件清单\r\n附加文件清单\r\n','','2017-04-25 15:38:08','china','','','','',''),(21,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','　第十八条 发明或者实用新型专利申请的说明书应当写明发明或者实用新型的名称，该名称应当与请求书中的名称一致。说明书应当包括下列内容：\r\n    　　（一）技术领域：写明要求保护的技术方案所属的技术领域；\r\n    　　（二）背景技术：写明对发明或者实用新型的理解、检索、审查有用的背景技术；有可能的，\r\n             并引证反映这些背景技术的文件；\r\n    　　（三）发明内容：写明发明或者实用新型所要解决的技术问题以及解决其技术问题采用的技术方案，并对照现有技术写明发明或者实用新型的有益效果；\r\n    　　（四）附图说明：说明书有附图的，对各幅附图作简略说明；\r\n    　　（五）具体实施方式：详细写明申请人认为实现发明或者实用新型的优选方式；必要时，举例说明；有附图的，对照附图。\r\n    　　发明或者实用新型专利申请人应当按照前款规定的方式和顺序撰写说明书，并在说明书每一部分前面写明标题，除非其发明或者实用新型的性质用其他方式或者顺序撰写能节约说明书的篇幅并使他人能够准确理解其发明或者实用新型。\r\n    　　发明或者实用新型说明书应当用词规范、语句清楚，并不得使用“如权利要求……所述的……”一类的引用语，也不得使用商业性宣传用语。\r\n\r\n    　　发明专利申请包含一个或者多个核苷酸或者氨基酸序列的，说明书应当包括符合国务院专利行政部门规定的序列表。申请人应当将该序列表作为说明书的一个单独部分提交，并按照国务院专利行政部门的规定提交该序列表的计算机可读形式的副本。\r\n\r\n    　　','if(申请的说明书写明发明或者实用新型的名称==请求书中的名称)\r\n\r\n\r\n词规范、语句清楚\r\n','','2017-04-25 15:40:44','china','','','','',''),(22,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第十九条 发明或者实用新型的几幅附图可以绘在一张图纸上，并按照“图１，图２，……”顺序编号排列。\r\n\r\n    　　附图的大小及清晰度，应当保证在该图缩小到三分之二时仍能清晰地分辨出图中的各个细节。\r\n\r\n    　　发明或者实用新型说明书文字部分中未提及的附图标记不得在附图中出现，附图中未出现的附图标记不得在说明书文字部分中提及。申请文件中表示同一组成部分的附图标记应当一致。\r\n\r\n    　　附图中除必需的词语外，不应当含有其他注释。','\r\n\r\n','','2017-04-25 15:41:26','china','','','','',''),(23,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','　第二十条 权利要求书应当说明发明或者实用新型的技术特征，清楚、简要地表述请求保护的范围。\r\n    　　权利要求书有几项权利要求的，应当用阿拉伯数字顺序编号。\r\n    　　权利要求书中使用的科技术语应当与说明书中使用的科技术语一致，可以有化学式或者数学式，但是不得有插图。除绝对必要的外，不得使用“如说明书……部分所述”或者“如图……所示”的用语。\r\n    　　权利要求中的技术特征可以引用说明书附图中相应的标记，该标记应当放在相应的技术特征后并置于括号内，便于理解权利要求。附图标记不得解释为对权利要求的限制。','\r\n\r\n','','2017-04-25 15:41:54','china','','','','',''),(24,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十一条 权利要求书应当有独立权利要求，也可以有从属权利要求。\r\n    　　独立权利要求应当从整体上反映发明或者实用新型的技术方案，记载解决技术问题的必要技术特征。\r\n    　　从属权利要求应当用附加的技术特征，对引用的权利要求作进一步限定。\r\n','\r\n\r\n','','2017-04-25 15:42:19','china','','','','',''),(25,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十二条 发明或者实用新型的独立权利要求应当包括前序部分和特征部分，按照下列规定撰写：\r\n    　　（一）前序部分：写明要求保护的发明或者实用新型技术方案的主题名称和发明或者实用新型主题与最接近的现有技术共有的必要技术特征；\r\n    　　（二）特征部分：使用“其特征是……”或者类似的用语，写明发明或者实用新型区别于最接近的现有技术的技术特征。这些特征和前序部分写明的特征合在一起，限定发明或者实用新型要求保护的范围。\r\n\r\n    　　发明或者实用新型的性质不适于用前款方式表达的，独立权利要求可以用其他方式撰写。\r\n\r\n    　　一项发明或者实用新型应当只有一个独立权利要求，并写在同一发明或者实用新型的从属权利要求之前。\r\n','\r\nif(发明或者实用新型的独立权利要求) {应当包括前序部分+特征部分}','','2017-04-25 15:43:15','china','','','','',''),(26,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十三条 发明或者实用新型的从属权利要求应当包括引用部分和限定部分，按照下列规定撰写：\r\n    　　（一）引用部分：写明引用的权利要求的编号及其主题名称；\r\n    　　（二）限定部分：写明发明或者实用新型附加的技术特征。\r\n\r\n    　　从属权利要求只能引用在前的权利要求。引用两项以上权利要求的多项从属权利要求，只能以择一方式引用在前的权利要求，并不得作为另一项多项从属权利要求的基础。','\r\nif( 发明或者实用新型的从属权利要求){应当包括引用部分和限定部分}','','2017-04-25 15:44:16','china','','','','',''),(27,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十四条 说明书摘要应当写明发明或者实用新型专利申请所公开内容的概要，即写明发明或者实用新型的名称和所属技术领域，并清楚地反映所要解决的技术问题、解决该问题的技术方案的要点以及主要用途。\r\n\r\n    　　说明书摘要可以包含最能说明发明的化学式；有附图的专利申请，还应当提供一幅最能说明该发明或者实用新型技术特征的附图。附图的大小及清晰度应当保证在该图缩小到４厘米×６厘米时，仍能清晰地分辨出图中的各个细节。摘要文字部分不得超过３００个字。摘要中不得使用商业性宣传用语。','\r\n','','2017-04-25 15:45:02','china','','','','',''),(28,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十五条 申请专利的发明涉及新的生物材料，该生物材料公众不能得到，并且对该生物材料的说明不足以使所属领域的技术人员实施其发明的，除应当符合专利法和本细则的有关规定外，申请人还应当办理下列手续：\r\n    　　（一）在申请日前或者最迟在申请日（有优先权的，指优先权日），将该生物材料的样品提交国务院专利行政部门认可的保藏单位保藏，并在申请时或者最迟自申请日起４个月内提交保藏单位出具的保藏证明和存活证明；期满未提交证明的，该样品视为未提交保藏；\r\n    　　（二）在申请文件中，提供有关该生物材料特征的资料；\r\n    　　（三）涉及生物材料样品保藏的专利申请应当在请求书和说明书中写明该生物材料的分类命名（注明拉丁文名称）、保藏该生物材料样品的单位名称、地址、保藏日期和保藏编号；申请时未写明的，应当自申请日起４个月内补正；期满未补正的，视为未提交保藏。\r\n    　　','if(申请专利的发明涉及新的生物材料&&该生物材料公众不能得到){申请人还应当办理下列手续}\r\nif(涉及生物材料样品保藏){请求书和说明书中写明该生物材料的分类命名（注明拉丁文名称）、保藏该生物材料样品的单位名称、地址、保藏日期和保藏编号\r\nif(申请时未写明){应当自申请日起４个月内补正}\r\nif(期满未补正的){视为未提交保藏}\r\n}','','2017-04-25 15:48:26','china','','','','',''),(29,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','　第二十六条 发明专利申请人依照本细则第二十五条的规定保藏生物材料样品的，在发明专利申请公布后，任何单位或者个人需要将该专利申请所涉及的生物材料作为实验目的使用的，应当向国务院专利行政部门提出请求，并写明下列事项：\r\n    　　（一）请求人的姓名或者名称和地址；\r\n    　　（二）不向其他任何人提供该生物材料的保证；\r\n    　　（三）在授予专利权前，只作为实验目的使用的保证。　　','if(保藏生物材料样品&&发明专利申请公布后 &&专利申请所涉及的生物材料作为实验目的使用){应当向国务院专利行政部门提出请求}','','2017-04-25 15:49:51','china','','','','',''),(30,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十七条 依照专利法第二十七条规定提交的外观设计的图片或者照片，不得小于３厘米×８厘米，并不得大于１５厘米×２２厘米。\r\n\r\n    　　同时请求保护色彩的外观设计专利申请，应当提交彩色图片或者照片一式两份。\r\n\r\n    　　申请人应当就每件外观设计产品所需要保护的内容提交有关视图或者照片，清楚地显示请求保护的对象。','','','2017-04-25 15:50:13','china','','','','',''),(31,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十八条 申请外观设计专利的，必要时应当写明对外观设计的简要说明。\r\n    　　外观设计的简要说明应当写明使用该外观设计的产品的设计要点、请求保护色彩、省略视图等情况。简要说明不得使用商业性宣传用语，也不能用来说明产品的性能。','','','2017-04-25 15:50:38','china','','','','',''),(32,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第二十九条 国务院专利行政部门认为必要时，可以要求外观设计专利申请人提交使用外观设计的产品样品或者模型。样品或者模型的体积不得超过３０厘米×３０厘米×３０厘米，重量不得超过１５公斤。易腐、易损或者危险品不得作为样品或者模型提交。\r\n','','','2017-04-25 15:50:51','china','','','','',''),(33,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十条 专利法第二十二条第三款所称已有的技术，是指申请日（有优先权的，指优先权日）前在国内外出版物上公开发表、在国内公开使用或者以其他方式为公众所知的技术，即现有技术。\r\n','现有技术:国内外出版物上公开发表、在国内公开使用或者以其他方式为公众所知的技术','','2017-04-25 15:51:32','china','','','','',''),(34,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十一条 专利法第二十四条第（二）项所称学术会议或者技术会议，是指国务院有关主管部门或者全国性学术团体组织召开的学术会议或者技术会议。\r\n\r\n    　　申请专利的发明创造有专利法第二十四条第（一）项或者第（二）项所列情形的，申请人应当在提出专利申请时声明，并自申请日起２个月内，提交有关国际展览会或者学术会议、技术会议的组织单位出具的有关发明创造已经展出或者发表，以及展出或者发表日期的证明文件。\r\n\r\n    　　申请专利的发明创造有专利法第二十四条第（三）项所列情形的，国务院专利行政部门认为必要时，可以要求申请人在指定期限内提交证明文件。\r\n\r\n    　　申请人未依照本条第二款的规定提出声明和提交证明文件的，或者未依照本条第三款的规定在指定期限内提交证明文件的，其申请不适用专利法第二十四条的规定。','','','2017-04-25 15:51:54','china','','','','',''),(35,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十二条 申请人依照专利法第三十条的规定办理要求优先权手续的，应当在书面声明中写明第一次提出专利申请（以下称在先申请）的申请日、申请号和受理该申请的国家；书面声明中未写明在先申请的申请日和受理该申请的国家的，视为未提出声明。\r\n\r\n    　　要求外国优先权的，申请人提交的在先申请文件副本应当经原受理机关证明；提交的证明材料中，在先申请人的姓名或者名称与在后申请的申请人姓名或者名称不一致的，应当提交优先权转让证明材料；要求本国优先权的，申请人提交的在先申请文件副本应当由国务院专利行政部门制作。','','','2017-04-25 15:52:15','china','','','','',''),(36,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十三条 申请人在一件专利申请中，可以要求一项或者多项优先权；要求多项优先权的，该申请的优先权期限从最早的优先权日起计算。\r\n    　　申请人要求本国优先权，在先申请是发明专利申请的，可以就相同主题提出发明或者实用新型专利申请；在先申请是实用新型专利申请的，可以就相同主题提出实用新型或者发明专利申请。但是，提出后一申请时，在先申请的主题有下列情形之一的，不得作为要求本国优先权的基础：\r\n    　　（一）已经要求外国优先权或者本国优先权的；\r\n    　　（二）已经被授予专利权的；\r\n    　　（三）属于按照规定提出的分案申请的。\r\n    　　申请人要求本国优先权的，其在先申请自后一申请提出之日起即视为撤回。\r\n','','','2017-04-25 15:53:17','china','','','','',''),(37,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十四条 在中国没有经常居所或者营业所的申请人，申请专利或者要求外国优先权的，国务院专利行政部门认为必要时，可以要求其提供下列文件：\r\n    　　（一）国籍证明；\r\n    　　（二）申请人是企业或者其他组织的，其营业所或者总部所在地的证明文件；\r\n    　　（三）申请人的所属国，承认中国单位和个人可以按照该国国民的同等条件，在该国享有专利权、优先权和其他与专利有关的权利的证明文件。','','','2017-04-25 15:53:49','china','','','','',''),(38,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','　第三十五条 依照专利法第三十一条第一款规定，可以作为一件专利申请提出的属于一个总的发明构思的两项以上的发明或者实用新型，应当在技术上相互关联，包含一个或者多个相同或者相应的特定技术特征，其中特定技术特征是指每一项发明或者实用新型作为整体，对现有技术作出贡献的技术特征。\r\n','','','2017-04-25 15:54:17','china','','','','',''),(39,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十六条 专利法第三十一条第二款所称同一类别，是指产品属于分类表中同一小类；成套出售或者使用，是指各产品的设计构思相同，并且习惯上是同时出售、同时使用。\r\n\r\n    　　依照专利法第三十一条第二款规定将两项以上外观设计作为一件申请提出的，应当将各项外观设计顺序编号标在每件使用外观设计产品的视图名称之前。\r\n。\r\n','','','2017-04-25 15:54:43','china','','','','',''),(40,'第二章 专利的申请　　\r\n\r\n\r\n\r\n','','第三十七条 申请人撤回专利申请的，应当向国务院专利行政部门提出声明，写明发明创造的名称、申请号和申请日。\r\n\r\n    　　撤回专利申请的声明在国务院专利行政部门作好公布专利申请文件的印刷准备工作后提出的，申请文件仍予公布；但是，撤回专利申请的声明应当在以后出版的专利公报上予以公告。\r\n','if(申请人撤回专利申请){当向国务院专利行政部门提出声明，写明发明创造的名称、申请号和申请日&&专利公报上予以公告。}\r\n','','2017-04-25 15:56:57','china','','','','',''),(41,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第三章 专利申请的审查和批准　　\r\n','\r\n','','2017-04-25 15:57:22','china','','','','',''),(42,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第三十八条 在初步审查、实质审查、复审和无效宣告程序中，实施审查和审理的人员有下列情形之一的，应当自行回避，当事人或者其他利害关系人可以要求其回避：\r\n    　　（一）是当事人或者其代理人的近亲属的；\r\n    　　（二）与专利申请或者专利权有利害关系的；\r\n    　　（三）与当事人或者其代理人有其他关系，可能影响公正审查和审理的；\r\n    　　（四）专利复审委员会成员曾参与原申请的审查的。\r\n','初步审查->实质审查->复审->无效宣告程','','2017-04-25 15:58:32','china','','','','',''),(43,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第三十九条 国务院专利行政部门收到发明或者实用新型专利申请的请求书、说明书（实用新型必须包括附图）和权利要求书，或者外观设计专利申请的请求书和外观设计的图片或者照片后，应当明确申请日、给予申请号，并通知申请人。\r\n','if(收到:\r\n实用新型专利:请求书、说明书（实用新型必须包括附图）,权利要求书\r\n外观设计专利:请求书,外观设计的图片或者照片，\r\n)\r\n{明确申请日、给予申请号，并通知申请人}\r\n申请日,申请号->申请人','','2017-04-25 16:01:17','china','','','','',''),(44,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十条 专利申请文件有下列情形之一的，国务院专利行政部门不予受理，并通知申请人：\r\n    　　（一）发明或者实用新型专利申请缺少请求书、说明书（实用新型无附图）和权利要求书的，或者外观设计专利申请缺少请求书、图片或者照片的；\r\n    　　（二）未使用中文的；\r\n    　　（三）不符合本细则第一百二十条第一款规定的；\r\n    　　（四）请求书中缺少申请人姓名或者名称及地址的；\r\n    　　（五）明显不符合专利法第十八条或者第十九条第一款的规定的；\r\n    　　（六）专利申请类别（发明、实用新型或者外观设计）不明确或者难以确定的。','if(发明或者实用新型专利&& !请求书||!说明书||!权利要求书)||\r\n外观设计专利&&!(请求书、图片或者照片))\r\n!中文\r\n!申请人姓名或者名称及地址\r\n!(请求书、说明书、权利要求书、附图和摘要应当分别用阿拉伯数字顺序编号)\r\n!(专利法18,19 委托依法设立的专利代理机构办理)','','2017-04-25 16:08:31','china','','','','',''),(45,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十一条 说明书中写有对附图的说明但无附图或者缺少部分附图的，申请人应当在国务院专利行政部门指定的期限内补交附图或者声明取消对附图的说明。申请人补交附图的，以向国务院专利行政部门提交或者邮寄附图之日为申请日；取消对附图的说明的，保留原申请日。','','','2017-04-25 16:09:44','china','','','','',''),(46,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十二条 一件专利申请包括两项以上发明、实用新型或者外观设计的，申请人可以在本细则第五十四条第一款规定的期限届满前，向国务院专利行政部门提出分案申请；但是，专利申请已经被驳回、撤回或者视为撤回的，不能提出分案申请。\r\n\r\n    　　国务院专利行政部门认为一件专利申请不符合专利法第三十一条和本细则第三十五条或者第三十六条的规定的，应当通知申请人在指定期限内对其申请进行修改；申请人期满未答复的，该申请视为撤回。\r\n\r\n    　　分案的申请不得改变原申请的类别。','','','2017-04-25 16:10:11','china','','','','',''),(47,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十三条 依照本细则第四十二条规定提出的分案申请，可以保留原申请日，享有优先权的，可以保留优先权日，但是不得超出原申请公开的范围。\r\n    　　分案申请应当依照专利法及本细则的规定办理有关手续。\r\n    　　分案申请的请求书中应当写明原申请的申请号和申请日。提交分案申请时，申请人应当提交原申请文件副本；原申请享有优先权的，并应当提交原申请的优先权文件副本。','分案申请应当依照专利法及本细则的规定办理有关手续','','2017-04-25 16:10:36','china','','','','',''),(48,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十四条 专利法第三十四条和第四十条所称初步审查，是指审查专利申请是否具备专利法第二十六条或者第二十七条规定的文件和其他必要的文件，这些文件是否符合规定的格式，并审查下列各项：\r\n\r\n    　　（一）发明专利申请是否明显属于专利法第五条、第二十五条的规定，或者不符合专利法第十八条、第十九条第一款的规定，或者明显不符合专利法第三十一条第一款、第三十三条、本细则第二条第一款、第十八条、第二十条的规定；\r\n\r\n    　　（二）实用新型专利申请是否明显属于专利法第五条、第二十五条的规定，或者不符合专利法第十八条、第十九条第一款的规定，或者明显不符合专利法第二十六条第三款、第四款、第三十一条第一款、第三十三条、本细则第二条第二款、第十三条第一款、第十八条至第二十三条、第四十三条第一款的规定，或者依照专利法第九条规定不能取得专利权；\r\n\r\n    　　（三）外观设计专利申请是否明显属于专利法第五条的规定，或者不符合专利法第十八条、第十九条第一款的规定，或者明显不符合专利法第三十一条第二款、第三十三条、本细则第二条第三款、第十三条第一款、第四十三条第一款的规定，或者依照专利法第九条规定不能取得专利权。\r\n\r\n    　　国务院专利行政部门应当将审查意见通知申请人，要求其在指定期限内陈述意见或者补正；申请人期满未答复的，其申请视为撤回。申请人陈述意见或者补正后，国务院专利行政部门仍然认为不符合前款所列各项规定的，应当予以驳回。\r\n','if(发明专利申请) checkitem:5,25,18,19,31.1,33, 细则:2.1,18,20\r\nif(实用新型专利) checkitem:5,25,18,19.1,26.3.4 ,31.1,33, 细则:2.2 13.1,18-23,\r\nif(外观设计专利) checkitem ...','','2017-04-25 16:18:06','china','','','','',''),(49,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十五条 除专利申请文件外，申请人向国务院专利行政部门提交的与专利申请有关的其他文件，有下列情形之一的，视为未提交：\r\n    　　（一）未使用规定的格式或者填写不符合规定的；\r\n    　　（二）未按照规定提交证明材料的。\r\n    　　国务院专利行政部门应当将视为未提交的审查意见通知申请人。','','','2017-04-25 16:19:01','china','','','','',''),(50,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十六条 申请人请求早日公布其发明专利申请的，应当向国务院专利行政部门声明。国务院专利行政部门对该申请进行初步审查后，除予以驳回的外，应当立即将申请予以公布。\r\n','','','2017-04-25 16:19:24','china','','','','',''),(51,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十七条 申请人依照专利法第二十七条的规定写明使用外观设计的产品及其所属类别时，应当使用国务院专利行政部门公布的外观设计产品分类表。未写明使用外观设计的产品所属类别或者所写的类别不确切的，国务院专利行政部门可以予以补充或者修改。\r\n\r\n','','','2017-04-25 16:19:45','china','','','','',''),(52,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十八条 自发明专利申请公布之日起至公告授予专利权之日前，任何人均可以对不符合专利法规定的专利申请向国务院专利行政部门提出意见，并说明理由。\r\n\r\n','','','2017-04-25 16:20:04','china','','','','',''),(53,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第四十九条 发明专利申请人因有正当理由无法提交专利法第三十六条规定的检索资料或者审查结果资料的，应当向国务院专利行政部门声明，并在得到有关资料后补交。\r\n\r\n','','','2017-04-25 16:20:23','china','','','','',''),(54,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第五十条 国务院专利行政部门依照专利法第三十五条第二款的规定对专利申请自行进行审查时，应当通知申请人。\r\n\r\n\r\n','','','2017-04-25 16:20:49','china','','','','',''),(55,'第三章 专利申请的审查和批准　　\r\n\r\n\r\n\r\n','','第五十一条 发明专利申请人在提出实质审查请求时以及在收到国务院专利行政部门发出的发明专利申请进入实质审查阶段通知书之日起的３个月内，可以对发明专利申请主动提出修改。\r\n\r\n    　　实用新型或者外观设计专利申请人自申请日起２个月内，可以对实用新型或者外观设计专利申请主动提出修改。\r\n\r\n    　　申请人在收到国务院专利行政部门发出的审查意见通知书后对专利申请文件进行修改的，应当按照通知书的要求进行修改。\r\n\r\n    　　国务院专利行政部门可以自行修改专利申请文件中文字和符号的明显错误。国务院专利行政部门自行修改的，应当通知申请人。\r\n\r\n\r\n','','','2017-04-25 16:21:08','china','','','','',''),(56,'第三章 专利申请的审查和批准','','第五十二条 发明或者实用新型专利申请的说明书或者权利要求书的修改部分，除个别文字修改或者增删外，应当按照规定格式提交替换页。外观设计专利申请的图片或者照片的修改，应当按照规定提交替换页','if(exist modify) check style \r\n{应当按照规定格式提交替换页。外观设计专利申请的图片或者照片的修改，应当按照规定提交替换页。}	','','2017-06-01 18:55:12','china','','','','',''),(57,'第三章 专利申请的审查和批准','','第五十三条 依照专利法第三十八条的规定，发明专利申请经实质审查应当予以驳回的情形是指： 　　\r\n（一）申请不符合本细则第二条第一款规定的； 　　\r\n（二）申请属于专利法第五条、第二十五条的规定，\r\n      或者不符合专利法第二十二条、本细则第十三条第一款、第二十条第一款、第二十一条第二款的规定，\r\n      或者依照专利法第九条规定不能取得专利权的； 　　\r\n（三）申请不符合专利法第二十六条第三款、第四款或者第三十一条第一款的规定的； 　　\r\n（四）申请的修改不符合专利法第三十三条规定，或者分案的申请不符合本细则第四十三条第一款规定的。','if(第五十三条 1,2,3,4) reject {予以驳回}','','2017-06-01 18:56:20','china','','','','',''),(58,'第三章 专利申请的审查和批准','','第五十四条 国务院专利行政部门发出授予专利权的通知后，申请人应当自收到通知之日起２个月内办理登记手续。申请人按期办理登记手续的，国务院专利行政部门应当授予专利权，颁发专利证书，并予以公告。 　　\r\n\r\n期满未办理登记手续的，视为放弃取得专利权的权利','if(get 授予专利权的通知) regist\r\n {申请人应当自收到通知之日起２个月内办理登记手续} \r\n\r\nif(time >2mon) give up\r\n 期满未办理登记手续的，视为放弃取得专利权的权利','','2017-06-01 18:57:15','china','','','','',''),(59,'第三章 专利申请的审查和批准','','第五十五条 授予实用新型专利权的决定公告后，实用新型专利权人可以请求国务院专利行政部门作出实用新型专利检索报告。 　　\r\n请求作出实用新型专利检索报告的，应当提交请求书，并指明实用新型专利的专利号。每项请求应当限于一项实用新型专利。 　　\r\n国务院专利行政部门收到作出实用新型专利检索报告的请求后，应当进行审查。\r\n请求不符合规定要求的，应当通知请求人在指定期限内补正。','if(request 实用新型专利检索报告) \r\n{应当提交请求书，并指明实用新型专利的专利号} goto Review','','2017-06-01 18:57:57','china','','','','',''),(60,'第三章 专利申请的审查和批准','','第五十六条 经审查，实用新型专利检索报告请求书符合规定的，国务院专利行政部门应当及时作出实用新型专利检索报告。\r\n\r\n经检索，国务院专利行政部门认为所涉及的实用新型专利不符合专利法第二十二条关于新颖性或者创造性的规定的，应当引证对比文件，说明理由，并附具所引证对比文件的复印件。','if(实用新型专利检索报告请求书符合规定)\r\n{国务院专利行政部门应当及时作出实用新型专利检索报告}\r\n\r\nif(实用新型专利不符合专利法第二十二条关于新颖性或者创造性的规定)\r\n{应当引证对比文件，说明理由，并附具所引证对比文件的复印件}\r\n','','2017-06-01 19:02:52','china','','','','',''),(61,'第三章 专利申请的审查和批准','','第五十七条 国务院专利行政部门对专利公告、专利文件中出现的错误，一经发现，应当及时更正，并对所作更正予以公告。','if(专利公告、专利文件中出现的错误，一经发现)\r\n{应当及时更正+并对所作更正予以公告}\r\n\r\n','','2017-06-01 19:03:50','china','','','','',''),(62,'第四章 专利申请的复审与专利权的无效宣告','','第五十八条 专利复审委员会由国务院专利行政部门指定的技术专家和法律专家组成，主任委员由国务院专利行政部门负责人兼任。\r\n','\r\n\r\n','','2017-06-01 19:04:43','china','','','','',''),(63,'第四章 专利申请的复审与专利权的无效宣告','','第五十九条 依照专利法第四十一条的规定向专利复审委员会请求复审的，应当提交复审请求书，说明理由，必要时还应当附具有关证据。\r\n\r\n    　　复审请求书不符合规定格式的，复审请求人应当在专利复审委员会指定的期限内补正；期满未补正的，该复审请求视为未提出。\r\n','if(向专利复审委员会请求复审)\r\n{应当提交复审请求书，说明理由，必要时还应当附具有关证据}\r\n\r\nif(复审请求书不符合规定格式)\r\n{\r\n  复审请求人应当在专利复审委员会指定的期限内补正；\r\n  if(timeout)期满未补正的，该复审请求视为未提出。\r\n}','','2017-06-01 19:06:32','china','','','','',''),(64,'第四章 专利申请的复审与专利权的无效宣告','','第六十条 请求人在提出复审请求或者在对专利复审委员会的复审通知书作出答复时，可以修改专利申请文件；但是，修改应当仅限于消除驳回决定或者复审通知书指出的缺陷。\r\n\r\n    　　修改的专利申请文件应当提交一式两份。','check item:修改的专利申请文件应当提交一式两份','','2017-06-01 19:07:51','china','','','','',''),(65,'第四章 专利申请的复审与专利权的无效宣告','','第六十一条 专利复审委员会应当将受理的复审请求书转交国务院专利行政部门原审查部门进行审查。原审查部门根据复审请求人的请求，同意撤销原决定的，专利复审委员会应当据此作出复审决定，并通知复审请求人。\r\n','if(受理的复审请求)\r\n{复审请求书转交国务院专利行政部门原审查部门进行审查}\r\nif(同意撤销原决定的)action :专利复审委员会应当据此作出复审决定，并通知复审请求人。','','2017-06-01 19:11:01','china','','','','',''),(66,'第四章 专利申请的复审与专利权的无效宣告','','第六十二条 专利复审委员会进行复审后，认为复审请求不符合专利法和本细则有关规定的，应当通知复审请求人，要求其在指定期限内陈述意见。期满未答复的，该复审请求视为撤回；经陈述意见或者进行修改后，专利复审委员会认为仍不符合专利法和本细则有关规定的，应当作出维持原驳回决定的复审决定。\r\n\r\n    　　专利复审委员会进行复审后，认为原驳回决定不符合专利法和本细则有关规定的，或者认为经过修改的专利申请文件消除了原驳回决定指出的缺陷的，应当撤销原驳回决定，由原审查部门继续进行审查程序。','if(受理的复审请求-不符合专利法和本细则有关规定)\r\n{要求其在指定期限内陈述意见}\r\nif(timeout)action :期满未答复的，该复审请求视为撤回。\r\nelse if(仍不符合专利法和本细则有关规定)\r\n{应当作出维持原驳回决定的复审决定。}\r\n\r\nif(驳回决定不符合专利法和本细则有关规定)\r\n{应当撤销原驳回决定，由原审查部门继续进行审查程序。}','','2017-06-01 19:15:15','china','','','','',''),(67,'第四章 专利申请的复审与专利权的无效宣告','','第六十三条 复审请求人在专利复审委员会作出决定前，可以撤回其复审请求。\r\n\r\n    　　复审请求人在专利复审委员会作出决定前撤回其复审请求的，复审程序终止。','if(撤回其复审请求)复审程序终止\r\n','','2017-06-01 19:16:38','china','','','','',''),(68,'第四章 专利申请的复审与专利权的无效宣告','','第六十四条 依照专利法第四十五条的规定，请求宣告专利权无效或者部分无效的，应当向专利复审委员会提交专利权无效宣告请求书和必要的证据一式两份。无效宣告请求书应当结合提交的所有证据，具体说明无效宣告请求的理由，并指明每项理由所依据的证据。\r\n\r\n    　　前款所称无效宣告请求的理由，是指被授予专利的发明创造不符合专利法第二十二条、第二十三条、第二十六条第三款、第四款、第三十三条或者本细则第二条、第十三条第一款、第二十条第一款、第二十一条第二款的规定，或者属于专利法第五条、第二十五条的规定，或者依照专利法第九条规定不能取得专利权。','if(请求宣告专利权无效或者部分无效)\r\n{应当向专利复审委员会提交专利权无效宣告请求书和必要的证据一式两份。\r\n无效宣告请求书应当结合提交的所有证据，具体说明无效宣告请求的理由，并指明每项理由所依据的证据。\r\n}\r\n无效理由{第二十二条、第二十三条、第二十六条第三款、第四款、第三十三条或者本细则第二条、第十三条第一款、第二十条第一款、第二十一条第二款的规定，或者属于专利法第五条、第二十五条的规定，或者依照专利法第九条规定不能取得专利权。}','','2017-06-01 19:18:45','china','','','','',''),(69,'第四章 专利申请的复审与专利权的无效宣告','','　第六十五条 专利权无效宣告请求书不符合本细则第六十四条规定的，专利复审委员会不予受理。\r\n\r\n    　　在专利复审委员会就无效宣告请求作出决定之后，又以同样的理由和证据请求无效宣告的，专利复审委员会不予受理。\r\n\r\n    　　以授予专利权的外观设计与他人在先取得的合法权利相冲突为理由请求宣告外观设计专利权无效，但是未提交生效的能够证明权利冲突的处理决定或者判决的，专利复审委员会不予受理。\r\n\r\n    　　专利权无效宣告请求书不符合规定格式的，无效宣告请求人应当在专利复审委员会指定的期限内补正；期满未补正的，该无效宣告请求视为未提出。','if(x) 专利复审委员会不予受理\r\n\r\n','','2017-06-01 19:20:07','china','','','','',''),(70,'第四章 专利申请的复审与专利权的无效宣告','','第六十六条 在专利复审委员会受理无效宣告请求后，请求人可以在提出无效宣告请求之日起１个月内增加理由或者补充证据。逾期增加理由或者补充证据的，专利复审委员会可以不予考虑。','if(add 增加理由或者补充证据 )  \r\n\r\nif(timeout)专利复审委员会可以不予考虑','','2017-06-01 19:22:33','china','','','','',''),(71,'第四章 专利申请的复审与专利权的无效宣告','','    　　第六十七条 专利复审委员会应当将专利权无效宣告请求书和有关文件的副本送交专利权人，要求其在指定的期限内陈述意见。\r\n\r\n    　　专利权人和无效宣告请求人应当在指定期限内答复专利复审委员会发出的转送文件通知书或者无效宣告请求审查通知书；期满未答复的，不影响专利复审委员会审理。','if(无效宣告 )  \r\n{将专利权无效宣告请求书和有关文件的副本送交专利权人要求其在指定的期限内陈述意见。\r\n}\r\n\r\naction:答复专利复审委员会发出的转送文件通知书或者无效宣告请求审查通知书\r\nif(timeout)不影响专利复审委员会审理','','2017-06-01 19:24:55','china','','','','',''),(72,'第四章 专利申请的复审与专利权的无效宣告','','　第六十八条 在无效宣告请求的审查过程中，发明或者实用新型专利的专利权人可以修改其权利要求书，但是不得扩大原专利的保护范围。\r\n\r\n    　　发明或者实用新型专利的专利权人不得修改专利说明书和附图，外观设计专利的专利权人不得修改图片、照片和简要说明。',' if(发明或者实用新型专利的专利权人可以修改其权利要求书)\r\n{不得扩大原专利的保护范围。\r\n发明或者实用新型专利的专利权人不得修改专利说明书和附图，外观设计专利的专利权人不得修改图片、照片和简要说明\r\n}','','2017-06-01 19:26:11','china','','','','',''),(73,'第四章 专利申请的复审与专利权的无效宣告','','第六十九条 专利复审委员会根据当事人的请求或者案情需要，可以决定对无效宣告请求进行口头审理。\r\n\r\n    　　专利复审委员会决定对无效宣告请求进行口头审理的，应当向当事人发出口头审理通知书，告知举行口头审理的日期和地点。当事人应当在通知书指定的期限内作出答复。\r\n\r\n    　　无效宣告请求人对专利复审委员会发出的口头审理通知书在指定的期限内未作答复，并且不参加口头审理的，其无效宣告请求视为撤回；专利权人不参加口头审理的，可以缺席审理。',' if(决定对无效宣告请求进行口头审理)\r\n{应当向当事人发出口头审理通知书，告知举行口头审理的日期和地点。当事人应当在通知书指定的期限内作出答复。\r\n}\r\n if(无效宣告请求人对专利复审委员会发出的口头审理通知书在指定的期限内未作答复，并且不参加口头审理的)撤回\r\nif(专利权人不参加口头审理的)，可以缺席审理。','','2017-06-01 19:28:04','china','','','','',''),(74,'第四章 专利申请的复审与专利权的无效宣告','','第七十条 在无效宣告请求审查程序中，专利复审委员会指定的期限不得延长。','','','2017-06-01 19:28:31','china','','','','',''),(75,'第四章 专利申请的复审与专利权的无效宣告','','第七十一条 专利复审委员会对无效宣告的请求作出决定前，无效宣告请求人可以撤回其请求。\r\n\r\n    　　无效宣告请求人在专利复审委员会作出决定之前撤回其请求的，无效宣告请求审查程序终止。　　\r\n','if(无效宣告请求人在专利复审委员会作出决定之前撤回其请求) 无效宣告请求审查程序终止','','2017-06-01 19:34:50','china','','','','',''),(76,'第五章 专利实施的强制许可','','　　第七十二条 自专利权被授予之日起满３年后，任何单位均可以依照专利法第四十八条的规定，请求国务院专利行政部门给予强制许可。\r\n\r\n    　　请求强制许可的，应当向国务院专利行政部门提交强制许可请求书，说明理由并附具有关证明文件各一式两份。\r\n\r\n    　　国务院专利行政部门应当将强制许可请求书的副本送交专利权人，专利权人应当在国务院专利行政部门指定的期限内陈述意见；期满未答复的，不影响国务院专利行政部门作出关于强制许可的决定。\r\n\r\n    　　国务院专利行政部门作出的给予实施强制许可的决定，应当限定强制许可实施主要是为供应国内市场的需要；强制许可涉及的发明创造是半导体技术的，强制许可实施仅限于公共的非商业性使用，或者经司法程序或者行政程序确定为反竞争行为而给予救济的使用。','if(time 3year+请求给予强制)\r\n{强制许可请求书，说明理由并附具有关证明文件各一式两份}\r\n国务院专利行政部门应当将强制许可请求书的副本送交专利权人','','2017-06-01 21:13:05','china','','','','',''),(77,'第五章 专利实施的强制许可','','第七十三条 依照专利法第五十四条的规定，请求国务院专利行政部门裁决使用费数额的，当事人应当提出裁决请求书，并附具双方不能达成协议的证明文件。国务院专利行政部门应当自收到请求书之日起３个月内作出裁决，并通知当事人。\r\n','','','2017-06-01 21:14:13','china','','','','',''),(78,'第六章 对职务发明创造的发明人或者设计人的奖励和报酬　　\r\n','','第七十四条 被授予专利权的国有企业事业单位应当自专利权公告之日起３个月内发给发明人或者设计人奖金。一项发明专利的奖金最低不少于２０００元；一项实用新型专利或者外观设计专利的奖金最低不少于５００元。\r\n\r\n    　　由于发明人或者设计人的建议被其所属单位采纳而完成的发明创造，被授予专利权的国有企业事业单位应当从优发给奖金。\r\n\r\n    　　发给发明人或者设计人的奖金，企业可以计入成本，事业单位可以从事业费中列支。\r\n','if(职务发明创造)\r\n{一项发明专利的奖金最低不少于２０００元；\r\n一项实用新型专利或者外观设计专利的奖金最低不少于５００元。\r\n被授予专利权的国有企业事业单位应当从优发给奖金。\r\n发给发明人或者设计人的奖金，企业可以计入成本，事业单位可以从事业费中列支。\r\n}','','2017-06-01 21:17:05','china','','','','',''),(79,'第六章 对职务发明创造的发明人或者设计人的奖励和报酬　　\r\n','','第七十五条 被授予专利权的国有企业事业单位在专利权有效期限内，实施发明创造专利后，每年应当从实施该项发明或者实用新型专利所得利润纳税后提取不低于２％或者从实施该项外观设计专利所得利润纳税后提取不低于０．２％，作为报酬支付发明人或者设计人；或者参照上述比例，发给发明人或者设计人一次性报酬。\r\n','if(职务发明创造)\r\n{每年应当从实施该项发明或者实用新型专利所得利润纳税后提取不低于２％或者从实施该项外观设计专利所得利润纳税后提取不低于０．２％，作为报酬支付发明人或者设计人；或者参照上述比例，发给发明人或者设计人一次性报酬。\r\n}','','2017-06-01 21:18:12','china','','','','',''),(80,'第六章 对职务发明创造的发明人或者设计人的奖励和报酬　　\r\n','','第七十六条 被授予专利权的国有企业事业单位许可其他单位或者个人实施其专利的，应当从许可实施该项专利收取的使用费纳税后提取不低于１０％作为报酬支付发明人或者设计人。\r\n','if(职务发明创造)\r\n{应当从许可实施该项专利收取的使用费纳税后提取不低于１０％作为报酬支付发明人或者设计人。\r\n}','','2017-06-01 21:18:36','china','','','','',''),(81,'第六章 对职务发明创造的发明人或者设计人的奖励和报酬　　\r\n','','第七十七条 本章关于奖金和报酬的规定，中国其他单位可以参照执行。\r\n','','','2017-06-01 21:19:01','china','','','','',''),(82,'第七章 专利权的保护','','第七十八条 专利法和本细则所称管理专利工作的部门，是指由省、自治区、直辖市人民政府以及专利管理工作量大又有实际处理能力的设区的市人民政府设立的管理专利工作的部门。\r\n','','','2017-06-01 21:22:34','china','','','','',''),(83,'第七章 专利权的保护','','第七十九条 除专利法第五十七条规定的外，管理专利工作的部门应当事人请求，还可以对下列专利纠纷进行调解：\r\n\r\n    　　（一）专利申请权和专利权归属纠纷；\r\n\r\n    　　（二）发明人、设计人资格纠纷；\r\n\r\n    　　（三）职务发明的发明人、设计人的奖励和报酬纠纷；\r\n\r\n    　　（四）在发明专利申请公布后专利权授予前使用发明而未支付适当费用的纠纷。\r\n\r\n    　　对于前款第（四）项所列的纠纷，专利权人请求管理专利工作的部门调解，应当在专利权被授予之后提出。\r\n','if(纠纷进行调解)\r\ncase :1-4','','2017-06-01 22:20:47','china','','','','',''),(84,'第七章 专利权的保护','','第八十条 国务院专利行政部门应当对管理专利工作的部门处理和调解专利纠纷进行业务指导。','','','2017-06-01 22:35:45','china','','','','',''),(85,'第七章 专利权的保护','','第八十一条 当事人请求处理或者调解专利纠纷的，由被请求人所在地或者侵权行为地的管理专利工作的部门管辖。 \r\n　　\r\n两个以上管理专利工作的部门都有管辖权的专利纠纷，当事人可以向其中一个管理专利工作的部门提出请求； \r\n当事人向两个以上有管辖权的管理专利工作的部门提出请求的，由最先受理的管理专利工作的部门管辖。 　　\r\n\r\n管理专利工作的部门对管辖权发生争议的，由其共同的上级人民政府管理专利工作的部门指定管辖； \r\n无共同上级人民政府管理专利工作的部门的，由国务院专利行政部门指定管辖。','if(当事人请求处理或者调解专利纠纷) {由被请求人所在地或者侵权行为地的管理专利工作的部门管辖} \r\nif(当事人向两个以上有管辖权的管理专利工作的部门提出请求)由最先受理的管理专利工作的部门管辖。\r\nif(管理专利工作的部门对管辖权发生争议) 由其共同的上级人民政府管理专利工作的部门指定管辖\r\nif(无共同上级人民政府管理专利工作的部门)由国务院专利行政部门指定管辖\r\n','','2017-06-01 22:47:37','china','','','','',''),(86,'第七章 专利权的保护','','第八十二条 在处理专利侵权纠纷过程中，被请求人提出无效宣告请求并被专利复审委员会受理的，\r\n可以请求管理专利工作的部门中止处理。 　　\r\n\r\n管理专利工作的部门认为被请求人提出的中止理由明显不能成立的，可以不中止处理。','if(管理专利工作的部门认为被请求人提出的中止理由明显不能成立的)可以不中止处理\r\n','','2017-06-01 22:48:13','china','','','','',''),(87,'第七章 专利权的保护','','第八十三条 专利权人依照专利法第十五条的规定，在其专利产品或者该产品的包装上标明专利标记的，应当按照国务院专利行政部门规定的方式予以标明。','if(在其专利产品或者该产品的包装上标明专利标记)应当按照国务院专利行政部门规定的方式予以标明。\r\n','','2017-06-01 22:49:51','china','','','','',''),(88,'第七章 专利权的保护','',' 　　第八十四条 下列行为属于假冒他人专利的行为：\r\n\r\n    　　（一）未经许可，在其制造或者销售的产品、产品的包装上标注他人的专利号；\r\n\r\n    　　（二）未经许可，在广告或者其他宣传材料中使用他人的专利号，使人将所涉及的技术误认为是他人的专利技术；\r\n\r\n    　　（三）未经许可，在合同中使用他人的专利号，使人将合同涉及的技术误认为是他人的专利技术；\r\n\r\n    　　（四）伪造或者变造他人的专利证书、专利文件或者专利申请文件。','if(case 1234)属于假冒他人专利的行为\r\n','','2017-06-01 22:50:50','china','','','','',''),(89,'第七章 专利权的保护','','    　　第八十五条 下列行为属于以非专利产品冒充专利产品、以非专利方法冒充专利方法的行为：\r\n\r\n    　　（一）制造或者销售标有专利标记的非专利产品；\r\n\r\n    　　（二）专利权被宣告无效后，继续在制造或者销售的产品上标注专利标记；\r\n\r\n    　　（三）在广告或者其他宣传材料中将非专利技术称为专利技术；\r\n\r\n    　　（四）在合同中将非专利技术称为专利技术；\r\n\r\n    　　（五）伪造或者变造专利证书、专利文件或者专利申请文件。','if(case 12345)属于以非专利产品冒充专利产品、以非专利方法冒充专利方法的行为\r\n','','2017-06-01 22:51:48','china','','','','',''),(90,' 第七章 专利权的保护','','第八十六条 当事人因专利申请权或者专利权的归属发生纠纷，已请求管理专利工作的部门处理或者向人民法院起诉的，可以请求国务院专利行政部门中止有关程序。\r\n\r\n    　　依照前款规定请求中止有关程序的，应当向国务院专利行政部门提交请求书，并附具管理专利工作的部门或者人民法院的有关受理文件副本。\r\n\r\n    　　在管理专利工作的部门作出的处理决定或者人民法院作出的判决生效后，当事人应当向国务院专利行政部门办理恢复有关程序的手续。\r\n自请求中止之日起１年内，有关专利申请权或者专利权归属的纠纷未能结案，需要继续中止有关程序的，请求人应当在该期限内请求延长中止。期满未请求延长的，国务院专利行政部门自行恢复有关程序。','if(已请求管理专利工作的部门处理或者向人民法院起诉&&请求国务院专利行政部门中止有关程序)\r\n{应当向国务院专利行政部门提交请求书，并附具管理专利工作的部门或者人民法院的有关受理文件副本}\r\n\r\nif(在管理专利工作的部门作出的处理决定或者人民法院作出的判决生效后)\r\n{当事人应当向国务院专利行政部门办理恢复有关程序的手续。}\r\n\r\nif(需要继续中止有关程序) 请求人应当在该期限内请求延长中止。期满未请求延长的，国务院专利行政部门自行恢复有关程序。\r\n','','2017-06-01 23:11:34','china','','','','',''),(91,' 第七章 专利权的保护','','第八十七条 人民法院在审理民事案件中裁定对专利权采取保全措施的，国务院专利行政部门在协助执行时中止被保全的专利权的有关程序。保全期限届满，人民法院没有裁定继续采取保全措施的，国务院专利行政部门自行恢复有关程序。　　\r\n','if(人民法院在审理民事案件中裁定对专利权采取保全措施)\r\n国务院专利行政部门在协助执行时中止被保全的专利权的有关程序。\r\n\r\nif(保全期限届满)人民法院没有裁定继续采取保全措施的，国务院专利行政部门自行恢复有关程序。\r\n','','2017-06-01 23:12:57','china','','','','','');
/*!40000 ALTER TABLE `patent_law_implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `create`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `create` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `create`;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `idaction` int(11) NOT NULL AUTO_INCREMENT,
  `sql` varchar(45) NOT NULL,
  `who` varchar(45) NOT NULL COMMENT 'who create the patch',
  `time` varchar(45) NOT NULL DEFAULT 'NOW()',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  UNIQUE KEY `idpatch_UNIQUE` (`idaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='run action';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `create`
--

DROP TABLE IF EXISTS `create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `create` (
  `idcreate` int(11) NOT NULL AUTO_INCREMENT,
  `db` varchar(45) NOT NULL,
  `tab` varchar(45) NOT NULL,
  `field` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `key` varchar(45) DEFAULT NULL,
  `default` varchar(45) DEFAULT NULL,
  `extra` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `who` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL DEFAULT 'NOW()',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcreate`),
  UNIQUE KEY `idcreate_UNIQUE` (`idcreate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='create database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `create`
--

LOCK TABLES `create` WRITE;
/*!40000 ALTER TABLE `create` DISABLE KEYS */;
/*!40000 ALTER TABLE `create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table` (
  `idtable` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `source` text NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtable`,`name`),
  UNIQUE KEY `idtable_UNIQUE` (`idtable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='store table sql';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Current Database: `blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','facebook','website','http://www.facebook.com/','img/facebook.jpg','2018-01-10 14:27:07','normal','china',0,'china'),(2,'hunter','twitter','website','http://twitter.com/','img/twitter.jpg','2018-01-10 14:27:45','normal','china',0,'china'),(3,'hunter','weibo','website','http://weibo.com','img/sina_blog.jpg','2018-01-10 14:29:16','normal','china',0,'china'),(4,'hunter','qq_blog','website','http://blog.qq.com/','img/qq_blog.jpg','2018-01-10 14:29:52','normal','china',0,'china'),(5,'hunter','sohu_blog','website','http://t.sohu.com/','img/sohu_blog.jpg','2018-01-10 14:32:21','normal','china',0,'china'),(6,'hunter','csdn','website','http://blog.csdn.net/','img/csdn.jpg','2018-01-10 14:36:10','normal','china',0,'china'),(7,'hunter','wangyi','website','http://blog.163.com/','img/163_blog.jpg','2018-01-10 14:37:32','normal','china',0,'china'),(8,'hunter','tianya','website','http://blog.tianya.cn/','img/tianya.jpg','2018-01-11 16:33:25','normal','utf8',94,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `pc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pc`;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','HP','website','http://www8.hp.com','img/hp.jpg','2018-01-19 10:22:10','normal','utf8',100,'china'),(2,'hunter','DELL','website','http://www.dell.com','img/dell.jpg','2018-01-19 10:23:31','normal','utf8',99,'china'),(3,'hunter','ASUS','website','https://www.asus.com','img/asus.jpg','2018-01-19 10:25:44','normal','utf8',98,'china'),(4,'hunter','apple','website','https://www.apple.com','img/apple.jpg','2018-01-19 10:26:33','normal','utf8',97,'china'),(5,'hunter','lenovo','website','https://www.lenovo.com.cn/','img/lenovo.jpg','2018-01-19 10:28:38','normal','utf8',96,'china'),(6,'hunter','acer','website','https://www.acer.com','img/acer.jpg','2018-01-19 10:37:00','normal','utf8',95,'china'),(7,'hunter','toshiba','website','http://www.toshiba.com.cn/','img/toshiba.jpg','2018-01-19 10:41:23','normal','utf8',94,'china'),(8,'hunter','samsung','website','http://www.samsung.com','img/samsung.jpg','2018-01-19 10:43:14','normal','utf8',93,'china'),(9,'hunter','tongfangpc','website','http://www.tongfangpc.com/','img/tongfangpc.jpg','2018-01-19 10:45:03','normal','utf8',92,'china'),(10,'hunter','hasee','website','http://www.hasee.com','img/hasee.jpg','2018-01-19 10:47:30','normal','utf8',91,'china'),(11,'hunter','haseefujitsu','website','http://www.fujitsu.com','img/fujitsu.jpg','2018-01-19 10:49:26','normal','utf8',90,'china'),(12,'hunter','huawei','website','http://www.huawei.com','img/huawei.png','2018-01-19 10:50:24','normal','utf8',89,'china'),(13,'hunter','mi','website','https://www.mi.com','img/mi.jpg','2018-01-19 10:53:56','normal','utf8',88,'china'),(14,'hunter','sony','website','http://www.sony.com.cn/','img/sony.jpg','2018-01-19 10:59:24','normal','utf8',93,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `template`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `template` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `template`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'patent_sys','深圳市鸿鹏进出口有限公司','website','http://www.szhongpeng.com/','template/img/szhongpeng.jpg','2017-12-26 07:42:01','normal','utf8',0,'china'),(2,'patent_sys','室内专修设计网站参考模板','website','template/Interior-design/index.html','template/img/shineisheji.jpg','2017-12-26 07:47:46','normal','utf8',0,'china'),(3,'patent_sys','台州辰泽自动化设备有限公司','website','http://czautomation.com/','template/img/czautomation.jpg','2017-12-26 07:51:06','normal','utf8',0,'china'),(4,'hunter','runoob','website','https://c.runoob.com/','template/img/runoob.jpg','2017-12-29 16:55:39','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `govwr`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `govwr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `govwr`;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `idfile` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL COMMENT 'name=title+uuid',
  `uuid` varchar(45) NOT NULL DEFAULT 'UUID()',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) NOT NULL COMMENT 'name=./org/author/title+uuid',
  `type` varchar(45) DEFAULT NULL COMMENT 'txt,doc,xml,audio,vedio,pdf ,html,',
  `author` varchar(45) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `org` varchar(45) NOT NULL,
  `where` varchar(45) NOT NULL,
  `md5` varchar(45) NOT NULL COMMENT 'file md5 checksum',
  `compress` tinyint(4) NOT NULL DEFAULT '0',
  `cpsw` varchar(45) DEFAULT NULL COMMENT 'Compress password',
  `secret` int(11) NOT NULL DEFAULT '0' COMMENT 'Secret level',
  `spsw` varchar(45) DEFAULT NULL COMMENT 'Secret level''s password',
  `decrypt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'decrypt =decrypt time +password',
  `status` varchar(45) DEFAULT NULL,
  `introduction` text,
  `remark` text,
  PRIMARY KEY (`idfile`,`uuid`),
  UNIQUE KEY `idfile_UNIQUE` (`idfile`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='government documents';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','facebook','website','http://www.facebook.com/','img/facebook.jpg','2018-01-10 14:27:07','normal','china',0,'china'),(2,'hunter','twitter','website','http://twitter.com/','img/twitter.jpg','2018-01-10 14:27:45','normal','china',0,'china'),(3,'hunter','weibo','website','http://weibo.com','img/sina_test.jpg','2018-01-10 14:29:16','normal','china',0,'china'),(4,'hunter','qq_test','website','http://test.qq.com/','img/qq_test.jpg','2018-01-10 14:29:52','normal','china',0,'china'),(5,'hunter','sohu_test','website','http://t.sohu.com/','img/sohu_test.jpg','2018-01-10 14:32:21','normal','china',0,'china'),(6,'hunter','csdn','website','http://test.csdn.net/','img/csdn.jpg','2018-01-10 14:36:10','normal','china',0,'china'),(7,'hunter','wangyi','website','http://test.163.com/','img/163_test.jpg','2018-01-10 14:37:32','normal','china',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mail`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mail` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mail`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','postfix','website','http://www.postfix.org/','img/postfix.gif','2018-01-15 18:10:32','normal','utf8',100,'china'),(2,'hunter','squirrelmail','website','http://squirrelmail.org/','img/squirrelmail.jpg','2018-01-15 18:15:39','normal','utf8',99,'china'),(3,'hunter','openwebmail','website','http://openwebmail.org/','img/openwebmail.gif','2018-01-15 18:17:50','normal','utf8',99,'china'),(4,'hunter','dovecot','website','https://www.dovecot.org/','img/dovecot.gif','2018-01-15 18:21:12','normal','utf8',98,'china'),(5,'hunter','mailman','website','http://www.list.org/','img/mailman.jpg','2018-01-15 18:24:33','normal','utf8',97,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `translate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `translate` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `translate`;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','google','website','http://translate.google.cn/','img/google.jpg','2018-01-10 17:06:21','normal','china',100,'china'),(2,'hunter','iciba','website','http://www.iciba.com/','img/jinshan.jpg','2018-01-10 17:07:36','normal','china',99,'china'),(3,'hunter','dict.bing','website','http://dict.bing.com.cn/','img/bing.jpg','2018-01-10 17:08:19','normal','china',98,'china'),(4,'hunter','youdao','website','http://fanyi.youdao.com/','img/youdao.jpg','2018-01-10 17:08:53','normal','china',97,'china'),(5,'hunter','chengyu','website','http://chengyu.itlearner.com/','img/proverb.jpg','2018-01-10 17:09:28','normal','china',96,'china'),(6,'hunter','zdic','website','http://www.zdic.net/','img/dictionary.jpg','2018-01-10 17:10:15','normal','china',95,'china'),(7,'hunter','shicimingju','website','http://www.shicimingju.com/','img/poetry.jpg','2018-01-10 17:10:52','normal','china',94,'china'),(8,'hunter','history','website','http://www.lsqn.cn/story/BOOK/','img/history.jpg','2018-01-10 17:11:25','normal','china',93,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Current Database: `stock`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stock` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `stock`;

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
-- Current Database: `map`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `map` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `map`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','google','map','http://ditu.google.cn/','img/google.jpg','2018-01-10 14:52:04','normal','china',0,'china'),(2,'hunter','amap','map','http://ditu.amap.com/','img/amap.jpg','2018-01-10 14:52:40','normal','china',0,'china'),(3,'hunter','bing_map','map','https://www.bing.com/ditu/','img/bing.jpg','2018-01-10 14:53:24','normal','china',0,'china'),(4,'hunter','baidu','map','http://map.baidu.com/','img/baidu.jpg','2018-01-10 14:54:04','normal','china',0,'china'),(5,'hunter','sogou','map','http://map.sogou.com/','img/sogou.jpg','2018-01-10 14:54:50','normal','china',0,'china'),(6,'hunter','map.qq','map','http://map.qq.com/','img/qq.jpg','2018-01-11 16:50:09','normal','utf8',94,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `life`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `life` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `life`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `fish_scales`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fish_scales` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fish_scales`;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `idcontract` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idcontract`),
  UNIQUE KEY `idcontract_UNIQUE` (`idcontract`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contract：合约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractor`
--

DROP TABLE IF EXISTS `contractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractor` (
  `idcontractor` bigint(40) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'owner name',
  `id` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coordinate` varchar(45) DEFAULT NULL,
  `shape` varchar(45) DEFAULT NULL,
  `use` varchar(45) DEFAULT NULL COMMENT 'use as',
  `type` varchar(45) DEFAULT NULL COMMENT 'Land type:平，洼，山，水域，树林',
  `level` varchar(45) DEFAULT NULL,
  `worth` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `comm_number` varchar(45) DEFAULT NULL COMMENT 'communication number',
  PRIMARY KEY (`idcontractor`),
  UNIQUE KEY `idcontractor_UNIQUE` (`idcontractor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contracting rights 承包权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractor`
--

LOCK TABLES `contractor` WRITE;
/*!40000 ALTER TABLE `contractor` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise`
--

DROP TABLE IF EXISTS `franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise` (
  `idfranchise` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT 'owner name',
  `id` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coordinate` varchar(45) DEFAULT NULL,
  `shape` varchar(45) DEFAULT NULL,
  `use` varchar(45) DEFAULT NULL COMMENT 'use as',
  `type` varchar(45) DEFAULT NULL COMMENT 'Land type:平，洼，山，水域，树林',
  `level` varchar(45) DEFAULT NULL,
  `worth` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `comm_number` varchar(45) DEFAULT NULL COMMENT 'communication number',
  PRIMARY KEY (`idfranchise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='franchise: 经营权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise`
--

LOCK TABLES `franchise` WRITE;
/*!40000 ALTER TABLE `franchise` DISABLE KEYS */;
/*!40000 ALTER TABLE `franchise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `records` (
  `idrecords` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idrecords`),
  UNIQUE KEY `idrecords_UNIQUE` (`idrecords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Transfer records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `tool`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tool` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tool`;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','runoob','website','https://c.runoob.com/','img/runoob_word.jpg','2017-12-29 17:01:41','normal','utf8',0,'china'),(2,'hunter','tortoisesvn','website','https://tortoisesvn.net/','img/tortoisesvn.jpg','2017-12-29 17:12:35','normal','utf8',0,'china'),(3,'hunter','git','website','https://git-scm.com/','img/git.jpg','2017-12-29 17:14:29','normal','utf8',0,'china'),(4,'hunter','intel','website','https://downloadcenter.intel.com/','img/intel.jpg','2018-01-02 17:46:49','normal','utf8',0,'china'),(5,'hunter','asus','website','https://www.asus.com/support/','img/asus.jpg','2018-01-02 17:53:39','normal','utf8',0,'china'),(6,'hunter','visualstudio','website','https://www.visualstudio.com','img/visualstudio.jpg','2018-01-02 18:02:01','normal','utf8',0,'china'),(7,'hunter','apache','website','https://www.apache.org/index.html#projects-list','img/asf_logo.png','2018-01-02 18:09:19','normal','utf8',0,'china'),(8,'hunter','eclipse','website','http://www.eclipse.org/','img/eclipse.png','2018-01-02 18:16:05','normal','utf8',0,'china'),(9,'hunter','sublime','website','https://www.sublimetext.com/','img/sublime.jpg','2018-01-02 18:23:03','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Current Database: `news`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `news` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `news`;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','google','news','http://news.google.com/news?pz=1&cf=all&ned=cn','img/google.jpg','2018-01-05 17:37:34','normal','china',0,'china'),(2,'hunter','people','news','http://www.people.com.cn','img/people.jpg','2018-01-05 17:39:23','normal','china',0,'china'),(3,'hunter','sohu','news','http://news.sohu.com/','img/sohu.jpg','2018-01-05 17:39:54','normal','china',0,'china'),(4,'hunter','wangyi163','news','http://news.163.com/latest/','img/wangyi.jpg','2018-01-05 17:40:35','normal','china',0,'china'),(5,'hunter','cgov','news','http://www.gov.cn/','img/cgov.jpg','2018-01-05 17:41:09','normal','china',0,'china'),(6,'hunter','ifeng','news','http://www.ifeng.com/','img/ifeng.jpg','2018-01-05 17:41:35','normal','china',0,'china'),(7,'hunter','xinhua','news','http://www.news.cn/','img/xinhua.jpg','2018-01-05 17:42:08','normal','china',0,'china'),(8,'hunter','china.news','news','http://news.china.com/','img/zxw.jpg','2018-01-05 17:42:53','normal','china',0,'china'),(9,'hunter','sina','news','http://news.sina.com.cn/','img/sina.jpg','2018-01-05 17:43:29','normal','china',0,'china'),(10,'hunter','tom','news','http://news.tom.com/','img/tom.jpg','2018-01-05 17:44:06','normal','china',0,'china'),(11,'hunter','yahoo','news','https://www.yahoo.com/news/','img/yahoo.jpg','2018-01-05 17:44:40','normal','china',0,'china'),(12,'hunter','chinabyte','news','http://news.chinabyte.com/','img/bit.jpg','2018-01-05 17:46:36','normal','china',0,'china'),(13,'hunter','qq','news','http://news.qq.com/','img/qq.jpg','2018-01-05 17:47:15','normal','china',0,'china'),(14,'hunter','baidu','news','http://news.baidu.com/','img/baidu.jpg','2018-01-05 17:47:48','normal','china',0,'china'),(15,'hunter','sogou','news','http://news.sogou.com/','img/sogou.jpg','2018-01-05 17:48:21','normal','china',0,'china'),(16,'hunter','huanqiu','news','http://www.huanqiu.com/','img/huanqiu.jpg','2018-01-05 17:48:52','normal','china',0,'china'),(17,'hunter','hao123','news','http://123.sogou.com/','img/hao123.jpg','2018-01-05 17:49:21','normal','china',0,'china'),(18,'hunter','paper','news','http://www.thepaper.cn/','img/paper.jpg','2018-01-05 17:50:00','normal','china',0,'china'),(19,'hunter','google-finance','news','http://www.google.com.hk/finance','img/stock.jpg','2018-01-05 17:50:44','normal','china',0,'china'),(20,'hunter','toutiao','news','https://www.toutiao.com/','img/toutiao.jpg','2018-01-05 17:51:16','normal','china',0,'china'),(21,'hunter','wallstreetcn','news','https://wallstreetcn.com/','img/wallstreetcn.jpg','2018-01-05 17:51:45','normal','china',0,'china'),(22,'hunter','news-cctv','news','http://news.cctv.com/','img/news-cctv.jpg','2018-01-05 17:52:16','normal','china',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `debt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `debt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `debt`;

--
-- Table structure for table `creditor`
--

DROP TABLE IF EXISTS `creditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditor` (
  `idcreditor` int(11) NOT NULL AUTO_INCREMENT,
  `idnumber` varchar(45) NOT NULL COMMENT 'ID number 身份证号',
  `name` varchar(45) NOT NULL COMMENT 'creditor name 债权人姓名',
  `gender` varchar(45) NOT NULL DEFAULT 'M' COMMENT 'creditor M:F male and female\n	\n\n',
  `country` varchar(45) NOT NULL DEFAULT 'china' COMMENT 'country 国家',
  `province` varchar(45) NOT NULL COMMENT 'province level :省,直辖市 ,特区',
  `city` varchar(45) NOT NULL COMMENT 'city: 地级市',
  `county` varchar(45) NOT NULL COMMENT 'county 县,区',
  `town` varchar(45) DEFAULT NULL COMMENT 'town 乡镇',
  `street` varchar(45) DEFAULT NULL COMMENT 'street 街、道',
  `village` varchar(45) DEFAULT NULL COMMENT 'village 村庄屯寨\n	\n',
  `address` varchar(200) DEFAULT NULL COMMENT 'address=country+province+city+county+town+street+village',
  `phone` varchar(45) DEFAULT NULL COMMENT 'phone number 手机号',
  `real` varchar(45) DEFAULT NULL COMMENT 'real：真实性 ，Real name',
  `IPA` varchar(45) DEFAULT NULL COMMENT 'Internet payment account ：债权人网络支付账户',
  `debtor` varchar(45) DEFAULT NULL COMMENT 'Debtor''s name 负债人姓名',
  `organization` varchar(45) DEFAULT NULL COMMENT 'Debt organization ：负债人单位名称',
  `d_address` varchar(200) DEFAULT NULL,
  `project` varchar(100) DEFAULT NULL COMMENT 'Engaged in the project name ,债务发生项目名称',
  `amount` double DEFAULT NULL COMMENT 'Debt amount 债务金额',
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Debt start time',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` datetime DEFAULT NULL,
  `audio` varchar(45) NOT NULL COMMENT 'Recording evidence URL.Upload voice\n',
  `image` varchar(45) NOT NULL COMMENT 'image URL ,Upload voice',
  `video` varchar(45) NOT NULL COMMENT 'Video evidence ,Upload video path',
  `file` varchar(45) DEFAULT NULL COMMENT 'Evidence document, path:URL',
  `status` varchar(45) DEFAULT NULL COMMENT 'status 状态： 未结案,结案,',
  `is_agent` tinyint(4) NOT NULL DEFAULT '0',
  `agent_name` varchar(45) DEFAULT NULL COMMENT 'Name of agent',
  `agent_id` varchar(45) DEFAULT NULL COMMENT 'agent_id ',
  `agent_tel` varchar(45) DEFAULT NULL,
  `agent_mail` varchar(45) DEFAULT NULL,
  `agent_address` varchar(45) DEFAULT NULL,
  `agent_relationship` varchar(45) DEFAULT NULL COMMENT 'Relationship between agent and agent',
  `is_debt_agent` tinyint(4) NOT NULL DEFAULT '0',
  `d_agent_name` varchar(45) DEFAULT NULL,
  `d_agent_id` varchar(45) DEFAULT NULL,
  `d_agent_tel` varchar(45) DEFAULT NULL,
  `d_agent_mail` varchar(45) DEFAULT NULL,
  `d_agent_address` varchar(45) DEFAULT NULL,
  `d_agent_relationship` varchar(45) DEFAULT NULL,
  `debtor_status` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `bank_card` varchar(45) DEFAULT NULL COMMENT 'Bank card number',
  `payee` varchar(45) DEFAULT NULL COMMENT 'Payee Name',
  `remark` text,
  `succor` varchar(45) NOT NULL DEFAULT '0' COMMENT 'Whether to start the rescue',
  `social_help` varchar(45) DEFAULT NULL COMMENT 'Social help',
  `gov_aid` varchar(45) DEFAULT NULL COMMENT 'Government aid',
  `court_rescue` varchar(45) DEFAULT NULL COMMENT 'Court rescue',
  `solution` text,
  PRIMARY KEY (`idcreditor`,`idnumber`),
  UNIQUE KEY `idcreditor_UNIQUE` (`idcreditor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='creditor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditor`
--

LOCK TABLES `creditor` WRITE;
/*!40000 ALTER TABLE `creditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurisdiction`
--

DROP TABLE IF EXISTS `jurisdiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurisdiction` (
  `idjurisdiction` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) NOT NULL COMMENT 'country 国家',
  `province` varchar(45) NOT NULL COMMENT 'province level :省,直辖市 ,特区',
  `city` varchar(45) NOT NULL COMMENT 'city: 地级市,市,州',
  `county` varchar(45) NOT NULL COMMENT 'county 县,区',
  `town` varchar(45) NOT NULL COMMENT '''town 乡镇',
  `street` varchar(45) NOT NULL COMMENT 'street 街、道',
  `village` varchar(45) DEFAULT NULL COMMENT 'village 村庄屯寨',
  `remark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `tel` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `comm` varchar(45) NOT NULL COMMENT 'Communication account：QQ web MSI 。。。 ',
  `name` varchar(45) NOT NULL COMMENT 'Manager''s name',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`idjurisdiction`),
  UNIQUE KEY `idjurisdiction_UNIQUE` (`idjurisdiction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Jurisdiction information 辖区信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurisdiction`
--

LOCK TABLES `jurisdiction` WRITE;
/*!40000 ALTER TABLE `jurisdiction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurisdiction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `search`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `search` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `search`;

--
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `method` (
  `idmethod` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT 'submit name:$XXXX ',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(45) NOT NULL,
  `base` varchar(200) NOT NULL COMMENT 'URL= base+before_key+key+after_key.',
  `before` varchar(45) DEFAULT NULL,
  `after` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY (`idmethod`,`name`,`base`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Different websites search method\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'Google',100,'search','http://www.google.com/search?q=+','','&ie=UTF-8+&oe=UTF-8','2017-12-27 06:18:14','hunter'),(2,'Bing',99,'search','https://www.bing.com/search?q=','','','2017-12-27 06:19:27','hunter'),(3,'ZhiHu',96,'search','https://www.zhihu.com/search?type=content&q=','','','2017-12-27 06:20:52','hunter'),(4,'Baidu',99,'search','https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=','','','2017-12-27 06:27:42','hunter'),(5,'Github',82,'code','https://github.com/search?utf8=%E2%9C%93&q=','','&type=','2017-12-27 06:38:08','hunter'),(6,'Sina',52,'news','http://search.sina.com.cn/?q=','','&c=news&from=index','2017-12-27 16:03:10','hunter'),(7,'Tmail',49,'shopping','https://list.tmall.com/search_product.htm?q=','','','2017-12-27 16:10:42','hunter'),(8,'JingDong',48,'shopping','https://search.jd.com/Search?keyword=','','&enc=utf-8','2017-12-27 16:13:34','hunter'),(9,'Taobao',50,'shopping','https://s.taobao.com/search?q=','','','2017-12-27 16:16:31','hunter'),(10,'Vip',47,'shopping','https://category.vip.com/suggest.php?keyword=','','','2017-12-27 16:18:26','hunter'),(11,'Yahoo',98,'search','https://search.yahoo.com/search?p=','','','2017-12-27 17:43:45','hunter'),(12,'CSDN',72,'technology','http://so.csdn.net/so/search/s.do?q=','','','2017-12-27 16:19:49','hunter'),(13,'Amazon',45,'shopping','https://www.amazon.cn/s/field-keywords=','','','2017-12-27 16:22:15','hunter'),(14,'MSDN_CN',81,'technology','https://social.msdn.microsoft.com/Search/zh-CN?query=','','','2017-12-27 16:32:03','hunter'),(15,'PHP',77,'technology','http://php.net/manual-lookup.php?pattern=','','','2017-12-27 16:34:34','hunter'),(16,'Oracle',75,'technology','https://www.oracle.com/search/results?Nty=1&Ntk=S3&Ntt=','','','2017-12-27 16:39:46','hunter'),(17,'Mysql',76,'technology','https://www.oracle.com/search/results?cat=mysql&Ntk=SI-ALL5&Ntt=','','','2017-12-27 16:42:01','hunter'),(18,'C++',80,'technology','http://www.cplusplus.com/search.do?q=','','','2017-12-27 16:44:24','hunter'),(19,'Java',79,'technology','https://docs.oracle.com/apps/search/search.jsp?q=','','&category=all','2017-12-27 17:31:33','hunter'),(20,'Python',78,'technology','https://www.python.org/search/?q=','','','2017-12-27 17:35:06','hunter'),(21,'Amap',95,'map','http://ditu.amap.com/search?query=','','','2017-12-27 10:32:02','hunter'),(22,'QiChaCha',10,'information','http://www.qichacha.com/search?key=','','','2017-12-28 17:50:14','hunter'),(23,'Cmake',74,'technology','https://cmake.org/?s=','','','2017-12-28 18:29:02','hunter'),(24,'ubuntu',73,'technology','https://www.ubuntu.com/search?q=','','','2017-12-28 18:33:18','hunter'),(25,'ebay',44,'shopping','https://www.ebay.com/sch/i.html?&_nkw=','','','2017-12-28 18:44:36','hunter'),(26,'Biyao',46,'shopping','http://www.biyao.com/classify/search.html?query=','','','2017-12-28 18:47:06','hunter'),(27,'中国政府采购',11,'shopping','http://search.ccgp.gov.cn/bxsearch?searchtype=2&kw=','','','2017-12-28 18:51:44','hunter'),(28,'Alibaba',51,'shopping','https://s.1688.com/selloffer/offer_search.htm?keywords=','','','2017-12-28 18:57:23','hunter'),(29,'国家企业信用',11,'gov','http://www.gsxt.gov.cn/?','','','2017-12-28 19:15:23','hunter'),(30,'UEFI',82,'technology','http://www.uefi.org/search/node/','','','2017-12-29 10:57:39','hunter'),(31,'x-code',79,'technology','https://developer.apple.com/search/?q=','','','2017-12-29 11:07:26','hunter'),(32,'U-Boot',82,'technology','http://www.denx.de/wiki/view/U-Boot/WebSearch?search=','','&scope=all','2017-12-29 11:12:05','hunter'),(33,'wiki',100,'search','https://en.wikipedia.org/wiki/','','','2017-12-29 11:17:05','hunter'),(34,'runoob',81,'technology','http://www.runoob.com/?s=','','','2017-12-29 16:08:42','hunter'),(35,'EN-CN',0,'translate','https://translate.google.cn/#en/zh-CN/','','','2017-12-30 01:18:25','hunter'),(36,'CN->EN',0,'translate','https://translate.google.cn/#zh-CN/en/','','','2017-12-30 01:19:34','hunter'),(37,'ximalaya',0,'audio','http://www.ximalaya.com/search/all/kw/','','','2017-12-30 01:29:51','hunter'),(38,'music.163',0,'audio','http://music.163.com/#/search/m/?s=','','','2017-12-30 01:51:31','hunter'),(39,'kugou',0,'audio','http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=','','','2017-12-30 01:53:38','hunter'),(40,'qq.music',0,'audio','https://y.qq.com/portal/search.html#t=song&w=','','','2017-12-30 01:57:07','hunter'),(41,'wiki.ubuntu',98,'search','http://wiki.ubuntu.com.cn/index.php?search=','','&fulltext=%E6%90%9C%E7%B4%A2','2018-01-15 17:55:17','hunter');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `task`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `task` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `task`;

--
-- Current Database: `hwdc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hwdc` /*!40100 DEFAULT CHARACTER SET utf16 */;

USE `hwdc`;

--
-- Table structure for table `capacitance`
--

DROP TABLE IF EXISTS `capacitance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capacitance` (
  `idcapacitance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'capacitance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idcapacitance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitance`
--

LOCK TABLES `capacitance` WRITE;
/*!40000 ALTER TABLE `capacitance` DISABLE KEYS */;
/*!40000 ALTER TABLE `capacitance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chipset`
--

DROP TABLE IF EXISTS `chipset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chipset` (
  `idchipset` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `position` varchar(45) DEFAULT NULL COMMENT 'chipset position,like in PCB',
  `power` varchar(45) DEFAULT NULL,
  `clock` varchar(45) DEFAULT NULL COMMENT 'Measuring clock',
  `reset` varchar(45) DEFAULT NULL COMMENT 'chip reset\n',
  `enable` varchar(45) DEFAULT NULL COMMENT 'Minimum value',
  `configs` varchar(45) DEFAULT NULL COMMENT 'configs is ok ,pin  ,R O C',
  `link` double DEFAULT NULL COMMENT 'like tx,rx ',
  `firmware` varchar(45) DEFAULT NULL COMMENT 'firmware: if or not exist , an version ,and has been writed',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `weld` varchar(45) DEFAULT NULL COMMENT 'weld check',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idchipset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chipset`
--

LOCK TABLES `chipset` WRITE;
/*!40000 ALTER TABLE `chipset` DISABLE KEYS */;
/*!40000 ALTER TABLE `chipset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clock`
--

DROP TABLE IF EXISTS `clock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clock` (
  `idclock` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `src_point` varchar(45) DEFAULT NULL COMMENT 'Source test point',
  `src_vale` double DEFAULT NULL,
  `dest_point` varchar(45) DEFAULT NULL,
  `dest_value` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `func` varchar(45) DEFAULT NULL COMMENT 'function ',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL COMMENT 'ascription project name',
  `temperature` double DEFAULT NULL COMMENT 'Ambient temperature\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idclock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clock`
--

LOCK TABLES `clock` WRITE;
/*!40000 ALTER TABLE `clock` DISABLE KEYS */;
/*!40000 ALTER TABLE `clock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inductance`
--

DROP TABLE IF EXISTS `inductance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inductance` (
  `idinductance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'inductance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idinductance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inductance`
--

LOCK TABLES `inductance` WRITE;
/*!40000 ALTER TABLE `inductance` DISABLE KEYS */;
/*!40000 ALTER TABLE `inductance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin` (
  `idpin` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'pin position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal_len` double DEFAULT NULL COMMENT 'Nominal length value\n',
  `min_len` double DEFAULT NULL COMMENT 'Minimum length value',
  `max_len` double DEFAULT NULL COMMENT 'maximum length value',
  `len_value` double DEFAULT NULL COMMENT 'current  length value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `src` varchar(45) DEFAULT NULL COMMENT 'Source',
  `dest` varchar(45) DEFAULT NULL COMMENT 'destination',
  `min_wid` double DEFAULT NULL COMMENT 'min width value',
  `max_wid` double DEFAULT NULL COMMENT 'max width value',
  `wid_value` double DEFAULT NULL COMMENT 'current  width value',
  `nominal_wid` double DEFAULT NULL COMMENT 'Nominal width value\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idpin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resistance`
--

DROP TABLE IF EXISTS `resistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resistance` (
  `idresistance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'Resistance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idresistance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resistance`
--

LOCK TABLES `resistance` WRITE;
/*!40000 ALTER TABLE `resistance` DISABLE KEYS */;
/*!40000 ALTER TABLE `resistance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voltage`
--

DROP TABLE IF EXISTS `voltage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voltage` (
  `idvoltage` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `src_point` varchar(45) DEFAULT NULL COMMENT 'Source test point',
  `src_vale` double DEFAULT NULL,
  `dest_point` varchar(45) DEFAULT NULL,
  `dest_value` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `func` varchar(45) DEFAULT NULL COMMENT 'function ',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL COMMENT 'ascription project name',
  `temperature` double DEFAULT NULL COMMENT 'Ambient temperature\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idvoltage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voltage`
--

LOCK TABLES `voltage` WRITE;
/*!40000 ALTER TABLE `voltage` DISABLE KEYS */;
/*!40000 ALTER TABLE `voltage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `weapon`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `weapon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weapon`;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','spacex','website','http://www.spacex.com/','img/spacex.jpg','2018-01-18 14:10:49','normal','utf8',100,'china'),(2,'hunter','lockheedmartin','website','http://www.lockheedmartin.com/','img/LM-logo.png','2018-01-18 14:19:17','normal','utf8',99,'china'),(3,'hunter','boeing','website','http://www.boeing.com/','img/boeing.png','2018-01-18 14:22:41','normal','utf8',98,'china'),(4,'hunter','nasa','website','https://www.nasa.gov/','img/nasa.jpg','2018-01-18 14:25:36','normal','utf8',97,'china'),(5,'hunter','raytheon','website','https://www.raytheon.com/','img/rtn_logo.gif','2018-01-18 14:33:14','normal','utf8',96,'china'),(6,'hunter','northropgrumman','website','http://www.northropgrumman.com','img/northropgrumman.png','2018-01-18 14:43:49','normal','utf8',95,'china'),(7,'hunter','generaldynamics','website','http://www.generaldynamics.com/','img/generaldynamics.jpg','2018-01-18 14:51:03','normal','utf8',94,'china'),(8,'hunter','l3t','website','https://www.l3t.com/','img/l3-logo.png','2018-01-18 14:56:20','normal','utf8',93,'china'),(9,'hunter','utc','website','http://www.utc.com','img/utc.jpg','2018-01-18 14:59:48','normal','utf8',92,'china'),(10,'hunter','baesystems','website','https://www.baesystems.com','img/baesystems.png','2018-01-18 15:03:21','normal','utf8',92,'china'),(11,'hunter','baesystems','website','http://www.airbus.com/','img/Airbus.png','2018-01-18 15:07:16','normal','utf8',91,'china'),(12,'hunter','ge','website','https://www.ge.com/','img/ge.jpg','2018-01-18 15:14:43','normal','utf8',90,'china'),(13,'hunter','mhi','website','https://www.mhi.com/','img/mhi.png','2018-01-18 15:20:03','normal','utf8',89,'china'),(14,'hunter','rheinmetall','website','https://www.rheinmetall.com','img/rheinmetall.jpg','2018-01-18 15:27:23','normal','utf8',88,'china'),(15,'hunter','heckler-koch','website','https://www.heckler-koch.com','img/heckler-koch.jpg','2018-01-18 15:30:50','normal','utf8',87,'china'),(16,'hunter','dassault-aviation','website','https://www.dassault-aviation.com','img/Dassault-Aviation.png','2018-01-18 15:35:11','normal','utf8',86,'china'),(17,'hunter','OKA','website','http://www.uacrussia.ru','img/OKA.png','2018-01-18 15:44:53','normal','utf8',101,'china'),(18,'hunter','rafael','website','http://www.rafael.co.il','img/rafael.png','2018-01-18 15:58:10','normal','utf8',86,'china'),(19,'hunter','iai','website','http://www.iai.co.il/','img/iai.png','2018-01-18 16:02:02','normal','utf8',86,'china'),(20,'hunter','imisystems','website','http://www.imisystems.com/','img/IMISystems.png','2018-01-18 16:05:03','normal','utf8',86,'china'),(21,'hunter','elbitsystems','website','http://elbitsystems.com/','img/elbitsystems.png','2018-01-18 16:07:16','normal','utf8',86,'china'),(22,'hunter','Leonardo','website','http://www.leonardocompany.com','img/Leonardo.png','2018-01-18 16:18:18','normal','utf8',85,'china'),(23,'hunter','bel','website','http://bel-india.com/','img/bel.jpg','2018-01-18 16:25:11','normal','utf8',84,'china'),(24,'hunter','electricdatasystems','website','http://www.electricdatasystems.com/','img/EDS-logo.png','2018-01-18 16:28:53','normal','utf8',83,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','sipo','website','http://cpquery.sipo.gov.cn/','img/gjzscqj.png','2018-01-22 17:14:53','normal','utf8',100,'china'),(2,'hunter','epo','website','http://www.epo.org/','img/epo.gif','2018-01-22 17:20:40','normal','utf8',99,'china'),(3,'hunter','uspto','website','https://www.uspto.gov/','img/uspto.png','2018-01-22 17:23:05','normal','utf8',98,'china'),(4,'hunter','jpo','website','http://www.jpo.go.jp/','img/jpo.png','2018-01-22 17:24:49','normal','utf8',97,'china'),(5,'hunter','kipris','website','http://kipris.or.kr/enghome/main.jsp','img/kiiris.gif','2018-01-22 17:29:13','normal','utf8',96,'china'),(6,'hunter','dpma','website','https://www.dpma.de/','img/patent-dpma.gif','2018-01-22 17:31:57','normal','utf8',95,'china'),(7,'hunter','ipd','website','http://www.ipd.gov.hk/','img/hk_po.jpg','2018-01-22 17:33:42','normal','utf8',94,'china'),(8,'hunter','wpio','website','http://www.wipo.int','img/wpio.png','2018-01-22 17:37:24','normal','utf8',93,'china'),(9,'hunter','oapl','website','http://www.oapi.int/','img/oapl.jpg','2018-01-22 17:39:38','normal','utf8',92,'china'),(10,'hunter','ipindia','website','http://www.ipindia.nic.in/','img/ipindia.png','2018-01-22 17:41:55','normal','utf8',91,'china'),(11,'hunter','rupto','website','http://www.rupto.ru/rupto/portal/start?lang=en','img/rupto.png','2018-01-22 17:43:35','normal','utf8',90,'china'),(12,'hunter','ipaustralia','website','https://www.ipaustralia.gov.au/','img/ipaustralia.png','2018-01-22 17:45:15','normal','utf8',89,'china'),(13,'hunter','uibm','website','http://www.uibm.gov.it/','img/uibm.jpg','2018-01-22 17:47:01','normal','utf8',88,'china'),(14,'hunter','Canada','website','http://www.ic.gc.ca','img/Canada.jpg','2018-01-22 17:49:23','normal','utf8',87,'china'),(15,'hunter','inpi','website','https://www.inpi.fr/fr','img/inpi.jpg','2018-01-22 17:51:15','normal','utf8',86,'china'),(16,'hunter','patent','website','http://www.sipo.gov.cn/xglj/201509/t20150917_1177472.html','img/otherpo.jpg','2018-01-22 17:52:32','normal','utf8',85,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `contact`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `contact` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `contact`;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `idcontact` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `chapter` int(11) NOT NULL,
  `chapter_name` text NOT NULL,
  `clause` int(11) NOT NULL,
  `content` text NOT NULL,
  `remark` text COMMENT 'who : author',
  `type` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `where` varchar(45) DEFAULT NULL COMMENT 'create location',
  `who` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `what` text NOT NULL COMMENT 'contact name',
  `url` text NOT NULL COMMENT 'contact file/link  path',
  `type` varchar(45) NOT NULL DEFAULT 'local' COMMENT 'local,file,http,https,ssh',
  `status` varchar(45) NOT NULL DEFAULT 'normal' COMMENT 'normal ,abnormal',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time ',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'WeChat','https://web.wechat.com/','local','normal','2017-06-03 20:50:12','china','patent_sys',0,'utf8'),(2,'QQ','http://w.qq.com/','local','normal','2017-06-03 20:52:29','china','patent_sys',0,'utf8'),(3,'Skype','https://login.skype.com','local','normal','2017-06-03 20:55:34','china','patent_sys',0,'utf8'),(4,'qq-Weibo','http://t.qq.com/','local','normal','2017-06-03 21:02:55','china','patent_sys',0,'utf8'),(5,'facebook','https://www.facebook.com','local','normal','2017-06-03 21:06:08','china','patent_sys',0,'utf8'),(6,'MSN','https://www.msn.com/','local','normal','2017-06-03 21:18:41','china','patent_sys',0,'utf8');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `military`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `military` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `military`;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','china','website','http://www.mod.gov.cn/','img/china.jpg','2018-01-17 16:40:58','normal','utf8',100,'china'),(2,'hunter','USA','website','https://www.defense.gov/',' img/usa.jpg','2018-01-17 16:45:55','normal','utf8',99,'china'),(3,'hunter','russia','website','http://www.mil.ru/ ','img/russia.png','2018-01-17 16:50:47','normal','utf8',98,'china'),(4,'hunter','UnitedKingdom','website','http://www.mod.uk/','img/UnitedKingdom.jpg','2018-01-17 16:53:06','normal','utf8',97,'china'),(5,'hunter','France','website','https://www.defense.gouv.fr/','img/france.jpg','2018-01-17 16:56:38','normal','utf8',96,'china'),(6,'hunter','Germany','website','https://www.bundeswehr.de/','img/Germany.jpg','2018-01-17 17:00:08','normal','utf8',95,'china'),(7,'hunter','India','website','https://mod.gov.in/','img/India.jpg','2018-01-17 17:03:04','normal','utf8',94,'china'),(8,'hunter','Israel','website','https://www.idf.il/','img/Israel.jpg','2018-01-17 17:05:05','normal','utf8',93,'china'),(9,'hunter','Italy','website','http://www.difesa.it/','img/Italy.jpg','2018-01-17 17:09:14','normal','utf8',92,'china'),(10,'hunter','Australia','website','http://www.defence.gov.au/','img/Australia.jpg','2018-01-17 17:11:15','normal','utf8',91,'china'),(11,'hunter','Japan','website','http://www.mod.go.jp/','img/Japan.jpg','2018-01-17 17:17:48','normal','utf8',90,'china'),(12,'hunter','Canada','website','http://www.forces.gc.ca/','img/Canada.jpg','2018-01-17 17:23:07','normal','utf8',94,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `audio`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `audio` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `audio`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','ximalaya','audio','http://www.ximalaya.com/','img/ximalaya.jpg','2017-12-30 01:33:21','normal','utf8',0,'china'),(2,'hunter','music.163','music','http://music.163.com/','img/music.163.jpg','2017-12-30 01:44:04','normal','',0,'china'),(3,'hunter','kugou','music','http://www.kugou.com/','img/kugo.jpg','2017-12-30 01:48:15','normal','utf8',0,'china'),(4,'hunter','qqmusic','music','https://y.qq.com/','img/qqmusic.jpg','2017-12-30 02:03:27','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `aiproject`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `aiproject` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aiproject`;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','act-r','website','http://act-r.psy.cmu.edu/','img/act_r.png','2018-01-09 17:09:59','normal','china',0,'china'),(2,'hunter','caffe','website','http://caffe.berkeleyvision.org/','img/caffe.png','2018-01-09 17:15:19','normal','china',0,'china'),(3,'hunter','deepmind','website','https://deepmind.com/','img/deepmind.png','2018-01-09 17:27:31','normal','china',0,'china'),(4,'hunter','convnetjs','website','http://cs.stanford.edu/people/karpathy/convnetjs/','img/convnetjs.png','2018-01-09 17:37:45','normal','china',0,'china'),(5,'hunter','deepdetect','website','https://deepdetect.com/','img/deepdetect.png','2018-01-09 17:42:24','normal','china',0,'china'),(6,'hunter','deeplearning4j','website','https://deeplearning4j.org/','img/DL4J.png','2018-01-09 17:53:44','normal','china',0,'china'),(7,'hunter','h2oai','website','https://www.h2o.ai/','img/h2oai.png','2018-01-09 17:58:15','normal','china',0,'china'),(8,'hunter','tensorflow','website','https://www.tensorflow.org/','img/tensorflow.jpg','2018-01-09 18:04:05','normal','china',0,'china'),(9,'hunter','mycroft','website','https://mycroft.ai/','img/mycroft.jpg','2018-01-09 18:11:01','normal','china',0,'china'),(10,'hunter','sonnet','website','https://deepmind.github.io/sonnet/','img/sonnet.png','2018-01-09 18:15:59','normal','china',0,'china'),(11,'hunter','opennn','website','http://www.opennn.net/','img/opennn.png','2018-01-09 18:19:26','normal','china',0,'china'),(12,'hunter','dynet','website','https://dynet.readthedocs.io','img/DyNet.png','2018-01-09 18:23:28','normal','china',0,'china'),(13,'hunter','OpenNLP','website','https://opennlp.apache.org/','img/OpenNLP.png','2018-01-09 18:27:28','normal','china',0,'china'),(14,'hunter','systemml','website','http://systemml.apache.org/','img/systemML.png','2018-01-09 18:33:45','normal','china',0,'china'),(15,'hunter','smile','website','http://haifengl.github.io/','img/smile.png','2018-01-09 18:38:56','normal','china',0,'china'),(16,'hunter','prophet','website','https://facebook.github.io/prophet/','img/prophet.png','2018-01-09 18:42:09','normal','china',0,'china'),(17,'hunter','clips','website','https://www.clips.uantwerpen.be/','img/clips.png','2018-01-09 18:45:52','normal','china',0,'china'),(18,'hunter','sparkml','website','https://spark.apache.org/','img/sparkml.png','2018-01-09 18:49:39','normal','china',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `medical`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `medical` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `medical`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
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

-- Dump completed on 2018-01-22 18:01:02
