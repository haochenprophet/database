CREATE DATABASE  IF NOT EXISTS `bill` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bill`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bill
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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bill` (
  `idbill` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(200) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `idcard` varchar(45) DEFAULT NULL,
  `what` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT 'IN/OUT',
  `invoice_number` varchar(45) DEFAULT NULL,
  `amount` decimal(65,2) DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `univalent` double NOT NULL DEFAULT '1',
  `from` varchar(200) DEFAULT NULL COMMENT 'source',
  `to` varchar(200) DEFAULT NULL COMMENT 'dir',
  `archive` varchar(200) DEFAULT NULL,
  `archive_type` varchar(100) DEFAULT NULL,
  `archive_md5` varchar(45) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `authorize` varchar(100) NOT NULL DEFAULT 'approved',
  `url` varchar(200) DEFAULT NULL,
  `imgage` varchar(200) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'nomal',
  `remark` varchar(200) DEFAULT NULL,
  `author` varchar(45) NOT NULL DEFAULT 'hunter',
  PRIMARY KEY (`idbill`,`uuid`),
  UNIQUE KEY `idbill_UNIQUE` (`idbill`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='bill of company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'0feeb35d-8083-4c47-be8a-a06f364523e4','2019-01-13 21:54:36','2019-01-13 21:50:12','苏州赤箭智能科技有限公司','Hunter','320323198306180035','洽谈投资融资和技术合作','餐饮','032001800107-31560295',-227.90,1,1,'苏州赤箭智能科技有限公司','苏州骨气家餐饮管理有限公司','bill/archive/0feeb35d-8083-4c47-be8a-a06f364523e4.webwxgetmsgimg.jpg','image/jpeg',NULL,' Red-Arrow Intelligent Technology Co. Ltd.','董事局','approved','bill/file/0feeb35d-8083-4c47-be8a-a06f364523e4','bill/image/0feeb35d-8083-4c47-be8a-a06f364523e4','bill/audio/0feeb35d-8083-4c47-be8a-a06f364523e4','bill/video/0feeb35d-8083-4c47-be8a-a06f364523e4',0,'check in','','hunter'),(2,'bff64f6c-b535-419c-bd0e-034aee8cab64','2019-01-14 10:37:01','2019-01-14 10:34:29','苏州赤箭智能科技有限公司','Hunter','320323198306180035','投资赤箭智能科技有限公司5万元人民币','注资','PI19AEB516930348',50000.00,1,1,'上海招商银行','苏州中国银行苏州赤箭智能科技有限公司','bill/archive/bff64f6c-b535-419c-bd0e-034aee8cab64.1725937385.jpg','image/jpeg',NULL,'苏州赤箭智能科技有限公司','董事局','approved','bill/file/bff64f6c-b535-419c-bd0e-034aee8cab64','bill/image/bff64f6c-b535-419c-bd0e-034aee8cab64','bill/audio/bff64f6c-b535-419c-bd0e-034aee8cab64','bill/video/bff64f6c-b535-419c-bd0e-034aee8cab64',0,'check in','苏州赤箭智能科技有限公司技术创新新颖，值得作为命运共同体投资标的。 永远持有苏州赤箭智能科技有限公司股权。','hunter'),(3,'fc478555-ea83-4849-b2d8-aca9fd52ad3a','2019-01-16 11:14:09','2019-01-16 03:11:17','苏州赤箭智能科技有限公司','Hunter','320323198306180035','支付2018太平人寿保单','保险','032001600511-87385314',-7474.00,1,1,'苏州赤箭智能科技有限公司','太平人寿保险有限公司苏州分公司','bill/archive/fc478555-ea83-4849-b2d8-aca9fd52ad3a.2018-8-8-太平人寿保单发票.pdf','application/pdf','eca26d821986dc575c43a8ba1babcb5b','苏州赤箭智能科技有限公司','董事局','approved','bill/file/fc478555-ea83-4849-b2d8-aca9fd52ad3a','bill/image/fc478555-ea83-4849-b2d8-aca9fd52ad3a','bill/audio/fc478555-ea83-4849-b2d8-aca9fd52ad3a','bill/video/fc478555-ea83-4849-b2d8-aca9fd52ad3a',0,'check in','保险单号:002305692127008','hunter'),(4,'3c548c27-1db6-47d2-a66e-9852b65b67e1','2019-01-16 12:00:26','2018-11-12 00:00:00','苏州赤箭智能科技有限公司','Hunter','320323198306180035','苏州站-G7101-上海虹桥','火车票','N052962',-41.50,1,1,'苏州赤箭智能科技有限公司','中国铁路总公司','bill/archive/3c548c27-1db6-47d2-a66e-9852b65b67e1.20181112.jpg','image/jpeg','ecc5309508ebb37e5e3db345c7c768e9','苏州赤箭智能科技有限公司','董事局','approved','bill/file/3c548c27-1db6-47d2-a66e-9852b65b67e1','bill/image/3c548c27-1db6-47d2-a66e-9852b65b67e1','bill/audio/3c548c27-1db6-47d2-a66e-9852b65b67e1','bill/video/3c548c27-1db6-47d2-a66e-9852b65b67e1',0,'check in','上海南局补','hunter'),(5,'07fa7f19-a8d9-49e9-9497-5de247054333','2019-01-16 12:04:22','2019-01-04 04:00:44','苏州赤箭智能科技有限公司','Hunter','320323198306180035','上海-G7062-苏州 19:32开','火车票','Z25A052255',-39.50,1,1,'苏州赤箭智能科技有限公司','中国铁路总公司','bill/archive/07fa7f19-a8d9-49e9-9497-5de247054333.20190104.jpg','image/jpeg','fe29b12a070d32a2ff6af80357b8c166','苏州赤箭智能科技有限公司','董事局','approved','bill/file/07fa7f19-a8d9-49e9-9497-5de247054333','bill/image/07fa7f19-a8d9-49e9-9497-5de247054333','bill/audio/07fa7f19-a8d9-49e9-9497-5de247054333','bill/video/07fa7f19-a8d9-49e9-9497-5de247054333',0,'check in','','hunter'),(6,'2e206e27-838b-4ac7-8106-f91aa870627b','2019-01-16 12:07:18','2019-01-07 04:05:30','苏州赤箭智能科技有限公司','Hunter','320323198306180035','昆山南-G7101-上海虹桥','火车票','A052410',-26.50,1,1,'苏州赤箭智能科技有限公司','中国铁路总公司','bill/archive/2e206e27-838b-4ac7-8106-f91aa870627b.20190107.jpg','image/jpeg','2f9b524876ed283a6c036a1858d0b260','苏州赤箭智能科技有限公司','董事局','approved','bill/file/2e206e27-838b-4ac7-8106-f91aa870627b','bill/image/2e206e27-838b-4ac7-8106-f91aa870627b','bill/audio/2e206e27-838b-4ac7-8106-f91aa870627b','bill/video/2e206e27-838b-4ac7-8106-f91aa870627b',0,'check in','上海南客补','hunter'),(7,'93956300-9b1a-467b-9bfc-6e25f55b4d5b','2019-01-17 13:15:03','2019-01-16 05:12:59','苏州赤箭智能科技有限公司','Hunter','320323198306180035','出差-KFC餐饮发票','餐饮','031001700311-98889321',-20.00,1,1,'苏州赤箭智能科技有限公司','上海肯德基有限公司','bill/archive/93956300-9b1a-467b-9bfc-6e25f55b4d5b.20190116.pdf','application/pdf','b85421d7fb332b9935e040ca51b18c3a','苏州赤箭智能科技有限公司','董事局','approved','bill/file/93956300-9b1a-467b-9bfc-6e25f55b4d5b','bill/image/93956300-9b1a-467b-9bfc-6e25f55b4d5b','bill/audio/93956300-9b1a-467b-9bfc-6e25f55b4d5b','bill/video/93956300-9b1a-467b-9bfc-6e25f55b4d5b',0,'check in','上海市杨浦区双辽路768号 021-24268000\r\n上海银行江苏路支行 316434-00006750417','hunter'),(8,'6943cef8-1f12-46c5-84c8-599919ef5bc2','2019-01-17 13:22:55','2019-01-17 13:19:39','苏州赤箭智能科技有限公司','Hunter','320323198306180035','定制两人名片','名片','035021800111-16079891',-280.00,1,1,'苏州赤箭智能科技有限公司','时光七号厦门印制有限公司','bill/archive/6943cef8-1f12-46c5-84c8-599919ef5bc2.D710159D-913F-4796-9066-2F4FDB2F323D.png','image/png','cd7ef189da887a9d7485f1f99c8f0d02','苏州赤箭智能科技有限公司','董事局','approved','bill/file/6943cef8-1f12-46c5-84c8-599919ef5bc2','bill/image/6943cef8-1f12-46c5-84c8-599919ef5bc2','bill/audio/6943cef8-1f12-46c5-84c8-599919ef5bc2','bill/video/6943cef8-1f12-46c5-84c8-599919ef5bc2',0,'check in','厦门市湖里区','hunter'),(9,'aaba7cd3-f0b6-4831-a21f-707a0203305c','2019-01-18 22:25:21','2019-01-18 14:22:22','苏州赤箭智能科技有限公司','Hunter','320323198306180035','滴滴客运服务费','出租车','012001800311-03245718',-1818.13,1,1,'苏州赤箭智能科技有限公司','滴滴出行科技有限公司','bill/archive/aaba7cd3-f0b6-4831-a21f-707a0203305c.20190118.pdf','application/pdf','6b3bb31357aa3bf82c98117e89d330cd','苏州赤箭智能科技有限公司','董事局','approved','bill/file/aaba7cd3-f0b6-4831-a21f-707a0203305c','bill/image/aaba7cd3-f0b6-4831-a21f-707a0203305c','bill/audio/aaba7cd3-f0b6-4831-a21f-707a0203305c','bill/video/aaba7cd3-f0b6-4831-a21f-707a0203305c',0,'check in','天津经济技术开发区南港工业区综合服务区办公楼C座103室12单元022-59002850\r\n招商银行股份有限公司天津自由贸易试验区分行122905939910401','hunter'),(10,'8e335b36-6533-478a-b361-aebec8bba8d3','2019-01-19 09:57:44','2018-11-11 01:54:59','苏州赤箭智能科技有限公司','Hunter','320323198306180035','阿里云服务费用','云服务','033001800111-74205183',-1578.00,1,1,'苏州赤箭智能科技有限公司','阿里云计算有限公司 ','bill/archive/8e335b36-6533-478a-b361-aebec8bba8d3.20181111.pdf','application/pdf','a7a44f4b0befccf4d9c8e2d6c8879a1d','苏州赤箭智能科技有限公司','董事局','approved','bill/file/8e335b36-6533-478a-b361-aebec8bba8d3','bill/image/8e335b36-6533-478a-b361-aebec8bba8d3','bill/audio/8e335b36-6533-478a-b361-aebec8bba8d3','bill/video/8e335b36-6533-478a-b361-aebec8bba8d3',0,'check in','91330106673959654P \r\n杭州市转塘科技经济区块16号8幢 0571-85022088 \r\n招商银行杭州高新支行 571905493610702','hunter'),(11,'742d2368-befc-4cd2-8a4c-a45aef7206b8','2019-01-19 10:07:12','2018-07-19 02:02:38','苏州赤箭智能科技有限公司','Hunter','320323198306180035','转账注入资金,激活公司账户','注资','180719',10000.00,1,1,'上海招商银行','苏州赤箭智能科技有限公司','bill/archive/742d2368-befc-4cd2-8a4c-a45aef7206b8.BOCVC535271964143-2018-00002.pdf','application/pdf','35c27872b1de64d16fe56d649a0d639f','苏州赤箭智能科技有限公司','董事局','approved','bill/file/742d2368-befc-4cd2-8a4c-a45aef7206b8','bill/image/742d2368-befc-4cd2-8a4c-a45aef7206b8','bill/audio/742d2368-befc-4cd2-8a4c-a45aef7206b8','bill/video/742d2368-befc-4cd2-8a4c-a45aef7206b8',0,'check in','3085840000132018072015623513\r\n3085840000132018072010561760','hunter'),(12,'8ad7a390-fcc8-49ec-a1ab-6c90c85435c0','2019-01-19 10:11:21','2018-08-24 02:07:36','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司	','320323198306180035','银行月度扣费','银行资费','180824',-25.00,1,1,'苏州赤箭智能科技有限公司','中国银行苏州浒关开发区支行 ','bill/archive/8ad7a390-fcc8-49ec-a1ab-6c90c85435c0.BOCVC535271964143-2018-00003.pdf','application/pdf','6488f0939a0fed1c4f1cbd6c3b286d5d','苏州赤箭智能科技有限公司','董事局','approved','bill/file/8ad7a390-fcc8-49ec-a1ab-6c90c85435c0','bill/image/8ad7a390-fcc8-49ec-a1ab-6c90c85435c0','bill/audio/8ad7a390-fcc8-49ec-a1ab-6c90c85435c0','bill/video/8ad7a390-fcc8-49ec-a1ab-6c90c85435c0',0,'check in','','hunter'),(13,'5a54f212-9237-4032-a990-94be9772eac9','2019-01-19 11:05:57','2018-12-20 03:03:52','苏州赤箭智能科技有限公司','中国银行','111111111111111111','2018年8-12月利息','利息','460718917-099 460709297-099',12.86,1,1,'中国银行','苏州赤箭智能科技有限公司','bill/archive/5a54f212-9237-4032-a990-94be9772eac9.20180701-20181231.pdf','application/pdf','07fd25289d1453efca5fb360f650b93b','苏州赤箭智能科技有限公司','董事局','approved','bill/file/5a54f212-9237-4032-a990-94be9772eac9','bill/image/5a54f212-9237-4032-a990-94be9772eac9','bill/audio/5a54f212-9237-4032-a990-94be9772eac9','bill/video/5a54f212-9237-4032-a990-94be9772eac9',0,'check in','流水号460718917-099 460709297-099','hunter'),(14,'bb9d5794-cfe6-4750-90e6-bc46c8588694','2019-01-19 11:10:23','2019-01-19 03:06:15','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','91320508MA1WR2H5XE','银行2018年9-12月度扣费','银行资费','141695588-990',-100.00,1,1,'苏州赤箭智能科技有限公司','中国银行苏州浒关开发区支行 ','bill/archive/bb9d5794-cfe6-4750-90e6-bc46c8588694.20180701-20181231.pdf','application/pdf','07fd25289d1453efca5fb360f650b93b','苏州赤箭智能科技有限公司','董事局','approved','bill/file/bb9d5794-cfe6-4750-90e6-bc46c8588694','bill/image/bb9d5794-cfe6-4750-90e6-bc46c8588694','bill/audio/bb9d5794-cfe6-4750-90e6-bc46c8588694','bill/video/bb9d5794-cfe6-4750-90e6-bc46c8588694',0,'check in','流水号：9月：141695588-990,10月：108718455-988 11月：125206924-986 12月：73152900-983 收款人账号：111111111111111111','hunter'),(15,'d44582f4-6e0e-462f-a197-7b190bdb56a0','2019-01-19 11:15:22','2018-12-26 03:12:34','苏州赤箭智能科技有限公司','Hunter','320323198306180035','收益注资','注资','3085840000132018122617770053',2000.00,1,1,'上海招商银行','苏州赤箭智能科技有限公司','bill/archive/d44582f4-6e0e-462f-a197-7b190bdb56a0.20180701-20181231.pdf','application/pdf','07fd25289d1453efca5fb360f650b93b','苏州赤箭智能科技有限公司','董事局','approved','bill/file/d44582f4-6e0e-462f-a197-7b190bdb56a0','bill/image/d44582f4-6e0e-462f-a197-7b190bdb56a0','bill/audio/d44582f4-6e0e-462f-a197-7b190bdb56a0','bill/video/d44582f4-6e0e-462f-a197-7b190bdb56a0',0,'check in','业务标识号：3085840000132018122617770053 业务编号：20181226B427550606 \r\n发起行行号：308584000013 接收行行号：18068 ','hunter');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item` varchar(1024) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `goal` varchar(1024) NOT NULL,
  `earn` double NOT NULL DEFAULT '0' COMMENT 'Donor income',
  `priority` int(11) NOT NULL DEFAULT '0',
  `creator` varchar(1024) NOT NULL,
  `executor` varchar(1024) NOT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'star time',
  `end` datetime DEFAULT NULL COMMENT 'end time',
  `request` varchar(1024) DEFAULT NULL,
  `method` varchar(1024) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `father` varchar(45) NOT NULL DEFAULT '0' COMMENT 'depend father item uuid',
  `child` varchar(45) NOT NULL DEFAULT '0' COMMENT 'child itme uuid',
  `url` varchar(1024) NOT NULL COMMENT 'url ',
  `path` varchar(1024) DEFAULT NULL COMMENT 'path of workspace',
  `size` bigint(20) NOT NULL DEFAULT '107374182400' COMMENT 'path space size ',
  `image` varchar(1024) DEFAULT NULL COMMENT 'file name ',
  `audio` varchar(1024) DEFAULT NULL COMMENT 'file name',
  `video` varchar(1024) DEFAULT NULL COMMENT 'file name',
  `group` varchar(1024) DEFAULT NULL COMMENT 'work group',
  `address` varchar(1024) DEFAULT NULL,
  `mail` varchar(1024) DEFAULT NULL,
  `tel` varchar(1024) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`iditem`,`uuid`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `iditem_UNIQUE` (`iditem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'餐饮','2019-01-15 15:55:40'),(2,'投资','2019-01-15 15:59:31'),(3,'保险','2019-01-16 11:14:10'),(4,'火车票','2019-01-16 12:00:26'),(5,'名片','2019-01-17 13:22:55'),(6,'出租车','2019-01-18 22:25:21'),(7,'云服务','2019-01-19 09:57:45'),(8,'注资','2019-01-19 10:07:12'),(9,'银行资费','2019-01-19 10:11:21'),(10,'利息','2019-01-19 11:05:57');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
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

-- Dump completed on 2019-01-19 11:33:36
