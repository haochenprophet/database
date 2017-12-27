-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: search
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `method` (
  `idmethod` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT 'submit name:$XXXX ',
  `type` varchar(45) NOT NULL,
  `base` varchar(200) NOT NULL COMMENT 'URL= base+before_key+key+after_key.',
  `before` varchar(45) DEFAULT NULL,
  `after` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY (`idmethod`,`name`,`base`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Different websites search method\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'Google','search','http://www.google.com/search?q=+','','&ie=UTF-8+&oe=UTF-8','2017-12-27 06:18:14','hunter'),(2,'Bing','search','https://www.bing.com/search?q=','','','2017-12-27 06:19:27','hunter'),(3,'ZhiHu','search','https://www.zhihu.com/search?type=content&q=','','','2017-12-27 06:20:52','hunter'),(4,'Baidu','search','https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=','','','2017-12-27 06:27:42','hunter'),(5,'ZhiHu','search','https://www.zhihu.com/search?type=content&q=','','','2017-12-27 06:37:21','hunter'),(6,'Github','code','https://github.com/search?utf8=%E2%9C%93&q=','','&type=','2017-12-27 06:38:08','hunter'),(7,'Sina','news','http://search.sina.com.cn/?q=','','&c=news&from=index','2017-12-27 16:03:10','hunter'),(8,'Tmail','shopping','https://list.tmall.com/search_product.htm?q=','','','2017-12-27 16:10:42','hunter'),(9,'JingDong','shopping','https://search.jd.com/Search?keyword=','','&enc=utf-8','2017-12-27 16:13:34','hunter'),(10,'Taobao','shopping','https://s.taobao.com/search?q=','','','2017-12-27 16:16:31','hunter'),(11,'Vip','shopping','https://category.vip.com/suggest.php?keyword=','','','2017-12-27 16:18:26','hunter'),(12,'CSDN','technology','http://so.csdn.net/so/search/s.do?q=','','','2017-12-27 16:19:49','hunter'),(13,'Amazon','shopping','https://www.amazon.cn/s/field-keywords=','','','2017-12-27 16:22:15','hunter'),(14,'MSDN_CN','technology','https://social.msdn.microsoft.com/Search/zh-CN?query=','','','2017-12-27 16:32:03','hunter'),(15,'PHP','technology','http://php.net/manual-lookup.php?pattern=','','','2017-12-27 16:34:34','hunter'),(16,'Oracle','technology','https://www.oracle.com/search/results?Nty=1&Ntk=S3&Ntt=','','','2017-12-27 16:39:46','hunter'),(17,'Mysql','technology','https://www.oracle.com/search/results?cat=mysql&Ntk=SI-ALL5&Ntt=','','','2017-12-27 16:42:01','hunter'),(18,'C++','technology','http://www.cplusplus.com/search.do?q=','','','2017-12-27 16:44:24','hunter'),(19,'Java','technology','https://docs.oracle.com/apps/search/search.jsp?q=','','&category=all','2017-12-27 17:31:33','hunter'),(20,'Python','technology','https://www.python.org/search/?q=','','','2017-12-27 17:35:06','hunter'),(21,'Yahoo','search','https://search.yahoo.com/search?p=','','','2017-12-27 17:43:45','hunter');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 17:56:43
