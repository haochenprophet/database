CREATE DATABASE  IF NOT EXISTS `src` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `src`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: src
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','google','website','https://github.com/google','img/google.jpg','2018-03-08 09:19:46','normal','utf8',100,'china'),(2,'hunter','torvalds','website','https://github.com/torvalds','img/src.jpg','2018-03-08 09:21:21','normal','utf8',100,'china'),(3,'hunter','Microsoft','website','https://github.com/Microsoft','img/src.jpg','2018-03-08 09:23:19','normal','utf8',100,'china'),(4,'hunter','intel','website','https://github.com/intel','img/src.jpg','2018-03-08 09:24:08','normal','utf8',100,'china'),(5,'hunter','IBM','website','https://github.com/IBM','img/src.jpg','2018-03-08 09:24:51','normal','utf8',100,'china'),(6,'hunter','baidu','website','https://github.com/baidu','img/src.jpg','2018-03-08 09:26:08','normal','utf8',100,'china'),(7,'hunter','alibaba','website','https://github.com/alibaba','img/src.jpg','2018-03-08 09:27:22','normal','utf8',100,'china'),(8,'hunter','uber','website','https://github.com/uber','img/src.jpg','2018-03-08 09:29:50','normal','utf8',100,'china'),(9,'hunter','linux','website','https://github.com/torvalds/linux','img/linux.png','2018-03-08 09:32:18','normal','utf8',100,'china'),(10,'hunter','open-bios','website','https://github.com/open-bios','img/src.jpg','2018-03-08 09:34:00','normal','utf8',100,'china'),(11,'hunter','tianocore','website','https://github.com/tianocore','img/src.jpg','2018-03-08 09:35:00','normal','utf8',99,'china'),(12,'hunter','open-power','website','https://github.com/open-power','img/src.jpg','2018-03-08 09:35:42','normal','utf8',100,'china'),(13,'hunter','openbmc','website','https://github.com/openbmc','img/src.jpg','2018-03-08 09:36:25','normal','utf8',99,'china'),(14,'hunter','facebook','website','https://github.com/facebook','img/src.jpg','2018-03-08 09:37:23','normal','utf8',101,'china'),(15,'hunter','gentoo','website','https://github.com/gentoo','img/src.jpg','2018-03-08 09:38:49','normal','utf8',100,'china'),(16,'hunter','ubuntu','website','https://github.com/ubuntu','img/src.jpg','2018-03-08 09:39:55','normal','utf8',100,'china'),(17,'hunter','python','website','https://github.com/python','img/src.jpg','2018-03-08 09:43:11','normal','utf8',99,'china'),(18,'hunter','open-std','website','http://www.open-std.org/','img/src.jpg','2018-03-08 09:44:51','normal','utf8',99,'china'),(19,'hunter','php','website','https://github.com/php','img/src.jpg','2018-03-08 09:45:25','normal','utf8',99,'china'),(20,'hunter','git','website','https://github.com/git','img/src.jpg','2018-03-08 09:47:58','normal','utf8',99,'china'),(21,'hunter','apache','website','https://github.com/apache','img/src.jpg','2018-03-08 09:48:52','normal','utf8',100,'china'),(22,'hunter','openai','website','https://github.com/openai','img/src.jpg','2018-03-08 09:50:08','normal','utf8',100,'china'),(23,'hunter','openssl','website','https://github.com/openssl','img/src.jpg','2018-03-08 09:51:43','normal','utf8',99,'china'),(24,'hunter','Kitware','website','https://github.com/Kitware','img/src.jpg','2018-03-08 09:52:26','normal','utf8',100,'china'),(25,'hunter','opencv','website','https://github.com/opencv','img/src.jpg','2018-03-08 09:55:10','normal','utf8',100,'china'),(26,'hunter','vim','website','https://github.com/vim','img/src.jpg','2018-03-08 09:55:51','normal','utf8',98,'china'),(27,'hunter','mysql','website','https://github.com/mysql','img/src.jpg','2018-03-08 09:57:08','normal','utf8',100,'china'),(28,'hunter','deepmind','website','https://github.com/deepmind','img/src.jpg','2018-03-08 10:00:22','normal','utf8',102,'china'),(29,'hunter','qemu','website','https://github.com/qemu','img/src.jpg','2018-03-08 10:01:36','normal','utf8',100,'china'),(30,'hunter','tensorflow','website','https://github.com/tensorflow','img/src.jpg','2018-03-08 10:03:43','normal','utf8',100,'china'),(31,'hunter','openembedded','website','https://github.com/openembedded','img/src.jpg','2018-03-08 10:04:41','normal','utf8',100,'china'),(32,'hunter','Xilinx','website','https://github.com/Xilinx','img/src.jpg','2018-03-08 10:05:36','normal','utf8',100,'china'),(33,'hunter','opengl','website','https://www.opengl.org/','img/src.jpg','2018-03-08 10:08:34','normal','utf8',99,'china'),(34,'hunter','android','website','https://github.com/android','img/src.jpg','2018-03-08 10:10:20','normal','utf8',100,'china'),(35,'hunter','gnuradio','website','https://github.com/gnuradio','img/src.jpg','2018-03-08 10:14:55','normal','utf8',99,'china'),(36,'hunter','gcc','website','http://gcc.gnu.org/','img/src.jpg','2018-03-08 10:15:58','normal','utf8',100,'china'),(37,'hunter','gitlabhq','website','https://github.com/gitlabhq','img/src.jpg','2018-03-08 10:17:22','normal','utf8',98,'china'),(38,'hunter','adobe','website','https://github.com/adobe','img/src.jpg','2018-03-08 10:18:10','normal','utf8',100,'china'),(39,'hunter','vscode','website','https://github.com/Microsoft/vscode','img/src.jpg','2018-03-08 10:19:52','normal','utf8',99,'china'),(40,'hunter','CentOS','website','https://github.com/CentOS','img/src.jpg','2018-03-08 10:21:43','normal','utf8',100,'china'),(41,'hunter','w3c','website','https://github.com/w3c','img/src.jpg','2018-03-08 18:41:20','normal','utf8',100,'china'),(42,'hunter','nginx','website','http://hg.nginx.org/nginx','img/src.jpg','2018-03-09 11:59:30','normal','utf8',98,'china'),(43,'hunter','openLuat','website','https://github.com/openLuat','img/src.jpg','2018-03-13 11:51:51','normal','utf8',95,'china'),(44,'hunter','codeproject','website','https://www.codeproject.com/','img/src.jpg','2018-03-14 05:22:51','normal','utf8',100,'china'),(45,'hunter','c++stl','website','http://www.cplusplus.com/reference/stl/','img/src.jpg','2018-03-14 05:27:16','normal','utf8',100,'china'),(46,'hunter','c++stl msdn','website','https://msdn.microsoft.com/en-us/library/cscc687y.aspx','img/src.jpg','2018-03-14 05:29:07','normal','utf8',100,'china'),(47,'hunter','ibm.github.io','website','http://ibm.github.io/','img/src.jpg','2018-03-19 09:37:40','normal','utf8',94,'china'),(48,'hunter','boostorg','website','https://github.com/boostorg','img/src.jpg','2018-03-31 19:33:21','nomal','utf8',90,'china'),(49,'hunter','mysqlpp','website','https://tangentsoft.com/mysqlpp/home','img/src.jpg','2018-04-01 19:25:09','nomal','utf8',90,'china'),(50,'hunter','raspberrypi','website','https://github.com/raspberrypi','img/src.jpg','2018-04-12 11:29:11','normal','utf8',90,'china'),(51,'hunter','meta-raspberrypi','website','http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/','img/src.jpg','2018-04-16 11:07:22','normal','utf8',89,'china'),(52,'hunter','ELDK','website','http://ftp.denx.de/pub/eldk/','img/src.jpg','2018-05-03 13:23:23','normal','utf8',50,'china'),(53,'Carlos','poky repository','','http://git.yoctoproject.org/cgit/cgit.cgi/poky','img/src.jpg','2018-05-03 17:01:41','','',0,'china'),(54,'hunter','openwrt','website','https://github.com/openwrt','img/src.jpg','2018-05-08 10:25:37','normal','utf8',0,'china');
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

-- Dump completed on 2018-05-09 18:09:31
