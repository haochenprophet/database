CREATE DATABASE  IF NOT EXISTS `training` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `training`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: training
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
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`,`name`),
  UNIQUE KEY `idstatus_UNIQUE` (`idstatus`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `idtraining` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL,
  `type` varchar(45) NOT NULL,
  `what` varchar(45) NOT NULL,
  `text` varchar(500) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL,
  `audio` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `who` varchar(100) DEFAULT NULL,
  `where` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtraining`,`uuid`,`time`,`title`,`priority`,`type`,`what`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'f949f1e9-a7bb-478b-9af1-a12d57c8d092','2019-05-29 20:55:20','莫尔斯电码.MP4','computer','信息编码','摩尔斯电码（又译为摩斯密码，Morse code）是一种时通时断的信号代码，通过不同的排列顺序来表达不同的英文字母、数字和标点符号。','https://baike.baidu.com/item/%E6%91%A9%E5%B0%94%E6%96%AF%E7%94%B5%E7%A0%81/1527853?fromtitle=%E8%8E%AB%E5%B0%94%E6%96%AF%E7%94%B5%E7%A0%81&fromid=1969326',0,'check in','','teaching/vedio/莫尔斯电码.MP4','','teaching/image/标准摩尔斯电码对照表.jpg','Hunter','苏州赤箭智能科技有限公司'),(2,'e51009f9-aee8-4596-84c7-64151aa37729','2019-05-31 16:51:11','ASCII（American Standard Code for Information Interchange:美国信息交换标准代码）','computer','信息编码','是基于拉丁字母的一套电脑编码系统，主要用于显示现代英语和其他西欧语言。它是现今最通用的信息交换标准，并等同于国际标准ISO/IEC 646','https://baike.baidu.com/item/ASCII/309296',0,'check in','','','','teaching/image/ASCII.jpg','Hunter','苏州赤箭智能科技有限公司'),(3,'7d60d9b1-10fe-45e3-9fc5-3e9c171a7826','2019-05-31 17:00:28','Unicode 统一字符集','computer','信息编码','它为每种语言中的每个字符设定了统一而且唯一的二进制编码，以满足跨语言、跨平台进行文本转换、处理的要求。1990年开始研发，1994年正式公布','https://unicode-table.com/cn/',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(4,'58f7fbc4-6b2e-44e6-8e0b-653fa4016929','2019-07-02 16:58:12','磁盘如何存储数据和信息的','computer','硬盘工作原理','利用磁性材料，的N极和S极分别表示0/1 ','https://www.bilibili.com/video/av23292731?from=search&seid=1776348324633341622',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(5,'4420c553-8d0b-4491-b559-d012d5d0ddbb','2019-07-02 17:16:19','CPU 是如何被生产制造的？','computer','CPU','1.设计电路 2.生产晶片 3.光刻电路 4.制造晶体管 5.注铜形成集成电路 6.封装测试','https://www.bilibili.com/video/av22768580?from=search&seid=10458902702751761659',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(6,'36ad1dd6-2dfa-4789-9651-baca12680b4a','2019-07-02 17:24:05','如何组装一台台式机','computer','电脑组装','1.机箱 2.主板 3.CPU 4.内存 5. 硬盘 6.电源 7.连接线','https://www.bilibili.com/video/av36071622?from=search&seid=5305596244694996071',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(7,'d45f0586-9b5e-4ca5-8b0d-bf0a171a20a5','2019-07-02 18:02:53','C语言程序设计','computer','C Language','关键字， 数据类型、运算符与表达式 ，函数，文件，数组，结构体，指针，类','teaching/archive/c语言.pdf',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(8,'2b826908-66b5-4b4e-b32b-6620a415968f','2019-07-02 18:05:48','C# 和 Visual Studio Code 入门','computer','计算机程序设计','.NET Core 提供了快速运行的模块化平台，用于创建在 Windows、Linux 和 macOS 上运行的应用程序。','https://docs.microsoft.com/zh-cn/dotnet/core/tutorials/with-visual-studio-code',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(9,'7c8fe528-40da-4b0a-b224-e13fba533037','2019-07-03 15:09:26','C Language keyword','computer','C Language','auto,break,case,char,const,continue,default,do,double,else,enum,extern,float,for,goto,if,inline,int,long,register,restrict,return,short,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,while','https://en.cppreference.com/w/c/keyword',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(10,'72fae08d-2f9a-4459-9a3a-f6a4273f309b','2019-07-03 15:19:48','The GNU C Reference Manual','computer','C Language','GNU C 参考手册','https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(11,'a9ac3d3d-86ec-4bc3-8651-633cd78e7c2e','2019-07-04 06:43:52','C-tutorial','computer','C Language','runoob.com/cprogramming','https://www.runoob.com/cprogramming/c-tutorial.html',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(12,'8990aaa6-79cf-4bff-a10d-47780f9ae468','2019-07-04 07:32:43','C/C++及类C语言介绍','computer','C Language','https://www.bilibili.com/video/av56305829','https://www.bilibili.com/video/av56305829',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(13,'d3254e9c-252e-41e3-9f29-4c0fecc8781a','2019-07-04 08:16:22','超级计算机应用介绍','computer','计算机产品形态','CCTV 走近科学 超级计算机','http://tv.cctv.com/2012/12/10/VIDA1355151035057421.shtml',0,'check in','','teaching/vedio/超级计算机简介.MP4','','','Hunter','苏州赤箭智能科技有限公司'),(14,'31db3f15-5b00-4f6f-ae77-91fa4ff9727f','2019-07-04 09:13:41','电子计算机发展简史','computer','计算机历史','电子管计算机，半导体计算机，集成电路计算机，大规模集成电路计算机','https://www.bilibili.com/video/av6643537?from=search&seid=10512041362146514838',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(15,'becfc156-c95d-4bfb-acb4-7c2aad393194','2019-07-04 09:24:34','不同时期的各种计算机','computer','计算机产品形态','Z1，ZNIAC(1946)UNIVACI(1951),BESK(1953),D2(1960),APPLE,IBM ,lenovo ，HP，DELL，ASUS，HUAWEI，XIAOMI','https://www.bilibili.com/video/av35530465/?spm_id_from=trigger_reload',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(16,'a51fbdee-9273-4702-aa71-92446c016151','2019-07-04 09:32:35','INTEL CPU 1979-2018','computer','CPU','intel4004，8086，8088，286，386，486，586，Pentium，Celeron，XEON，Core，Atom，','https://www.bilibili.com/video/av29768313/?spm_id_from=333.788.videocard.0',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(17,'fd5e8aa3-fd4d-42f5-aaf2-641a034b8885','2019-07-04 09:38:08','Windows OS的发展史','computer','操作系统','Windows 1.0 - Windows 10','https://www.bilibili.com/video/av11760806/?spm_id_from=333.788.videocard.1',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(18,'751db299-ff26-41fe-b080-a6154778b2a1','2019-07-04 09:48:26','苹果APPLE重新定义手机','computer','计算机产品形态','IPhone 产品发展历史','https://www.bilibili.com/video/av10917200?from=search&seid=851811668312796338',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(19,'fe7b4c02-dd6a-4877-ab46-29da07a7de61','2019-07-04 09:56:30','CPU如何被制造出来的？','computer','CPU','英特尔CPU制造过程 一堆沙子到一颗CPU的全过程','https://www.bilibili.com/video/av22399351/?spm_id_from=333.788.videocard.0',0,'check in','','teaching/vedio/光刻机如何工作.MP4','','','Hunter','苏州赤箭智能科技有限公司'),(20,'19fc978a-1f81-4f89-a1e7-aefb2b7e5d2c','2019-07-04 10:11:37','工程师是如何设计和调试CPU操作指令？','computer','CPU','subleq 指令代码 https://github.com/rongcuid/subleq-machine-vhdl','https://www.bilibili.com/video/av11804848/?spm_id_from=trigger_reload',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(21,'e9aae972-2144-421e-a4ce-d5edd0995b3c','2019-07-04 10:35:04','ASCII 码表讲解','computer','信息编码','ASCII（American Standard Code for Information Interchange:美国信息交换标准代码）讲解','https://www.ixigua.com/i6439713435172209153/',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(22,'4489e69c-648e-4c30-9749-c66cec37e2e3','2019-07-04 10:44:34','CPU如何 执行程序','computer','CPU','英文讲解','https://www.bilibili.com/video/av9701270?from=search&seid=18106719461954360231',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(23,'86071e9e-3cef-4ff2-8186-f019968c75af','2019-07-04 10:57:53','CPU 执行指令过程','computer','CPU','LDA ，SUB ，STORE，JMP','https://www.bilibili.com/video/av9875360/?spm_id_from=trigger_reload',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(24,'ab789f6d-20ca-4848-bb99-54092574c3a4','2019-07-04 11:11:06','Register and Memory','computer','Memory','寄存器和存储器','https://www.bilibili.com/video/av12881796/?spm_id_from=333.788.videocard.3',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(25,'ddabf7d6-30e8-40bb-a889-adebbb8ee2ea','2019-07-04 11:16:36','10分钟速成课：计算机科学','computer','计算机原理','10分钟速成课：计算机科学','https://space.bilibili.com/5385034/video',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(26,'5416a7cc-533d-4c83-8542-93d8ba50487c','2019-07-04 11:30:41','二进制编码','computer','信息编码','二进制表示逻辑运算，10进制数，整数，浮点数，表示文字，表示图片，表示指令.表示万物','https://www.bilibili.com/video/av11592079',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(27,'120e8cf5-9da8-45da-b67b-905e9af61550','2019-07-10 17:52:43','显示器显示原理','computer','显示器','如何显示准确的颜色：RGB Red Green Blue','https://www.bilibili.com/video/av30817319',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(28,'4ccf7971-e799-4394-a082-0002781092ba','2019-07-10 18:05:46','5G通信','computer','5G','你的手机是怎么上网的？','https://www.bilibili.com/video/av44691514',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(29,'4e381d77-269c-4e96-ab8b-14a909f44d96','2019-07-10 18:13:29','拍照','computer','摄像头','手机是如何拍照的？','https://www.bilibili.com/video/av50280224',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(30,'c5ccdc89-d10c-4be0-9dbe-456f157ac85d','2019-07-10 18:21:38','核裂变','computer','物理','美国轰炸日本广岛长崎的原子弹结构','https://www.bilibili.com/video/av47027633',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(31,'49e0a71e-6cd9-4ce7-ad75-0367d28772d4','2019-07-10 18:27:32','硬盘和SSD工作原理差异','computer','硬盘工作原理','你的硬盘是如何储存数据的？','https://www.bilibili.com/video/av55918101',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(32,'68e8846a-8586-4e01-bacd-81ec5c58123f','2019-07-10 18:34:16','摄像监控是如何工作的？','computer','摄像头','天网工程','https://www.bilibili.com/video/av16814286',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(33,'3d8bd15e-ff34-44ce-ae90-d843fa91001d','2019-07-10 18:41:15','火车是如何调度的','computer','物理','火车行线图','https://www.bilibili.com/video/av42125169',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(34,'0278e075-9b43-4325-9d6e-38117cbcd24c','2019-07-10 18:46:30','电子警察是如何工作的？','computer','摄像头','苏州海燕','https://www.bilibili.com/video/av29640621',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(35,'1ba247f9-ed93-43b5-909c-700ecb6b9bbd','2019-07-10 18:52:44','煤电','computer','物理','煤炭是如何发电的？','https://www.bilibili.com/video/av28370343',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(36,'c909c61f-e333-49ab-ad6a-23ff085e0b4c','2019-07-10 18:59:23','计算机围棋原理','computer','AI','腾讯绝艺围棋软件','https://www.bilibili.com/video/av26793668',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(37,'6ed500f6-9c6b-4fa5-b830-d602aa21b3c6','2019-07-10 19:04:29','坦克驾驶','computer','物理','坦克驾驶','https://www.bilibili.com/video/av22642849',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(38,'edf46ccf-3579-4d7e-80e3-38e9dd8119ac','2019-07-10 19:12:08','洛克希德.马丁公司空中和导弹防御雷达-S波段AMDR S数字相控阵雷达','computer','雷达','洛克希德.马丁公司空中和导弹防御雷达-S波段AMDR S数字相控阵雷达','https://www.bilibili.com/video/av11840566',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(39,'6c4b8453-b99d-477a-8956-92f6c426b69d','2019-07-10 19:17:12','清华大学：C++基础课程','computer','C++ Language','郑莉教授 清华大学计算机科学与技术系','http://www.xuetangx.com/courses/course-v1:TsinghuaX+00740043X_2015_T2+sp/about',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(40,'5e8ce13d-bcb9-40bc-8559-070749dc5046','2019-07-10 19:45:54','X/CT原理','computer','物理','X 光如何看穿你的颈椎、腰椎病？','https://www.bilibili.com/video/av52055900',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(41,'835a886f-1ae5-4cbf-b5ef-9bd5a0bc2175','2019-07-10 19:57:20','分布式网络文件','computer','计算机网络','P2P BT ','https://www.bilibili.com/video/av57748098',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(42,'3c89aa42-74aa-4b77-9696-f0da252e7b0d','2019-07-12 11:17:11','早期计算机','computer','计算机历史','珠算-算尺-算表-机械-电子管','https://www.bilibili.com/video/av8861057',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(43,'835e3aff-7b43-4261-858b-6dae193f628b','2019-07-12 11:20:14','电子计算','computer','计算机历史','电子计算机','https://www.bilibili.com/video/av9066628',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(44,'6569b156-bf66-4542-8258-cd45b10425a0','2019-07-12 11:40:21','逻辑门','computer','计算机历史','AND OR NOT XOR ','https://www.bilibili.com/video/av11557339',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(45,'9146b4ba-33c6-4140-aade-d97c12bf7be2','2019-07-12 12:11:32','触摸屏工作原理','computer','触摸屏','电荷变化，感应位置变化','https://www.bilibili.com/video/av7056496',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(46,'20fd02fc-839c-496f-95e4-35c846455fed','2019-07-12 12:23:25','遥控器工作原理','computer','遥控器','单片机遥控器工作原理','https://www.bilibili.com/video/av11479200',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(47,'8eb95474-ca1d-44ea-88fd-c93cf98a7673','2019-07-12 12:32:42','谭浩强C语言','computer','C Language','基于谭浩强C语言程序视频','https://www.bilibili.com/video/av2831981',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司'),(48,'89452eae-20d9-4b31-a9ae-59600c05ee71','2019-07-12 19:02:30','安装VisualStudioIDE','computer','VisualStudio','下载安装Visual Studio IDE','https://visualstudio.microsoft.com/zh-hans/',0,'check in','','','','','Hunter','苏州赤箭智能科技有限公司');
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtype`,`name`),
  UNIQUE KEY `idtype_UNIQUE` (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'computer','2019-07-03 14:35:17');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what`
--

DROP TABLE IF EXISTS `what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `what` (
  `idwhat` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwhat`,`name`),
  UNIQUE KEY `idwhat_UNIQUE` (`idwhat`),
  UNIQUE KEY `what_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
INSERT INTO `what` VALUES (1,'信息编码','2019-05-31 16:42:26'),(2,'硬盘工作原理','2019-07-02 16:41:43'),(3,'CPU','2019-07-02 17:04:22'),(4,'电脑组装','2019-07-02 17:20:44'),(5,'计算机程序设计','2019-07-02 17:58:53'),(6,'C Language','2019-07-03 15:00:56'),(7,'C++ Language','2019-07-03 15:01:11'),(8,'计算机产品形态','2019-07-04 07:50:45'),(9,'计算机历史','2019-07-04 09:12:23'),(10,'操作系统','2019-07-04 09:36:51'),(11,'Memory','2019-07-04 11:09:55'),(12,'计算机原理','2019-07-04 11:14:55'),(13,'显示器','2019-07-10 17:51:16'),(14,'5G','2019-07-10 18:04:34'),(15,'摄像头','2019-07-10 18:12:07'),(16,'物理','2019-07-10 18:20:34'),(17,'AI','2019-07-10 18:58:37'),(18,'雷达','2019-07-10 19:11:02'),(19,'计算机网络','2019-07-10 19:56:02'),(20,'触摸屏','2019-07-12 12:10:36'),(21,'遥控器','2019-07-12 12:22:37'),(22,'VisualStudio','2019-07-12 18:59:18');
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-12 19:14:20
