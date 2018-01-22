CREATE DATABASE  IF NOT EXISTS `bios` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bios`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bios
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','uefi','website','http://www.uefi.org/','img/uefi.jpg','2018-01-19 16:59:29','normal','utf8',100,'china'),(2,'hunter','uboot','website','http://www.denx.de','img/uboot.png','2018-01-19 17:05:13','normal','utf8',99,'china'),(3,'hunter','redboot','website','https://sourceware.org/redboot/','img/redboot.png','2018-01-19 17:09:06','normal','utf8',98,'china'),(4,'hunter','armboot','website','http://armboot.sourceforge.net/','img/armboot.gif','2018-01-19 17:11:14','normal','utf8',97,'china'),(5,'hunter','openbmc','website','https://github.com/openbmc','img/openbmc.png','2018-01-19 17:17:47','normal','utf8',96,'china'),(6,'hunter','open-power','website','https://github.com/open-power','img/open-power.png','2018-01-19 17:20:33','normal','utf8',95,'china'),(7,'hunter','yoctoproject','website','https://www.yoctoproject.org/','img/yocto.png','2018-01-19 17:26:13','normal','utf8',94,'china'),(8,'hunter','openembedded','website','https://www.openembedded.org','img/open-embedded.png','2018-01-19 17:33:06','normal','utf8',93,'china'),(9,'hunter','buildroot','website','https://buildroot.org/','img/buildroot.png','2018-01-19 17:35:49','normal','utf8',92,'china'),(10,'hunter','openmoko','website','http://openmoko.org/','img/openmoko.png','2018-01-19 17:38:47','normal','utf8',91,'china'),(11,'hunter','ami','website','https://ami.com','img/AMI.png','2018-01-19 17:41:41','normal','utf8',90,'china'),(12,'hunter','pcisig','website','https://pcisig.com/','img/pcisig.png','2018-01-19 17:46:10','normal','utf8',90,'china'),(13,'hunter','i2c-bus','website','https://www.i2c-bus.org/','img/i2c.jpg','2018-01-22 13:30:11','normal','utf8',89,'china'),(14,'hunter','jedec','website','https://www.jedec.org/','img/jedec.jpg','2018-01-22 13:37:26','normal','utf8',88,'china'),(15,'hunter','ietf','website','https://www.ietf.org/','img/ietf.gif','2018-01-22 13:41:57','normal','utf8',87,'china'),(16,'hunter','usb','website','https://www.intel.com/content/www/us/en/io/universal-serial-bus/universal-serial-bus.html','img/usb.jpg','2018-01-22 13:46:08','normal','utf8',86,'china'),(17,'hunter','skyfree','website','http://www.skyfree.org/','img/skyfree.gif','2018-01-22 14:04:58','normal','utf8',85,'china'),(18,'hunter','fileformat','website','http://www.fileformat.info/','img/fileformat.jpg','2018-01-22 14:19:11','normal','utf8',84,'china'),(19,'hunter','nmake','website','https://msdn.microsoft.com/en-us/library/dd9y37ha.aspx','img/nmake.jpg','2018-01-22 14:25:13','normal','utf8',83,'china'),(20,'hunter','gnu-make','website','https://www.gnu.org/software/make/manual/make.html','img/gnu-make.jpg','2018-01-22 14:28:24','normal','utf8',82,'china'),(21,'hunter','gcc','website','http://gcc.gnu.org/','img/gcc.png','2018-01-22 14:32:00','normal','utf8',81,'china'),(22,'hunter','CL','website','https://msdn.microsoft.com/en-us/library/9s7c9wdw.aspx','img/cl.jpg','2018-01-22 14:36:36','normal','utf8',80,'china'),(23,'hunter','masm32','website','http://www.masm32.com/','img/masm32.jpg','2018-01-22 14:40:03','normal','utf8',79,'china'),(24,'hunter','c++','website','https://gcc.gnu.org/projects/cxx-status.html','img/cpp.jpg','2018-01-22 14:45:05','normal','utf8',78,'china'),(25,'hunter','acpi','website','http://www.acpi.info/','img/acpi.jpg','2018-01-22 14:46:20','normal','utf8',77,'china'),(26,'hunter','smbios','website','https://www.dmtf.org/standards/smbios','img/dmtf.png','2018-01-22 14:49:44','normal','utf8',76,'china'),(27,'hunter','intle-menu','website','https://software.intel.com/en-us/articles/intel-sdm','img/intle-menu.png','2018-01-22 15:02:24','normal','utf8',99,'china'),(28,'hunter','matroska','website','https://www.matroska.org/technical/specs/codecid/index.html','img/matroska.png','2018-01-22 15:07:20','normal','utf8',77,'china'),(29,'hunter','sata','website','https://sata-io.org/','img/sata.jpg','2018-01-22 15:09:09','normal','utf8',73,'china'),(30,'hunter','rweverything','website','http://rweverything.com/','img/rweverything.png','2018-01-22 15:14:50','normal','utf8',72,'china'),(31,'hunter','memtest','website','http://www.memtest.org/','img/memtest86.png','2018-01-22 15:16:17','normal','utf8',71,'china');
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

-- Dump completed on 2018-01-22 15:50:47
