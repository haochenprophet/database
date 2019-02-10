CREATE DATABASE  IF NOT EXISTS `product` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `product`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: product
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','智能室内蓝牙温湿度计','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.3.729151e7HNxjo6&hardwareId=1002628548401452','img/product.jpg','2019-02-10 19:54:00','normal','utf8',0,'china'),(2,'198382.com','二维码智能云门禁一体机','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.12.22f851e7cJJXHh&hardwareId=1002008546943162','img/product.jpg','2019-02-10 19:56:31','normal','utf8',0,'china'),(3,'198382.com','智能配网设备','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.13.22f851e7vWBHTU&hardwareId=1002667547714992','img/product.jpg','2019-02-10 19:58:20','normal','utf8',0,'china'),(4,'198382.com','4G工业级无线路由器','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.3.5b8d51e7CcxPO3&hardwareId=1002560544413054','img/product.jpg','2019-02-10 19:59:29','normal','utf8',0,'china'),(5,'198382.com','防爆对讲终端','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.8.7b9b51e759TMBk&hardwareId=1002751547622914','img/product.jpg','2019-02-10 20:07:02','normal','utf8',0,'china'),(6,'198382.com','低功耗蓝牙透传模块','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.3.2be851e7cKOIey&hardwareId=1002408548216035','img/product.jpg','2019-02-10 20:08:46','normal','utf8',0,'china'),(7,'198382.com','嵌入式人脸识别模组','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.7.262451e7xXRAjY&hardwareId=1002911545103392','img/product.jpg','2019-02-10 20:11:22','normal','utf8',0,'china'),(8,'198382.com','蓝牙标签读写器','website','https://linkmarket.aliyun.com/hardware?spm=a2c3t.11219539.11219539.3.489951e7KPrJt7&hardwareId=1002828546496189','img/product.jpg','2019-02-10 20:15:33','normal','utf8',0,'china'),(9,'198382.com','智能化养蜂解决方案','website','https://linkmarket.aliyun.com/solution?spm=a2c3t.12289728.0.0.7b4e30dajAlJHJ&solutionId=1001971547217485','img/product.jpg','2019-02-10 20:17:41','normal','utf8',0,'china'),(10,'198382.com','工业物联解决方案-卓见云科技','website','https://linkmarket.aliyun.com/solution?spm=a2c3t.11219569.lm-solution-recommend.5.7d6551e78TSSyN&solutionId=1001480533194396','img/product.jpg','2019-02-10 20:23:16','normal','utf8',0,'china'),(11,'198382.com','IoT太阳能一体化路灯','website','https://linkmarket.aliyun.com/solution?spm=a2c3t.10719541.lm-home-scene.2.266051e7T1xkxl&solutionId=1001918546599432','img/product.jpg','2019-02-10 20:29:55','normal','utf8',0,'china');
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

-- Dump completed on 2019-02-10 20:39:00
