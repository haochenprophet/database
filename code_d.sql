-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: code
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
INSERT INTO `string` VALUES (1,'HOME','Home','en','2017-04-09 16:26:20','hunter','china','utf8'),(2,'PROJECT','Project','en','2017-04-09 16:38:59','hunter','china','utf8'),(3,'KNOWLEDGE','Knowledge','en','2017-04-09 16:43:15','hunter','china','utf8'),(4,'TEST','Test','en','2017-04-09 16:47:37','hunter','china','utf8'),(5,'CODE','Code','en','2017-04-09 17:00:46','hunter','china','utf8'),(6,'HOME','主页','cn','2017-04-10 14:05:51','hunter','china','utf8'),(7,'PROJECT','项目','cn','2017-04-10 14:19:08','hunter','china','utf8'),(8,'BOOKMARK','BookMark','en','2017-04-10 14:20:45','hunter','china','utf8'),(9,'BOOKMARK','书签','cn','2017-04-10 14:22:02','hunter','china','utf8'),(10,'KNOWLEDGE','知识','cn','2017-04-10 15:24:30','hunter','china','utf8'),(11,'TRANSLATE','翻译','cn','2017-04-10 15:27:12','hunter','china','utf8'),(12,'TRANSLATE','Translate','en','2017-04-10 15:33:59','hunter','china','utf8'),(13,'TEST','测试','cn','2017-04-10 15:37:41','hunter','china','utf8'),(14,'LAYOUT','Layout','en','2017-04-10 15:38:48','hunter','china','utf8'),(15,'LAYOUT','布局','cn','2017-04-10 15:39:45','hunter','china','utf8'),(16,'FILE','File','en','2017-04-10 15:41:06','hunter','china','utf8'),(17,'FILE','文件','cn','2017-04-10 15:41:22','hunter','china','utf8'),(18,'DOWNLOAD','Download','en','2017-04-10 15:41:49','hunter','china','utf8'),(19,'DOWNLOAD','下载','cn','2017-04-10 15:42:05','hunter','china','utf8'),(20,'GITTEST','GitTest','en','2017-04-10 15:42:28','hunter','china','utf8'),(21,'GITTEST','Git测试','cn','2017-04-10 15:46:45','hunter','china','utf8'),(22,'CODE','代码','cn','2017-04-10 15:47:17','hunter','china','utf8'),(23,'LOGIN','登录','cn','2017-04-10 15:47:47','hunter','china','utf8'),(24,'LOGIN','Login','en','2017-04-10 15:47:59','hunter','china','utf8'),(25,'REGISTER','Register','en','2017-04-10 15:48:33','hunter','china','utf8'),(26,'REGISTER','注册','cn','2017-04-10 15:48:49','hunter','china','utf8'),(27,'MAIL','邮件','cn','2017-04-10 15:49:13','hunter','china','utf8'),(28,'MAIL','Mail','en','2017-04-10 15:49:35','hunter','china','utf8'),(29,'PATENT_SYS','Patent_SYS','en','2017-04-10 15:50:19','hunter','china','utf8'),(30,'PATENT_SYS','专利系统','cn','2017-04-10 15:50:36','hunter','china','utf8'),(31,'LANGUAGE','语言','cn','2017-04-10 18:27:30','hunter','china','utf8'),(32,'LANGUAGE','Language','en','2017-04-10 18:28:13','hunter','china','utf8'),(33,'USER_NAME','Username','en','2017-04-13 10:34:53','hunter','china','utf8'),(34,'USER_NAME','用户名','cn','2017-04-13 10:35:14','hunter','china','utf8'),(35,'PASSWORD','密码','cn','2017-04-13 10:35:41','hunter','china','utf8'),(36,'PASSWORD','Password','en','2017-04-13 10:35:56','hunter','china','utf8'),(37,'CONFIRM_PASSWORD','Confirm Password','en','2017-04-13 10:47:29','hunter','china','utf8'),(38,'CONFIRM_PASSWORD','确认密码','cn','2017-04-13 10:48:07','hunter','china','utf8'),(39,'EMAIL','Email','en','2017-04-13 10:49:43','hunter','china','utf8'),(40,'EMAIL','电子邮件','cn','2017-04-13 10:50:13','hunter','china','utf8'),(41,'PASSWORD_RECOVER_QUESTION','Password recover question','en','2017-04-13 10:52:18','hunter','china','utf8'),(42,'PASSWORD_RECOVER_QUESTION','密码恢复问题','cn','2017-04-13 10:52:32','hunter','china','utf8'),(43,'PASSWORD_RECOVER_ANSWER','Password recover answer','en','2017-04-13 10:54:21','hunter','china','utf8'),(44,'PASSWORD_RECOVER_ANSWER','密码恢复答案','cn','2017-04-13 10:54:36','hunter','china','utf8'),(45,'PASSWORD_RECOVER_MAIL','Password recover mail','en','2017-04-13 10:55:45','hunter','china','utf8'),(46,'PASSWORD_RECOVER_MAIL','密码恢复邮箱','cn','2017-04-13 10:56:14','hunter','china','utf8'),(47,'COMMIT','提交','cn','2017-04-13 11:07:59','hunter','china','utf8'),(48,'COMMIT','Commit','en','2017-04-13 11:08:14','hunter','china','utf8'),(49,'COMMIT_MESSAGE','提交信息','cn','2017-04-13 17:34:52','hunter','china','utf8'),(50,'COMMIT_MESSAGE','Commit Message','en','2017-04-13 17:35:20','hunter','china','utf8'),(51,'OPTIONS','选项','cn','2017-04-13 17:36:25','hunter','china','utf8'),(52,'OPTIONS','Options','en','2017-04-13 17:36:40','hunter','china','utf8'),(53,'TITLE','标题','cn','2017-04-14 13:39:45','hunter','china','utf8'),(54,'TITLE','Title','en','2017-04-14 13:39:59','hunter','china','utf8'),(55,'URL','URL','en','2017-04-14 13:40:33','hunter','china','utf8'),(56,'URL','URL','cn','2017-04-14 13:40:39','hunter','china','utf8'),(57,'TYPE','Type','en','2017-04-14 13:41:12','hunter','china','utf8'),(58,'TYPE','类型','cn','2017-04-14 13:41:24','hunter','china','utf8'),(59,'STATUS','状态','cn','2017-04-14 13:41:51','hunter','china','utf8'),(60,'STATUS','Status','en','2017-04-14 13:42:25','hunter','china','utf8'),(61,'REMARK','备注','cn','2017-04-14 13:42:59','hunter','china','utf8'),(62,'REMARK','Remark','en','2017-04-14 13:43:17','hunter','china','utf8'),(63,'AUTHOR','Author','en','2017-04-14 13:43:41','hunter','china','utf8'),(64,'AUTHOR','作者','cn','2017-04-14 13:43:57','hunter','china','utf8'),(65,'FILENAME','Filename','en','2017-04-14 14:45:50','hunter','china','utf8'),(66,'FILENAME','文件名','cn','2017-04-14 14:46:08','hunter','china','utf8'),(67,'INDIVIDUAL_CENTER','IndividualCenter','en','2017-04-14 17:02:17','hunter','china','utf8'),(68,'INDIVIDUAL_CENTER','个人中心','cn','2017-04-14 17:02:34','hunter','china','utf8'),(69,'EXIT','退出','cn','2017-04-14 17:02:59','hunter','china','utf8'),(70,'EXIT','Exit','en','2017-04-14 17:03:10','hunter','china','utf8'),(71,'MENU','菜单','cn','2017-04-14 19:53:59','hunter','china','utf8'),(72,'MENU','Menu','en','2017-04-14 19:54:13','hunter','china','utf8'),(73,'PROJECT_NAME','项目名称','cn','2017-04-20 22:06:31','hunter','china','utf8'),(74,'PROJECT_NAME','ProjectName','en','2017-04-20 22:06:50','hunter','china','utf8'),(75,'SUBMIT','提交','cn','2017-04-20 22:14:15','hunter','china','utf8'),(76,'SUBMIT','Submit','en','2017-04-20 22:14:34','hunter','china','utf8'),(77,'LAW','法律法规','cn','2017-04-23 16:04:30','hunter','china','utf8'),(78,'LAW','Law','en','2017-04-23 16:05:00','hunter','china','utf8'),(79,'BOOK_NAME','BookName','en','2017-04-23 16:47:22','hunter','china','utf8'),(80,'BOOK_NAME','书名','cn','2017-04-23 16:47:43','hunter','china','utf8'),(81,'ORIGINAL','Original','en','2017-04-23 16:49:38','hunter','china','utf8'),(82,'ORIGINAL','原文','cn','2017-04-23 16:49:54','hunter','china','utf8'),(83,'MARK','标注','cn','2017-04-23 16:50:29','hunter','china','utf8'),(84,'MARK','Mark','en','2017-04-23 16:50:46','hunter','china','utf8'),(85,'COMMENT','Comment','en','2017-04-23 16:52:13','hunter','china','utf8'),(86,'COMMENT','评注','cn','2017-04-23 16:53:08','hunter','china','utf8'),(87,'LOCATION','Location','en','2017-04-23 16:54:21','hunter','china','utf8'),(88,'LOCATION','区位','cn','2017-04-23 16:54:54','hunter','china','utf8'),(89,'DEVICE','Device','en','2017-04-23 16:55:32','hunter','china','utf8'),(90,'DEVICE','设备','cn','2017-04-23 16:55:45','hunter','china','utf8'),(91,'IMAGE','Image','en','2017-04-23 16:56:29','hunter','china','utf8'),(92,'IMAGE','图片','cn','2017-04-23 16:56:52','hunter','china','utf8'),(93,'AUDIO','Audio','en','2017-04-23 16:57:35','hunter','china','utf8'),(94,'AUDIO','音频','cn','2017-04-23 16:57:52','hunter','china','utf8'),(95,'VEDIO','Vedio','en','2017-04-23 16:58:22','hunter','china','utf8'),(96,'VEDIO','视频','cn','2017-04-23 16:58:37','hunter','china','utf8'),(97,'ADD','增加','cn','2017-04-27 02:12:34','hunter','china','utf8'),(98,'ADD','Add','en','2017-04-27 02:12:49','hunter','china','utf8'),(99,'INQUIRY','Inquiry','en','2017-04-27 02:15:55','hunter','china','utf8'),(100,'INQUIRY','查询','cn','2017-04-27 02:16:06','hunter','china','utf8'),(101,'SERVER_NAME','localhost','en','2017-06-01 22:27:14','hunter','china','utf8'),(102,'SERVER_NAME','localhost','cn','2017-06-01 22:27:24','hunter','china','utf8'),(103,'USER_NAME_DB','patent','en','2017-06-01 22:28:45','hunter','china','utf8'),(104,'USER_NAME_DB','patent','cn','2017-06-01 22:28:52','hunter','china','utf8'),(105,'USER_PSW_DB','patent','cn','2017-06-01 22:29:55','hunter','china','utf8'),(106,'USER_PSW_DB','patent','en','2017-06-01 22:30:01','hunter','china','utf8'),(107,'SERVER_NAME_DB','localhost','cn','2017-06-01 22:31:17','hunter','china','utf8'),(108,'SERVER_NAME_DB','localhost','en','2017-06-01 22:31:24','hunter','china','utf8'),(109,'NEWS','新闻','cn','2017-12-14 15:40:52','hunter','china','null'),(110,'NEWS','NEWS','en','2017-12-14 15:41:15','hunter','china','null'),(111,'MAP','地图','cn','2017-12-14 17:26:46','hunter','china','null'),(112,'MAP','MAP','en','2017-12-14 17:27:07','hunter','china','null'),(113,'INFO','信息','cn','2017-12-14 17:29:27','hunter','china','null'),(114,'INFO','Information','en','2017-12-14 17:29:43','hunter','china','null'),(115,'CONTACT','Contact','en','2017-12-14 17:30:37','hunter','china','null'),(116,'CONTACT','联系人','cn','2017-12-14 17:30:54','hunter','china','null'),(117,'LIFE','生活','cn','2017-12-14 17:45:52','hunter','china','null'),(118,'LIFE','Life','en','2017-12-14 17:46:07','hunter','china','null'),(119,'TEMPLATE','Template','en','2017-12-15 16:32:03','hunter','china','null'),(120,'TEMPLATE','示例','cn','2017-12-15 16:32:58','hunter','china','null'),(121,'EDUCATION','教育','cn','2017-12-18 12:02:21','hunter','china','utf8'),(122,'EDUCATION','Education','en','2017-12-18 12:02:33','hunter','china','utf8'),(123,'MEDICAL','医疗','cn','2017-12-19 16:32:52','hunter','china','utf8'),(124,'MEDICAL','Medical','en','2017-12-19 16:33:12','hunter','china','utf8'),(125,'AI','AI','en','2017-12-19 16:33:47','hunter','china','utf8'),(126,'AI','人工智能','cn','2017-12-19 16:34:01','hunter','china','utf8'),(127,'LOGO','图标','cn','2017-12-20 19:41:58','hunter','china','utf8'),(128,'LOGO','Logo','en','2017-12-20 19:42:17','hunter','china','utf8'),(129,'CHIP','Chip','en','2017-12-22 17:31:03','hunter','china','utf8'),(130,'AIPROJECT','AI-Prohect','en','2017-12-22 17:31:33','hunter','china','utf8'),(131,'AIPROJECT','人工智能项目','cn','2017-12-22 17:31:51','hunter','china','utf8'),(132,'CHIP','芯片','cn','2017-12-22 17:32:09','hunter','china','utf8'),(133,'DEBT_WAGES','讨工资','cn','2017-12-23 10:59:15','hunter','china','utf8'),(134,'DEBT_WAGES','DebtWages','en','2017-12-23 10:59:27','hunter','china','utf8'),(135,'QUESTION','问题','cn','2017-12-24 23:14:13','hunter','china','utf8'),(136,'QUESTION','Question','en','2017-12-24 23:14:46','hunter','china','utf8'),(137,'BEFORE_KEY','键值前','cn','2017-12-27 14:53:28','hunter','china','utf8'),(138,'BEFORE_KEY','BeforeKey','en','2017-12-27 14:53:50','hunter','china','utf8'),(139,'AFTER_KEY','键值后','cn','2017-12-27 14:54:14','hunter','china','utf8'),(140,'AFTER_KEY','AfterKey','en','2017-12-27 14:54:33','hunter','china','utf8'),(141,'NAME','Name','en','2017-12-27 14:54:53','hunter','china','utf8'),(142,'NAME','名称','cn','2017-12-27 14:55:02','hunter','china','utf8'),(143,'SEARCH','搜索','cn','2017-12-27 14:55:28','hunter','china','utf8'),(144,'SEARCH','Search','en','2017-12-27 14:55:46','hunter','china','utf8'),(145,'VIDEO','Video','en','2017-12-28 15:02:07','hunter','china','utf8'),(146,'VIDEO','视频','cn','2017-12-28 15:02:23','hunter','china','utf8'),(147,'TOOL','工具','cn','2017-12-29 16:29:41','hunter','china','utf8'),(148,'TOOL','Tool','en','2017-12-29 16:29:53','hunter','china','utf8'),(149,'EGOV','e-gov','en','2017-12-29 23:35:28','hunter','china','utf8'),(150,'EGOV','电子政务','cn','2017-12-29 23:35:47','hunter','china','utf8'),(151,'USER','User','en','2017-12-30 00:21:12','hunter','china','utf8'),(152,'USER','用户','cn','2017-12-30 00:21:25','hunter','china','utf8'),(153,'FARMLAND','Farmland','en','2017-12-30 00:41:56','hunter','china','utf8'),(154,'FARMLAND','农田','cn','2017-12-30 00:42:29','hunter','china','utf8'),(155,'GOVWR','Government working report','en','2018-01-02 13:22:12','hunter','china','utf8'),(156,'GOVWR','政府工作报告','cn','2018-01-02 13:22:32','hunter','china','utf8'),(157,'CLOUD','Cloud','en','2018-01-02 17:10:18','hunter','china','utf8'),(158,'CLOUD','云服务','cn','2018-01-02 17:10:34','hunter','china','utf8'),(159,'BLOG','博客','cn','2018-01-02 18:28:23','hunter','china','utf8'),(160,'BLOG','Blog','en','2018-01-02 18:28:41','hunter','china','utf8'),(161,'PRIORITY','Priority','en','2018-01-10 14:17:26','hunter','china','utf8'),(162,'PRIORITY','优先级','cn','2018-01-10 14:17:38','hunter','china','utf8'),(163,'LOGISTICS','Logistics','en','2018-01-11 17:50:11','hunter','china','utf8'),(164,'LOGISTICS','物流','cn','2018-01-11 17:50:26','hunter','china','utf8'),(165,'TABLE','Table','en','2018-01-12 14:31:45','hunter','china','utf8'),(166,'TABLE','表','cn','2018-01-12 14:32:01','hunter','china','utf8'),(167,'CREATE','Create','en','2018-01-12 14:36:14','hunter','china','utf8'),(168,'CREATE','创建','cn','2018-01-12 14:36:32','hunter','china','utf8'),(169,'BIOS','BIOS','en','2018-01-12 14:38:02','hunter','china','utf8'),(170,'BIOS','BIOS','cn','2018-01-12 14:38:08','hunter','china','utf8'),(171,'DATABASE','数据库','cn','2018-01-15 15:02:33','hunter','china','utf8'),(172,'DATABASE','Database','en','2018-01-15 15:02:45','hunter','china','utf8'),(173,'MILITARY','Military','en','2018-01-17 15:32:00','hunter','china','utf8'),(174,'MILITARY','军事','cn','2018-01-17 15:32:11','hunter','china','utf8'),(175,'WEAPON','Weapon','en','2018-01-17 16:28:59','hunter','china','utf8'),(176,'WEAPON','武器','cn','2018-01-17 16:29:07','hunter','china','utf8'),(177,'PC','电脑','cn','2018-01-19 10:12:13','hunter','china','utf8'),(178,'PC','PC','en','2018-01-19 10:12:32','hunter','china','utf8'),(179,'STOCK','Stock','en','2018-01-22 16:52:13','hunter','china','utf8'),(180,'STOCK','股市','cn','2018-01-22 16:52:23','hunter','china','utf8'),(181,'PATENT','专利','cn','2018-01-22 17:08:24','hunter','china','utf8'),(182,'PATENT','Patent','en','2018-01-22 17:08:37','hunter','china','utf8'),(183,'HARDWARE','硬件','cn','2018-01-24 11:00:26','hunter','china','utf8'),(184,'HARDWARE','Hardware','en','2018-01-24 11:00:50','hunter','china','utf8'),(185,'OS','OS','en','2018-01-24 11:24:01','hunter','china','utf8'),(186,'OS','系统','cn','2018-01-24 11:24:29','hunter','china','utf8'),(187,'SOFTWARE','Software','en','2018-01-24 11:36:18','hunter','china','utf8'),(188,'SOFTWARE','软件','cn','2018-01-24 11:36:30','hunter','china','utf8'),(189,'DRIVER','驱动','cn','2018-01-24 11:46:59','hunter','china','utf8'),(190,'DRIVER','Driver','en','2018-01-24 11:47:08','hunter','china','utf8'),(191,'CAR','汽车','cn','2018-01-24 11:54:02','hunter','china','utf8'),(192,'CAR','Car','en','2018-01-24 11:54:11','hunter','china','utf8'),(193,'GPIO','GPIO','cn','2018-01-24 14:09:14','hunter','china','utf8'),(194,'GPIO','GPIO','en','2018-01-24 14:09:20','hunter','china','utf8'),(195,'SETTING','设置','cn','2018-01-24 14:45:59','hunter','china','utf8'),(196,'SETTING','Setting','en','2018-01-24 14:46:26','hunter','china','utf8'),(197,'USEAS','UseAs','en','2018-01-24 14:46:53','hunter','china','utf8'),(198,'USEAS','用作','cn','2018-01-24 14:47:07','hunter','china','utf8'),(199,'PIN','PIN','cn','2018-01-24 14:47:48','hunter','china','utf8'),(200,'PIN','PIN','en','2018-01-24 14:47:53','hunter','china','utf8'),(201,'FUN','功能','cn','2018-01-24 14:48:43','hunter','china','utf8'),(202,'FUN','Function','en','2018-01-24 14:49:03','hunter','china','utf8'),(203,'TIME','Time','en','2018-01-24 15:56:55','hunter','china','utf8'),(204,'TIME','时间','cn','2018-01-24 15:57:10','hunter','china','utf8'),(205,'MATERIAL','Material','en','2018-01-25 10:37:58','hunter','china','utf8'),(206,'MATERIAL','物料','cn','2018-01-25 10:38:13','hunter','china','utf8'),(207,'COMPANY','公司','cn','2018-01-25 10:50:43','hunter','china','utf8'),(208,'COMPANY','Company','en','2018-01-25 10:50:56','hunter','china','utf8'),(209,'BOOK','Book','en','2018-01-30 16:24:13','hunter','china','utf8'),(210,'BOOK','书','cn','2018-01-30 16:24:30','hunter','china','utf8'),(211,'FUNDS','Funds','en','2018-01-30 17:06:32','hunter','china','utf8'),(212,'FUNDS','资本','cn','2018-01-30 17:07:10','hunter','china','utf8'),(213,'ELECTRICITY','Electricity','en','2018-02-01 12:00:50','hunter','china','utf8'),(214,'ELECTRICITY','电力','cn','2018-02-01 12:01:06','hunter','china','utf8'),(215,'PCTEST','PCTest','en','2018-02-01 16:20:46','hunter','china','utf8'),(216,'PCTEST','PC测试','cn','2018-02-01 16:24:52','hunter','china','utf8'),(217,'ITEM','Item','en','2018-02-06 18:43:13','hunter','china','utf8'),(218,'ITEM','事项','cn','2018-02-06 18:43:34','hunter','china','utf8'),(219,'BILL','Bill','en','2018-02-09 12:00:03','hunter','china','utf8'),(220,'BILL','账单','cn','2018-02-09 12:00:16','hunter','china','utf8'),(221,'CREATOR','创建者','cn','2018-02-09 14:20:28','hunter','china','utf8'),(222,'CREATOR','Creator','en','2018-02-09 14:21:53','hunter','china','utf8'),(223,'EXECUTOR','Executor','en','2018-02-09 14:23:10','hunter','china','utf8'),(224,'EXECUTOR','执行者','cn','2018-02-09 14:23:27','hunter','china','utf8'),(225,'ADDRESS','Address','en','2018-02-09 14:24:20','hunter','china','utf8'),(226,'ADDRESS','地址','cn','2018-02-09 14:24:32','hunter','china','utf8'),(227,'TELEPHONE','Telephone','en','2018-02-09 14:26:34','hunter','china','utf8'),(228,'TELEPHONE','电话','cn','2018-02-09 14:26:47','hunter','china','utf8'),(229,'GROUP','Group','en','2018-02-09 14:27:50','hunter','china','utf8'),(230,'GROUP','组','cn','2018-02-09 14:28:14','hunter','china','utf8'),(231,'GOAL','Goal','en','2018-02-09 14:29:31','hunter','china','utf8'),(232,'GOAL','目标','cn','2018-02-09 14:29:41','hunter','china','utf8'),(233,'REQUEST','Request','en','2018-02-09 14:30:29','hunter','china','utf8'),(234,'REQUEST','需求','cn','2018-02-09 14:30:53','hunter','china','utf8'),(235,'METHOD','Method','en','2018-02-09 14:31:44','hunter','china','utf8'),(236,'METHOD','方法','cn','2018-02-09 14:31:55','hunter','china','utf8'),(237,'PATH','Path','en','2018-02-09 14:32:48','hunter','china','utf8'),(238,'PATH','路径','cn','2018-02-09 14:32:58','hunter','china','utf8'),(239,'ENDTIME','EndTime','en','2018-02-09 14:35:53','hunter','china','utf8'),(240,'ENDTIME','完结时间','cn','2018-02-09 14:36:13','hunter','china','utf8'),(241,'PRICE','Price','en','2018-02-09 14:37:17','hunter','china','utf8'),(242,'PRICE','价格','cn','2018-02-09 14:37:31','hunter','china','utf8'),(243,'FATHER','Father','en','2018-02-09 14:38:31','hunter','china','utf8'),(244,'FATHER','父节点','cn','2018-02-09 14:38:52','hunter','china','utf8'),(245,'CHILD','Child','en','2018-02-09 14:40:41','hunter','china','utf8'),(246,'CHILD','子节点','cn','2018-02-09 14:40:59','hunter','china','utf8'),(247,'RADAR','雷达','cn','2018-02-09 15:35:58','hunter','china','utf8'),(248,'RADAR','Radar','en','2018-02-09 15:36:12','hunter','china','utf8'),(249,'BMC','BMC','cn','2018-02-09 16:13:29','hunter','china','utf8'),(250,'BMC','BMC','en','2018-02-09 16:13:35','hunter','china','utf8'),(251,'ATCA','ATCA','cn','2018-02-09 16:35:51','hunter','china','utf8'),(252,'ATCA','ATCA','en','2018-02-09 16:36:02','hunter','china','utf8'),(253,'GOV','政府','cn','2018-02-09 22:44:16','hunter','china','utf8'),(254,'GOV','GOV','en','2018-02-09 22:44:32','hunter','china','utf8'),(255,'ID','ID','cn','2018-02-13 18:16:42','hunter','china','utf8'),(256,'ID','ID','en','2018-02-13 18:16:49','hunter','china','utf8'),(257,'CONUTRY','Country','en','2018-02-13 18:17:28','hunter','china','utf8'),(258,'CONUTRY','国家','cn','2018-02-13 18:17:46','hunter','china','utf8'),(259,'AREA','地区','cn','2018-02-13 18:18:19','hunter','china','utf8'),(260,'AREA','Area','en','2018-02-13 18:18:34','hunter','china','utf8');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-13 18:32:29
