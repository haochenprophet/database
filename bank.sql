CREATE DATABASE  IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bank`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','Merrill Lynch','website','https://www.ml.com/','img/bank.png','2018-08-19 21:00:27','normal','utf8',0,'china'),(2,'198382.com','citi','website','https://online.citi.com/','img/bank.png','2018-08-19 21:01:13','normal','utf8',0,'china'),(3,'198382.com','JPMorgan Chase & Co','website','https://www.jpmorganchase.com/','img/bank.png','2018-08-19 21:04:30','normal','utf8',0,'china'),(4,'198382.com','wells fargo','website','https://www.wellsfargo.com','img/bank.png','2018-08-19 21:05:32','normal','utf8',0,'china'),(5,'198382.com','HSBC','website','https://www.hsbc.com/','img/bank.png','2018-08-19 21:07:15','normal','utf8',0,'china'),(6,'198382.com','RBS','website','https://www.rbs.com/','img/bank.png','2018-08-19 21:08:16','normal','utf8',0,'china'),(7,'198382.com','barclays','website','https://www.barclays.co.uk/','img/bank.png','2018-08-19 21:09:48','normal','utf8',0,'china'),(8,'198382.com','lloyds bank','website','https://www.lloydsbank.com/','img/bank.png','2018-08-19 21:11:41','normal','utf8',0,'china'),(9,'198382.com','UBS','website','https://www.ubs.com/','img/bank.png','2018-08-19 21:13:52','normal','utf8',0,'china'),(10,'198382.com','DB','website','https://www.db.com/','img/bank.png','2018-08-19 21:15:31','normal','utf8',0,'china'),(11,'198382.com','commerzbank','website','https://www.commerzbank.de/','img/bank.png','2018-08-19 21:16:23','normal','utf8',0,'china'),(12,'198382.com','lbbw','website','https://www.lbbw.de/','img/bank.png','2018-08-19 21:18:36','normal','utf8',0,'china'),(13,'198382.com','postbank.de','website','https://www.postbank.de','img/bank.png','2018-08-19 21:20:42','normal','utf8',0,'china'),(14,'198382.com','bnp.paribas','website','https://group.bnpparibas/','img/bank.png','2018-08-19 21:23:07','normal','utf8',0,'china'),(15,'198382.com','softbank','website','https://www.softbank.jp/','img/bank.png','2018-08-19 21:24:40','normal','utf8',0,'china'),(16,'198382.com','Bank of Japan','website','http://www.boj.or.jp','img/bank.png','2018-08-19 21:26:29','normal','utf8',0,'china'),(17,'198382.com','MUFG','website','http://www.bk.mufg.jp/','img/bank.png','2018-08-19 21:28:10','normal','utf8',0,'china'),(18,'198382.com','mizuhobank','website','https://www.mizuhobank.co.jp','img/bank.png','2018-08-19 21:28:58','normal','utf8',0,'china'),(19,'198382.com','SMBC','website','http://www.smbc.co.jp/','img/bank.png','2018-08-19 21:29:34','normal','utf8',0,'china'),(20,'198382.com','shizuoka.bank','website','https://www.shizuokabank.co.jp/','img/bank.png','2018-08-19 21:31:19','normal','utf8',0,'china'),(21,'198382.com','ICBC','website','http://www.icbc.com.cn/icbc/','img/bank.png','2018-08-19 21:32:36','normal','utf8',0,'china'),(22,'198382.com','ABC.China','website','http://www.abchina.com/cn/','img/bank.png','2018-08-19 21:33:11','normal','utf8',0,'china'),(23,'198382.com','CCB.China','website','http://www.ccb.com','img/bank.png','2018-08-19 21:34:14','normal','utf8',0,'china'),(24,'198382.com','BOC.China','website','http://www.boc.cn/','img/bank.png','2018-08-19 21:35:13','normal','utf8',0,'china'),(25,'198382.com','COMM.China','website','https://creditcard.bankcomm.com/','img/bank.png','2018-08-19 21:36:12','normal','utf8',0,'china'),(26,'198382.com','CMB.China','website','http://www.cmbchina.com/','img/bank.png','2018-08-19 21:36:55','normal','utf8',0,'china'),(27,'198382.com','SPDB.China','website','http://www.spdb.com.cn/','img/bank.png','2018-08-19 21:37:36','normal','utf8',0,'china'),(28,'198382.com','CBR.RU','website','https://cbr.ru/eng/','img/bank.png','2018-08-19 21:39:53','normal','utf8',0,'china'),(29,'198382.com','sberbank.RU','website','https://www.sberbank.ru','img/bank.png','2018-08-19 21:41:08','normal','utf8',0,'china'),(30,'198382.com','VTB.RU','website','https://www.vtb.com/','img/bank.png','2018-08-19 21:42:33','normal','utf8',0,'china'),(31,'198382.com','gazprombank.RU','website','http://old.gazprombank.ru/','img/bank.png','2018-08-19 21:44:00','normal','utf8',0,'china'),(32,'198382.com','RSHB.RU','website','https://rshb.ru/','img/bank.png','2018-08-19 21:45:06','normal','utf8',0,'china'),(33,'198382.com','SBI.IN','website','https://www.sbi.co.in/','img/bank.png','2018-08-19 21:47:53','normal','utf8',0,'china'),(34,'198382.com','WorldBank','website','https://www.worldbank.org/','img/bank.png','2018-08-19 21:49:13','normal','utf8',100,'china'),(35,'198382.com','icicibank','website','https://www.icicibank.com','img/bank.png','2018-08-19 21:50:29','normal','utf8',0,'china'),(36,'198382.com','bankofindia','website','https://www.bankofindia.co.in','img/bank.png','2018-08-19 21:52:26','normal','utf8',0,'china'),(37,'198382.com','pnbindia','website','https://www.pnbindia.in/','img/bank.png','2018-08-19 21:53:33','normal','utf8',0,'china'),(38,'198382.com','baroda.in','website','https://www.bankofbaroda.com/','img/bank.png','2018-08-19 21:54:16','normal','utf8',0,'china'),(39,'198382.com','hdfcbank','website','https://www.hdfcbank.com/','img/bank.png','2018-08-19 21:55:10','normal','utf8',0,'china'),(40,'198382.com','unitedbank.in','website','https://www.unitedbankofindia.com/','img/bank.png','2018-08-19 21:57:09','normal','utf8',0,'china');
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

-- Dump completed on 2018-08-19 21:58:33
