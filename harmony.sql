CREATE DATABASE  IF NOT EXISTS `harmony` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `harmony`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: harmony
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
  `logo` varchar(200) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','developer.harmonyos','website','https://developer.harmonyos.com/','img/harmony.jpg','2021-06-26 14:16:25','normal','utf8',0,'china'),(2,'198382.com','gitee.openharmony','website','https://gitee.com/openharmony','img/harmony.jpg','2021-06-26 14:17:57','normal','utf8',0,'china'),(3,'198382.com','github.ninja','tool','https://github.com/ninja-build','img/harmony.jpg','2021-06-26 14:19:35','normal','utf8',0,'china'),(4,'198382.com','device.harmonyos','website','https://device.harmonyos.com/','img/harmony.jpg','2021-06-26 14:24:06','normal','utf8',0,'china'),(5,'198382.com','llvm.org','tool','https://releases.llvm.org/','img/harmony.jpg','2021-06-26 14:25:49','normal','utf8',0,'china'),(6,'198382.com','pypi.ohos-build.hb','tool','https://pypi.org/project/ohos-build/','img/harmony.jpg','2021-06-26 14:29:50','normal','utf8',0,'china'),(7,'198382.com','cnblogs.HarmonyOS','website','https://www.cnblogs.com/HarmonyOS','img/harmony.jpg','2021-06-26 15:25:06','normal','utf8',0,'china'),(8,'198382.com','gn.googlesource','tool','https://gn.googlesource.com/gn/','img/harmony.jpg','2021-06-26 15:27:57','normal','utf8',0,'china'),(9,'198382.com','python.org','website','https://www.python.org/','img/harmony.jpg','2021-06-26 15:29:36','normal','utf8',0,'china');
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

-- Dump completed on 2021-06-26 15:32:47