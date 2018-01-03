-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: bluetooth
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost` (
  `idcost` int(11) NOT NULL AUTO_INCREMENT,
  `idobject` int(11) DEFAULT NULL,
  `object` varchar(45) DEFAULT NULL,
  `relegation` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost`
--

LOCK TABLES `cost` WRITE;
/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who is the customer?',
  `type` varchar(45) NOT NULL DEFAULT 'ordinary' COMMENT 'Customer type:ordinary.special;personal,company,government,community,organization,hospital,school',
  `country` varchar(45) DEFAULT NULL,
  `planet` varchar(45) NOT NULL DEFAULT 'earth',
  `area` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where is the customer?\n',
  `l_l` varchar(45) DEFAULT NULL COMMENT 'Latitude and longitude',
  `contact` varchar(45) DEFAULT NULL COMMENT 'Contact information',
  `mail` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL COMMENT 'Customer URL\n',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data entry data time',
  `start` datetime DEFAULT NULL COMMENT 'Cooperation start time\n',
  `end` datetime DEFAULT NULL COMMENT 'Cooperation end time',
  `what` varchar(45) DEFAULT NULL COMMENT 'What is the cooperation?',
  `introduction` varchar(45) DEFAULT NULL COMMENT 'Introduction ',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Credit accumulated',
  `group` varchar(45) DEFAULT NULL COMMENT 'Customer working group',
  `credit` int(11) NOT NULL DEFAULT '100' COMMENT 'Credit points',
  `remark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Customer status:new,old;stable,unstable,big,small ',
  `pioneer` varchar(45) DEFAULT NULL COMMENT 'Customer pioneer',
  `file` varchar(45) DEFAULT NULL COMMENT 'About the customer''s file path. (url)',
  `logo` varchar(45) DEFAULT NULL COMMENT 'About the customer''s logo file name.',
  `image` varchar(45) DEFAULT NULL COMMENT 'About the customer''s picture file name.\n',
  `audio` varchar(45) DEFAULT NULL COMMENT 'About the customer''s audio file name.\n',
  `vedio` varchar(45) DEFAULT NULL COMMENT 'About the customer''s video file name .',
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetype`
--

DROP TABLE IF EXISTS `devicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetype` (
  `iddevicetype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddevicetype`),
  UNIQUE KEY `iddevicetype_UNIQUE` (`iddevicetype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetype`
--

LOCK TABLES `devicetype` WRITE;
/*!40000 ALTER TABLE `devicetype` DISABLE KEYS */;
INSERT INTO `devicetype` VALUES (1,'scales','2017-07-30 04:51:33',NULL),(2,'PCBA','2017-07-30 12:07:06',NULL),(3,'product','2017-07-30 12:07:06',NULL);
/*!40000 ALTER TABLE `devicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fail`
--

DROP TABLE IF EXISTS `fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fail` (
  `idfail` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) NOT NULL,
  `s_mac` text NOT NULL,
  `chip` varchar(45) DEFAULT NULL,
  `order_from` text,
  `type` text,
  `weight` text,
  `resistance` text,
  `voltage` text,
  `rssi` text,
  `version` text,
  `name` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `line` text,
  `who` text,
  `result` text,
  `remark` text,
  PRIMARY KEY (`idfail`),
  UNIQUE KEY `idproduct_UNIQUE` (`idfail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fail`
--

LOCK TABLES `fail` WRITE;
/*!40000 ALTER TABLE `fail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line` (
  `idline` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL COMMENT 'Production line number',
  `name` varchar(45) DEFAULT NULL COMMENT 'Production line name',
  `who` varchar(45) DEFAULT NULL COMMENT 'Who is the owner of the line',
  `what` varchar(45) DEFAULT NULL COMMENT 'What product name\n',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation time',
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Start time\n',
  `end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'End Time',
  `where` varchar(45) DEFAULT NULL COMMENT 'WHERE: Production line address and location\n',
  `capacity` varchar(45) DEFAULT NULL COMMENT 'Production capacity',
  `status` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL COMMENT 'Contact information',
  `level` int(11) DEFAULT NULL COMMENT 'The overall level of production lines',
  PRIMARY KEY (`idline`,`guid`),
  UNIQUE KEY `idline_UNIQUE` (`idline`),
  UNIQUE KEY `guid_UNIQUE` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mac`
--

DROP TABLE IF EXISTS `mac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mac` (
  `idmac` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`mac`),
  UNIQUE KEY `mac_UNIQUE` (`mac`),
  UNIQUE KEY `idmac_UNIQUE` (`idmac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mac`
--

LOCK TABLES `mac` WRITE;
/*!40000 ALTER TABLE `mac` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiel` (
  `idmateriel` bigint(64) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `what` varchar(45) DEFAULT NULL,
  `when` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Planet ,coordinate {latitude,Longitude}',
  `who` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL COMMENT 'What quantity',
  `status` varchar(45) DEFAULT NULL COMMENT 'How the state\n',
  `how` varchar(45) DEFAULT NULL COMMENT 'How much value',
  `remark` varchar(45) DEFAULT NULL,
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Entry Time\n',
  `security` varchar(45) DEFAULT NULL COMMENT 'Security Level',
  `excute` varchar(45) DEFAULT NULL COMMENT 'Excuting operate \n',
  `time` datetime DEFAULT NULL COMMENT 'excute time',
  PRIMARY KEY (`idmateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiel`
--

LOCK TABLES `materiel` WRITE;
/*!40000 ALTER TABLE `materiel` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idstatus` int(11) NOT NULL,
  `devicetype` int(11) DEFAULT NULL,
  `number` varchar(45) NOT NULL COMMENT 'order number',
  `name` varchar(45) DEFAULT NULL COMMENT 'product name',
  `quantity` int(11) NOT NULL,
  `deliverytime` datetime NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) NOT NULL COMMENT 'Order owner\n',
  `unitprice` double DEFAULT NULL,
  `total` double DEFAULT NULL COMMENT 'total amount~= up*quantity',
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idorder`,`number`),
  KEY `index` (`idstatus`,`deliverytime`,`idorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatus` (
  `idorderstatus` int(11) NOT NULL AUTO_INCREMENT,
  `what` text COMMENT 'what contents',
  `when` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'when create time',
  PRIMARY KEY (`idorderstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `mac` bigint(20) NOT NULL,
  `s_mac` text NOT NULL,
  `chip` varchar(45) DEFAULT NULL,
  `order_from` text,
  `type` text,
  `weight` text,
  `resistance` text,
  `voltage` text,
  `rssi` text,
  `version` text,
  `name` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `line` text,
  `who` text,
  `result` text,
  `remark` text,
  PRIMARY KEY (`mac`),
  UNIQUE KEY `idproduct_UNIQUE` (`idproduct`),
  UNIQUE KEY `mac_UNIQUE` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'root','2017-07-30 12:21:16'),(2,'admin','2017-07-30 12:21:16'),(3,'user','2017-07-30 12:21:16');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `when` datetime DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `what` text,
  `how` varchar(45) DEFAULT NULL COMMENT 'resut',
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testitem`
--

DROP TABLE IF EXISTS `testitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testitem` (
  `idtestitem` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned DEFAULT '1' COMMENT 'Deveiice  Type : ',
  `item` text,
  `sel` varchar(4) DEFAULT 'YES' COMMENT 'YES==test  ,NO ==NA test',
  `min` text,
  `max` text,
  `must` text,
  `mask` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `author` text,
  `remark` text,
  PRIMARY KEY (`idtestitem`),
  UNIQUE KEY `idtestitem_UNIQUE` (`idtestitem`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testitem`
--

LOCK TABLES `testitem` WRITE;
/*!40000 ALTER TABLE `testitem` DISABLE KEYS */;
INSERT INTO `testitem` VALUES (1,1,'Name','YES',NULL,NULL,'FLYCO FH7001/2/3 ',NULL,'2017-07-29 17:28:04','hunter',NULL),(2,1,'Version','YES',NULL,NULL,'1.0.39.1',NULL,'2017-07-29 17:28:04','hunter',NULL),(3,1,'MAC','YES',NULL,NULL,NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(4,1,'RSSI','YES','-99','-1',NULL,NULL,'2017-07-29 17:19:30','hunter',NULL),(5,1,'Voltage','YES','0','20',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(6,1,'Resistance','YES','0','1000',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL),(7,1,'Weight','YES','0','300',NULL,NULL,'2017-07-29 17:28:04','hunter',NULL);
/*!40000 ALTER TABLE `testitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `iduser_UNIQUE` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `idworker` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL,
  `idstatus` int(11) NOT NULL,
  PRIMARY KEY (`idworker`),
  UNIQUE KEY `idworker_UNIQUE` (`idworker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 13:36:45
