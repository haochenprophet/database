CREATE DATABASE  IF NOT EXISTS `message` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `message`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: message
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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `when` datetime DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(45) DEFAULT NULL,
  `where` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `what` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `why` varchar(200) DEFAULT NULL,
  `evaluate` text,
  `logo` varchar(100) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `remark` text,
  `author` varchar(45) DEFAULT NULL,
  `how` text COMMENT 'How do we do?',
  PRIMARY KEY (`idmessage`,`uuid`),
  UNIQUE KEY `idmessage_UNIQUE` (`idmessage`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'9512659e-4470-4298-9e2c-03d185906b6e','2018-12-17 17:56:44','2018-12-17 09:53:15','	俄罗斯','俄罗斯造船厂','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92P4T8E0001NOS','俄海军','俄罗斯海军将在明年开始接收两艘先进核潜艇','军事','0','normal','俄海军与美差距大 希望靠新造潜艇缩小差距','俄罗斯正在加强海军军事能力，以缩小与美国差距','','','','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92Q4T8E0001NOS','俄罗斯的造船厂也正在为俄海军建造“拉达”级常规潜艇，未来“拉达”级常规潜艇的建造数量可能多达12艘。','hunter','保持关注'),(4,'5cfc2c5a-d6cb-4325-b1f3-444da19f3329','2018-12-17 18:10:42','2018-12-17 10:04:52','美国印度','美国国务院','https://news.163.com/18/1217/16/E388O3PS0001875O.html','印美两国-印度两位相关政府人员','美国国务院批准向印度出售22架总价约20亿美元MQ-9B海上守卫者无人机及其配属设备','军事','0','normal','经费紧张数量减半至10亿美元','印度正在加强海洋防护监控能力，\r\n印度美国军事合作密切','','','','','印度两位相关政府人员16日透露，进口的无人机数量可能会缩减一半。','hunter','保持关注'),(5,'bccb7e42-2daf-4bbc-9eb5-83f9435b3b30','2018-12-18 14:06:34','2018-12-18 13:57:29','日本','日本政府内阁','https://www.thepaper.cn/newsDetail_forward_2748865','日本政府内阁','日本政府内阁会议12月18日中午发布新的《防卫计划大纲》正式确定5年内将“出云”级护卫舰改造升级为战后首艘航母','军事','0','normal','日本期待走向军事独立化突破二战条款+日俄北方四岛+美国日本认为中国威胁论成立+加强海空控制需求','日本具备增强海空经济能力和条件+具备控制其所在范围的军事能力\r\n+日本具有常规战斗收回北方四岛和向东南亚拓展的能力和欲望+东北亚军事力量正在发生变化\r\n','','','','','出路:东亚各个国家都要吸取战争历史教训+增强政治沟通+确保和平合作的基本发展政治军事环境','hunter','保持关注'),(6,'386bfc5f-01d1-4c41-8620-468f9634de05','2018-12-18 14:17:00','2018-12-18 14:09:05','中国','新华社北京','https://www.thepaper.cn/newsDetail_forward_2748567','中国与欧盟','中国对欧盟政策文件（2018年12月）','经济','0','normal','英国脱欧+法国动荡+贸易保护+俄乌危机-俄美危机','社会动荡和战乱是人类历史各个时期都最具破坏力的疯狂人类活动\r\n中国和平发展需要并希望欧洲和平,稳定,发展\r\n+一带一路经济建设需要稳定的政府基础实现沟通\r\n+和平,合作,互惠互利是正确并且明确的道路','','','','','中国和欧盟以及其沿线国家具有资源互补优势互补的基础条件具备合作共赢基础','hunter','积极推进'),(7,'8c1173e9-2958-4c2c-9ad7-20df35d718db','2018-12-18 14:26:32','2018-12-18 14:18:04','中国','北京','https://www.thepaper.cn/newsDetail_forward_2749044','中国','在庆祝改革开放40周年大会','发展','0','normal','政治经济都处在变革中亟待总结经验指引和定位未来','求是求真+变革开放:解放思想、实事求是、与时俱进、求真务实','','','','','中国需要持续破局:如何继续从理论到实践,从问题到方案,从过去到未来,从部分到整体,从经济基础到上层建筑,\r\n从内到外的各种各样的问题.并为未来定位长久发展方向.','hunter','保积极推进'),(8,'523ebfa1-32d7-42b5-953e-c8216b1a7207','2018-12-18 15:07:14','2018-12-18 14:58:32','美国+乌克兰->俄罗斯','乌克兰','https://news.163.com/18/1218/07/E39SEI2I0001899N.html','美国驻乌克兰特使库尔特·沃尔克Kurt Volker','美方对俄罗斯再度制裁的可能性正在增加','政治','0','normal','俄罗斯强硬政策+乌克兰宣布终止和平协定+俄乌领土纠纷','乌克兰是美国和俄罗斯都必须争夺的战略要地和国家.\r\n乌克兰整体倒向北约迫使俄罗斯政治军事经济被动局面产生.\r\n乌克兰内部矛盾,俄罗斯美国矛盾,乌克兰俄罗斯矛盾将演变成旷日持久的政治经济军事矛盾.','','','','','中东欧将长期处在矛盾交织中发展,\r\n和平合作需要更多条件支撑,\r\n战争和内乱跟容易一触即发.','hunter','保持关注'),(9,'407a5d70-ae55-4424-9c32-c89a20fc2821','2018-12-18 16:07:55','2018-12-18 08:01:42','英国','伦敦','https://news.163.com/18/1218/09/E3A3IN4Q0001899N.html','英国首相发言人','脱欧协议问题举行议会表决的日期尚未确定+英国政府已着手准备应对无协议退出欧盟','政治','0','normal','英首相特雷莎·梅在经历为期3天的辩论后发表声明，承认绝大多数议员不支持目前的协议文本','英国首相发言人认为出现这种情况的概率很低.\r\n英国最大化各国利益和本国利益, 降低影响.','','','','','英国脱欧对欧盟有经济影响,欧盟经济共同体面临分裂','hunter','持续关注');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 16:09:56
