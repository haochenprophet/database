CREATE DATABASE  IF NOT EXISTS `mail` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mail`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: mail
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
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `url` VALUES (1,'hunter','postfix','website','http://www.postfix.org/','img/postfix.gif','2018-01-15 18:10:32','normal','utf8',100,'china'),(2,'hunter','squirrelmail','website','http://squirrelmail.org/','img/squirrelmail.jpg','2018-01-15 18:15:39','normal','utf8',99,'china'),(3,'hunter','openwebmail','website','http://openwebmail.org/','img/openwebmail.gif','2018-01-15 18:17:50','normal','utf8',99,'china'),(4,'hunter','dovecot','website','https://www.dovecot.org/','img/dovecot.gif','2018-01-15 18:21:12','normal','utf8',98,'china'),(5,'hunter','mailman','website','http://www.list.org/','img/mailman.jpg','2018-01-15 18:24:33','normal','utf8',97,'china'),(6,'198382.com','mail.126.com','website','https://www.126.com/','img/mail_126.jpg','2021-12-26 18:49:25','normal','utf8',0,'china'),(7,'198382.com','mail.163.com','website','https://mail.163.com/','img/mail_163.jpg','2021-12-26 18:50:06','normal','utf8',0,'china'),(8,'198382.com','mail.qq.com','website','https://mail.qq.com/','img/mail_qq.jpg','2021-12-26 18:50:53','normal','utf8',0,'china'),(9,'198382.com','mail.sina.com.cn','website','https://mail.sina.com.cn/','img/mail_sina.jpg','2021-12-26 18:51:45','normal','utf8',0,'china'),(10,'198382.com','ali-exmail.cn','website','https://www.ali-exmail.cn/Land/','img/mail_ali.jpg','2021-12-26 18:52:34','normal','utf8',0,'china'),(11,'198382.com','Gmail','website','https://mail.google.com','img/mail_google.jpg','2021-12-26 18:55:23','normal','utf8',0,'china'),(12,'198382.com','mail.aol.com','website','https://mail.aol.com','img/mail_aol.jpg','2021-12-26 18:57:36','normal','utf8',0,'china');
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

-- Dump completed on 2021-12-26 19:26:05
