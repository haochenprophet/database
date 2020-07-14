CREATE DATABASE  IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `news`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: news
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','google','news','http://news.google.com/news?pz=1&cf=all&ned=cn','img/google.jpg','2018-01-05 17:37:34','normal','china',0,'china'),(2,'hunter','people','news','http://www.people.com.cn','img/people.jpg','2018-01-05 17:39:23','normal','china',0,'china'),(3,'hunter','sohu','news','http://news.sohu.com/','img/sohu.jpg','2018-01-05 17:39:54','normal','china',0,'china'),(4,'hunter','wangyi163','news','http://news.163.com/latest/','img/wangyi.jpg','2018-01-05 17:40:35','normal','china',0,'china'),(5,'hunter','cgov','news','http://www.gov.cn/','img/cgov.jpg','2018-01-05 17:41:09','normal','china',0,'china'),(6,'hunter','ifeng','news','http://www.ifeng.com/','img/ifeng.jpg','2018-01-05 17:41:35','normal','china',0,'china'),(7,'hunter','xinhua','news','http://www.news.cn/','img/xinhua.jpg','2018-01-05 17:42:08','normal','china',0,'china'),(8,'hunter','china.news','news','http://news.china.com/','img/zxw.jpg','2018-01-05 17:42:53','normal','china',0,'china'),(9,'hunter','sina','news','http://news.sina.com.cn/','img/sina.jpg','2018-01-05 17:43:29','normal','china',0,'china'),(10,'hunter','tom','news','http://news.tom.com/','img/tom.jpg','2018-01-05 17:44:06','normal','china',0,'china'),(11,'hunter','yahoo','news','https://www.yahoo.com/news/','img/yahoo.jpg','2018-01-05 17:44:40','normal','china',0,'china'),(12,'hunter','chinabyte','news','http://news.chinabyte.com/','img/bit.jpg','2018-01-05 17:46:36','normal','china',0,'china'),(13,'hunter','qq','news','http://news.qq.com/','img/qq.jpg','2018-01-05 17:47:15','normal','china',0,'china'),(14,'hunter','baidu','news','http://news.baidu.com/','img/baidu.jpg','2018-01-05 17:47:48','normal','china',0,'china'),(15,'hunter','sogou','news','http://news.sogou.com/','img/sogou.jpg','2018-01-05 17:48:21','normal','china',0,'china'),(16,'hunter','huanqiu','news','http://www.huanqiu.com/','img/huanqiu.jpg','2018-01-05 17:48:52','normal','china',0,'china'),(17,'hunter','hao123','news','http://123.sogou.com/','img/hao123.jpg','2018-01-05 17:49:21','normal','china',0,'china'),(18,'hunter','paper','news','http://www.thepaper.cn/','img/paper.jpg','2018-01-05 17:50:00','normal','china',0,'china'),(19,'hunter','google-finance','news','http://www.google.com.hk/finance','img/stock.jpg','2018-01-05 17:50:44','normal','china',0,'china'),(20,'hunter','toutiao','news','https://www.toutiao.com/','img/toutiao.jpg','2018-01-05 17:51:16','normal','china',0,'china'),(21,'hunter','wallstreetcn','news','https://wallstreetcn.com/','img/wallstreetcn.jpg','2018-01-05 17:51:45','normal','china',0,'china'),(22,'hunter','news-cctv','news','http://news.cctv.com/','img/news-cctv.jpg','2018-01-05 17:52:16','normal','china',0,'china'),(23,'hunter','The New York Times','website','https://www.nytsyn.com/','img/nytime.jpg','2018-01-08 16:52:29','normal','utf8',0,'china'),(24,'hunter','washington post','website','https://www.washingtonpost.com/','img/washington.jpg','2018-01-08 17:00:51','normal','utf8',0,'china'),(25,'hunter','cri','website','http://www.cri.cn/','img/cri.jpg','2018-01-08 17:12:45','normal','utf8',0,'china'),(26,'hunter','thehindu','website','http://www.thehindu.com/','img/thehindu.jpg','2018-01-08 17:18:33','normal','utf8',0,'china'),(27,'hunter','southcn','website','http://www.southcn.com/','img/nanfangribao.jpg','2018-01-08 17:34:55','normal','china',0,'china'),(28,'hunter','globaltimes','website','http://www.globaltimes.cn/','img/globaltimes.jpg','2018-01-08 17:49:40','normal','china',0,'china'),(29,'hunter','theguardian','website','http://www.theguardian.com/','img/guardian.jpg','2018-01-08 18:24:08','normal','china',0,'china'),(30,'hunter','nhk','website','https://www.nhk.or.jp/','img/nhk.jpg','2018-01-23 15:35:53','normal','utf8',0,'china'),(31,'198382.com','SuZhouNews','website','http://www.subaonet.com/importnews/','img/suzhounews.png','2019-09-17 10:08:40','normal','utf8',0,'china'),(32,'198382.com','mod.gov.cn','website','http://www.mod.gov.cn/','img/mod.png','2020-07-14 11:47:23','normal','utf8',0,'china');
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

-- Dump completed on 2020-07-14 11:48:25
