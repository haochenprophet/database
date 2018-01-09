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
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(45) NOT NULL,
  `base` varchar(200) NOT NULL COMMENT 'URL= base+before_key+key+after_key.',
  `before` varchar(45) DEFAULT NULL,
  `after` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY (`idmethod`,`name`,`base`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Different websites search method\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'Google',100,'search','http://www.google.com/search?q=+','','&ie=UTF-8+&oe=UTF-8','2017-12-27 06:18:14','hunter'),(2,'Bing',99,'search','https://www.bing.com/search?q=','','','2017-12-27 06:19:27','hunter'),(3,'ZhiHu',96,'search','https://www.zhihu.com/search?type=content&q=','','','2017-12-27 06:20:52','hunter'),(4,'Baidu',99,'search','https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=','','','2017-12-27 06:27:42','hunter'),(5,'Github',82,'code','https://github.com/search?utf8=%E2%9C%93&q=','','&type=','2017-12-27 06:38:08','hunter'),(6,'Sina',52,'news','http://search.sina.com.cn/?q=','','&c=news&from=index','2017-12-27 16:03:10','hunter'),(7,'Tmail',49,'shopping','https://list.tmall.com/search_product.htm?q=','','','2017-12-27 16:10:42','hunter'),(8,'JingDong',48,'shopping','https://search.jd.com/Search?keyword=','','&enc=utf-8','2017-12-27 16:13:34','hunter'),(9,'Taobao',50,'shopping','https://s.taobao.com/search?q=','','','2017-12-27 16:16:31','hunter'),(10,'Vip',47,'shopping','https://category.vip.com/suggest.php?keyword=','','','2017-12-27 16:18:26','hunter'),(11,'Yahoo',98,'search','https://search.yahoo.com/search?p=','','','2017-12-27 17:43:45','hunter'),(12,'CSDN',72,'technology','http://so.csdn.net/so/search/s.do?q=','','','2017-12-27 16:19:49','hunter'),(13,'Amazon',45,'shopping','https://www.amazon.cn/s/field-keywords=','','','2017-12-27 16:22:15','hunter'),(14,'MSDN_CN',81,'technology','https://social.msdn.microsoft.com/Search/zh-CN?query=','','','2017-12-27 16:32:03','hunter'),(15,'PHP',77,'technology','http://php.net/manual-lookup.php?pattern=','','','2017-12-27 16:34:34','hunter'),(16,'Oracle',75,'technology','https://www.oracle.com/search/results?Nty=1&Ntk=S3&Ntt=','','','2017-12-27 16:39:46','hunter'),(17,'Mysql',76,'technology','https://www.oracle.com/search/results?cat=mysql&Ntk=SI-ALL5&Ntt=','','','2017-12-27 16:42:01','hunter'),(18,'C++',80,'technology','http://www.cplusplus.com/search.do?q=','','','2017-12-27 16:44:24','hunter'),(19,'Java',79,'technology','https://docs.oracle.com/apps/search/search.jsp?q=','','&category=all','2017-12-27 17:31:33','hunter'),(20,'Python',78,'technology','https://www.python.org/search/?q=','','','2017-12-27 17:35:06','hunter'),(21,'Amap',95,'map','http://ditu.amap.com/search?query=','','','2017-12-27 10:32:02','hunter'),(22,'QiChaCha',10,'information','http://www.qichacha.com/search?key=','','','2017-12-28 17:50:14','hunter'),(23,'Cmake',74,'technology','https://cmake.org/?s=','','','2017-12-28 18:29:02','hunter'),(24,'ubuntu',73,'technology','https://www.ubuntu.com/search?q=','','','2017-12-28 18:33:18','hunter'),(25,'ebay',44,'shopping','https://www.ebay.com/sch/i.html?&_nkw=','','','2017-12-28 18:44:36','hunter'),(26,'Biyao',46,'shopping','http://www.biyao.com/classify/search.html?query=','','','2017-12-28 18:47:06','hunter'),(27,'中国政府采购',11,'shopping','http://search.ccgp.gov.cn/bxsearch?searchtype=2&kw=','','','2017-12-28 18:51:44','hunter'),(28,'Alibaba',51,'shopping','https://s.1688.com/selloffer/offer_search.htm?keywords=','','','2017-12-28 18:57:23','hunter'),(29,'国家企业信用',11,'gov','http://www.gsxt.gov.cn/?','','','2017-12-28 19:15:23','hunter'),(30,'UEFI',82,'technology','http://www.uefi.org/search/node/','','','2017-12-29 10:57:39','hunter'),(31,'x-code',79,'technology','https://developer.apple.com/search/?q=','','','2017-12-29 11:07:26','hunter'),(32,'U-Boot',82,'technology','http://www.denx.de/wiki/view/U-Boot/WebSearch?search=','','&scope=all','2017-12-29 11:12:05','hunter'),(33,'wiki',100,'search','https://en.wikipedia.org/wiki/','','','2017-12-29 11:17:05','hunter'),(34,'runoob',81,'technology','http://www.runoob.com/?s=','','','2017-12-29 16:08:42','hunter'),(35,'EN-CN',0,'translate','https://translate.google.cn/#en/zh-CN/','','','2017-12-30 01:18:25','hunter'),(36,'CN->EN',0,'translate','https://translate.google.cn/#zh-CN/en/','','','2017-12-30 01:19:34','hunter'),(37,'ximalaya',0,'audio','http://www.ximalaya.com/search/all/kw/','','','2017-12-30 01:29:51','hunter'),(38,'music.163',0,'audio','http://music.163.com/#/search/m/?s=','','','2017-12-30 01:51:31','hunter'),(39,'kugou',0,'audio','http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=','','','2017-12-30 01:53:38','hunter'),(40,'qq.music',0,'audio','https://y.qq.com/portal/search.html#t=song&w=','','','2017-12-30 01:57:07','hunter'),(41,'Baike',0,'search','https://baike.baidu.com/item/','','','2018-01-08 16:50:17','hunter');
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

-- Dump completed on 2018-01-08 17:39:05
