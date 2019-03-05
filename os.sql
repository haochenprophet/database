CREATE DATABASE  IF NOT EXISTS `os` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `os`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: os
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','linux-kernel','website','https://www.kernel.org/','img/linux.png','2018-01-24 17:40:02','normal','utf8',100,'china'),(2,'hunter','windows','website','https://www.microsoft.com','img/microsoft.jpg','2018-01-24 17:43:52','normal','utf8',99,'china'),(3,'hunter','apple','website','https://www.apple.com/','img/apple.jpg','2018-01-24 17:46:48','normal','utf8',98,'china'),(4,'hunter','ubuntu','website','https://www.ubuntu.com/','img/ubuntu.jpg','2018-01-24 17:49:58','normal','utf8',97,'china'),(5,'hunter','centos','website','https://www.centos.org/','img/centos.png','2018-01-24 17:52:57','normal','utf8',95,'china'),(6,'hunter','redhat','website','https://www.redhat.com/','img/redhat.png','2018-01-24 17:55:22','normal','utf8',96,'china'),(7,'hunter','debian','website','https://www.debian.org/','img/debian.png','2018-01-24 17:58:53','normal','utf8',94,'china'),(8,'hunter','fedora','website','https://getfedora.org/','img/fedora.png','2018-01-24 18:00:26','normal','utf8',94,'china'),(9,'hunter','suse','website','https://www.suse.com/','img/suse.jpg','2018-01-24 18:04:24','normal','utf8',94,'china'),(10,'hunter','oracle-linux','website','https://www.oracle.com/linux/index.html','img/oracle.jpg','2018-01-24 18:07:11','normal','utf8',94,'china'),(11,'hunter','android','website','https://www.android.com/','img/android.jpg','2018-01-24 18:10:06','normal','utf8',99,'china'),(12,'hunter','vxworks','website','https://www.windriver.com/products/vxworks/','img/wind.png','2018-01-24 18:13:36','normal','utf8',93,'china'),(13,'hunter','distrowatch','website','https://distrowatch.com/','img/dwbanner.png','2018-03-08 13:40:40','normal','utf8',88,'china'),(14,'198382.com','FuchsiaOS','website','https://github.com/FuchsiaOS','img/fuchsia.jpeg','2019-03-05 17:54:47','normal','utf8',0,'china');
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

-- Dump completed on 2019-03-05 17:55:37
