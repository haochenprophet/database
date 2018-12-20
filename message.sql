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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'9512659e-4470-4298-9e2c-03d185906b6e','2018-12-17 17:56:44','2018-12-17 09:53:15','	俄罗斯','俄罗斯造船厂','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92P4T8E0001NOS','俄海军','俄罗斯海军将在明年开始接收两艘先进核潜艇','军事','0','normal','俄海军与美差距大 希望靠新造潜艇缩小差距','俄罗斯正在加强海军军事能力，以缩小与美国差距','','','','http://war.163.com/photoview/4T8E0001/2298507.html#p=E38CD92Q4T8E0001NOS','俄罗斯的造船厂也正在为俄海军建造“拉达”级常规潜艇，未来“拉达”级常规潜艇的建造数量可能多达12艘。','hunter','保持关注'),(2,'5cfc2c5a-d6cb-4325-b1f3-444da19f3329','2018-12-17 18:10:42','2018-12-17 10:04:52','美国印度','美国国务院','https://news.163.com/18/1217/16/E388O3PS0001875O.html','印美两国-印度两位相关政府人员','美国国务院批准向印度出售22架总价约20亿美元MQ-9B海上守卫者无人机及其配属设备','军事','0','normal','经费紧张数量减半至10亿美元','印度正在加强海洋防护监控能力，\r\n印度美国军事合作密切','','','','','印度两位相关政府人员16日透露，进口的无人机数量可能会缩减一半。','hunter','保持关注'),(3,'bccb7e42-2daf-4bbc-9eb5-83f9435b3b30','2018-12-18 14:06:34','2018-12-18 13:57:29','日本','日本政府内阁','https://www.thepaper.cn/newsDetail_forward_2748865','日本政府内阁','日本政府内阁会议12月18日中午发布新的《防卫计划大纲》正式确定5年内将“出云”级护卫舰改造升级为战后首艘航母','军事','0','normal','日本期待走向军事独立化突破二战条款+日俄北方四岛+美国日本认为中国威胁论成立+加强海空控制需求','日本具备增强海空经济能力和条件+具备控制其所在范围的军事能力\r\n+日本具有常规战斗收回北方四岛和向东南亚拓展的能力和欲望+东北亚军事力量正在发生变化\r\n','','','','','出路:东亚各个国家都要吸取战争历史教训+增强政治沟通+确保和平合作的基本发展政治军事环境','hunter','保持关注'),(4,'386bfc5f-01d1-4c41-8620-468f9634de05','2018-12-18 14:17:00','2018-12-18 14:09:05','中国','新华社北京','https://www.thepaper.cn/newsDetail_forward_2748567','中国与欧盟','中国对欧盟政策文件（2018年12月）','经济','0','normal','英国脱欧+法国动荡+贸易保护+俄乌危机-俄美危机','社会动荡和战乱是人类历史各个时期都最具破坏力的疯狂人类活动\r\n中国和平发展需要并希望欧洲和平,稳定,发展\r\n+一带一路经济建设需要稳定的政府基础实现沟通\r\n+和平,合作,互惠互利是正确并且明确的道路','','','','','中国和欧盟以及其沿线国家具有资源互补优势互补的基础条件具备合作共赢基础','hunter','积极推进'),(5,'8c1173e9-2958-4c2c-9ad7-20df35d718db','2018-12-18 14:26:32','2018-12-18 14:18:04','中国','北京','https://www.thepaper.cn/newsDetail_forward_2749044','中国','在庆祝改革开放40周年大会','发展','0','normal','政治经济都处在变革中亟待总结经验指引和定位未来','求是求真+变革开放:解放思想、实事求是、与时俱进、求真务实','','','','','中国需要持续破局:如何继续从理论到实践,从问题到方案,从过去到未来,从部分到整体,从经济基础到上层建筑,\r\n从内到外的各种各样的问题.并为未来定位长久发展方向.','hunter','积极推进'),(6,'523ebfa1-32d7-42b5-953e-c8216b1a7207','2018-12-18 15:07:14','2018-12-18 14:58:32','美国+乌克兰->俄罗斯','乌克兰','https://news.163.com/18/1218/07/E39SEI2I0001899N.html','美国驻乌克兰特使库尔特·沃尔克Kurt Volker','美方对俄罗斯再度制裁的可能性正在增加','政治','0','normal','俄罗斯强硬政策+乌克兰宣布终止和平协定+俄乌领土纠纷','乌克兰是美国和俄罗斯都必须争夺的战略要地和国家.\r\n乌克兰整体倒向北约迫使俄罗斯政治军事经济被动局面产生.\r\n乌克兰内部矛盾,俄罗斯美国矛盾,乌克兰俄罗斯矛盾将演变成旷日持久的政治经济军事矛盾.','','','','','中东欧将长期处在矛盾交织中发展,\r 和平合作需要更多条件支撑,\r 战争和内乱更容易一触即发.','hunter','保持关注'),(7,'407a5d70-ae55-4424-9c32-c89a20fc2821','2018-12-18 16:07:55','2018-12-18 08:01:42','英国','伦敦','https://news.163.com/18/1218/09/E3A3IN4Q0001899N.html','英国首相发言人','脱欧协议问题举行议会表决的日期尚未确定+英国政府已着手准备应对无协议退出欧盟','政治','0','normal','英首相特雷莎·梅在经历为期3天的辩论后发表声明，承认绝大多数议员不支持目前的协议文本','英国首相发言人认为出现这种情况的概率很低.\r\n英国最大化各国利益和本国利益, 降低影响.','','','','','英国脱欧对欧盟有经济影响,欧盟经济共同体面临分裂','hunter','持续关注'),(8,'c831df5f-a503-4205-b794-276e34711b84','2018-12-19 11:20:06','2018-12-17 03:14:51','俄罗斯','波罗的斯克','http://war.163.com/photoview/4T8E0001/2298554.html#p=E3CMG3484T8E0001NOS','俄罗斯海军','22800项目轻型护卫舰加入波罗的海舰队','军事','0','normal','美国北约对俄罗斯战略挤压+乌克兰是俄罗斯和美国的战略必争位置+美国威胁退出中导条约','俄罗斯正加强陆海空力量+美国特朗普宣布成立太空军+俄罗斯整体处在弱势地位但具备局部优势+美国不具备局部优势','','','','','该舰还没正式服役正海试','hunter','密切关注'),(9,'0f2a8c57-aa50-43a0-8b4f-d92e287ff888','2018-12-19 11:35:17','2018-12-19 03:25:20','日本+俄罗斯','南千岛群岛','https://news.163.com/18/1219/08/E3CJILHP000187V5.html','俄罗斯','俄罗斯在南千岛群岛建四座新军营并计划建更多装甲车设施','军事','0','normal','日本参与美国主导的对俄罗斯战略挤压+日本有计划武力收回北方四岛','俄罗斯已在群岛上部署战斗机和导弹防御系统又增加新力量以加强对四个岛屿的军事控制能力\r\n东北亚需要和平环境+日本俄罗斯不应该在东北亚有战争迹象','','','','','俄罗斯在1945年二战结束时实际控制“南千岛群岛”国后、择捉、齿舞、色丹四岛','hunter','警惕战争'),(10,'434315a2-e52e-4b7b-9a2d-e5d23e3c961b','2018-12-19 11:54:13','2018-12-19 03:44:09','叙利亚+俄罗斯+土耳其+伊朗','日内瓦','https://www.thepaper.cn/newsDetail_forward_2751713','叙利亚宪法委员会','俄罗斯土耳其和伊朗三国有意推动2019年初在日内瓦召开叙利亚宪法委员会首席会议','政治','0','normal','叙利亚战争旷日持久三国期待自己主导下的叙利亚重新走入正常国家轨道','叙利亚是中东要地+四国避开美国主导阿拉伯国家主导以色列和欧洲+\r\n显然这种进程不会顺利+并且叙利亚会面临多国主导下的叙利亚分裂','','','','','俄罗斯外长拉夫罗夫：\r\n各方达成共识将为明年年初在日内瓦举办宪法委员会首次会议作出努力\r\n联合国秘书长叙利亚问题特使德米斯图拉：\r\n可靠、平衡、包容”的叙利亚宪法委员会，将于12月20日与联合国秘书长进行磋商\r\n2018年1月在俄罗斯索契举行的叙利亚全国对话大会决定成立叙利亚宪法委员会，\r\n这成为叙利亚政治进程的重要一步','hunter','促进中东和平进程实现'),(11,'270419c9-7aa6-467f-a61f-3831eae5c467','2018-12-19 16:43:37','2018-12-18 16:26:29','法国','法国比亚里茨','http://news.163.com/photoview/00AO0001/2298543.html#p=E3BROG0T00AO0001NOS','法国民众-黄背心','“黄背心”示威者抗议2019年8月25日至27日将在比亚里茨举行七国集团峰会','社会','0','normal','法国总统演讲和承诺减缓了法国民众反对，并没有彻底消除法国目前社会和内政矛盾','法国民众诉求多元化,主要集中在经济领域，工资，税收，物价，就业，社会保障。\r\n黄背心成员多元化，主要是社会人口多数的普通或底层法国人，学生，司机，工人，农民，移民。\r\n事态发展，正从经济诉求，转变为政治诉求，转变成立场对立。\r\n法国政府面临危机，需要改善经济，寻求国内外合作，解决问题，维持稳定，分别对话','','','','','如果黄背心问题持续6个月以上将给法国经济带来灾难性伤害，\r\n并有将法国拖入政局动荡国家之列，法国仅有不多的时间窗口来解决这一些列问题。','hunter','加强关注，寻求合作，雪中送炭'),(12,'c8b0a5a7-cc3e-4f98-988d-4a78c6b3bf38','2018-12-19 20:52:29','2018-12-19 20:44:20','俄罗斯+印度+日本+中国','美国','null','俄罗斯+印度','大量减持美国资产和债务','经济','0','normal','美国战略挤压俄罗斯+俄罗斯全面去美元化+东亚南亚黄金定价机制','美国仍然是全世界金融中心，美国具有最多黄金储备，\r\n美国国家债务总额不断攀升，适度减持美债增持黄金体现市场风险偏好趋于保守','','','','','人民币国际化需要黄金储备支撑+规避债务风险+东亚南亚黄金定价机制，适量增加黄金储备','hunter','增加黄金长期储备'),(13,'23d0af45-41b3-45cd-9f5a-0688fea76f98','2018-12-20 11:20:44','2018-12-20 11:13:16','美国+叙利亚','华盛顿','https://news.163.com/18/1220/10/E3FD2FU20001875O.html','美国总统特朗普','我们击败了ISIS，我们收回了土地，现在是时候让我们的军队回家了','军事','0','normal','反恐开销巨大没有获得收益+反恐取得阶段性胜利+士兵希望回家','美国总统撤军具有分歧，美国会和以色列，土耳其，俄罗斯，进行沟通\r\n收回士兵和节省下来开销有可能被派往其他地区如：伊朗，乌克兰，朝鲜','','','','','美国共和党参议员、参议院军事委员会委员格林厄姆在推特上予以回应，\r\n“从叙利亚撤出这支美国小部队将是一个巨大的奥巴马式错误”','hunter','支持+关注');
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

-- Dump completed on 2018-12-20 11:34:47
