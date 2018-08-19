CREATE DATABASE  IF NOT EXISTS `compile` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `compile`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: compile
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','gcc.gnu','website','https://gcc.gnu.org/','img/compile.jpg','2018-08-19 11:47:48','normal','utf8',0,'china'),(2,'198382.com','cl.exe','website','https://msdn.microsoft.com/en-us/library/91621w01.aspx','img/compile.jpg','2018-08-19 11:49:16','normal','utf8',0,'china'),(3,'198382.com','make.gnu','website','https://www.gnu.org/software/make/manual/make.html','img/compile.jpg','2018-08-19 11:51:07','normal','utf8',0,'china'),(4,'198382.com','nmake','website','https://docs.microsoft.com/en-us/cpp/build/nmake-reference','img/compile.jpg','2018-08-19 11:51:57','normal','utf8',0,'china'),(5,'198382.com','cmake','website','https://cmake.org/','img/compile.jpg','2018-08-19 11:52:21','normal','utf8',0,'china'),(6,'198382.com','javac','website','https://docs.oracle.com/javase/7/docs/technotes/tools/windows/javac.html','img/compile.jpg','2018-08-19 11:53:09','normal','utf8',0,'china'),(7,'198382.com','link.exe','website','https://msdn.microsoft.com/en-us/library/y0zzbyt4.aspx','img/compile.jpg','2018-08-19 11:54:21','normal','utf8',0,'china'),(8,'198382.com','ml*.exe','website','https://docs.microsoft.com/en-us/cpp/assembler/masm/masm-for-x64-ml64-exe','img/compile.jpg','2018-08-19 11:55:41','normal','utf8',0,'china'),(9,'198382.com','ld.gnu','website','http://ftp.gnu.org/pub/old-gnu/Manuals/ld-2.9.1/html_node/ld_toc.html#TOC3','img/compile.jpg','2018-08-19 11:59:13','normal','utf8',0,'china'),(10,'198382.com','gnu.compile','website','https://en.wikipedia.org/wiki/GNU_Compiler_Collection','img/compile.jpg','2018-08-19 12:02:02','normal','utf8',0,'china'),(11,'198382.com','asl.acpi.ms','website','https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/microsoft-asl-compiler','img/compile.jpg','2018-08-19 12:03:42','normal','utf8',0,'china'),(12,'198382.com','iasl.gnu','website','https://www.systutorials.com/docs/linux/man/1-iasl/','img/compile.jpg','2018-08-19 12:06:11','normal','utf8',0,'china'),(13,'198382.com','python','website','https://www.python.org/','img/compile.jpg','2018-08-19 12:09:09','normal','utf8',0,'china'),(14,'198382.com','cmd.exe','website','https://ss64.com/nt/cmd.html','img/compile.jpg','2018-08-19 12:11:25','normal','utf8',0,'china'),(15,'198382.com','shell.unix','website','https://en.wikipedia.org/wiki/Unix_shell','img/compile.jpg','2018-08-19 12:13:32','normal','utf8',0,'china'),(16,'198382.com','linux-commands','website','https://linuxconfig.org/linux-commands','img/compile.jpg','2018-08-19 12:18:17','normal','utf8',0,'china'),(17,'198382.com','windows-commands','website','https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands','img/compile.jpg','2018-08-19 12:19:00','normal','utf8',0,'china'),(18,'198382.com','file_format','website','https://en.wikipedia.org/wiki/File_format','img/compile.jpg','2018-08-19 12:21:54','normal','utf8',0,'china');
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

-- Dump completed on 2018-08-19 12:23:45
