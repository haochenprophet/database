CREATE DATABASE  IF NOT EXISTS `documentary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `documentary`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: documentary
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
  `logo` varchar(200) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
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
INSERT INTO `url` VALUES (1,'198382.com','CCTV-9','website','http://tv.cctv.com/live/cctvjilu/?spm=C28340.PezlfowbXwdI.EnwLEh2NqmuU.13','img/documentary.png','2019-03-09 14:53:27','normal','utf8',0,'china'),(2,'198382.com','记实','website','http://jishi.cctv.com/index.shtml','img/documentary.png','2019-03-09 15:25:34','normal','utf8',0,'china'),(3,'198382.com','创新中国','website','http://jishi.cctv.com/special/djsb/cxzgdjsb/index.shtml','img/documentary.png','2019-03-09 15:27:57','normal','utf8',0,'china'),(4,'198382.com','智慧中国','website','http://tv.cctv.com/2017/06/12/VIDAU9WqFciwfCIAIZbyhBRo170612.shtml?spm=C86503.P56930602958.S01584.2','img/documentary.png','2019-03-15 10:04:53','normal','utf8',0,'china'),(5,'198382.com','科学重器','website','http://tv.cctv.com/2016/09/27/VIDA1V9SBnQrbHG5VO5BgaqM160927.shtml?spm=C86503.P56930602958.S01584.5','img/documentary.png','2019-03-15 10:07:12','normal','utf8',0,'china'),(6,'198382.com','舌尖上的中国','website','http://jishi.cctv.com/special/shejian3PC/shouye/index.shtml?spm=C86503.P56930602958.S83443.56','img/documentary.png','2019-03-15 10:10:37','normal','utf8',0,'china'),(7,'198382.com','谍战','website','http://jishi.cctv.com/doc/list/fl/dz/index.shtml?spm=C86503.P56930602958.S83443.51','img/documentary.png','2019-03-15 10:12:19','normal','utf8',0,'china'),(8,'198382.com','美国国家地理','website','http://jishi.cctv.com/special/meiguoguojiadili/index.shtml','img/documentary.png','2019-03-15 10:13:45','normal','utf8',100,'china'),(9,'198382.com','电子人','website','http://jishi.cntv.cn/2013/01/25/VIDA1359081364351231.shtml','img/documentary.png','2019-03-15 10:14:52','normal','utf8',100,'china'),(10,'198382.com','大太平洋','website','http://jishi.cctv.com/special/dtpy/index.shtml?spm=C86503.P56930602958.S63521.6','img/documentary.png','2019-03-15 10:18:28','normal','utf8',0,'china'),(11,'198382.com','超级工程','website','http://jishi.cctv.com/special/chaojigongcheng/?spm=C28340.PVkcgLVeByP5.EuOfj7a88RXM.15','img/documentary.png','2019-03-15 10:21:38','normal','utf8',0,'china'),(12,'198382.com','自然的力量','website','http://jishi.cctv.com/special/zrdll/index.shtml','img/documentary.png','2019-03-15 10:23:40','normal','utf8',0,'china');
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

-- Dump completed on 2019-03-15 10:31:03
