CREATE DATABASE  IF NOT EXISTS `medical` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `medical`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: medical
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','cell','website','http://www.cell.com/','img/cell.gif','2018-02-01 17:38:23','normal','utf8',0,'china'),(2,'hunter','thelancet','website','http://www.thelancet.com/','img/thelancet.jpg','2018-02-01 17:45:05','normal','utf8',0,'china'),(3,'hunter','fda','website','https://www.fda.gov/','img/fda.jpg','2018-02-01 17:51:45','normal','utf8',0,'china'),(4,'hunter','edqm','website','https://www.edqm.eu/','img/edqm.jpg','2018-02-01 17:54:16','normal','utf8',0,'china'),(5,'hunter','bfarm','website','https://www.bfarm.de','img/bfarm.jpg','2018-02-01 17:57:37','normal','utf8',0,'china'),(6,'hunter','mhra','website','http://www.gov.uk/mhra','img/mhra.jpg','2018-02-01 18:03:09','normal','utf8',0,'china'),(7,'hunter','ncbi','website','https://www.ncbi.nlm.nih.gov/','img/ncbi.jpg','2018-02-01 18:05:39','normal','utf8',0,'china'),(8,'hunter','medline','website','https://www.medline.com/','img/medline.jpg','2018-02-01 18:08:21','normal','utf8',0,'china'),(9,'hunter','wolterskluwer','website','http://wolterskluwer.com/','img/wolterskluwer.jpg','2018-02-01 18:13:25','normal','utf8',0,'china'),(10,'hunter','gsk','website','https://www.gsk.com/','img/gsk.jpg','2018-02-01 18:15:58','normal','utf8',0,'china'),(11,'hunter','pfizer','website','https://www.pfizer.com/','img/pfizer.jpg','2018-02-01 18:19:58','normal','utf8',0,'china'),(12,'hunter','merck','website','http://www.merck.com/','img/merck.jpg','2018-02-01 18:21:00','normal','utf8',0,'china'),(13,'hunter','sanofi','website','https://www.sanofi.com/','img/sanofi.png','2018-02-01 18:25:30','normal','utf8',0,'china'),(14,'hunter','novartis','website','https://www.novartis.com/','img/novartis.jpg','2018-02-01 18:29:17','normal','utf8',0,'china'),(15,'hunter','bayer','website','https://www.bayer.com/','img/bayer.jpg','2018-02-01 18:33:23','normal','utf8',0,'china'),(16,'hunter','boehringer-ingelheim','website','https://www.boehringer-ingelheim.com/','img/boehringer-ingelheim.jpg','2018-02-01 18:36:01','normal','utf8',0,'china'),(17,'hunter','akzonobel','website','https://www.akzonobel.com/','img/akzonobel.jpg','2018-02-01 18:36:49','normal','utf8',0,'china'),(18,'hunter','novonordisk','website','https://www.novonordisk.com/','img/novonordisk.jpg','2018-02-01 18:39:23','normal','utf8',0,'china'),(19,'hunter','takeda','website','https://www.takeda.com/','img/takeda.jpg','2018-02-01 18:41:09','normal','utf8',0,'china'),(20,'hunter','cpi','website','http://www.cpi.gov.cn','img/cpi.jpg','2018-02-01 18:49:37','normal','utf8',0,'china'),(21,'hunter','who.int','website','http://www.who.int/en/','img/whoint.jpg','2018-02-01 18:52:40','normal','utf8',0,'china'),(22,'hunter','icrc','website','https://www.icrc.org/','img/icrc.png','2018-02-01 18:54:56','normal','utf8',0,'china'),(23,'hunter','redcross','website','http://www.redcross.org.cn','img/redcross.jpg','2018-02-01 18:58:02','normal','utf8',0,'china'),(24,'hunter','nhfpc','website','http://www.nhfpc.gov.cn/','img/zgwsb.png','2018-02-01 19:01:50','normal','utf8',0,'china');
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

-- Dump completed on 2018-02-01 19:10:07
