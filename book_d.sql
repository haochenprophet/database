-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','gitbook','website','https://www.gitbook.com','img/gitbook.png','2018-01-30 16:31:42','normal','utf8',100,'china'),(2,'hunter','redbooks','website','http://www.redbooks.ibm.com/','img/redbooks.gif','2018-01-30 16:38:50','normal','utf8',99,'china'),(3,'hunter','deeplearningbook','website','http://www.deeplearningbook.org/','img/deep-learning.png','2018-01-30 16:44:23','normal','utf8',98,'china'),(4,'hunter','daodejing','website','http://www.daodejing.org/','img/daodejing.jpg','2018-02-10 13:17:40','normal','utf8',97,'china'),(5,'hunter','lunyu','website','http://www.guoxue.com/?book=lunyu','img/lunyu.jpg','2018-02-10 13:30:03','normal','utf8',95,'china'),(6,'hunter','sunzibingf','website','http://www.guoxue.com/?book=szbf','img/szbf.jpg','2018-02-10 13:50:11','normal','utf8',95,'china'),(7,'hunter','sunbinbingfa','website','http://www.gushiwen.org/guwen/sunbin.aspx','img/sunbinbingfa.jpg','2018-02-10 13:59:21','normal','utf8',92,'china'),(8,'hunter','zhouyi','website','http://www.gushiwen.org/guwen/zhouyi.aspx','img/zhouyi.jpg','2018-02-10 14:11:32','normal','utf8',91,'china'),(9,'hunter','daxue','website','http://www.gushiwen.org/guwen/daxue.aspx','img/daxue.jpg','2018-02-10 14:26:40','normal','utf8',91,'china'),(10,'hunter','sanzijing','website','http://www.yuwenmi.com/guoxue/sanzijing/','img/sanzijing.jpg','2018-02-10 14:41:16','normal','utf8',90,'china'),(11,'hunter','shiji','website','http://www.gushiwen.org/guwen/shiji.aspx','img/shiji.jpg','2018-02-10 14:48:38','normal','utf8',90,'china'),(12,'hunter','bencaogangmu','website','http://so.gushiwen.org/guwen/book_12.aspx','img/bencaogangmu.jpg','2018-02-10 14:52:16','normal','utf8',89,'china'),(13,'hunter','linuxtopia-online_books','website','https://www.linuxtopia.org/online_books/index.html','img/linuxtopia.jpg','2018-04-24 16:56:14','normal','utf8',0,'china'),(14,'hunter','linux kernel','website','https://www.kernel.org/doc/html/latest/','img/linux.png','2018-04-24 17:04:36','normal','utf8',0,'china'),(15,'hunter','wowebook','website','http://www.wowebook.org/','img/wowebook.jpg','2018-04-26 16:54:56','normal','utf8',0,'china');
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

-- Dump completed on 2018-04-26 16:58:01
