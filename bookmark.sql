CREATE DATABASE  IF NOT EXISTS `bookmark` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookmark`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: bookmark
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
  `aadio` text COMMENT 'radio URL',
  `vedio` text COMMENT 'audio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
INSERT INTO `patent_law` VALUES (1,'ä¸­åŽäººæ°‘å…±å’Œå›½ä¸“åˆ©æ³•\r\n\r\nï¼ˆ1984å¹´3æœˆ12æ—¥ç¬¬å…­å±Šå…¨å›½äººæ°‘ä»£è¡¨å¤§ä¼šå¸¸åŠ¡å§”å‘˜ä¼šç¬¬å››æ¬¡ä¼šè®®é€šè¿‡æ ¹æ®1992å¹´9æœˆ4æ—¥ç¬¬ä¸ƒå±Šå…¨å›½äººæ°‘ä»£è¡¨å¤§ä¼šå¸¸åŠ¡å§”å‘˜ä¼šç¬¬äºŒåä¸ƒæ¬¡ä¼šè®®ã€Šå…³äºŽä¿®æ”¹ã€ˆä¸­åŽäººæ°‘å…±å’Œå›½ä¸“åˆ©æ³•ã€‰çš„å†³å®šã€‹ç¬¬ä¸€æ¬¡ä¿®æ­£æ ¹æ®2000å¹´8æœˆ25æ—¥ç¬¬ä¹å±Šå…¨å›½äººæ°‘ä»£è¡¨å¤§ä¼šå¸¸åŠ¡å§”å‘˜ä¼šç¬¬åä¸ƒæ¬¡ä¼šè®®ã€Šå…³äºŽä¿®æ”¹ã€ˆä¸­åŽäººæ°‘å…±å’Œå›½ä¸“åˆ©æ³•ã€‰çš„å†³å®šã€‹ç¬¬äºŒæ¬¡ä¿®æ­£æ ¹æ®2008å¹´12æœˆ27æ—¥ç¬¬åä¸€å±Šå…¨å›½äººæ°‘ä»£è¡¨å¤§ä¼šå¸¸åŠ¡å§”å‘˜ä¼šç¬¬å…­æ¬¡ä¼šè®®ã€Šå…³äºŽä¿®æ”¹ã€ˆä¸­åŽäººæ°‘å…±å’Œå›½ä¸“åˆ©æ³•ã€‰çš„å†³å®šã€‹ç¬¬ä¸‰æ¬¡ä¿®æ­£ï¼‰\r\n','','','','','2017-04-16 21:16:30','china','','','','',''),(2,'\r\nç›® å½•\r\n\r\nç¬¬ä¸€ç«  æ€»åˆ™\r\n\r\nç¬¬äºŒç«  æŽˆäºˆä¸“åˆ©æƒçš„æ¡ä»¶\r\n\r\nç¬¬ä¸‰ç«  ä¸“åˆ©çš„ç”³è¯·\r\n\r\nç¬¬å››ç« ä¸“åˆ©ç”³è¯·çš„å®¡æŸ¥å’Œæ‰¹å‡†\r\n\r\nç¬¬äº”ç« ä¸“åˆ©æƒçš„æœŸé™ã€ç»ˆæ­¢å’Œæ— æ•ˆ\r\n\r\nç¬¬å…­ç« ä¸“åˆ©å®žæ–½çš„å¼ºåˆ¶è®¸å¯\r\n\r\nç¬¬ä¸ƒç«  ä¸“åˆ©æƒçš„ä¿æŠ¤\r\n\r\nç¬¬å…«ç«  é™„åˆ™','','','','','2017-04-16 21:23:15','china','','','','',''),(3,'ç¬¬ä¸€ç«  æ€» åˆ™','','','','','2017-04-16 21:26:51','china','','','','',''),(4,'ç¬¬ä¸€æ¡ä¸ºäº†ä¿æŠ¤ä¸“åˆ©æƒäººçš„åˆæ³•æƒç›Šï¼Œé¼“åŠ±å‘æ˜Žåˆ›é€ ï¼ŒæŽ¨åŠ¨å‘æ˜Žåˆ›é€ çš„åº”ç”¨ï¼Œæé«˜åˆ›æ–°èƒ½åŠ›ï¼Œä¿ƒè¿›ç§‘å­¦æŠ€æœ¯è¿›æ­¥å’Œç»æµŽç¤¾ä¼šå‘å±•ï¼Œåˆ¶å®šæœ¬æ³•ã€‚','','å‘æ˜Žåˆ›é€ +åº”ç”¨+åˆ›æ–°+ç§‘å­¦æŠ€æœ¯+ç»æµŽ','','','2017-04-16 21:29:06','china','','','','',''),(5,'ç¬¬äºŒæ¡æœ¬æ³•æ‰€ç§°çš„å‘æ˜Žåˆ›é€ æ˜¯æŒ‡å‘æ˜Žã€å®žç”¨æ–°åž‹å’Œå¤–è§‚è®¾è®¡ã€‚å‘æ˜Žï¼Œæ˜¯æŒ‡å¯¹äº§å“ã€æ–¹æ³•æˆ–è€…å…¶æ”¹è¿›æ‰€æå‡ºçš„æ–°çš„æŠ€æœ¯æ–¹æ¡ˆã€‚\r\nå®žç”¨æ–°åž‹ï¼Œæ˜¯æŒ‡å¯¹äº§å“çš„å½¢çŠ¶ã€æž„é€ æˆ–è€…å…¶ç»“åˆæ‰€æå‡ºçš„é€‚äºŽå®žç”¨çš„æ–°çš„æŠ€æœ¯æ–¹æ¡ˆã€‚å¤–è§‚è®¾è®¡ï¼Œæ˜¯æŒ‡å¯¹äº§å“çš„å½¢çŠ¶ã€å›¾æ¡ˆæˆ–è€…å…¶ç»“åˆä»¥åŠè‰²å½©ä¸Žå½¢çŠ¶ã€å›¾æ¡ˆçš„ç»“åˆæ‰€ä½œå‡ºçš„å¯Œæœ‰ç¾Žæ„Ÿå¹¶é€‚äºŽå·¥ä¸šåº”ç”¨çš„æ–°è®¾è®¡ã€‚\r\n','','å‘æ˜Žåˆ›é€ æ˜¯æŒ‡å‘æ˜Žã€å®žç”¨æ–°åž‹å’Œå¤–è§‚è®¾è®¡. \r\npatent type:å‘æ˜Ž+å®žç”¨æ–°åž‹+å¤–è§‚è®¾.','','','2017-04-16 21:38:43','china','','','','',''),(6,'ç¬¬ä¸‰æ¡å›½åŠ¡é™¢ä¸“åˆ©è¡Œæ”¿éƒ¨é—¨è´Ÿè´£ç®¡ç†å…¨å›½çš„ä¸“åˆ©å·¥ä½œï¼›ç»Ÿä¸€å—ç†å’Œå®¡æŸ¥ä¸“åˆ©ç”³è¯·ï¼Œä¾æ³•æŽˆäºˆä¸“åˆ©æƒã€‚\r\nçœã€è‡ªæ²»åŒºã€ç›´è¾–å¸‚äººæ°‘æ”¿åºœç®¡ç†ä¸“åˆ©å·¥ä½œçš„éƒ¨é—¨è´Ÿè´£æœ¬è¡Œæ”¿åŒºåŸŸå†…çš„ä¸“åˆ©ç®¡ç†å·¥ä½œã€‚','','å›½åŠ¡é™¢.çœã€è‡ªæ²»åŒºã€ç›´è¾–å¸‚äººæ°‘æ”¿åºœ,ä¸“åˆ©è¡Œæ”¿éƒ¨é—¨,','','','2017-04-16 21:45:01','china','','','','','');
/*!40000 ALTER TABLE `patent_law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_law_Implementation_rules`
--

DROP TABLE IF EXISTS `patent_law_Implementation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law_Implementation_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime NOT NULL,
  `location` text,
  `author` varchar(45) DEFAULT NULL,
  `device` text,
  `image` text COMMENT 'image URL',
  `radio` text COMMENT 'audio URL',
  `vedio` text COMMENT 'vedio URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_Implementation_rules`
--

LOCK TABLES `patent_law_Implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_Implementation_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law_Implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-16 21:48:28
