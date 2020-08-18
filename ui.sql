CREATE DATABASE  IF NOT EXISTS `ui` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ui`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ui
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','gnome','website','https://www.gnome.org/','img/ui.jpg','2018-07-28 11:31:32','normal','utf8',0,'china'),(2,'198382.com','axure','website','https://www.axure.com/','img/ui.jpg','2018-07-28 11:42:42','normal','utf8',0,'china'),(3,'198382.com','mindmanager','website','https://www.mindjet.com/','img/ui.jpg','2018-07-28 11:45:04','normal','utf8',0,'china'),(4,'198382.com','lumzy','website','http://www.lumzy.com/','img/ui.jpg','2018-07-28 11:47:32','normal','utf8',0,'china'),(5,'198382.com','gomockingbird','website','https://gomockingbird.com/home','img/ui.jpg','2018-07-28 11:48:29','normal','utf8',0,'china'),(6,'198382.com','mockflow','website','https://www.mockflow.com/','img/ui.jpg','2018-07-28 11:49:50','normal','utf8',0,'china'),(7,'198382.com','cacoo','website','https://cacoo.com/','img/ui.jpg','2018-07-28 11:50:49','normal','utf8',0,'china'),(8,'198382.com','dhtmlx','website','https://dhtmlx.com/touch/','img/ui.jpg','2018-07-28 11:55:54','normal','utf8',0,'china'),(9,'198382.com','protopie','website','https://www.protopie.io/','img/ui.jpg','2018-07-28 12:04:26','normal','utf8',0,'china'),(10,'198382.com','framer','website','https://framer.com/','img/ui.jpg','2018-07-28 12:06:12','normal','utf8',0,'china'),(11,'198382.com','xfce','website','https://xfce.org/','img/ui.jpg','2018-07-28 12:09:13','normal','utf8',0,'china'),(12,'198382.com','kde','website','https://www.kde.org/','img/ui.jpg','2018-07-28 12:11:53','normal','utf8',0,'china'),(13,'198382.com','axialis','website','https://www.axialis.com/','img/ui.jpg','2018-08-08 18:44:31','normal','utf8',0,'china'),(14,'198382.com','icoconverter','website','https://www.icoconverter.com/','img/ui.jpg','2018-08-12 15:48:01','normal','utf8',0,'china'),(15,'198382.com','highcharts-JS','website','https://www.highcharts.com.cn','img/ui.jpg','2019-02-13 16:44:08','normal','utf8',0,'china'),(16,'198382.com','cairographics_php','website','https://www.cairographics.org/download/','img/ui.jpg','2019-02-20 16:05:43','normal','utf8',0,'china'),(17,'198382.com','PHP_UI','website','http://pecl.php.net/package/ui','img/ui.jpg','2019-03-13 17:07:41','normal','utf8',0,'china'),(18,'198382.com','CefSharp','website','https://github.com/cefsharp/CefSharp','img/ui.jpg','2019-03-13 17:10:26','normal','utf8',0,'china'),(19,'198382.com','echarts.apache','website','https://echarts.apache.org/','img/ui.jpg','2020-08-18 13:18:22','normal','utf8',0,'china'),(20,'198382.com','gephi.org','website','https://gephi.org/','img/ui.jpg','2020-08-18 13:28:24','normal','utf8',0,'china'),(21,'198382.com','js-ember-charts','website','https://www.javascripting.com/view/ember-charts','img/ui.jpg','2020-08-18 13:37:57','normal','utf8',0,'china'),(22,'198382.com','leafletjs','website','https://leafletjs.com/','img/ui.jpg','2020-08-18 13:39:41','normal','utf8',0,'china'),(23,'198382.com','openlayers','website','https://openlayers.org/','img/ui.jpg','2020-08-18 13:40:48','normal','utf8',0,'china'),(24,'198382.com','dygraphs','website','http://dygraphs.com/','img/ui.jpg','2020-08-18 13:42:26','normal','utf8',0,'china'),(25,'198382.com','powerbi','website','https://powerbi.microsoft.com/','img/ui.jpg','2020-08-18 13:44:14','normal','utf8',0,'china'),(26,'198382.com','tableau','website','https://www.tableau.com/','img/ui.jpg','2020-08-18 13:44:44','normal','utf8',0,'china'),(27,'198382.com','chartblocks','website','https://www.chartblocks.com/','img/ui.jpg','2020-08-18 13:46:12','normal','utf8',0,'china'),(28,'198382.com','rawgraphs','website','https://rawgraphs.io/','img/ui.jpg','2020-08-18 13:46:52','normal','utf8',0,'china'),(29,'198382.com','qlikview','website','https://www.qlik.com/us/products/qlikview','img/ui.jpg','2020-08-18 13:50:02','normal','utf8',0,'china'),(30,'198382.com','datawrapper','website','https://www.datawrapper.de/','img/ui.jpg','2020-08-18 13:51:02','normal','utf8',0,'china');
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

-- Dump completed on 2020-08-18 13:52:35
