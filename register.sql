CREATE DATABASE  IF NOT EXISTS `register` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `register`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: register
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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `idregister` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(200) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL COMMENT 'login name',
  `identification` varchar(100) DEFAULT NULL,
  `id_type` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
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
  `action` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idregister`,`uuid`,`time`,`mail`),
  UNIQUE KEY `idregister_UNIQUE` (`idregister`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 14:57:37
