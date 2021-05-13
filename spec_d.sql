-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: spec
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','IPMI2.0','doc','spec/ipmi.pdf','img/spec.jpg','2018-03-06 14:35:37','normal','utf8',100,'china'),(2,'hunter','ACPI','website','http://www.acpi.info/spec.htm','img/spec.jpg','2018-03-06 14:37:39','normal','utf8',100,'china'),(3,'hunter','UEFI2.6','doc','spec/UEFI2.6.pdf','img/spec.jpg','2018-03-06 14:41:42','normal','utf8',100,'china'),(4,'hunter','USB Spec','website','http://www.usb.org/developers/docs/','img/spec.jpg','2018-03-06 14:45:20','normal','utf8',100,'china'),(5,'hunter','PCIE','website','https://pcisig.com/specifications/pciexpress/','img/spec.jpg','2018-03-06 14:48:33','normal','utf8',100,'china'),(6,'hunter','SMBIOS','website','https://www.dmtf.org/','img/spec.jpg','2018-03-06 14:50:22','normal','utf8',100,'china'),(7,'hunter','Intel Datasheet','website','https://www.intel.com/content/www/us/en/processors/core/core-technical-resources.html','img/spec.jpg','2018-03-06 14:51:45','normal','utf8',99,'china'),(8,'hunter','spd DDR4','website','http://www.simmtester.com/page/news/showpubnews.asp?num=184','img/spec.jpg','2018-03-06 14:57:03','normal','utf8',99,'china'),(9,'hunter','i2c bus','website','http://www.i2c-bus.org/','img/spec.jpg','2018-03-06 14:58:01','normal','utf8',99,'china'),(10,'hunter','LPC','website','spec/LPC.pdf','img/spec.jpg','2018-03-06 15:00:44','normal','utf8',99,'china'),(11,'hunter','C++','website','https://isocpp.org/std/the-standard','img/spec.jpg','2018-03-06 15:04:46','normal','utf8',101,'china'),(12,'hunter','AHCI','website','https://www.intel.com/content/www/us/en/io/serial-ata/ahci.html','img/spec.jpg','2018-03-06 16:39:08','normal','utf8',99,'china'),(13,'hunter','SATA','website','https://sata-io.org/','img/spec.jpg','2018-03-06 16:40:33','normal','utf8',99,'china'),(14,'hunter','EHCI','website','https://www.intel.com/content/www/us/en/io/universal-serial-bus/ehci-specification.html','img/spec.jpg','2018-03-06 16:44:50','normal','utf8',99,'china'),(15,'hunter','HDMI','website','https://www.hdmi.org/manufacturer/specification.aspx','img/spec.jpg','2018-03-06 16:46:11','normal','utf8',99,'china'),(16,'hunter','AudioCodec','website','https://www.intel.com/content/www/us/en/standards/high-definition-audio-specification.html','img/spec.jpg','2018-03-06 16:51:23','normal','utf8',99,'china'),(17,'hunter','ARM_GIC','website','spec/ARM_GIC.pdf','img/spec.jpg','2018-03-06 16:57:50','normal','utf8',99,'china'),(18,'hunter','IntelPECI','website','https://www.intel.com.tw/content/www/tw/zh/embedded/testing-and-validation/cpu-monitoring-dts-peci-paper.html','img/spec.jpg','2018-03-06 17:08:39','normal','utf8',99,'china'),(19,'hunter','TPM','website','https://trustedcomputinggroup.org/tpm-main-specification/','img/spec.jpg','2018-03-07 18:47:50','normal','utf8',99,'china'),(20,'hunter','bluetooth','website','https://www.bluetooth.com/specifications','img/spec.jpg','2018-03-07 18:58:31','normal','utf8',99,'china'),(21,'hunter','NCSI','website','https://www.dmtf.org/sites/default/files/standards/documents/DSP0222_1.0.0.pdf','img/spec.jpg','2018-03-07 19:04:38','normal','utf8',99,'china'),(22,'hunter','IEEE','website','https://www.ieee.org/','img/spec.jpg','2018-03-07 19:07:37','normal','utf8',99,'china'),(23,'hunter','nvlink','website','http://www.nvidia.com/object/nvlink.html','img/spec.jpg','2018-03-07 19:10:45','normal','utf8',99,'china'),(24,'hunter','RS-232','website','https://www.lammertbies.nl/comm/info/RS-232_specs.html','img/spec.jpg','2018-03-07 19:13:13','normal','utf8',99,'china'),(25,'hunter','serial-uart','website','https://www.lammertbies.nl/comm/info/serial-uart.html','img/spec.jpg','2018-03-07 19:15:02','normal','utf8',99,'china'),(26,'hunter','bitbake','website','https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html','img/spec.jpg','2018-03-08 10:18:55','normal','utf8',99,'china'),(27,'hunter','python','website','https://www.python.org/doc/','img/spec.jpg','2018-03-08 10:24:34','normal','utf8',99,'china'),(28,'hunter','GNU make','website','https://www.gnu.org/software/make/manual/make.html','img/spec.jpg','2018-03-08 10:25:44','normal','utf8',99,'china'),(29,'hunter','yocto','website','https://www.yoctoproject.org/docs/','img/spec.jpg','2018-03-08 11:50:58','normal','utf8',99,'china'),(30,'hunter','linux doc','website','http://linuxdocs.org/','img/spec.jpg','2018-03-08 13:33:03','normal','utf8',99,'china'),(31,'hunter','opencv','website','https://docs.opencv.org/','img/spec.jpg','2018-03-08 14:03:05','normal','utf8',99,'china'),(32,'hunter','nginx-docs','website','http://nginx.org/en/docs/','img/spec.jpg','2018-03-09 12:00:19','normal','utf8',94,'china'),(33,'hunter','linux driver','website','https://01.org/linuxgraphics/gfx-docs/drm/translations/zh_CN/coding-style.html','img/spec.jpg','2018-03-13 11:17:55','normal','utf8',90,'china'),(34,'hunter','huawei_nb_iot','website','http://www.huawei.com/minisite/iot/img/nb_iot_whitepaper_en.pdf','img/spec.jpg','2018-03-13 11:37:58','normal','utf8',90,'china'),(35,'hunter','swift3','website','http://www.runoob.com/manual/gitbook/swift3/source/_book/index.html','img/spec,jpg','2018-03-17 19:53:23','nomal','utf8',95,'china'),(36,'hunter','BCM2835-ARM-Peripherals','doc technical','spec/BCM2835-ARM-Peripherals.pdf','img/spec.jpg','2018-04-17 13:44:29','normal','utf8',90,'china'),(37,'hunter','PCIe4.0 Electrical Previews','doc technical','spec/PCIe_4_0_Electrical_Previews_FROZEN.pdf','img/spec.jpg','2018-04-18 17:05:17','normal','utf8',90,'china'),(38,'hunter','freescale user_guide','website','http://cache.freescale.com/files/soft_dev_tools/doc/user_guide/PEXDRVSDEVINUG.pdf','img/spec.jpg','2018-05-04 10:58:33','normal','utf8',0,'china'),(39,'hunter','intel-USB-spec','website','https://www.intel.com/content/www/us/en/io/universal-serial-bus/universal-serial-bus-specifications.html','img/spec.jpg','2018-05-25 11:09:23','normal','utf8',99,'china'),(40,'198382.com','SMBUS2.0 ','website','spec/smbus20.pdf','img/spec.jpg','2018-07-07 13:20:47','normal','utf8',0,'china'),(41,'198382.com','DDR4-CN','website','https://blog.csdn.net/hierro_zs/article/details/53737577','img/spec.jpg','2019-05-25 18:20:24','normal','utf8',0,'china'),(42,'198382.com','DDR4-detail','website','https://blog.csdn.net/tianpu2320959696/article/details/80981438','img/spec.jpg','2019-05-25 19:14:46','normal','utf8',0,'china'),(43,'198382.com','SMASH-DMTF','website','https://www.dmtf.org/standards/smash','img/spec.jpg','2021-05-13 15:20:28','normal','utf8',0,'china');
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

-- Dump completed on 2021-05-13 15:23:31
