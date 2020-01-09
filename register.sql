-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: register
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
-- Current Database: `register`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `register` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `register`;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `idregister` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(200) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL COMMENT 'login name',
  `identification` varchar(100) DEFAULT NULL,
  `id_type` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `head` varchar(300) DEFAULT NULL COMMENT 'head portrait',
  `head_md5` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `contact` varchar(300) DEFAULT NULL,
  `where` varchar(300) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0' COMMENT 'ID card',
  `level` int(11) NOT NULL DEFAULT '0',
  `safe_mail` varchar(45) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL COMMENT 'Password recovery prompt question',
  `answer` varchar(200) DEFAULT NULL COMMENT 'Password to get back the answer',
  `profession` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `organization` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `hobby` varchar(200) DEFAULT NULL,
  `speciality` varchar(200) DEFAULT NULL,
  `action` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idregister`,`uuid`,`time`,`mail`),
  UNIQUE KEY `idregister_UNIQUE` (`idregister`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `nation`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nation` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nation`;

--
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nation` (
  `idnation` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `english` varchar(100) NOT NULL,
  `chinese` varchar(45) NOT NULL,
  `abbreviation` varchar(45) NOT NULL,
  `phone_code` varchar(45) NOT NULL,
  `jet_lag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnation`,`time`),
  UNIQUE KEY `idnation_UNIQUE` (`idnation`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES (1,'2020-01-03 17:18:01','Angola','安哥拉','AO','244','-7'),(2,'2020-01-03 17:18:01','Afghanistan','阿富汗','AF','93','0'),(3,'2020-01-03 17:18:01','Albania','阿尔巴尼亚','AL','355','-7'),(4,'2020-01-03 17:18:01','Algeria','阿尔及利亚','DZ','213','-8'),(5,'2020-01-03 17:18:01','Andorra','安道尔共和国','AD','376','-8'),(6,'2020-01-03 17:18:01','Anguilla','安圭拉岛','AI','1264','-12'),(7,'2020-01-03 17:18:01','Antigua and Barbuda','安提瓜和巴布达','AG','1268','-12'),(8,'2020-01-03 17:18:01','Argentina','阿根廷','AR','54','-11'),(9,'2020-01-03 17:18:01','Armenia','亚美尼亚','AM','374','-6'),(10,'2020-01-03 17:18:01','Ascension','阿森松',' ','247','-8'),(11,'2020-01-03 17:18:01','Australia','澳大利亚','AU','61','+2'),(12,'2020-01-03 17:18:01','Austria','奥地利','AT','43','-7'),(13,'2020-01-03 17:18:01','Azerbaijan','阿塞拜疆','AZ','994','-5'),(14,'2020-01-03 17:18:01','Bahamas','巴哈马','BS','1242','-13'),(15,'2020-01-03 17:18:01','Bahrain','巴林','BH','973','-5'),(16,'2020-01-03 17:18:01','Bangladesh','孟加拉国','BD','880','-2'),(17,'2020-01-03 17:18:01','Barbados','巴巴多斯','BB','1246','-12'),(18,'2020-01-03 17:18:01','Belarus','白俄罗斯','BY','375','-6'),(19,'2020-01-03 17:18:01','Belgium','比利时','BE','32','-7'),(20,'2020-01-03 17:18:01','Belize','伯利兹','BZ','501','-14'),(21,'2020-01-03 17:18:01','Benin','贝宁','BJ','229','-7'),(22,'2020-01-03 17:18:01','Bermuda Is.','百慕大群岛','BM','1441','-12'),(23,'2020-01-03 17:18:01','Bolivia','玻利维亚','BO','591','-12'),(24,'2020-01-03 17:18:01','Botswana','博茨瓦纳','BW','267','-6'),(25,'2020-01-03 17:18:01','Brazil','巴西','BR','55','-11'),(26,'2020-01-03 17:18:01','Brunei','文莱','BN','673','0'),(27,'2020-01-03 17:18:01','Bulgaria','保加利亚','BG','359','-6'),(28,'2020-01-03 17:18:01','Burkina-faso','布基纳法索','BF','226','-8'),(29,'2020-01-03 17:18:01','Burma','缅甸','MM','95','-1.3'),(30,'2020-01-03 17:18:01','Burundi','布隆迪','BI','257','-6'),(31,'2020-01-03 17:18:01','Cameroon','喀麦隆','CM','237','-7'),(32,'2020-01-03 17:18:01','Canada','加拿大','CA','1','-13'),(33,'2020-01-03 17:18:01','Cayman Is.','开曼群岛',' ','1345','-13'),(34,'2020-01-03 17:18:01','Central African Republic','中非共和国','CF','236','-7'),(35,'2020-01-03 17:18:01','Chad','乍得','TD','235','-7'),(36,'2020-01-03 17:18:01','Chile','智利','CL','56','-13'),(37,'2020-01-03 17:18:01','China','中国','CN','86','0'),(38,'2020-01-03 17:18:01','Colombia','哥伦比亚','CO','57','0'),(39,'2020-01-03 17:18:01','Congo','刚果','CG','242','-7'),(40,'2020-01-03 17:18:02','Cook Is.','库克群岛','CK','682','-18.3'),(41,'2020-01-03 17:18:02','Costa Rica','哥斯达黎加','CR','506','-14'),(42,'2020-01-03 17:18:02','Cuba','古巴','CU','53','-13'),(43,'2020-01-03 17:18:02','Cyprus','塞浦路斯','CY','357','-6'),(44,'2020-01-03 17:18:02','Czech Republic','捷克','CZ','420','-7'),(45,'2020-01-03 17:18:02','Denmark','丹麦','DK','45','-7'),(46,'2020-01-03 17:18:02','Djibouti','吉布提','DJ','253','-5'),(47,'2020-01-03 17:18:02','Dominica Rep.','多米尼加共和国','DO','1890','-13'),(48,'2020-01-03 17:18:02','Ecuador','厄瓜多尔','EC','593','-13'),(49,'2020-01-03 17:18:02','Egypt','埃及','EG','20','-6'),(50,'2020-01-03 17:18:02','EI Salvador','萨尔瓦多','SV','503','-14'),(51,'2020-01-03 17:18:02','Estonia','爱沙尼亚','EE','372','-5'),(52,'2020-01-03 17:18:02','Ethiopia','埃塞俄比亚','ET','251','-5'),(53,'2020-01-03 17:18:02','Fiji','斐济','FJ','679','+4'),(54,'2020-01-03 17:18:02','Finland','芬兰','FI','358','-6'),(55,'2020-01-03 17:18:02','France','法国','FR','33','-8'),(56,'2020-01-03 17:18:02','French Guiana','法属圭亚那','GF','594','-12'),(57,'2020-01-03 17:18:02','Gabon','加蓬','GA','241','-7'),(58,'2020-01-03 17:18:02','Gambia','冈比亚','GM','220','-8'),(59,'2020-01-03 17:18:02','Georgia','格鲁吉亚','GE','995','0'),(60,'2020-01-03 17:18:02','Germany','德国','DE','49','-7'),(61,'2020-01-03 17:18:02','Ghana','加纳','GH','233','-8'),(62,'2020-01-03 17:18:02','Gibraltar','直布罗陀','GI','350','-8'),(63,'2020-01-03 17:18:02','Greece','希腊','GR','30','-6'),(64,'2020-01-03 17:18:02','Grenada','格林纳达','GD','1809','-14'),(65,'2020-01-03 17:18:02','Guam','关岛','GU','1671','+2'),(66,'2020-01-03 17:18:02','Guatemala','危地马拉','GT','502','-14'),(67,'2020-01-03 17:18:02','Guinea','几内亚','GN','224','-8'),(68,'2020-01-03 17:18:02','Guyana','圭亚那','GY','592','-11'),(69,'2020-01-03 17:18:02','Haiti','海地','HT','509','-13'),(70,'2020-01-03 17:18:02','Honduras','洪都拉斯','HN','504','-14'),(71,'2020-01-03 17:18:02','Hongkong(China)','中国香港','HK','852','0'),(72,'2020-01-03 17:18:02','Hungary','匈牙利','HU','36','-7'),(73,'2020-01-03 17:18:02','Iceland','冰岛','IS','354','-9'),(74,'2020-01-03 17:18:02','India','印度','IN','91','-2.3'),(75,'2020-01-03 17:18:02','Indonesia','印度尼西亚','ID','62','-0.3'),(76,'2020-01-03 17:18:02','Iran','伊朗','IR','98','-4.3'),(77,'2020-01-03 17:18:02','Iraq','伊拉克','IQ','964','-5'),(78,'2020-01-03 17:18:02','Ireland','爱尔兰','IE','353','-4.3'),(79,'2020-01-03 17:18:02','Israel','以色列','IL','972','-6'),(80,'2020-01-03 17:18:02','Italy','意大利','IT','39','-7'),(81,'2020-01-03 17:18:02','Ivory Coast','科特迪瓦',' ','225','-6'),(82,'2020-01-03 17:18:02','Jamaica','牙买加','JM','1876','-12'),(83,'2020-01-03 17:18:02','Japan','日本','JP','81','+1'),(84,'2020-01-03 17:18:02','Jordan','约旦','JO','962','-6'),(85,'2020-01-03 17:18:02','Kampuchea (Cambodia )','柬埔寨','KH','855','-1'),(86,'2020-01-03 17:18:02','Kazakstan','哈萨克斯坦','KZ','327','-5'),(87,'2020-01-03 17:18:02','Kenya','肯尼亚','KE','254','-5'),(88,'2020-01-03 17:18:02','Korea','韩国','KR','82','+1'),(89,'2020-01-03 17:18:02','Kuwait','科威特','KW','965','-5'),(90,'2020-01-03 17:18:02','Kyrgyzstan','吉尔吉斯坦','KG','331','-5'),(91,'2020-01-03 17:18:02','Laos','老挝','LA','856','-1'),(92,'2020-01-03 17:18:02','Latvia','拉脱维亚','LV','371','-5'),(93,'2020-01-03 17:18:02','Lebanon','黎巴嫩','LB','961','-6'),(94,'2020-01-03 17:18:02','Lesotho','莱索托','LS','266','-6'),(95,'2020-01-03 17:18:02','Liberia','利比里亚','LR','231','-8'),(96,'2020-01-03 17:18:02','Libya','利比亚','LY','218','-6'),(97,'2020-01-03 17:18:02','Liechtenstein','列支敦士登','LI','423','-7'),(98,'2020-01-03 17:18:02','Lithuania','立陶宛','LT','370','-5'),(99,'2020-01-03 17:18:02','Luxembourg','卢森堡','LU','352','-7'),(100,'2020-01-03 17:18:02','Macao(China)','中国澳门','MO','853','0'),(101,'2020-01-03 17:18:02','Madagascar','马达加斯加','MG','261','-5'),(102,'2020-01-03 17:18:02','Malawi','马拉维','MW','265','-6'),(103,'2020-01-03 17:18:02','Malaysia','马来西亚','MY','60','-0.5'),(104,'2020-01-03 17:18:02','Maldives','马尔代夫','MV','960','-7'),(105,'2020-01-03 17:18:02','Mali','马里','ML','223','-8'),(106,'2020-01-03 17:18:02','Malta','马耳他','MT','356','-7'),(107,'2020-01-03 17:18:02','Mariana Is','马里亚那群岛',' ','1670','+1'),(108,'2020-01-03 17:18:02','Martinique','马提尼克',' ','596','-12'),(109,'2020-01-03 17:18:02','Mauritius','毛里求斯','MU','230','-4'),(110,'2020-01-03 17:18:02','Mexico','墨西哥','MX','52','-15'),(111,'2020-01-03 17:18:02','Moldova Republic of','摩尔多瓦','MD','373','-5'),(112,'2020-01-03 17:18:02','Monaco','摩纳哥','MC','377','-7'),(113,'2020-01-03 17:18:02','Mongolia','蒙古','MN','976','0'),(114,'2020-01-03 17:18:02','Montserrat Is','蒙特塞拉特岛','MS','1664','-12'),(115,'2020-01-03 17:18:02','Morocco','摩洛哥','MA','212','-6'),(116,'2020-01-03 17:18:03','Mozambique','莫桑比克','MZ','258','-6'),(117,'2020-01-03 17:18:03','Namibia','纳米比亚','NA','264','-7'),(118,'2020-01-03 17:18:03','Nauru','瑙鲁','NR','674','+4'),(119,'2020-01-03 17:18:03','Nepal','尼泊尔','NP','977','-2.3'),(120,'2020-01-03 17:18:03','Netheriands Antilles','荷属安的列斯',' ','599','-12'),(121,'2020-01-03 17:18:03','Netherlands','荷兰','NL','31','-7'),(122,'2020-01-03 17:18:03','New Zealand','新西兰','NZ','64','+4'),(123,'2020-01-03 17:18:03','Nicaragua','尼加拉瓜','NI','505','-14'),(124,'2020-01-03 17:18:03','Niger','尼日尔','NE','227','-8'),(125,'2020-01-03 17:18:03','Nigeria','尼日利亚','NG','234','-7'),(126,'2020-01-03 17:18:03','North Korea','朝鲜','KP','850','+1'),(127,'2020-01-03 17:18:03','Norway','挪威','NO','47','-7'),(128,'2020-01-03 17:18:03','Oman','阿曼','OM','968','-4'),(129,'2020-01-03 17:18:03','Pakistan','巴基斯坦','PK','92','-2.3'),(130,'2020-01-03 17:18:03','Panama','巴拿马','PA','507','-13'),(131,'2020-01-03 17:18:03','Papua New Cuinea','巴布亚新几内亚','PG','675','+2'),(132,'2020-01-03 17:18:03','Paraguay','巴拉圭','PY','595','-12'),(133,'2020-01-03 17:18:03','Peru','秘鲁','PE','51','-13'),(134,'2020-01-03 17:18:03','Philippines','菲律宾','PH','63','0'),(135,'2020-01-03 17:18:03','Poland','波兰','PL','48','-7'),(136,'2020-01-03 17:18:03','French Polynesia','法属玻利尼西亚','PF','689','+3'),(137,'2020-01-03 17:18:03','Portugal','葡萄牙','PT','351','-8'),(138,'2020-01-03 17:18:03','Puerto Rico','波多黎各','PR','1787','-12'),(139,'2020-01-03 17:18:03','Qatar','卡塔尔','QA','974','-5'),(140,'2020-01-03 17:18:03','Reunion','留尼旺',' ','262','-4'),(141,'2020-01-03 17:18:03','Romania','罗马尼亚','RO','40','-6'),(142,'2020-01-03 17:18:03','Russia','俄罗斯','RU','7','-5'),(143,'2020-01-03 17:18:03','Saint Lueia','圣卢西亚','LC','1758','-12'),(144,'2020-01-03 17:18:03','Saint Vincent','圣文森特岛','VC','1784','-12'),(145,'2020-01-03 17:18:03','Samoa Eastern','东萨摩亚(美)',' ','684','-19'),(146,'2020-01-03 17:18:03','Samoa Western','西萨摩亚',' ','685','-19'),(147,'2020-01-03 17:18:03','San Marino','圣马力诺','SM','378','-7'),(148,'2020-01-03 17:18:03','Sao Tome and Principe','圣多美和普林西比','ST','239','-8'),(149,'2020-01-03 17:18:03','Saudi Arabia','沙特阿拉伯','SA','966','-5'),(150,'2020-01-03 17:18:03','Senegal','塞内加尔','SN','221','-8'),(151,'2020-01-03 17:18:03','Seychelles','塞舌尔','SC','248','-4'),(152,'2020-01-03 17:18:03','Sierra Leone','塞拉利昂','SL','232','-8'),(153,'2020-01-03 17:18:03','Singapore','新加坡','SG','65','+0.3'),(154,'2020-01-03 17:18:03','Slovakia','斯洛伐克','SK','421','-7'),(155,'2020-01-03 17:18:03','Slovenia','斯洛文尼亚','SI','386','-7'),(156,'2020-01-03 17:18:03','Solomon Is','所罗门群岛','SB','677','+3'),(157,'2020-01-03 17:18:03','Somali','索马里','SO','252','-5'),(158,'2020-01-03 17:18:03','South Africa','南非','ZA','27','-6'),(159,'2020-01-03 17:18:03','Spain','西班牙','ES','34','-8'),(160,'2020-01-03 17:18:03','Sri Lanka','斯里兰卡','LK','94','0'),(161,'2020-01-03 17:18:03','St.Lucia','圣卢西亚','LC','1758','-12'),(162,'2020-01-03 17:18:03','St.Vincent','圣文森特','VC','1784','-12'),(163,'2020-01-03 17:18:03','Sudan','苏丹','SD','249','-6'),(164,'2020-01-03 17:18:03','Suriname','苏里南','SR','597','-11.3'),(165,'2020-01-03 17:18:03','Swaziland','斯威士兰','SZ','268','-6'),(166,'2020-01-03 17:18:03','Sweden','瑞典','SE','46','-7'),(167,'2020-01-03 17:18:03','Switzerland','瑞士','CH','41','-7'),(168,'2020-01-03 17:18:03','Syria','叙利亚','SY','963','-6'),(169,'2020-01-03 17:18:03','Taiwan(China)','中国台湾','TW','886','0'),(170,'2020-01-03 17:18:03','Tajikstan','塔吉克斯坦','TJ','992','-5'),(171,'2020-01-03 17:18:03','Tanzania','坦桑尼亚','TZ','255','-5'),(172,'2020-01-03 17:18:03','Thailand','泰国','TH','66','-1'),(173,'2020-01-03 17:18:03','Togo','多哥','TG','228','-8'),(174,'2020-01-03 17:18:03','Tonga','汤加','TO','676','+4'),(175,'2020-01-03 17:18:03','Trinidad and Tobago','特立尼达和多巴哥','TT','1809','-12'),(176,'2020-01-03 17:18:03','Tunisia','突尼斯','TN','216','-7'),(177,'2020-01-03 17:18:03','Turkey','土耳其','TR','90','-6'),(178,'2020-01-03 17:18:03','Turkmenistan','土库曼斯坦','TM','993','-5'),(179,'2020-01-03 17:18:03','Uganda','乌干达','UG','256','-5'),(180,'2020-01-03 17:18:03','Ukraine','乌克兰','UA','380','-5'),(181,'2020-01-03 17:18:03','United Arab Emirates','阿拉伯联合酋长国','AE','971','-4'),(182,'2020-01-03 17:18:03','United Kiongdom','英国','GB','44','-8'),(183,'2020-01-03 17:18:03','United States of America','美国','US','1','-13'),(184,'2020-01-03 17:18:03','Uruguay','乌拉圭','UY','598','-10.3'),(185,'2020-01-03 17:18:03','Uzbekistan','乌兹别克斯坦','UZ','233','-5'),(186,'2020-01-03 17:18:03','Venezuela','委内瑞拉','VE','58','-12.3'),(187,'2020-01-03 17:18:03','Vietnam','越南','VN','84','-1'),(188,'2020-01-03 17:18:03','Yemen','也门','YE','967','-5'),(189,'2020-01-03 17:18:03','Yugoslavia','南斯拉夫','YU','381','-7'),(190,'2020-01-03 17:18:03','Zimbabwe','津巴布韦','ZW','263','-6'),(191,'2020-01-03 17:18:03','Zaire','扎伊尔','ZR','243','-7'),(192,'2020-01-03 17:18:03','Zambia','赞比亚','ZM','260','-6');
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 17:34:29
