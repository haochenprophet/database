CREATE DATABASE  IF NOT EXISTS `tool` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tool`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tool
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','runoob','website','https://c.runoob.com/','img/runoob_word.jpg','2017-12-29 17:01:41','normal','utf8',0,'china'),(2,'hunter','tortoisesvn','website','https://tortoisesvn.net/','img/tortoisesvn.jpg','2017-12-29 17:12:35','normal','utf8',0,'china'),(3,'hunter','git','website','https://git-scm.com/','img/git.jpg','2017-12-29 17:14:29','normal','utf8',0,'china'),(4,'hunter','intel','website','https://downloadcenter.intel.com/','img/intel.jpg','2018-01-02 17:46:49','normal','utf8',0,'china'),(5,'hunter','asus','website','https://www.asus.com/support/','img/asus.jpg','2018-01-02 17:53:39','normal','utf8',0,'china'),(6,'hunter','visualstudio','website','https://www.visualstudio.com','img/visualstudio.jpg','2018-01-02 18:02:01','normal','utf8',0,'china'),(7,'hunter','apache','website','https://www.apache.org/index.html#projects-list','img/asf_logo.png','2018-01-02 18:09:19','normal','utf8',0,'china'),(8,'hunter','eclipse','website','http://www.eclipse.org/','img/eclipse.png','2018-01-02 18:16:05','normal','utf8',0,'china'),(9,'hunter','sublime','website','https://www.sublimetext.com/','img/sublime.jpg','2018-01-02 18:23:03','normal','utf8',0,'china'),(10,'hunter','solidworks','website','http://www.solidworks.com/','img/solidworks.png','2018-01-08 18:04:08','normal','china',0,'china'),(11,'hunter','cadence','website','https://www.cadence.com/','img/cadence.jpg','2018-01-08 18:10:56','normal','china',0,'china'),(12,'hunter','xcmgmall','website','http://www.xcmgmall.com','img/xcmg.jpg','2018-01-08 18:16:58','normal','china',0,'china'),(13,'hunter','openssl','website','https://www.openssl.org/','img/openssl.jpg','2018-01-09 10:47:00','normal','china',0,'china'),(14,'hunter','xilinx','website','http://www.xilinx.com/','img/xilinx.jpeg','2018-01-10 14:08:29','normal','china',0,'china'),(15,'hunter','swift','website','https://swift.org/','img/swift.jpg','2018-05-09 17:01:28','normal','utf8',0,'china'),(16,'hunter','bc_compare','website','http://scootersoftware.com/','img/bc_compare.jpg','2018-05-09 17:11:16','normal','utf8',0,'china'),(17,'hunter','netbeans','website','https://netbeans.org/','img/netbeans.jpg','2018-05-09 17:15:15','normal','utf8',0,'china'),(18,'hunter','pycharm','website','https://www.jetbrains.com/pycharm/','img/pycharm.jpg','2018-05-09 17:18:33','normal','utf8',0,'china'),(19,'198382.com','winmerge','website','http://winmerge.org/','img/tool.jpg','2018-08-08 17:34:49','normal','utf8',0,'china');
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

-- Dump completed on 2018-08-10 22:45:41
