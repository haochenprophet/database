CREATE DATABASE  IF NOT EXISTS `item` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `item`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: item
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'8dca28b3-084f-456d-98d7-03ac28568f01','2018-02-08 11:40:03','核名','注册','注册',0,0,'hunter','hunter','智能,科技,生命','2018-02-08 11:40:03','2018-02-08 11:31:10','身份证号码、\r\n公司名字、\r\n经营范围、\r\n注册资本、\r\n股东持股比例、\r\n地址。','各个区注册流程不同，\r\n新区、吴中、市区、相城可以在现场核名，\r\n园区只能在网上核名，现在苏\r\n州所有的区都可以网上核名，\r\n一个身份证一次只能核一个名字。',0,'0','0','苏州市工商局','register',107374182400,'image','audio','vedio','hunter,lulu','苏州','patent_sys@126.com','123','nomal','核名'),(2,'6427e831-9b76-4faa-8da8-86f089419361','2018-02-08 11:44:51','设立','注册','设立',0,0,'hunter','hunter','设立','2018-02-08 11:44:51','2018-02-08 11:42:47','身份证号码、\r\n经营范围、\r\n注册资本、\r\n股东持股比例、\r\n地址。','设立',0,'0','0','工商局网站','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','设立'),(3,'ddb8b4a9-0c62-49f5-916b-5133198657b4','2018-02-08 11:50:20','工商交材料','注册','交材',0,0,'hunter','hunter','材料','2018-02-08 11:50:20','2018-02-08 11:45:41','材料清单','工商交材料,预审通过后，\r\n在网上打印相关资料交到工商联办窗口',0,'0','0','工商局网站','register',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','交材'),(4,'529f5216-458f-4b45-9baf-2387906cffd2','2018-02-08 11:52:42','执照','注册','执照',0,0,'hunter','hunter','执照','2018-02-08 11:52:42','2018-02-08 11:51:21','5days+ID','工商局',0,'0','0','工商局网站','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','执照'),(5,'f27194a2-a6da-409f-b757-2ec293f4b673','2018-02-08 11:55:04','刻章','注册','刻章',0,0,'hunter','hunter','刻章','2018-02-08 11:55:04','2018-02-08 11:53:23','公安窗口审批','去有资质的刻章店刻章',0,'0','0','公安窗口','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','刻章'),(6,'8f503ab3-e0e2-4a98-a930-a75fb92499dc','2018-02-08 11:58:31','开户','注册','开户',0,0,'hunter','hunter','银行开户','2018-02-08 11:58:31','2018-02-08 11:55:52','执照正副本原件、\r\n公章、\r\n财务章、\r\n法人章、\r\n法人身份证原件\r\n开户需要提前(5天)预约','选择银行办理开户',0,'0','0','银行','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','银行开户'),(7,'ec1e8fd5-4f76-477d-93a8-7a74db3f22fc','2018-02-08 12:00:52','新办企业套餐','注册','新办企业套餐',0,0,'hunter','hunter','办理CA证书','2018-02-08 12:00:52','2018-02-08 11:59:13','代扣税协议签，\r\n','登录江苏电子税务局，\r\n做新办企业套餐。',0,'0','0','江苏电子税务局','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','新办企业套餐'),(8,'94cca8cb-e191-4850-8684-922adee78726','2018-02-08 12:04:20','办CA','注册','办CA',0,0,'hunter','hunter','办CA','2018-02-08 12:04:20','2018-02-08 12:02:23','新办企业套餐，\r\n公章、\r\n执照复印件、','行政服务中心设立窗口\r\nCA证书是用于企业申报的工具',0,'0','0','行政服务中心','path',107374182400,'image','audio','vedio','hunter','苏州','patent_sys@126.com','123','nomal','办CA'),(9,'3b11c13c-0d1b-49a0-897f-b24a149405a3','2018-02-08 14:20:02','ProjectPlan','Project','for all people of the world.',0,0,'hunter','hunter','ai-device,notebook,Bluetooth,\r\nopen-test,open-erp,e-gov,website,stock','2018-02-08 14:20:02','2018-05-08 14:15:53','money','H/W\r\nS/W',0,'0','0','none','none',107374182400,'none','none','none','hunter','china','patent_sys@126.com','123','nomal','ProjectPlan'),(10,'c7d45cbd-2470-40f4-93b7-9863421abe4b','2018-02-11 16:24:38','link people','link','18 people',0,0,'hunter','hunter','amd,intel,ibm,nvdia,asus,other','2018-02-11 16:24:38','2018-02-11 16:19:37','tel,winxin,mail,group','coffee',0,'0','0','','',107374182400,'','','','hunter','上海','patent_sys@126.com','123','nomal',''),(11,'c7d45cbd-2470-40f4-93b7-9863421abe4c','2018-02-11 16:32:12','seek project funds','funds','total： 5000，0000RMB',0,0,'hunter','hunter','seek project funds form:\r\nhttps://www.198382.com/funds.php','2018-02-11 16:32:12','2018-12-12 16:19:37','total 5000，0000RMB \r\nfor 7 years keep support my projects ','https://www.198382.com/funds.php',0,'0','0','https://www.198382.com/funds.php','',107374182400,'','','','hunter','上海','patent_sys@126.com','123','nomal','seek project funds'),(12,'54bb7067-d1ab-42bb-a3d8-a71e9a6e0d9a','2018-02-11 16:43:58','remote cadence db create','database','create hardware design cadence database for HW design。',0,0,'hunter','hunter','remote cadence db create','2018-02-11 16:43:58','2018-12-11 16:35:37','study cadence','study cadence',0,'0','0','https://www.cadence.com/','',107374182400,'','','','hunter','上海','patent_sys@126.com','123','nomal','remote cadence db create'),(13,'fcb283a0-ae7b-4cb0-b9d8-047ab407785e','2018-02-11 22:28:48','check address & name','check ','check address & name',0,0,'hunter','hunter','高新区（虎丘）市场监管局	\r\n68753012、68753013\r\n苏州市高新区科技城','2018-02-11 22:28:48','2018-02-11 22:25:44','address','call 68753012、68753013\r\n',0,'0','0','http://wmdw.jswmw.com/home/list/?702-19345_1.html','',107374182400,'','','','hunter','苏州市高新区科技城','patent_sys@126.com','68753012','nomal','check address & name'),(14,'87fe23a5-8f9d-48cf-8501-c7f93d5ebfef','2019-01-14 08:41:09','注资：苏州赤箭智能科技有限公司5万元人民币','投资','创造出具有广泛社会价值的产品',0,0,'hunter','hunter','苏州赤箭智能科技有限公司技术创新新颖，值得作为命运共同体投资标的。\r\n永远持有苏州赤箭智能科技有限公司股权。','2019-01-14 08:41:09','2019-12-31 08:34:26','资金+技术+人力+市场','找资金+找市场+找人力',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技董事局','苏州','xhfch@126.com','','nomal','尽量在一周内完成注资，最迟不得超过一个月。'),(15,'697c879b-2a6a-4ec8-a751-e232a8bb8d88','2019-01-16 18:15:03','完成蓝牙自动化测试产线项目','研发','开发两套系统',0,0,'hunter','hunter','协议修改，测试项目修改','2019-01-16 18:15:03','2020-01-16 18:11:43','项目资金，测试设备，代码修改','修改协议解析类',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司董事局','苏州赤箭智能科技有限公司','patent_sys@126.com','13951186912','nomal','项目资金，测试设备，代码修改'),(16,'6a010dc5-5e8e-4ea4-beef-ff89365931bf','2019-02-01 23:52:31','实现organization database c++ php coding','技术','create,add,insert, update, list,delete,group ...',0,0,'hunter','hunter','解决任意结构组织问题+任意数据组织形式问题+实现信息和管理快速高效自动','2019-02-01 23:52:31','2020-02-01 15:41:39','null','tree +map ',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','red_arrows@126.com','13951186912','nomal',''),(17,'f6801409-71a1-4ffe-be4d-80fa4bf6da9d','2019-02-02 00:06:24','实现object db ','技术','实现对物体世界的抽象和表达',0,0,'hunter','hunter','db->object code -> objects ','2019-02-02 00:06:24','2020-02-01 00:00:00','iwant lib','iwant project',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','red_arrows@126.com','13951186912','nomal',''),(18,'7dd88413-84a8-41b2-affb-f612393e7d0d','2019-02-02 00:17:44','融资或盈利50万','资金','1.项目：30w 2.融资：502',0,0,'hunter','hunter','盈利：1.项目，软件，BIOS，BMC+专利 2. 寻求合作机构','2019-02-02 00:17:44','2020-02-01 00:00:00','每周寻求一次项目或投资合作','电话，邮件，写信，约见',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','red_arrows@126.com','13951186912','nomal',''),(19,'7ccfd5c3-5417-4769-ab24-010064ca0180','2019-02-02 00:25:03','用3d n维向量实现对股市技术大数据分析','金融','实现准确的筛选，和准确的趋势预测，实现周期窗口的自动移动',0,0,'hunter','hunter','X1...Xn;123-0- -1,-2-3... An--Ex---Bn','2019-02-02 00:25:03','2020-02-01 00:00:00','iwant','求和，反馈，历史统计',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','red_arrows@126.com','13951186912','nomal',''),(20,'86b09f24-2f03-4a4e-9881-2a0946b64615','2019-02-02 00:34:47','实现IWant 在慈善领域应用帮助实现任何真实慈善事项需求','慈善','规范，合法，快速，高效，公开，透明，',0,0,'hunter','hunter','慈善分类：贫困，医疗，教育，三农，欠薪，物资调剂，社会救助，','2019-02-02 00:34:47','2020-02-01 00:00:00','db，c++lib，web ui ，app ui ，action -x，task -x ','实现iwant database，iwant page',0,'0','0','','',107374182400,'','','','苏州赤箭智能科技有限公司','苏州赤箭智能科技有限公司','red_arrows@126.com','13951186912','nomal','db，c++lib，web ui ，app ui ，action -x，task -x ');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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

-- Dump completed on 2019-02-02  0:55:43
