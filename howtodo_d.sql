-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: howtodo
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','Install SVN Server on Ubuntu','website','https://tecadmin.net/install-subversion-server-on-ubuntu/','img/howtodo.jpg','2018-04-24 14:23:12','normal','utf8',0,'china'),(2,'hunter','Linux view system hardware information','website','https://www.cnblogs.com/ggjucheng/archive/2013/01/14/2859613.html','img/howtodo.jpg','2018-04-24 14:34:04','normal','utf8',0,'china'),(3,'hunter','Backup and Restore SVN Repository in Linux','website','https://tecadmin.net/how-to-svn-subversion-dump-and-restore/','img/howtodo.jpg','2018-04-24 15:41:17','normal','utf8',0,'china'),(4,'hunter','Install Subversion on Ubuntu & Debian','website','https://tecadmin.net/install-subversion-1-9-on-ubuntu/','img/howtodo.jpg','2018-04-24 15:43:10','normal','utf8',0,'china'),(5,'hunter','linuxtopia HowToGuides','website','https://www.linuxtopia.org/HowToGuides/index.html','img/linuxtopia.jpg','2018-04-24 16:59:10','normal','utf8',0,'china'),(6,'hunter','How to install the Cross Development Tools','website','http://www.denx.de/wiki/DULG/ELDK','img/howtodo.jpg','2018-05-03 10:22:04','normal','utf8',95,'china'),(7,'hunter','How to start u-boot','website','http://www.denx.de/wiki/DULG/Manual','img/howtodo.jpg','2018-05-03 10:28:15','normal','utf8',96,'china'),(8,'hunter','How to Embedded Linux Configuration','website','http://www.denx.de/wiki/view/DULG/LinuxConfiguration','img/howtodo.jpg','2018-05-03 16:37:39','normal','utf8',90,'china'),(9,'hunter','How to Passing Kernel Arguments','website','http://www.denx.de/wiki/view/DULG/LinuxKernelArgs','img/howtodo.jpg','2018-05-03 16:55:01','normal','utf8',90,'china'),(10,'hunter','How to Build External Modules linux','website','http://git.denx.de/?p=linux-denx.git;a=blob;f=Documentation/kbuild/modules.txt','img/howtodo.jpg','2018-05-03 17:39:23','normal','utf8',0,'china'),(11,'hunter','How to build-arm-linux-4-7-3 ubuntu','website','https://www.cnblogs.com/rain-blog/p/build-arm-linux-4-7-3-embedded-development-environment.html','img/howtodo.jpg','2018-05-03 17:44:17','normal','utf8',0,'china');
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

-- Dump completed on 2018-05-03 17:53:15