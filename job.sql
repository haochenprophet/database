CREATE DATABASE  IF NOT EXISTS `job` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `job`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: job
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','LinkedIn','website','https://www.linkedin.com/','img/job.png','2018-08-05 13:50:34','normal','utf8',0,'china'),(2,'198382.com','MaiMai','website','http://maimai.cn/','img/job.png','2018-08-05 13:52:22','normal','utf8',0,'china'),(3,'198382.com','51Job','website','https://www.51job.com/','img/job.png','2018-08-05 13:53:11','normal','utf8',0,'china'),(4,'198382.com','ZhaoPin','website','https://www.zhaopin.com/','img/job.png','2018-08-05 13:54:05','normal','utf8',0,'china'),(5,'198382.com','100offer','website','https://www.100offer.com/','img/job.png','2018-08-05 13:57:11','normal','utf8',0,'china'),(6,'198382.com','LaGou','website','https://www.lagou.com/','img/job.png','2018-08-05 13:58:12','normal','utf8',0,'china'),(7,'198382.com','ICBC','website','https://campus.icbc.com.cn/icbc/campus/default.htm','img/job.png','2018-08-05 14:00:26','normal','utf8',0,'china'),(8,'198382.com','CCB','website','http://job.ccb.com/ccbjob/cn/job/index.jsp','img/job.png','2018-08-05 14:03:56','normal','utf8',0,'china'),(9,'198382.com','1010JZ','website','https://www.1010jz.com/','img/job.png','2018-08-05 14:05:22','normal','utf8',0,'china'),(10,'198382.com','AppleJobs','website','https://www.apple.com/jobs','img/job.png','2018-08-05 14:09:40','normal','utf8',0,'china'),(11,'198382.com','IntelJobs','website','https://jobs.intel.com/','img/job.png','2018-08-05 14:12:34','normal','utf8',0,'china'),(12,'198382.com','IBMJobs','website','http://www-03.ibm.com/employment','img/job.png','2018-08-05 14:15:07','normal','utf8',0,'china'),(13,'198382.com','HuaWei','website','http://career.huawei.com','img/job.png','2018-08-05 14:17:03','normal','utf8',0,'china'),(14,'198382.com','XiaoMi','website','http://hr.xiaomi.com/','img/job.png','2018-08-05 14:20:02','normal','utf8',0,'china'),(15,'198382.com','Lenovo','website','http://lenovocareers.com/','img/job.png','2018-08-05 14:22:44','normal','utf8',0,'china'),(16,'198382.com','AmaZon','website','https://www.amazon.jobs/','img/job.png','2018-08-05 14:23:51','normal','utf8',0,'china'),(17,'198382.com','JD','website','https://about.jd.com/zhaopin/','img/job.png','2018-08-05 14:27:39','normal','utf8',0,'china'),(18,'198382.com','Baidu','website','https://talent.baidu.com/','img/job.png','2018-08-05 14:30:32','normal','utf8',0,'china'),(19,'198382.com','Tencent','website','https://hr.tencent.com/','img/job.png','2018-08-05 14:31:13','normal','utf8',0,'china'),(20,'198382.com','Sina','website','http://sina.gllue.com/portal/home','img/job.png','2018-08-05 14:31:54','normal','utf8',0,'china'),(21,'198382.com','163','website','https://hr.163.com/','img/job.png','2018-08-05 14:32:38','normal','utf8',0,'china'),(22,'198382.com','WanDa','website','http://job.wanda.cn/','img/job.png','2018-08-05 14:33:18','normal','utf8',0,'china'),(23,'198382.com','Foxconn','website','http://hr.foxconn.com/','img/job.png','2018-08-05 14:34:20','normal','utf8',0,'china'),(24,'198382.com','Tesla','website','https://www.tesla.com/careers','img/job.png','2018-08-05 14:38:46','normal','utf8',0,'china');
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

-- Dump completed on 2018-08-05 14:41:41
