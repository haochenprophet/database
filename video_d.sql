CREATE DATABASE  IF NOT EXISTS `video` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `video`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: video
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
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','youtube','video','https://www.youtube.com/','img/youtube.jpg','2017-12-20 19:00:05','normal','utf8',0,'china'),(2,'hunter','youku','video','http://www.youku.com/','img/youku.jpg','2017-12-20 19:15:41','normal','utf8',0,'china'),(3,'hunter','tudou','video','http://www.tudou.com/','img/tudou.jpg','2017-12-20 19:16:52','normal','utf8',0,'china'),(4,'hunter','sina','video','http://video.sina.com.cn/','img/sina_vedio.jpg','2017-12-20 19:17:48','normal','utf8',0,'china'),(5,'hunter','iqiyi','video','http://www.iqiyi.com/','img/aiqiyi.jpg','2017-12-20 19:18:38','normal','utf8',0,'china'),(6,'hunter','ifeng','video','http://v.ifeng.com/','img/ifeng_vedio.jpg','2017-12-20 19:19:45','normal','utf8',0,'china'),(7,'hunter','baidu','video','http://video.baidu.com/','img/baidu_vedio.jpg','2017-12-20 19:21:13','normal','utf8',0,'china'),(8,'hunter','CCTV','video','http://tv.cctv.com/','img/cctv-video.jpg','2017-12-21 16:16:17','normal','utf8',0,'china'),(9,'hunter','imooc','website','https://www.imooc.com/','img/imooc.jpg','2017-12-29 11:56:49','normal','utf8',0,'china'),(10,'hunter','QQ','website','https://v.qq.com/','img/qq_vedio.jpg','2018-03-06 08:19:13','normal','utf8',0,'china'),(11,'198382.com','douyin','website','https://www.douyin.com/','img/douyin.jpg','2019-02-10 21:11:44','normal','utf8',0,'china'),(12,'198382.com','bilibili','website','https://www.bilibili.com/','img/bilibili.jpg','2019-02-10 21:15:00','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `idvideo` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `name` varchar(450) NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'text' COMMENT 'what type',
  `md5` varchar(45) NOT NULL,
  `size` bigint(20) NOT NULL,
  `url` varchar(1000) NOT NULL COMMENT 'url path',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last time',
  `where` varchar(450) DEFAULT NULL COMMENT 'location information',
  `who` varchar(450) DEFAULT NULL,
  `what` varchar(450) DEFAULT NULL COMMENT 'what video description',
  `why` varchar(450) DEFAULT NULL,
  `how` varchar(450) DEFAULT NULL COMMENT 'how to use:like Open mode url',
  `status` varchar(45) NOT NULL,
  `priority` int(11) DEFAULT '0',
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idvideo`,`uuid`,`name`,`type`,`md5`,`size`,`time`,`when`,`status`),
  UNIQUE KEY `idvideo_UNIQUE` (`idvideo`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-02 10:58:05
