CREATE DATABASE  IF NOT EXISTS `message` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `message`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: message
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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `when` datetime DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(45) DEFAULT NULL,
  `where` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `what` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `why` varchar(200) DEFAULT NULL,
  `evaluate` text,
  `logo` varchar(100) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `remark` text,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmessage`,`uuid`),
  UNIQUE KEY `idmessage_UNIQUE` (`idmessage`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'9512659e-4470-4298-9e2c-03d185906b6e','2018-12-17 17:56:44','2018-12-17 09:53:15','	俄罗斯','俄罗斯造船厂','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92P4T8E0001NOS','俄海军','俄罗斯海军将在明年开始接收两艘先进核潜艇','军事','0','normal','俄海军与美差距大 希望靠新造潜艇缩小差距','俄罗斯正在加强海军军事能力，以缩小与美国差距','','','','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92Q4T8E0001NOS','俄罗斯的造船厂也正在为俄海军建造“拉达”级常规潜艇，未来“拉达”级常规潜艇的建造数量可能多达12艘。','hunter'),(4,'5cfc2c5a-d6cb-4325-b1f3-444da19f3329','2018-12-17 18:10:42','2018-12-17 10:04:52','美国印度','美国国务院','https://news.163.com/18/1217/16/E388O3PS0001875O.html','印美两国-印度两位相关政府人员','美国国务院批准向印度出售22架总价约20亿美元MQ-9B海上守卫者无人机及其配属设备','军事','0','normal','经费紧张数量减半至10亿美元','印度正在加强海洋防护监控能力，\r\n印度美国军事合作密切','','','','','印度两位相关政府人员16日透露，进口的无人机数量可能会缩减一半。','hunter');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 18:12:04
