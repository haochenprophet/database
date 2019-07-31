CREATE DATABASE  IF NOT EXISTS `howtodo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `howtodo`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: howtodo
-- ------------------------------------------------------
-- Server version	8.0.13-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','Install SVN Server on Ubuntu','website','https://tecadmin.net/install-subversion-server-on-ubuntu/','img/howtodo.jpg','2018-04-24 14:23:12','normal','utf8',0,'china'),(2,'hunter','Linux view system hardware information','website','https://www.cnblogs.com/ggjucheng/archive/2013/01/14/2859613.html','img/howtodo.jpg','2018-04-24 14:34:04','normal','utf8',0,'china'),(3,'hunter','Backup and Restore SVN Repository in Linux','website','https://tecadmin.net/how-to-svn-subversion-dump-and-restore/','img/howtodo.jpg','2018-04-24 15:41:17','normal','utf8',0,'china'),(4,'hunter','Install Subversion on Ubuntu & Debian','website','https://tecadmin.net/install-subversion-1-9-on-ubuntu/','img/howtodo.jpg','2018-04-24 15:43:10','normal','utf8',0,'china'),(5,'hunter','linuxtopia HowToGuides','website','https://www.linuxtopia.org/HowToGuides/index.html','img/linuxtopia.jpg','2018-04-24 16:59:10','normal','utf8',0,'china'),(6,'hunter','How to install the Cross Development Tools','website','http://www.denx.de/wiki/DULG/ELDK','img/howtodo.jpg','2018-05-03 10:22:04','normal','utf8',95,'china'),(7,'hunter','How to start u-boot','website','http://www.denx.de/wiki/DULG/Manual','img/howtodo.jpg','2018-05-03 10:28:15','normal','utf8',96,'china'),(8,'hunter','How to Embedded Linux Configuration','website','http://www.denx.de/wiki/view/DULG/LinuxConfiguration','img/howtodo.jpg','2018-05-03 16:37:39','normal','utf8',90,'china'),(9,'hunter','How to Passing Kernel Arguments','website','http://www.denx.de/wiki/view/DULG/LinuxKernelArgs','img/howtodo.jpg','2018-05-03 16:55:01','normal','utf8',90,'china'),(10,'hunter','How to Build External Modules linux','website','http://git.denx.de/?p=linux-denx.git;a=blob;f=Documentation/kbuild/modules.txt','img/howtodo.jpg','2018-05-03 17:39:23','normal','utf8',0,'china'),(11,'hunter','How to build-arm-linux-4-7-3 ubuntu','website','https://www.cnblogs.com/rain-blog/p/build-arm-linux-4-7-3-embedded-development-environment.html','img/howtodo.jpg','2018-05-03 17:44:17','normal','utf8',0,'china'),(12,'hunter','How to using mysqldump','website','https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html','img/howtodo.jpg','2018-05-03 18:01:01','normal','utf8',0,'china'),(13,'hunter','how to do start python.','website','http://www.runoob.com/manual/pythontutorial/docs/html/','img/python.jpg','2018-05-08 11:19:54','normal','utf8',0,'china'),(14,'198382.com',' How To Install and Configure Postfix on Ubuntu','website','https://help.ubuntu.com/lts/serverguide/postfix.html','img/howtodo.jpg','2018-05-27 09:29:50','normal','utf8',0,'china'),(15,'198382.com','MSDN:ipv6-routing ','website','https://docs.microsoft.com/zh-cn/dotnet/framework/network-programming/ipv6-routing','img/howtodo.jpg','2018-06-20 13:57:44','normal','utf8',0,'china'),(16,'198382.com','MSDN:internet-protocol-version-6','website','https://docs.microsoft.com/zh-cn/dotnet/framework/network-programming/internet-protocol-version-6','img/howtodo.jpg','2018-06-20 13:59:25','normal','utf8',0,'china'),(17,'198382.com','MSDN:ipv6-addressing','website','https://docs.microsoft.com/zh-cn/dotnet/framework/network-programming/ipv6-addressing','img/howtodo.jpg','2018-06-20 14:01:06','normal','utf8',0,'china'),(18,'198382.com','MSDN:how-to-modify-the-computer-configuration-file-to-enable-ipv6-support','website','https://docs.microsoft.com/zh-cn/dotnet/framework/network-programming/how-to-modify-the-computer-configuration-file-to-enable-ipv6-support','img/howtodo.jpg','2018-06-20 14:02:02','normal','utf8',0,'china'),(19,'198382.com','C Language Examples of IPv4 and IPv6 Raw Sockets for Linux','website','http://www.pdbuchan.com/rawsock/rawsock.html','img/howtodo.jpg','2018-06-20 14:05:49','normal','utf8',0,'china'),(20,'198382.com','setup-postfix-mail-server-in-ubuntu-debian','website','https://www.tecmint.com/setup-postfix-mail-server-in-ubuntu-debian/','img/howtodo.png','2018-09-14 16:14:47','normal','utf8',0,'china'),(21,'198382.com','how-to-enable-port-465-smtps-in-postfix-mailserver','website','https://www.faqforge.com/linux/how-to-enable-port-465-smtps-in-postfix-mailserver/','img/howtodo.png','2018-09-30 17:04:01','normal','utf8',0,'china'),(22,'198382.com','ubuntu-postfix','website','https://help.ubuntu.com/lts/serverguide/postfix.html.en','img/howtodo.png','2018-09-30 19:15:07','normal','utf8',0,'china'),(23,'198382.com','php-7-2-fastcgi-doesnt-work-on-ubuntu-18-04-server','website','https://askubuntu.com/questions/1029564/php-7-2-fastcgi-doesnt-work-on-ubuntu-18-04-server','img/howtodo.png','2018-10-02 11:37:56','normal','utf8',0,'china'),(24,'198382.com','howto_enable_postfix_465','website','http://www.postfix.org/TLS_README.html#how','img/howtodo.png','2018-10-02 12:56:39','normal','utf8',0,'china'),(25,'198382.com','.net c# how to do use socket','website','https://docs.microsoft.com/zh-cn/dotnet/api/system.net.sockets.socket?view=netframework-4.7.2','img/howtodo.png','2018-10-25 16:29:48','normal','utf8',0,'china'),(26,'198382.com','.net c# how to do use SslStream Class','website','https://docs.microsoft.com/zh-cn/dotnet/api/system.net.security.sslstream?redirectedfrom=MSDN&view=netframework-4.7.2','img/howtodo.png','2018-10-25 16:40:34','normal','utf8',0,'china'),(27,'198382.com','how to use open-ssl','website','https://blog.csdn.net/howeverpf/article/details/18993945','img/howtodo.png','2018-10-25 16:58:57','normal','utf8',0,'china'),(28,'198382.com','Web Chat database','website','https://blog.csdn.net/u010098331/article/details/51493016','img/howtodo.pngW','2018-11-16 13:39:43','normal','utf8',0,'china'),(29,'198382.com','Install windows 10','website','https://www.microsoft.com/zh-cn/software-download/windows10','img/howtodo.png','2018-11-23 23:27:30','normal','utf8',0,'china'),(30,'198382.com','UBootImages','website','http://www.denx.de/wiki/view/DULG/UBootImages','img/howtodo.png','2018-11-24 00:04:55','normal','utf8',0,'china'),(31,'198382.com','c# struct ','website','http://www.runoob.com/csharp/csharp-struct.html','img/howtodo.png','2018-11-26 11:46:59','normal','utf8',0,'china'),(32,'198382.com','C# web UI','website','https://blog.csdn.net/chadcao/article/details/7562530','img/howtodo.png','2018-11-29 11:35:46','normal','utf8',0,'china'),(33,'198382.com','Add WebBrowser to APP Windows UI','website','https://docs.microsoft.com/zh-cn/dotnet/framework/winforms/controls/how-to-add-web-browser-capabilities-to-a-windows-forms-application?view=netframework-4.7.2','img/howtodo.png','2018-11-29 14:31:01','normal','utf8',0,'china'),(34,'198382.com','communication between DHTML code and client app','website','https://docs.microsoft.com/zh-cn/dotnet/framework/winforms/controls/implement-two-way-com-between-dhtml-and-client?view=netframework-4.7.2','img/howtodo.png','2018-11-30 14:33:06','normal','utf8',0,'china'),(35,'198382.com','WebBrowser HTML5 and CSS3 support','website','https://social.msdn.microsoft.com/Forums/zh-CN/bcabd54c-7e51-4aa2-894e-c70305fb85da/webbrowser-html5-and-css3-support','img/howtodo.png','2018-11-30 14:58:42','normal','utf8',0,'china'),(36,'198382.com','php move-uploaded-file','website','http://php.net/manual/zh/function.move-uploaded-file.php','img/howtodo.png','2019-01-14 17:50:46','normal','utf8',0,'china'),(37,'198382.com','invoice introduce','website','https://zhuanlan.zhihu.com/p/19701523','img/howtodo.png','2019-01-15 11:40:08','normal','utf8',0,'china'),(38,'198382.com','checking account and savings account','website','https://www.zhihu.com/question/51678829','img/howtodo.png','2019-01-23 15:26:37','normal','utf8',0,'china'),(39,'198382.com','C# call C++ dll','website','https://social.msdn.microsoft.com/Forums/zh-CN/6215d368-ec60-4712-850d-746c0a078b85/trying-to-call-c-dll-in-c','img/howtodo.png','2019-04-16 14:34:00','normal','utf8',0,'china'),(40,'198382.com','DDR4-design','website','http://www.sohu.com/a/155021909_463982','img/howtodo.png','2019-05-25 19:13:23','normal','utf8',0,'china'),(41,'198382.com','Init Ubuntu  Server','website','https://wiki.ubuntu.org.cn/Ubuntu%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%85%A5%E9%97%A8%E6%8C%87%E5%8D%97','img/howtodo.png','2019-07-31 10:21:32','normal','utf8',0,'china'),(42,'198382.com','install-subversion-server-on-ubuntu','website','https://tecadmin.net/install-subversion-server-on-ubuntu/','img/howtodo.png','2019-07-31 10:26:46','normal','utf8',0,'china');
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

-- Dump completed on 2019-07-31 11:43:22
