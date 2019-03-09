-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','facebook','website','http://www.facebook.com/','img/facebook.jpg','2018-01-10 14:27:07','normal','china',0,'china'),(2,'hunter','twitter','website','http://twitter.com/','img/twitter.jpg','2018-01-10 14:27:45','normal','china',0,'china'),(3,'hunter','weibo','website','http://weibo.com','img/sina_blog.jpg','2018-01-10 14:29:16','normal','china',0,'china'),(4,'hunter','qq_blog','website','http://blog.qq.com/','img/qq_blog.jpg','2018-01-10 14:29:52','normal','china',0,'china'),(5,'hunter','sohu_blog','website','http://t.sohu.com/','img/sohu_blog.jpg','2018-01-10 14:32:21','normal','china',0,'china'),(6,'hunter','csdn','website','http://blog.csdn.net/','img/csdn.jpg','2018-01-10 14:36:10','normal','china',0,'china'),(7,'hunter','wangyi','website','http://blog.163.com/','img/163_blog.jpg','2018-01-10 14:37:32','normal','china',0,'china'),(8,'hunter','tianya','website','http://blog.tianya.cn/','img/tianya.jpg','2018-01-11 16:33:25','normal','utf8',94,'china');
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

-- Dump completed on 2019-03-09 15:33:27
