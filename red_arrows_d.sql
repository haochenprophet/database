CREATE DATABASE  IF NOT EXISTS `red_arrows` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `red_arrows`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: red_arrows
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
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','prophet','website','https://github.com/haochenprophet','img/red-arrows.png','2018-07-27 23:36:45','normal','utf8',96,'china'),(2,'198382.com','open-thinking','website','https://github.com/open-thinking','img/red-arrows.png','2018-07-28 00:16:00','normal','utf8',98,'china'),(3,'198382.com','red-arrows','website','https://github.com/red-arrows','img/red-arrows.png','2018-07-28 00:17:15','normal','utf8',100,'china'),(4,'198382.com','stockoperate','website','https://github.com/stockoperate','img/red-arrows.png','2018-07-28 00:18:18','normal','utf8',0,'china'),(5,'198382.com','patent-sys','website','https://github.com/patent-sys','img/red-arrows.png','2018-07-28 00:19:08','normal','utf8',99,'china'),(6,'198382.com','open-workspace','website','https://github.com/open-workspace','img/red-arrows.png','2018-07-28 00:20:12','normal','utf8',0,'china'),(7,'198382.com','open-war','website','https://github.com/open-war','img/red-arrows.png','2018-07-28 00:20:55','normal','utf8',0,'china'),(8,'198382.com','open-test','website','https://github.com/open-test','img/red-arrows.png','2018-07-28 00:21:32','normal','utf8',97,'china'),(9,'198382.com','open-radar','website','https://github.com/open-radar','img/red-arrows.png','2018-07-28 00:22:06','normal','utf8',0,'china'),(10,'198382.com','open-origin','website','https://github.com/open-origin','img/red-arrows.png','2018-07-28 00:22:41','normal','utf8',0,'china'),(11,'198382.com','open-news','website','https://github.com/open-news','img/red-arrows.png','2018-07-28 00:23:52','normal','utf8',0,'china'),(12,'198382.com','open-field','website','https://github.com/open-field','img/red-arrows.png','2018-07-28 00:24:18','normal','utf8',0,'china'),(13,'198382.com','open-erp','website','https://github.com/open-erp','img/red-arrows.png','2018-07-28 00:24:43','normal','utf8',0,'china'),(14,'198382.com','open-egov','website','https://github.com/open-egov','img/red-arrows.png','2018-07-28 00:25:32','normal','utf8',0,'china'),(15,'198382.com','open-bios','website','https://github.com/open-bios','img/red-arrows.png','2018-07-28 00:26:04','normal','utf8',0,'china'),(16,'198382.com','open-bill','website','https://github.com/open-bill','img/red-arrows.png','2018-07-28 00:26:40','normal','utf8',0,'china'),(17,'198382.com','open-asm','website','https://github.com/open-asm','img/red-arrows.png','2018-07-28 00:27:50','normal','utf8',0,'china'),(18,'198382.com','mysterious-cat','website','https://github.com/mysterious-cat','img/red-arrows.png','2018-07-28 00:28:28','normal','utf8',0,'china'),(19,'198382.com','konwledge','website','https://github.com/konwledge','img/red-arrows.png','2018-07-28 00:29:11','normal','utf8',0,'china'),(20,'198382.com','ihistory','website','https://github.com/ihistory','img/red-arrows.png','2018-07-28 00:29:37','normal','utf8',0,'china'),(21,'198382.com','code-learn','website','https://github.com/code-lean','img/red-arrows.png','2018-07-28 00:30:32','normal','utf8',0,'china'),(22,'198382.com','auto-sync','website','https://github.com/auto-sync','img/red-arrows.png','2018-07-28 00:31:39','normal','utf8',0,'china'),(23,'198382.com','ai-worker','website','https://github.com/ai-worker','img/red-arrows.png','2018-07-28 00:32:14','normal','utf8',0,'china'),(24,'198382.com','ai-radar','website','https://github.com/ai-radar','img/red-arrows.png','2018-07-28 00:32:43','normal','utf8',0,'china'),(25,'198382.com','ai-os','website','https://github.com/ai-os','img/red-arrows.png','2018-07-28 00:33:16','normal','utf8',0,'china'),(26,'198382.com','ai-lib','website','https://github.com/ai-lib','img/red-arrows.png','2018-07-28 00:33:50','normal','utf8',0,'china'),(27,'198382.com','ai-eat','website','https://github.com/ai-eat','img/red-arrows.png','2018-07-28 00:34:24','normal','utf8',0,'china'),(28,'198382.com','ai-device','website','https://github.com/ai-device','img/red-arrows.png','2018-07-28 00:34:52','normal','utf8',0,'china'),(29,'198382.com','ai-coding','website','https://github.com/ai-coding','img/red-arrows.png','2018-07-28 00:35:27','normal','utf8',0,'china'),(30,'198382.com','ai-car','website','https://github.com/ai-car','img/red-arrows.png','2018-07-28 00:36:18','normal','utf8',0,'china'),(31,'198382.com','ai-brain','website','https://github.com/ai-brain','img/red-arrows.png','2018-07-28 00:36:57','normal','utf8',0,'china'),(32,'198382.com','Personal Lifetime Information','website','https://github.com/PLID','img/red-arrows.png','2018-07-28 00:37:54','normal','utf8',0,'china'),(33,'198382.com','auto-hardware','website','https://github.com/auto-hardware','img/red-arrows.png','2018-08-22 16:31:55','normal','utf8',0,'china'),(34,'198382.com','ai-water','website','https://github.com/ai-water','img/red-arrows.png','2018-08-24 14:09:05','normal','utf8',0,'china'),(35,'198382.com','auto-everything','website','https://github.com/auto-everything','img/red-arrows.png','2018-09-01 10:54:56','normal','utf8',0,'china'),(36,'198382.com','open-hitfake','website','https://github.com/open-hitfake','img/red-arrows.png','2018-09-09 05:24:55','normal','utf8',0,'china'),(37,'198382.com','ai-health','website','https://github.com/ai-health','img/red-arrows.png','2018-09-13 10:34:50','normal','utf8',0,'china'),(38,'198382.com','open-water','website','https://github.com/open-water','img/red-arrows.png','2018-09-13 11:00:21','normal','utf8',0,'china'),(39,'198382.com','ai-teacher','website','https://github.com/ai-teacher','img/red-arrows.png','2018-09-13 11:03:45','normal','utf8',0,'china'),(40,'198382.com','open-debt','website','https://github.com/open-debt','img/red-arrows.png','2018-09-13 11:06:41','normal','utf8',0,'china'),(41,'198382.com','open-link','website','https://github.com/open-link','img/red-arrows.png','2018-09-13 11:19:09','normal','utf8',0,'china'),(42,'198382.com','auto-coding','website','https://github.com/auto-coding','img/red-arrows.png','2018-09-13 18:01:02','normal','utf8',0,'china'),(43,'198382.com','ai-hardware','website','https://github.com/ai-hardware','img/red-arrows.png','2018-09-13 18:06:09','normal','utf8',0,'china'),(44,'198382.com','online-court','website','https://github.com/online-court','img/red-arrows.png','2018-09-13 18:32:26','normal','utf8',0,'china'),(45,'198382.com','open-idear','website','https://github.com/open-idear','img/red-arrows.png','2018-09-13 18:34:27','normal','utf8',0,'china'),(46,'198382.com','open-customs','website','https://github.com/open-customs','img/red-arrows.png','2018-09-13 18:36:50','normal','utf8',0,'china'),(47,'198382.com','ai-earth','website','https://github.com/ai-earth','img/red-arrows.png','2018-09-13 18:38:21','normal','utf8',0,'china'),(48,'198382.com','open-tutelage','website','https://github.com/open-tutelage','img/red-arrows.png','2018-09-13 18:40:44','normal','utf8',0,'china'),(49,'198382.com','alon8432','website','https://github.com/alon8432','img/red-arrows.png','2018-11-08 13:12:04','normal','utf8',0,'china'),(50,'198382.com','LouisChenPM','website','https://github.com/LouisChenPM','img/red-arrows.png','2019-03-31 23:09:04','normal','utf8',0,'china'),(51,'198382.com','free-office','website','https://github.com/free-office','img/red-arrows.png','2019-08-18 16:29:52','normal','utf8',0,'china'),(52,'198382.com','ai-e-project','website','https://github.com/ai-e-project','img/red-arrows.png','2019-08-18 16:30:24','normal','utf8',0,'china');
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

-- Dump completed on 2019-08-18 16:31:38
