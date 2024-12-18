CREATE DATABASE  IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `user`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: user
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(200) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL COMMENT 'login name',
  `identification` varchar(100) NOT NULL,
  `id_type` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `head` varchar(300) DEFAULT NULL COMMENT 'head portrait',
  `head_md5` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `contact` varchar(300) DEFAULT NULL,
  `where` varchar(300) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0' COMMENT 'ID card',
  `level` int(11) NOT NULL DEFAULT '0',
  `safe_mail` varchar(45) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL COMMENT 'Password recovery prompt question',
  `answer` varchar(200) DEFAULT NULL COMMENT 'Password to get back the answer',
  `profession` varchar(200) DEFAULT NULL,
  `organization` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `hobby` varchar(200) DEFAULT NULL,
  `speciality` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iduser`,`uuid`,`time`,`mail`,`telephone`,`login`,`identification`),
  UNIQUE KEY `iduser_UNIQUE` (`iduser`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-30  5:56:51
