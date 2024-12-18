CREATE DATABASE  IF NOT EXISTS `education` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `education`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: education
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
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','imooc','doc technical','https://www.imooc.com/','img/imooc.jpg','2017-12-29 11:59:32','normal','utf8',94),(2,'hunter','open163','website','https://open.163.com/','img/open163.jpg','2017-12-29 13:21:12','normal','utf8',95),(3,'hunter','study163','website','http://study.163.com/','img/yun163.png','2017-12-29 13:22:21','normal','utf8',96),(4,'hunter','xuetangx','website','http://www.xuetangx.com/','img/xuetangx.png','2017-12-29 13:23:09','normal','utf8',97),(5,'hunter','w3school','website','http://www.w3school.com.cn/','img/w3school.jpg','2017-12-29 13:23:53','normal','utf8',99),(6,'hunter','mysql.doc','website','https://dev.mysql.com/doc/','img/mysql.jpg','2017-12-29 13:24:43','normal','utf8',88),(7,'hunter','python.doc','website','https://www.python.org/doc/','img/python.jpg','2017-12-29 13:25:14','normal','utf8',87),(8,'hunter','apple.doc','website','https://developer.apple.com/documentation/','img/apple.jpg','2017-12-29 13:26:02','normal','utf8',93),(9,'hunter','javase','website','https://docs.oracle.com/javase/','img/java.png','2017-12-29 13:26:45','normal','utf8',86),(10,'hunter','tutorialspoint','website','https://www.tutorialspoint.com/','img/tutorial.png','2017-12-29 13:27:28','normal','utf8',85),(11,'hunter','first_edu','website','http://www.aajc.com/','img/first_edu.jpg','2017-12-29 13:28:34','normal','utf8',84),(12,'hunter','icourse','website','http://www.icourses.cn','img/icourse.jpg','2017-12-29 13:29:11','normal','utf8',83),(13,'hunter','php','website','http://php.net/','img/php.jpg','2017-12-29 13:30:10','normal','utf8',82),(14,'hunter','linuxdocs','website','http://linuxdocs.org/','img/linux.png','2017-12-29 15:12:27','normal','utf8',91),(15,'hunter','visualstudio','website','https://www.visualstudio.com/zh-hans/vs/getting-started/','img/microsoft.jpg','2017-12-29 07:27:57','normal','utf8',92),(16,'hunter','w3resource','website','https://www.w3resource.com/index.php','img/w3resource.jpg','2017-12-29 15:37:53','normal','utf8',98),(17,'hunter','CPP','website','http://www.cplusplus.com/reference/','img/cpp.jpg','2017-12-29 15:52:14','normal','utf8',89),(18,'hunter','mongodb','website','http://www.runoob.com/mongodb/mongodb-tutorial.html',' img/mongodb.png','2017-12-29 16:05:49','normal','utf8',90),(19,'hunter','runoob','website','http://www.runoob.com/','img/runoob.jpg','2017-12-29 16:17:29','normal','utf8',100),(20,'hunter','perl','website','https://www.perl.org/','img/perl.jpg','2017-12-29 17:20:29','normal','utf8',81),(21,'hunter','uefi','website','http://www.uefi.org/learning_center','img/uefi.jpg','2017-12-29 17:27:41','normal','utf8',79),(22,'hunter','Git','website','https://git-scm.com/book/zh/v2','img/git.jpg','2018-01-02 17:20:47','normal','utf8',80),(23,'hunter','ACPI','website','http://www.acpi.info/spec.htm','img/acpi.jpg','2018-01-02 17:29:19','normal','utf8',78),(24,'hunter','law-lib','website','http://www.law-lib.com/','img/law_lib.jpg','2018-01-08 16:27:54','normal','china',0),(25,'198382.com','topsage','website','http://www.topsage.com/','img/topsage.jpg','2019-02-15 17:17:13','normal','utf8',0),(26,'198382.com','cnki','website','http://cnki.net/','img/cnki.jpg','2019-02-15 17:24:42','normal','utf8',0),(27,'198382.com','maiziedu','website','http://www.maiziedu.com/','img/maiziedu.jpg','2019-02-20 15:59:04','normal','utf8',0),(28,'198382.com','ilearningx.huawei','website','https://ilearningx.huawei.com','img/ilearningX.png','2019-07-14 18:02:32','normal','utf8',0);
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

-- Dump completed on 2019-07-14 18:04:45
