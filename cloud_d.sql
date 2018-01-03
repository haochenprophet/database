-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: cloud
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
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(45) NOT NULL COMMENT 'what the link item information ?',
  `what_type` varchar(45) DEFAULT NULL,
  `where` varchar(45) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','amazon','cloud','https://aws.amazon.com/','img/amazon.jpg','2017-12-31 23:35:49','normal','utf8'),(2,'hunter','icloud','cloud','https://www.apple.com/cn/icloud/','img/apple.jpg','2017-12-31 23:38:40','normal','utf8'),(3,'hunter','google','cloud','https://cloud.google.com/','img/google.jpg','2017-12-31 23:41:02','normal','utf8'),(4,'hunter','microsoft','cloud','https://azure.microsoft.com/','img/microsoft.jpg','2017-12-31 23:44:39','normal','utf8'),(5,'hunter','ibm','cloud','https://www.ibm.com/cloud/','img/ibm.jpg','2017-12-31 23:46:54','normal','utf8'),(6,'hunter','oracle','cloud','https://cloud.oracle.com','img/oracle.jpg','2017-12-31 23:56:51','normal','utf8'),(7,'hunter','aliyun','cloud','https://cn.aliyun.com/','img/aliyun.jpg','2018-01-01 00:12:09','normal','utf8'),(8,'hunter','baidu','cloud','https://pan.baidu.com/','img/baidu_cloud.png','2018-01-01 00:13:53','normal','utf8'),(9,'hunter','tencent','cloud','https://cloud.tencent.com/','img/tencent_cloud.jpg','2018-01-01 00:16:25','normal','utf8'),(10,'hunter','sinacloud','cloud','https://www.sinacloud.com/','img/sinacloud_logo.png','2018-01-01 00:20:22','normal','utf8'),(11,'hunter','huaweicloud','cloud','http://www.huaweicloud.com/','img/huawei.png','2018-01-01 00:23:18','normal','utf8'),(12,'hunter','lenovo','cloud','https://pim.lenovo.com/','img/lenovo.jpg','2018-01-01 00:27:32','normal','utf8');
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

-- Dump completed on 2018-01-03 13:36:56
