CREATE DATABASE  IF NOT EXISTS `knowledge` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `knowledge`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: knowledge
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
-- Table structure for table `k_links`
--

DROP TABLE IF EXISTS `k_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_links` (
  `idbooklink` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` text NOT NULL COMMENT 'what the link item information ?',
  `what_type` varchar(45) DEFAULT NULL,
  `where` text NOT NULL COMMENT 'where the URL address',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idbooklink`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_links`
--

LOCK TABLES `k_links` WRITE;
/*!40000 ALTER TABLE `k_links` DISABLE KEYS */;
INSERT INTO `k_links` VALUES (1,'hunter','translate.google.cn','translate','http://translate.google.cn/','2017-04-05 02:30:57','',''),(2,'hunter','bing.com','search','http://www.bing.com/','2017-04-05 02:32:03','',''),(3,'hunter','google.com','search','http://www.google.com/','2017-04-05 02:32:41','',''),(4,'hunter','msdn.microsoft','doc','https://msdn.microsoft.com','2017-04-05 02:33:16','',''),(5,'hunter','IBM Knowledge Center','doc','http://www.ibm.com/support/knowledgecenter/en/','2017-04-05 02:34:30','',''),(6,'hunter','Apple Developers Center','doc','https://developer.apple.com/','2017-04-05 02:36:48','',''),(7,'hunter','Apple API Reference','doc','https://developer.apple.com/reference/','2017-04-05 02:39:27','',''),(8,'hunter','Apple Guides and Sample Code','doc','https://developer.apple.com/library/prerelease/content/navigation/','2017-04-05 02:40:10','',''),(9,'hunter','VirtualBox Technical documentation','doc','https://www.virtualbox.org/wiki/Technical_documentation','2017-04-05 02:40:35','',''),(10,'hunter','Git Documentation','doc','https://git-scm.com/doc','2017-04-05 02:40:58','',''),(11,'hunter','Lean-x','doc','http://www.tutorialspoint.com/','2017-04-05 02:41:21','',''),(12,'hunter','perldoc.perl.org','doc','http://perldoc.perl.org/','2017-04-05 02:41:41','',''),(13,'hunter','GNU C Reference Manual','doc','http://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html','2017-04-05 02:42:06','',''),(14,'hunter','Linux C++ Software Development','doc','http://www.yolinux.com/TUTORIALS/LinuxTutorialC%2B%2B.html','2017-04-05 02:42:32','',''),(15,'hunter','C++  keyword','doc','http://en.cppreference.com/w/cpp/keyword','2017-04-05 02:42:55','',''),(16,'hunter','C++ STL Tutorial','doc technical','http://www.tutorialspoint.com/cplusplus/cpp_stl_tutorial.htm','2017-04-05 02:44:49','',''),(17,'hunter','My SQL documentation','doc technical','http://dev.mysql.com/doc/','2017-04-05 02:45:12','',''),(18,'hunter','PHP Manual','doc technical','http://www.php.net/manual/en/index.php','2017-04-05 02:45:34','',''),(19,'hunter','w3.standards','doc technical','https://www.w3.org/standards/','2017-04-05 02:45:55','',''),(20,'hunter','w3school.cn','doc technical','http://www.w3school.com.cn/','2017-04-05 02:46:16','',''),(21,'hunter','w3school.bootcss','doc technical','http://w3schools.bootcss.com/html/default.html','2017-04-05 02:46:38','',''),(22,'hunter','HTTP protocols','doc technical protocol','https://www.w3.org/Protocols/','2017-04-05 02:47:22','',''),(23,'hunter','html.com','doc technical','http://html.com/','2017-04-05 02:48:03','',''),(24,'hunter','java','doc technical language develop','https://www.oracle.com/java/index.html','2017-04-05 02:48:48','',''),(25,'hunter','fileformat.book','doc technical','http://www.fileformat.info/resource/book/index.htm','2017-04-05 02:52:07','',''),(26,'hunter','U-Boot.manual','doc technical','http://www.denx.de/wiki/DULG/Manual','2017-04-05 02:53:45','',''),(27,'hunter','yoctoproject.doc','doc technical','https://www.yoctoproject.org/documentation','2017-04-05 02:54:11','',''),(28,'hunter','openembedded.org','doc technical','http://www.openembedded.org/wiki/Main_Page','2017-04-05 02:54:35','',''),(29,'hunter','bitbake-user-manual','doc technical','https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html','2017-04-05 02:54:56','',''),(30,'hunter','Windows driver development','doc technical develop','https://msdn.microsoft.com/en-us/windows/hardware/ff960953.aspx','2017-04-05 02:55:27','',''),(31,'hunter','linux-man-pages','doc technical linux ','https://linux.die.net/man/','2017-04-05 02:56:01','',''),(32,'hunter','centos.doc','doc technical linux ','https://www.centos.org/docs/','2017-04-05 02:56:26','',''),(33,'hunter','IEEE-POSIX','doc technical','http://get.posixcertified.ieee.org/','2017-04-05 02:56:54','',''),(34,'hunter','i2c-bus','doc technical','http://www.i2c-bus.org/i2c-bus/','2017-04-05 02:57:18','',''),(35,'hunter','docker-library','doc technical','https://github.com/docker-library','2017-04-05 02:58:53','',''),(36,'hunter','python3-doc','doc technical','https://docs.python.org/3/','2017-04-05 02:59:13','',''),(37,'hunter','lamp-web','doc technical','http://www.lampweb.org/','2017-04-05 02:59:29','',''),(38,'hunter','nginx-docs','doc technical','http://nginx.org/en/docs/','2017-04-05 02:59:56','',''),(39,'hunter','gitlabhq','doc technical','https://github.com/gitlabhq','2017-04-05 03:00:20','',''),(40,'hunter','gnu-make','doc technical','http://www.gnu.org/software/make/manual/make.html','2017-04-05 03:00:40','',''),(41,'hunter','iso639-2:language code','doc technical','https://www.loc.gov/standards/iso639-2/php/code_list.php','2017-04-05 03:01:02','',''),(42,'hunter','countrycode','doc technical','https://countrycode.org/','2017-04-05 03:01:28','',''),(43,'hunter','multi-language php','doc technical','http://www.bitrepository.com/php-how-to-add-multi-language-support-to-a-website.html','2017-04-05 03:01:58','',''),(44,'hunter','GNU/Linux Command-Line Tools Summary','doc technical','https://linux.die.net/Linux-CLI/','2017-04-05 03:02:23','',''),(45,'hunter','css color ','doc technical','http://www.w3school.com.cn/cssref/css_colornames.asp','2017-04-06 08:04:40','',''),(46,'hunter','PHP class','doc technical','http://php.net/manual/en/language.oop5.php','2017-04-07 03:03:53','',''),(47,'hunter','pop3_blog_cn','doc technical','http://blog.csdn.net/bripengandre/article/details/2192111','2017-04-11 18:18:06','',''),(48,'hunter','IBM Advance Toolchain for PowerLinux Documentation','doc technical','https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W51a7ffcf4dfd_4b40_9d82_446ebc23c550/page/IBM%20Advance%20Toolchain%20for%20PowerLinux%20Documentation','2017-04-14 10:13:36','normal','IBM developerworks'),(49,'hunter',' IBM Software Development Kit for Linux on Power (SDK) ','doc technical','https://developer.ibm.com/linuxonpower/sdk/','2017-04-14 10:18:51','normal','IBM developerworks');
/*!40000 ALTER TABLE `k_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_type`
--

DROP TABLE IF EXISTS `k_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_type` (
  `idk_type` int(11) NOT NULL AUTO_INCREMENT,
  `what` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idk_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_type`
--

LOCK TABLES `k_type` WRITE;
/*!40000 ALTER TABLE `k_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14 10:29:05
