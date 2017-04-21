CREATE DATABASE  IF NOT EXISTS `bookmark` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookmark`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookmark
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
-- Table structure for table `patent_law`
--

DROP TABLE IF EXISTS `patent_law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'audio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
INSERT INTO `patent_law` VALUES (1,'中华人民共和国专利法','','\r\n中华人民共和国主席令\r\n\r\n第 八号\r\n\r\n《全国人民代表大会常务委员会关于修改〈中华人民共和国专利法〉的决定》已由中华人民共和国第十一届全国人民代表大会常务委员会第六次会议于2008年12月27日通过，现予公布，自2009年10月1日起施行。\r\n\r\n中华人民共和国主席胡锦涛\r\n\r\n2008年12月27日\r\n\r\n（1984年3月12日第六届全国人民代表大会常务委员会第四次会议通过根据1992年9月4日第七届全国人民代表大会常务委员会第二十七次会议《关于修改〈中华人民共和国专利法〉的决定》第一次修正根据2000年8月25日第九届全国人民代表大会常务委员会第十七次会议《关于修改〈中华人民共和国专利法〉的决定》第二次修正根据2008年12月27日第十一届全国人民代表大会常务委员会第六次会议《关于修改〈中华人民共和国专利法〉的决定》第三次修正）','','','2017-04-21 01:35:51','china','','','','',''),(2,'目 录','','目 录\r\n\r\n第一章 总则\r\n\r\n第二章 授予专利权的条件\r\n\r\n第三章 专利的申请\r\n\r\n第四章专利申请的审查和批准\r\n\r\n第五章专利权的期限、终止和无效\r\n\r\n第六章专利实施的强制许可\r\n\r\n第七章 专利权的保护\r\n\r\n第八章 附则','','','2017-04-21 01:38:39','china','','','','',''),(3,'第一章 总 则\r\n','','第一条为了保护专利权人的合法权益，鼓励发明创造，推动发明创造的应用，提高创新能力，促进科学技术进步和经济社会发展，制定本法。\r\n','保护+鼓励+推动+提高+促进+制定.','','2017-04-21 01:40:39','china','','','','',''),(4,'第一章 总 则\r\n','','第二条本法所称的发明创造是指发明、实用新型和外观设计。\r\n\r\n发明，是指对产品、方法或者其改进所提出的新的技术方案。\r\n\r\n实用新型，是指对产品的形状、构造或者其结合所提出的适于实用的新的技术方案。\r\n\r\n外观设计，是指对产品的形状、图案或者其结合以及色彩与形状、图案的结合所作出的富有美感并适于工业应用的新设计。','发明创造类型:发明+实用新型+外观设计.','','2017-04-21 01:41:57','china','','','','',''),(5,'第一章 总 则\r\n','','第三条国务院专利行政部门负责管理全国的专利工作；统一受理和审查专利申请，依法授予专利权。\r\n省、自治区、直辖市人民政府管理专利工作的部门负责本行政区域内的专利管理工作。','全国:国务院专利行政部门 .地方:省、自治区、直辖市人民政府管理专利工作的部门.','','2017-04-21 01:43:51','china','','','','',''),(6,'第一章 总 则\r\n','','第四条申请专利的发明创造涉及国家安全或者重大利益需要保密的，按照国家有关规定办理。\r\n','checklist_item:申请专利的发明创造涉及国家安全或者重大利益需要保密','','2017-04-21 01:45:07','china','','','','',''),(7,'第一章 总 则\r\n','','五条对违反法律、社会公德或者妨害公共利益的发明创造，不授予专利权。\r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造，不授予专利权。\r\n','checklist_item:\r\n违反法律、社会公德或者妨害公共利益的发明创造. \r\n对违反法律、行政法规的规定获取或者利用遗传资源，并依赖该遗传资源完成的发明创造\r\nY:reject N:goon','','2017-04-21 01:46:40','china','','','','',''),(8,'第一章 总 则\r\n','','第六条 执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造为职务发明创造。\r\n职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人。\r\n非职务发明创造，申请专利的权利属于发明人或者设计人；\r\n申请被批准后，该发明人或者设计人为专利权人。\r\n利用本单位的物质技术条件所完成的发明创造，\r\n单位与发明人或者设计人订有合同，对申请专利的权利和专利权的归属作出约定的，从其约定。','是否为职务发明创造:\r\nchecklist_item:\r\n执行本单位的任务或者主要是利用本单位的物质技术条件所完成的发明创造\r\nY:职务发明创造申请专利的权利属于该单位；申请被批准后，该单位为专利权人\r\nN:专利的权利属于发明人或者设计人；','','2017-04-21 01:53:34','china','','','','',''),(9,'第一章 总 则\r\n','','第七条 对发明人或者设计人的非职务发明创造专利申请，任何单位或者个人不得压制。','check_item:非职务发明创造专利申请，单位或者个人是否有存在压制问题。:\r\nY: go to report warning. \r\nN: go on .','','2017-04-21 01:56:12','china','','','','',''),(10,'第一章 总 则\r\n','','第八条 两个以上单位或者个人合作完成的发明创造、一个单位或者个人接受其他单位或者个人委托所完成的发明创造，除另有协议的以外，申请专利的权利属于完成或者共同完成的单位或者个人；申请被批准后，申请的单位或者个人为专利权人。\r\n','check_item:是否为两个及两个以上合作完成发明创造? \r\ncheck_item:是否为一个单位或者个人接受其他单位或者个人委托所完成的发明创造?\r\nY: 申请专利的权利属于完成或者共同完成的单位或者个人 \r\n','','2017-04-21 01:58:49','china','','','','',''),(11,'第一章 总 则\r\n','','第九条同样的发明创造只能授予一项专利权。但是，同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利，先获得的实用新型专利权尚未终止，且申请人声明放弃该实用新型专利权的，可以授予发明专利权。两个以上的申请人分别就同样的发明创造申请专利的，专利权授予最先申请的人。\r\n','check_item:是否存在同样的发明创造? \r\ncheck_item:是否为同一申请人同日对同样的发明创造既申请实用新型专利又申请发明专利?\r\ncheck_item:先获得的实用新型专利权尚未终止是否终止?\r\n{check_item:申请人声明放弃该实用新型专利权的是否放弃实用新型专利权?Y:可以授予发明专利权}\r\ncheck_item:是否存在两个以上的申请人分别就同样的发明创造申请专利的，Y: ?专利权授予最先: 申请的人。\r\n','','2017-04-21 02:03:45','china','','','','','');
/*!40000 ALTER TABLE `patent_law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_law_implementation_rules`
--

DROP TABLE IF EXISTS `patent_law_implementation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law_implementation_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL,
  `location` text,
  `author` text,
  `device` text,
  `image` text COMMENT 'image URL',
  `audio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'vedio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_implementation_rules`
--

LOCK TABLES `patent_law_implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_implementation_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law_implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 18:05:20
