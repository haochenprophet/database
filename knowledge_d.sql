-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: knowledge
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
  `logo` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`idbooklink`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_links`
--

LOCK TABLES `k_links` WRITE;
/*!40000 ALTER TABLE `k_links` DISABLE KEYS */;
INSERT INTO `k_links` VALUES (1,'hunter','translate.google.cn','translate','http://translate.google.cn/',NULL,'2017-04-05 02:30:57','','',0),(2,'hunter','bing.com','search','http://www.bing.com/',NULL,'2017-04-05 02:32:03','','',0),(3,'hunter','google.com','search','http://www.google.com/',NULL,'2017-04-05 02:32:41','','',0),(4,'hunter','msdn.microsoft','doc','https://msdn.microsoft.com',NULL,'2017-04-05 02:33:16','','',0),(5,'hunter','IBM Knowledge Center','doc','http://www.ibm.com/support/knowledgecenter/en/',NULL,'2017-04-05 02:34:30','','',0),(6,'hunter','Apple Developers Center','doc','https://developer.apple.com/',NULL,'2017-04-05 02:36:48','','',0),(7,'hunter','Apple API Reference','doc','https://developer.apple.com/reference/',NULL,'2017-04-05 02:39:27','','',0),(8,'hunter','Apple Guides and Sample Code','doc','https://developer.apple.com/library/prerelease/content/navigation/',NULL,'2017-04-05 02:40:10','','',0),(9,'hunter','VirtualBox Technical documentation','doc','https://www.virtualbox.org/wiki/Technical_documentation',NULL,'2017-04-05 02:40:35','','',0),(10,'hunter','Git Documentation','doc','https://git-scm.com/doc',NULL,'2017-04-05 02:40:58','','',0),(11,'hunter','Lean-x','doc','http://www.tutorialspoint.com/',NULL,'2017-04-05 02:41:21','','',0),(12,'hunter','perldoc.perl.org','doc','http://perldoc.perl.org/',NULL,'2017-04-05 02:41:41','','',0),(13,'hunter','GNU C Reference Manual','doc','http://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html',NULL,'2017-04-05 02:42:06','','',0),(14,'hunter','Linux C++ Software Development','doc','http://www.yolinux.com/TUTORIALS/LinuxTutorialC%2B%2B.html',NULL,'2017-04-05 02:42:32','','',0),(15,'hunter','C++  keyword','doc','http://en.cppreference.com/w/cpp/keyword',NULL,'2017-04-05 02:42:55','','',0),(16,'hunter','C++ STL Tutorial','doc technical','http://www.tutorialspoint.com/cplusplus/cpp_stl_tutorial.htm',NULL,'2017-04-05 02:44:49','','',0),(17,'hunter','My SQL documentation','doc technical','http://dev.mysql.com/doc/',NULL,'2017-04-05 02:45:12','','',0),(18,'hunter','PHP Manual','doc technical','http://www.php.net/manual/en/index.php',NULL,'2017-04-05 02:45:34','','',0),(19,'hunter','w3.standards','doc technical','https://www.w3.org/standards/',NULL,'2017-04-05 02:45:55','','',0),(20,'hunter','w3school.cn','doc technical','http://www.w3school.com.cn/',NULL,'2017-04-05 02:46:16','','',0),(21,'hunter','w3school.bootcss','doc technical','http://w3schools.bootcss.com/html/default.html',NULL,'2017-04-05 02:46:38','','',0),(22,'hunter','HTTP protocols','doc technical protocol','https://www.w3.org/Protocols/',NULL,'2017-04-05 02:47:22','','',0),(23,'hunter','html.com','doc technical','http://html.com/',NULL,'2017-04-05 02:48:03','','',0),(24,'hunter','java','doc technical language develop','https://www.oracle.com/java/index.html',NULL,'2017-04-05 02:48:48','','',0),(25,'hunter','fileformat.book','doc technical','http://www.fileformat.info/resource/book/index.htm',NULL,'2017-04-05 02:52:07','','',0),(26,'hunter','U-Boot.manual','doc technical','http://www.denx.de/wiki/DULG/Manual',NULL,'2017-04-05 02:53:45','','',0),(27,'hunter','yoctoproject.doc','doc technical','https://www.yoctoproject.org/documentation',NULL,'2017-04-05 02:54:11','','',0),(28,'hunter','openembedded.org','doc technical','http://www.openembedded.org/wiki/Main_Page',NULL,'2017-04-05 02:54:35','','',0),(29,'hunter','bitbake-user-manual','doc technical','https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html',NULL,'2017-04-05 02:54:56','','',0),(30,'hunter','Windows driver development','doc technical develop','https://msdn.microsoft.com/en-us/windows/hardware/ff960953.aspx',NULL,'2017-04-05 02:55:27','','',0),(31,'hunter','linux-man-pages','doc technical linux ','https://linux.die.net/man/',NULL,'2017-04-05 02:56:01','','',0),(32,'hunter','centos.doc','doc technical linux ','https://www.centos.org/docs/',NULL,'2017-04-05 02:56:26','','',0),(33,'hunter','IEEE-POSIX','doc technical','http://get.posixcertified.ieee.org/',NULL,'2017-04-05 02:56:54','','',0),(34,'hunter','i2c-bus','doc technical','http://www.i2c-bus.org/i2c-bus/',NULL,'2017-04-05 02:57:18','','',0),(35,'hunter','docker-library','doc technical','https://github.com/docker-library',NULL,'2017-04-05 02:58:53','','',0),(36,'hunter','python3-doc','doc technical','https://docs.python.org/3/',NULL,'2017-04-05 02:59:13','','',0),(37,'hunter','lamp-web','doc technical','http://www.lampweb.org/',NULL,'2017-04-05 02:59:29','','',0),(38,'hunter','nginx-docs','doc technical','http://nginx.org/en/docs/',NULL,'2017-04-05 02:59:56','','',0),(39,'hunter','gitlabhq','doc technical','https://github.com/gitlabhq',NULL,'2017-04-05 03:00:20','','',0),(40,'hunter','gnu-make','doc technical','http://www.gnu.org/software/make/manual/make.html',NULL,'2017-04-05 03:00:40','','',0),(41,'hunter','iso639-2:language code','doc technical','https://www.loc.gov/standards/iso639-2/php/code_list.php',NULL,'2017-04-05 03:01:02','','',0),(42,'hunter','countrycode','doc technical','https://countrycode.org/',NULL,'2017-04-05 03:01:28','','',0),(43,'hunter','multi-language php','doc technical','http://www.bitrepository.com/php-how-to-add-multi-language-support-to-a-website.html',NULL,'2017-04-05 03:01:58','','',0),(44,'hunter','GNU/Linux Command-Line Tools Summary','doc technical','https://linux.die.net/Linux-CLI/',NULL,'2017-04-05 03:02:23','','',0),(45,'hunter','css color ','doc technical','http://www.w3school.com.cn/cssref/css_colornames.asp',NULL,'2017-04-06 08:04:40','','',0),(46,'hunter','PHP class','doc technical','http://php.net/manual/en/language.oop5.php',NULL,'2017-04-07 03:03:53','','',0),(47,'hunter','pop3_blog_cn','doc technical','http://blog.csdn.net/bripengandre/article/details/2192111',NULL,'2017-04-11 18:18:06','','',0),(48,'hunter','IBM Advance Toolchain for PowerLinux Documentation','doc technical','https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W51a7ffcf4dfd_4b40_9d82_446ebc23c550/page/IBM%20Advance%20Toolchain%20for%20PowerLinux%20Documentation',NULL,'2017-04-14 10:13:36','normal','IBM developerworks',0),(49,'hunter',' IBM Software Development Kit for Linux on Power (SDK) ','doc technical','https://developer.ibm.com/linuxonpower/sdk/',NULL,'2017-04-14 10:18:51','normal','IBM developerworks',0),(50,'hunter','cscript','doc technical','http://originaldll.com/file/cscript.exe/24146.html',NULL,'2017-04-26 21:46:03','normal','utf8',0),(51,'hunter','software.intel.com/en-us/html5','doc technical','https://software.intel.com/en-us/html5',NULL,'2017-04-26 22:21:01','normal','utf8',0),(52,'hunter','intel-software-technical-documentation','doc technical','https://software.intel.com/en-us/intel-software-technical-documentation',NULL,'2017-04-26 22:21:34','normal','utf8',0),(53,'hunter','intel-AI','doc technical','https://software.intel.com/en-us/ai',NULL,'2017-04-26 22:23:47','normal','utf8',0),(54,'hunter','PHP PDF Functions','doc technical','http://phptutorial.info/?pdf',NULL,'2017-04-27 16:01:12','normal','utf8',0),(55,'hunter','pdflib','doc technical','http://www.pdflib.com/',NULL,'2017-04-27 16:13:39','normal','utf8',0),(56,'hunter','php packages','doc technical','http://pecl.php.net/packages.php',NULL,'2017-04-28 17:02:31','normal','utf8',0),(57,'hunter','excel-easy VBA','doc technical','http://www.excel-easy.com/vba.html',NULL,'2017-05-02 09:43:58','normal','utf8',0),(58,'hunter','webkit','doc technical develop','https://webkit.org/',NULL,'2017-05-02 23:08:18','normal','utf8',0),(59,'patent_sys','linux kernel doc','doc technical','https://www.kernel.org/doc/',NULL,'2017-12-26 12:00:42','normal','utf8',0),(60,'hunter','microsoft .net for linux ','tech','https://www.microsoft.com/net/download/linux',NULL,'2017-12-26 13:54:48','normal','utf8',0),(61,'hunter','linuxdocs','doc technical','http://linuxdocs.org/',NULL,'2017-12-28 18:37:42','normal','utf8',0),(62,'hunter','MailServer ubuntu','website','http://wiki.ubuntu.com.cn/MailServer%EF%BC%88%E5%9F%BA%E4%BA%8EUbuntu%E7%9A%84%E7%94%B5%E5%AD%90%E9%82%AE%E4%BB%B6%E6%9C%8D%E5%8A%A1%E5%99%A8%E8%AE%BE%E7%BD%AE%E6%8C%87%E5%8D%97%EF%BC%89',NULL,'2018-01-15 17:33:46','normal','utf8',0),(63,'hunter','linux-and-open-source-hardware-iot','website','https://www.linux.com/news/linux-and-open-source-hardware-iot',NULL,'2018-03-13 12:06:15','normal','utf8',0);
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

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) DEFAULT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  `priority` int(11) DEFAULT '0',
  `where` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='konwledge URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','translate.google.cn','translate','http://translate.google.cn/',NULL,'2017-04-05 02:30:57','','',0,NULL),(2,'hunter','bing.com','search','http://www.bing.com/',NULL,'2017-04-05 02:32:03','','',0,NULL),(3,'hunter','google.com','search','http://www.google.com/',NULL,'2017-04-05 02:32:41','','',0,NULL),(4,'hunter','msdn.microsoft','doc','https://msdn.microsoft.com',NULL,'2017-04-05 02:33:16','','',0,NULL),(5,'hunter','IBM Knowledge Center','doc','http://www.ibm.com/support/knowledgecenter/en/',NULL,'2017-04-05 02:34:30','','',0,NULL),(6,'hunter','Apple Developers Center','doc','https://developer.apple.com/',NULL,'2017-04-05 02:36:48','','',0,NULL),(7,'hunter','Apple API Reference','doc','https://developer.apple.com/reference/',NULL,'2017-04-05 02:39:27','','',0,NULL),(8,'hunter','Apple Guides and Sample Code','doc','https://developer.apple.com/library/prerelease/content/navigation/',NULL,'2017-04-05 02:40:10','','',0,NULL),(9,'hunter','VirtualBox Technical documentation','doc','https://www.virtualbox.org/wiki/Technical_documentation',NULL,'2017-04-05 02:40:35','','',0,NULL),(10,'hunter','Git Documentation','doc','https://git-scm.com/doc',NULL,'2017-04-05 02:40:58','','',0,NULL),(11,'hunter','Lean-x','doc','http://www.tutorialspoint.com/',NULL,'2017-04-05 02:41:21','','',0,NULL),(12,'hunter','perldoc.perl.org','doc','http://perldoc.perl.org/',NULL,'2017-04-05 02:41:41','','',0,NULL),(13,'hunter','GNU C Reference Manual','doc','http://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html',NULL,'2017-04-05 02:42:06','','',0,NULL),(14,'hunter','Linux C++ Software Development','doc','http://www.yolinux.com/TUTORIALS/LinuxTutorialC%2B%2B.html',NULL,'2017-04-05 02:42:32','','',0,NULL),(15,'hunter','C++  keyword','doc','http://en.cppreference.com/w/cpp/keyword',NULL,'2017-04-05 02:42:55','','',0,NULL),(16,'hunter','C++ STL Tutorial','doc technical','http://www.tutorialspoint.com/cplusplus/cpp_stl_tutorial.htm',NULL,'2017-04-05 02:44:49','','',0,NULL),(17,'hunter','My SQL documentation','doc technical','http://dev.mysql.com/doc/',NULL,'2017-04-05 02:45:12','','',0,NULL),(18,'hunter','PHP Manual','doc technical','http://www.php.net/manual/en/index.php',NULL,'2017-04-05 02:45:34','','',0,NULL),(19,'hunter','w3.standards','doc technical','https://www.w3.org/standards/',NULL,'2017-04-05 02:45:55','','',0,NULL),(20,'hunter','w3school.cn','doc technical','http://www.w3school.com.cn/',NULL,'2017-04-05 02:46:16','','',0,NULL),(21,'hunter','w3school.bootcss','doc technical','http://w3schools.bootcss.com/html/default.html',NULL,'2017-04-05 02:46:38','','',0,NULL),(22,'hunter','HTTP protocols','doc technical protocol','https://www.w3.org/Protocols/',NULL,'2017-04-05 02:47:22','','',0,NULL),(23,'hunter','html.com','doc technical','http://html.com/',NULL,'2017-04-05 02:48:03','','',0,NULL),(24,'hunter','java','doc technical language develop','https://www.oracle.com/java/index.html',NULL,'2017-04-05 02:48:48','','',0,NULL),(25,'hunter','fileformat.book','doc technical','http://www.fileformat.info/resource/book/index.htm',NULL,'2017-04-05 02:52:07','','',0,NULL),(26,'hunter','U-Boot.manual','doc technical','http://www.denx.de/wiki/DULG/Manual',NULL,'2017-04-05 02:53:45','','',0,NULL),(27,'hunter','yoctoproject.doc','doc technical','https://www.yoctoproject.org/documentation',NULL,'2017-04-05 02:54:11','','',0,NULL),(28,'hunter','openembedded.org','doc technical','http://www.openembedded.org/wiki/Main_Page',NULL,'2017-04-05 02:54:35','','',0,NULL),(29,'hunter','bitbake-user-manual','doc technical','https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html',NULL,'2017-04-05 02:54:56','','',0,NULL),(30,'hunter','Windows driver development','doc technical develop','https://msdn.microsoft.com/en-us/windows/hardware/ff960953.aspx',NULL,'2017-04-05 02:55:27','','',0,NULL),(31,'hunter','linux-man-pages','doc technical linux ','https://linux.die.net/man/',NULL,'2017-04-05 02:56:01','','',0,NULL),(32,'hunter','centos.doc','doc technical linux ','https://www.centos.org/docs/',NULL,'2017-04-05 02:56:26','','',0,NULL),(33,'hunter','IEEE-POSIX','doc technical','http://get.posixcertified.ieee.org/',NULL,'2017-04-05 02:56:54','','',0,NULL),(34,'hunter','i2c-bus','doc technical','http://www.i2c-bus.org/i2c-bus/',NULL,'2017-04-05 02:57:18','','',0,NULL),(35,'hunter','docker-library','doc technical','https://github.com/docker-library',NULL,'2017-04-05 02:58:53','','',0,NULL),(36,'hunter','python3-doc','doc technical','https://docs.python.org/3/',NULL,'2017-04-05 02:59:13','','',0,NULL),(37,'hunter','lamp-web','doc technical','http://www.lampweb.org/',NULL,'2017-04-05 02:59:29','','',0,NULL),(38,'hunter','nginx-docs','doc technical','http://nginx.org/en/docs/',NULL,'2017-04-05 02:59:56','','',0,NULL),(39,'hunter','gitlabhq','doc technical','https://github.com/gitlabhq',NULL,'2017-04-05 03:00:20','','',0,NULL),(40,'hunter','gnu-make','doc technical','http://www.gnu.org/software/make/manual/make.html',NULL,'2017-04-05 03:00:40','','',0,NULL),(41,'hunter','iso639-2:language code','doc technical','https://www.loc.gov/standards/iso639-2/php/code_list.php',NULL,'2017-04-05 03:01:02','','',0,NULL),(42,'hunter','countrycode','doc technical','https://countrycode.org/',NULL,'2017-04-05 03:01:28','','',0,NULL),(43,'hunter','multi-language php','doc technical','http://www.bitrepository.com/php-how-to-add-multi-language-support-to-a-website.html',NULL,'2017-04-05 03:01:58','','',0,NULL),(44,'hunter','GNU/Linux Command-Line Tools Summary','doc technical','https://linux.die.net/Linux-CLI/',NULL,'2017-04-05 03:02:23','','',0,NULL),(45,'hunter','css color ','doc technical','http://www.w3school.com.cn/cssref/css_colornames.asp',NULL,'2017-04-06 08:04:40','','',0,NULL),(46,'hunter','PHP class','doc technical','http://php.net/manual/en/language.oop5.php',NULL,'2017-04-07 03:03:53','','',0,NULL),(47,'hunter','pop3_blog_cn','doc technical','http://blog.csdn.net/bripengandre/article/details/2192111',NULL,'2017-04-11 18:18:06','','',0,NULL),(48,'hunter','IBM Advance Toolchain for PowerLinux Documentation','doc technical','https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W51a7ffcf4dfd_4b40_9d82_446ebc23c550/page/IBM%20Advance%20Toolchain%20for%20PowerLinux%20Documentation',NULL,'2017-04-14 10:13:36','normal','IBM developerworks',0,NULL),(49,'hunter',' IBM Software Development Kit for Linux on Power (SDK) ','doc technical','https://developer.ibm.com/linuxonpower/sdk/',NULL,'2017-04-14 10:18:51','normal','IBM developerworks',0,NULL),(50,'hunter','cscript','doc technical','http://originaldll.com/file/cscript.exe/24146.html',NULL,'2017-04-26 21:46:03','normal','utf8',0,NULL),(51,'hunter','software.intel.com/en-us/html5','doc technical','https://software.intel.com/en-us/html5',NULL,'2017-04-26 22:21:01','normal','utf8',0,NULL),(52,'hunter','intel-software-technical-documentation','doc technical','https://software.intel.com/en-us/intel-software-technical-documentation',NULL,'2017-04-26 22:21:34','normal','utf8',0,NULL),(53,'hunter','intel-AI','doc technical','https://software.intel.com/en-us/ai',NULL,'2017-04-26 22:23:47','normal','utf8',0,NULL),(54,'hunter','PHP PDF Functions','doc technical','http://phptutorial.info/?pdf',NULL,'2017-04-27 16:01:12','normal','utf8',0,NULL),(55,'hunter','pdflib','doc technical','http://www.pdflib.com/',NULL,'2017-04-27 16:13:39','normal','utf8',0,NULL),(56,'hunter','php packages','doc technical','http://pecl.php.net/packages.php',NULL,'2017-04-28 17:02:31','normal','utf8',0,NULL),(57,'hunter','excel-easy VBA','doc technical','http://www.excel-easy.com/vba.html',NULL,'2017-05-02 09:43:58','normal','utf8',0,NULL),(58,'hunter','webkit','doc technical develop','https://webkit.org/',NULL,'2017-05-02 23:08:18','normal','utf8',0,NULL),(59,'patent_sys','linux kernel doc','doc technical','https://www.kernel.org/doc/',NULL,'2017-12-26 12:00:42','normal','utf8',0,NULL),(60,'hunter','microsoft .net for linux ','tech','https://www.microsoft.com/net/download/linux',NULL,'2017-12-26 13:54:48','normal','utf8',0,NULL),(61,'hunter','linuxdocs','doc technical','http://linuxdocs.org/',NULL,'2017-12-28 18:37:42','normal','utf8',0,NULL),(62,'hunter','MailServer ubuntu','website','http://wiki.ubuntu.com.cn/MailServer%EF%BC%88%E5%9F%BA%E4%BA%8EUbuntu%E7%9A%84%E7%94%B5%E5%AD%90%E9%82%AE%E4%BB%B6%E6%9C%8D%E5%8A%A1%E5%99%A8%E8%AE%BE%E7%BD%AE%E6%8C%87%E5%8D%97%EF%BC%89',NULL,'2018-01-15 17:33:46','normal','utf8',0,NULL),(63,'hunter','linux-and-open-source-hardware-iot','website','https://www.linux.com/news/linux-and-open-source-hardware-iot',NULL,'2018-03-13 12:06:15','normal','utf8',0,NULL),(64,'hunter','devcon-win','website','https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/devcon','img/knowledge.jpg','2018-03-19 11:06:01','normal','utf8',94,NULL),(65,'hunter','dang_zhang','website','http://www.12371.cn/special/zggcdzc/zggcdzcqw/','img/knowledge.jpg','2018-03-19 15:35:27','normal','utf8',0,NULL),(66,'hunter','opengl','website','https://www.opengl.org/','img/opengl.jpg','2018-04-05 11:56:26','normal','utf8',80,NULL),(67,'hunter','pci-express-architecture','website','https://www.intel.com/content/www/us/en/io/pci-express/pci-express-architecture-devnet-resources.html','img/knowledge.jpg','2018-04-19 10:58:09','normal','utf8',80,NULL),(68,'hunter','python 2.7 Chinese','website','http://www.runoob.com/manual/pythontutorial/docs/html/','img/python.jpg','2018-05-08 11:18:46','normal','utf8',0,NULL),(69,'hunter','UEFI-EDKII-Learning-Dev','website','https://github.com/tianocore/tianocore.github.io/wiki/UEFI-EDKII-Learning-Dev','img/uefi.jpg','2018-05-09 16:09:56','normal','utf8',0,NULL);
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

-- Dump completed on 2018-05-09 16:39:36
