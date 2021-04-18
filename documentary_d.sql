-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: documentary
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
  `logo` varchar(200) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','CCTV-9','website','http://tv.cctv.com/live/cctvjilu/?spm=C28340.PezlfowbXwdI.EnwLEh2NqmuU.13','img/documentary.png','2019-03-09 14:53:27','normal','utf8',0,'china'),(2,'198382.com','记实','website','http://jishi.cctv.com/index.shtml','img/documentary.png','2019-03-09 15:25:34','normal','utf8',0,'china'),(3,'198382.com','创新中国','website','http://jishi.cctv.com/special/djsb/cxzgdjsb/index.shtml','img/documentary.png','2019-03-09 15:27:57','normal','utf8',0,'china'),(4,'198382.com','智慧中国','website','http://tv.cctv.com/2017/06/12/VIDAU9WqFciwfCIAIZbyhBRo170612.shtml?spm=C86503.P56930602958.S01584.2','img/documentary.png','2019-03-15 10:04:53','normal','utf8',0,'china'),(5,'198382.com','科学重器','website','http://tv.cctv.com/2016/09/27/VIDA1V9SBnQrbHG5VO5BgaqM160927.shtml?spm=C86503.P56930602958.S01584.5','img/documentary.png','2019-03-15 10:07:12','normal','utf8',0,'china'),(6,'198382.com','舌尖上的中国','website','http://jishi.cctv.com/special/shejian3PC/shouye/index.shtml?spm=C86503.P56930602958.S83443.56','img/documentary.png','2019-03-15 10:10:37','normal','utf8',0,'china'),(7,'198382.com','谍战','website','http://jishi.cctv.com/doc/list/fl/dz/index.shtml?spm=C86503.P56930602958.S83443.51','img/documentary.png','2019-03-15 10:12:19','normal','utf8',0,'china'),(8,'198382.com','美国国家地理','website','http://jishi.cctv.com/special/meiguoguojiadili/index.shtml','img/documentary.png','2019-03-15 10:13:45','normal','utf8',100,'china'),(9,'198382.com','电子人','website','http://jishi.cntv.cn/2013/01/25/VIDA1359081364351231.shtml','img/documentary.png','2019-03-15 10:14:52','normal','utf8',100,'china'),(10,'198382.com','大太平洋','website','http://jishi.cctv.com/special/dtpy/index.shtml?spm=C86503.P56930602958.S63521.6','img/documentary.png','2019-03-15 10:18:28','normal','utf8',0,'china'),(11,'198382.com','超级工程','website','http://jishi.cctv.com/special/chaojigongcheng/?spm=C28340.PVkcgLVeByP5.EuOfj7a88RXM.15','img/documentary.png','2019-03-15 10:21:38','normal','utf8',0,'china'),(12,'198382.com','自然的力量','website','http://jishi.cctv.com/special/zrdll/index.shtml','img/documentary.png','2019-03-15 10:23:40','normal','utf8',0,'china'),(13,'198382.com','航拍中国','website','http://jishi.cctv.com/special/hpzg/index.shtml','img/documentary.png','2019-06-09 05:08:29','normal','utf8',0,'china'),(14,'198382.com','金融风波1948','website','http://tv.cctv.com/2017/03/28/VIDAM333BcgH56ZzYmNZcN0M170328.shtml','img/documentary.png','2019-06-09 21:07:16','normal','utf8',0,'china'),(15,'198382.com','舌尖上的中国','website','http://jishi.cctv.com/special/shejian3PC/shouye/index.shtml','img/documentary.png','2019-06-13 11:51:27','normal','utf8',0,'china'),(16,'198382.com','3D打印机','website','http://tv.cctv.com/2015/07/03/VIDA1435891450941623.shtml','img/documentary.png','2019-06-13 11:54:41','normal','utf8',0,'china'),(17,'198382.com','长城','website','http://tv.cctv.com/2015/10/16/VIDA1444978093386899.shtml','img/documentary.png','2019-06-13 12:01:19','normal','utf8',0,'china'),(18,'198382.com','中国高考','website','http://tv.cctv.com/2015/07/30/VIDA1438250420844290.shtml','img/documentary.png','2019-07-08 15:22:27','normal','utf8',0,'china'),(19,'198382.com','谁建造了美国？','website','http://open.163.com/movie/safe/2014/4/2/V/M9OI1SF08_M9OIE9N2V.html','img/documentary.png','2019-07-17 12:30:58','normal','utf8',0,'china'),(20,'hunter','水脉-水利工程','website','http://jishi.cntv.cn/special/djsb/shuimai/index.shtml','img/documentary.png','2020-05-30 07:44:46','normal','utf8',0,'china'),(21,'hunter','Life-BBC 生命','website','http://jishi.cntv.cn/special/djsb/sm/index.shtml?spm=C86503.PIDR5jDkb4jF.S64777.86','img/documentary.png','2020-05-30 07:50:34','normal','utf8',0,'china'),(22,'hunter','航天工程','website','http://jishi.cctv.com/doc/list/fl/hkht/index.shtml','img/documentary.png','2020-05-30 07:52:26','normal','utf8',0,'china'),(23,'hunter','非洲大陆','website','http://jishi.cntv.cn/special/djsb/africa/index.shtml?spm=C86503.PIDR5jDkb4jF.S64777.82','img/documentary.png','2020-05-30 07:53:28','normal','utf8',0,'china'),(24,'hunter','日本731细菌部队','website','http://jishi.cntv.cn/special/djsb/qsy/index.shtml','img/documentary.png','2020-05-30 07:55:04','normal','utf8',0,'china'),(25,'hunter','手术-医学','website','http://tv.cctv.com/2019/06/20/VIDAbuf5M3mQvg1OMNGNCUFN190620.shtml','img/documentary.png','2020-05-30 08:04:00','normal','utf8',0,'china'),(26,'hunter','丝绸之路-中国','website','http://jishi.cntv.cn/special/djsb/silu/index.shtml','img/documentary.png','2020-05-30 08:05:28','normal','utf8',0,'china'),(27,'hunter','甲午战争-历史','website','http://jishi.cntv.cn/special/djsb/jiawujlp/index.shtml','img/documentary.png','2020-05-30 08:14:50','normal','utf8',0,'china'),(28,'hunter','中国陶瓷','website','http://jishi.cntv.cn/special/djsb/cilu/index.shtml','img/documentary.png','2020-05-30 08:16:41','normal','utf8',0,'china'),(29,'hunter','建筑工程','website','http://jishi.cctv.com/doc/list/fl/jzgc/index.shtml','img/documentary.png','2020-05-30 08:19:30','normal','utf8',0,'china'),(30,'hunter','中国西藏','website','http://tv.cctv.com/2015/11/18/VIDA1447813629627654.shtml','img/documentary.png','2020-05-30 08:26:09','normal','utf8',0,'china'),(31,'198382.com','中国新疆-反恐记忆','website','https://tv.cctv.com/2020/06/19/VIDAQt6krpicF0YIx94tfVaG200619.shtml?spm=C55924871139.PY8jbb3G6NT9.0.0','img/documentary.png','2020-06-25 09:17:44','normal','utf8',0,'china'),(32,'198382.com','极致工厂- M1 阿帕奇 法拉利','website','https://www.ixigua.com/6797977262101627399?id=6797977303323247117&logTag=yZrj1jImvl1o1RxHJgN4u','img/documentary.png','2020-08-05 13:28:30','normal','utf8',0,'china'),(33,'198382.com','越南战争-美国','website','https://www.ixigua.com/6811725628660777479?logTag=f8PeN_0mzDfHB775VgtIo','img/documentary.png','2020-08-06 12:56:34','normal','utf8',0,'china'),(34,'198382.com','时代先驱-比尔盖茨 乔布斯','website','https://www.ixigua.com/6795352479916622349?logTag=yLrH3yX1x8OOB-Scgzd_t','img/documentary.png','2020-08-06 13:43:31','normal','utf8',0,'china'),(35,'198382.com','中国.台湾.1945','website','http://tv.cctv.com/2015/10/26/VIDE1445825015297398.shtml','img/documentary.png','2020-08-30 11:46:04','normal','utf8',0,'china'),(36,'198382.com','中国.香港.1983.中英谈判','website','http://tv.cctv.com/2013/07/17/VIDA1374055080825499.shtml','img/documentary.png','2020-08-30 11:48:04','normal','utf8',0,'china'),(37,'198382.com','新疆日记: 真实的中国.新疆','website','https://tv.cctv.com/2021/02/02/VIDEO9CQN32kkhW9rLKQ8hRh210202.shtml?spm=C55924871139.PY8jbb3G6NT9.0.0','img/documentary.png','2021-04-18 10:56:13','normal','utf8',0,'china'),(38,'198382.com','再生科学','website','http://jishi.cctv.com/2013/06/25/VIDE1372148834556531.shtml','img/documentary.png','2021-04-18 11:11:25','normal','utf8',0,'china'),(39,'198382.com','太平洋-生命','website','https://tv.cctv.com/2017/08/04/VIDA7rv2OHr8rptUTnIrcA4U170804.shtml?spm=C55924871139.PKgX4CXWWE68.0.0','img/documentary.png','2021-04-18 11:33:07','normal','utf8',0,'china');
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

-- Dump completed on 2021-04-18 11:39:21
