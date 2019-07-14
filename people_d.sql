CREATE DATABASE  IF NOT EXISTS `people` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `people`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: people
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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `idpeople` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `id_card` varchar(45) DEFAULT NULL COMMENT 'ID card',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `born` datetime DEFAULT NULL COMMENT 'When was born',
  `name` varchar(45) DEFAULT NULL COMMENT ' who is he/She? name list',
  `gender` varchar(45) DEFAULT NULL COMMENT 'What gender',
  `country` varchar(45) DEFAULT NULL COMMENT 'which country',
  `address` varchar(100) DEFAULT NULL COMMENT 'where address',
  `title` varchar(100) DEFAULT NULL COMMENT 'Job title',
  `job` varchar(500) DEFAULT NULL COMMENT 'Where is the job?',
  `religion` varchar(45) DEFAULT NULL COMMENT 'What religion',
  `party` varchar(45) DEFAULT NULL COMMENT 'what political party',
  `credit` varchar(45) DEFAULT NULL COMMENT 'Social credit',
  `wish` varchar(300) DEFAULT NULL COMMENT 'What is wish?',
  `achievement` varchar(300) DEFAULT NULL COMMENT 'What is the achievement?',
  `influence` varchar(300) DEFAULT NULL COMMENT 'How big is social influence?',
  `email` varchar(100) DEFAULT NULL COMMENT 'What is the email address?',
  `telephone` varchar(45) DEFAULT NULL COMMENT 'telephone',
  `mobile` varchar(45) DEFAULT NULL,
  `wealth` varchar(100) DEFAULT NULL COMMENT 'How much is personal wealth?',
  `record` text COMMENT 'Bad or good record',
  `url` varchar(200) DEFAULT NULL COMMENT 'Personal website',
  `photo` varchar(200) DEFAULT NULL COMMENT 'photo url',
  `blog` varchar(200) DEFAULT NULL COMMENT 'blog url',
  `living` tinyint(4) NOT NULL DEFAULT '1',
  `death_time` datetime DEFAULT NULL COMMENT 'What time of death',
  `testament` text,
  `testament_time` datetime DEFAULT NULL,
  `case_history` text COMMENT 'case history',
  `insurance` text,
  `family` varchar(500) DEFAULT NULL,
  `organization` varchar(45) DEFAULT NULL,
  `evaluate` varchar(300) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL COMMENT 'audio url ',
  `video` varchar(200) DEFAULT NULL COMMENT 'video url',
  `history` varchar(45) DEFAULT NULL COMMENT ' history',
  `remark` text,
  `land` varchar(45) DEFAULT NULL COMMENT 'land uud ',
  `priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpeople`,`uuid`),
  UNIQUE KEY `idpeople_UNIQUE` (`idpeople`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='people';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'96b96bca-4e15-41c8-86eb-9b734d33f503','96b96bca-4e15-41c8-86eb-9b734d33f503','2018-12-27 08:54:43','1971-12-27 08:51:19','Elon_Musk','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Elon_Musk','null','null',0,'9999-12-27 08:51:19','null','2018-12-27 08:51:19','','null','null','null','Tesla, SpaceX ','null','null','','','null',1000,'normal','hunter'),(2,'7e80f7a7-912e-483b-bdae-2c19034aea6d','7e80f7a7-912e-483b-bdae-2c19034aea6d','2018-12-27 08:59:12','1969-12-27 08:56:59','Linus_Torvalds','male','US','null','null','none','none','none','1001','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Linus_Torvalds','null','null',0,'9999-12-27 08:56:59','null','2018-12-27 08:56:59','','null','null','null','Linux,git','null','null','','','null',1001,'normal','hunter'),(3,'aafaa8bf-7b65-45f4-a0a9-725f81f19360','aafaa8bf-7b65-45f4-a0a9-725f81f19360','2018-12-28 20:22:17','2018-12-28 12:19:50','Jack_Ma','male','CN','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Jack_Ma','null','null',0,'9999-12-28 12:19:50','null','2018-12-28 12:19:50','','null','null','null','马云Create Alibaba，Alipay','null','null','','','null',1000,'normal','hunter'),(4,'05133bae-6ba8-4c9a-8ba9-3c9608b2e7af','05133bae-6ba8-4c9a-8ba9-3c9608b2e7af','2018-12-28 20:32:11','2018-12-28 12:31:25','Mark_Zuckerberg','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Mark_Zuckerberg','null','null',0,'2018-12-28 12:31:25','null','2018-12-28 12:31:25','','null','null','null','Create Facebook','null','null','','','null',999,'normal','hunter'),(5,'bc50b5d9-4ee1-40d1-ae16-1060c07e508d','bc50b5d9-4ee1-40d1-ae16-1060c07e508d','2018-12-28 20:35:24','2018-12-28 12:34:36','Bill_Gates','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Bill_Gates','null','null',0,'2018-12-28 12:34:36','null','2018-12-28 12:34:36','','null','null','null','Create Microsoft','null','null','','','null',997,'normal','hunter'),(6,'49dd81e4-06c3-446c-8e8b-171580ca9847','49dd81e4-06c3-446c-8e8b-171580ca9847','2018-12-28 20:39:20','2018-12-28 12:38:36','Jeff_Bezos','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Jeff_Bezos','null','null',0,'9999-12-28 12:38:36','null','2018-12-28 12:38:36','','null','null','null','Create Amazon','null','null','','','null',996,'normal','hunter'),(7,'de4c1409-9cf0-4a1e-a28b-940a192c9fcd','de4c1409-9cf0-4a1e-a28b-940a192c9fcd','2018-12-28 21:10:28','2018-12-28 13:07:50','Larry_Page','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Larry_Page','null','null',0,'9999-12-28 13:07:50','null','2018-12-28 13:07:50','','null','null','null','Create Google','null','null','','','null',995,'normal','hunter'),(8,'bd57610f-bf70-44d4-8c63-0d52cd724fd7','bd57610f-bf70-44d4-8c63-0d52cd724fd7','2018-12-28 21:13:44','2018-12-28 13:10:53','Julian_Assange','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Julian_Assange','null','null',0,'9999-12-28 13:10:53','null','2018-12-28 13:10:53','','null','null','null','Create Wiki','null','null','','','null',0,'normal','hunter'),(9,'fd1337e6-581e-41a4-9b78-d9a3e4cbbce5','fd1337e6-581e-41a4-9b78-d9a3e4cbbce5','2018-12-28 21:17:17','2018-12-28 13:16:43','Tom_Preston-Werner','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Tom_Preston-Werner','null','null',0,'9999-12-28 13:16:43','null','2018-12-28 13:16:43','','null','null','null','Github','null','null','','','null',0,'normal','hunter'),(10,'d0e3f4c1-d77b-414f-ab0b-010a274ff15b','d0e3f4c1-d77b-414f-ab0b-010a274ff15b','2018-12-28 21:22:27','2018-12-28 13:19:31','Jim_Keller','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Jim_Keller_(engineer)','null','null',0,'9999-12-28 13:19:31','null','2018-12-28 13:19:31','','null','null','null','AMD K7 K8  K12 Zen，Apple A4, A5，x86-64 HyperTransport (coauthor)','null','null','','','null',0,'normal','hunter'),(11,'a92730cd-937d-4641-958b-a098706e1cfa','a92730cd-937d-4641-958b-a098706e1cfa','2018-12-28 21:54:23','2018-12-28 21:54:03','Michael_Widenius','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Michael_Widenius','null','null',0,'9999-12-28 21:54:03','null','2018-12-28 21:54:03','','null','null','null','Mysql','null','null','','','null',0,'normal','hunter'),(12,'125842b9-e550-436e-9cd2-185541da6a8d','125842b9-e550-436e-9cd2-185541da6a8d','2018-12-28 21:55:56','2018-12-28 21:55:32','James_Gosling','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/James_Gosling','null','null',0,'9999-12-28 21:55:32','null','2018-12-28 21:55:32','','null','null','null','java','null','null','','','null',0,'normal','hunter'),(13,'8eb91010-6820-4354-aec5-43def84acbd0','8eb91010-6820-4354-aec5-43def84acbd0','2018-12-28 21:57:11','2018-12-28 21:56:52','Guido_van_Rossum','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Guido_van_Rossum','null','null',0,'9999-12-28 21:56:52','null','2018-12-28 21:56:52','','null','null','null','python','null','null','','','null',0,'normal','hunter'),(14,'41061524-9626-4bc9-9220-e0b260bf64fe','41061524-9626-4bc9-9220-e0b260bf64fe','2018-12-28 21:58:52','2018-12-28 21:57:19','Bjarne_Stroustrup','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Bjarne_Stroustrup','null','null',0,'9999-12-28 21:57:19','null','2018-12-28 21:57:19','','null','null','null','C++','null','null','','','null',0,'normal','hunter'),(15,'f503369f-2734-4e35-810a-14feecfc9902','f503369f-2734-4e35-810a-14feecfc9902','2018-12-30 21:11:28','2018-12-30 21:09:59','Larry_Ellison','male','US','null','null','none','none','none','999','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Larry_Ellison','null','null',0,'9999-12-30 21:09:59','null','2018-12-30 21:09:59','','null','null','null','Create Oracle','null','null','','','null',0,'normal','hunter'),(16,'7c7ee6c3-edbe-43cb-8817-acc83e7bd2b5','7c7ee6c3-edbe-43cb-8817-acc83e7bd2b5','2019-01-02 18:41:01','2019-01-02 18:39:57','Taylor_Swift','male','US','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Taylor_Swift','null','null',0,'9999-01-02 18:39:57','null','2019-01-02 18:39:57','','null','null','null','Create Love Story','null','null','','','null',0,'normal','hunter'),(17,'fd9821ad-1af2-4d74-a92d-e0fcc0e73ef5','fd9821ad-1af2-4d74-a92d-e0fcc0e73ef5','2019-01-10 15:30:42','2019-01-10 15:29:40','Demis_Hassabis','male','UK','null','null','none','none','none','999','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Demis_Hassabis','null','null',0,'9999-01-10 15:29:40','null','2019-01-10 15:29:40','','null','null','null','Create Deep Mind','null','null','','','null',998,'normal','hunter'),(18,'8178ed61-ee39-4fee-b0cf-3a6f34d39720','8178ed61-ee39-4fee-b0cf-3a6f34d39720','2019-04-25 14:38:57','2019-04-25 06:37:30','Sergey_Brin','male','US','null','null','none','none','none','1000','null','null','null','null','null','null','null','null','https://en.wikipedia.org/wiki/Sergey_Brin','null','null',0,'9999-04-25 06:37:30','null','2019-04-25 06:37:30','','null','null','null','Create Google','null','null','','','null',995,'normal','hunter'),(19,'fe35085f-9e51-453a-a75b-ed92ecd003a1','fe35085f-9e51-453a-a75b-ed92ecd003a1','2019-07-14 15:12:28','1944-10-25 00:00:00','任正非','male','中国','null','null','none','none','none','100','null','null','null','null','null','null','null','null','https://www.huawei.com/cn/about-huawei/executives#board-of-directors','null','null',0,'9999-07-14 07:11:23','null','2019-07-14 07:11:23','','null','null','null','Create HuaWei 华为','null','null','','','null',999,'normal','hunter');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pid`
--

DROP TABLE IF EXISTS `pid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pid` (
  `idpid` int(11) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  `born` varchar(45) DEFAULT NULL COMMENT 'when',
  `country` varchar(45) DEFAULT NULL COMMENT 'where',
  `address` varchar(45) DEFAULT NULL COMMENT 'where',
  `name` varchar(45) DEFAULT NULL COMMENT 'who',
  `gender` varchar(45) DEFAULT NULL COMMENT 'what',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpid`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='people id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pid`
--

LOCK TABLES `pid` WRITE;
/*!40000 ALTER TABLE `pid` DISABLE KEYS */;
/*!40000 ALTER TABLE `pid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-14 15:34:21
