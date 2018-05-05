CREATE DATABASE  IF NOT EXISTS `developer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `developer`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: developer
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
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','arm','website','https://developer.arm.com','img/arm.jpg','2018-05-05 09:39:18','normal','utf8',100,'china'),(2,'hunter','apple','website','https://developer.apple.com/','img/apple.jpg','2018-05-05 09:40:38','normal','utf8',100,'china'),(3,'hunter','google','website','https://developers.google.com/','img/google.jpg','2018-05-05 09:41:13','normal','utf8',101,'china'),(4,'hunter','android','website','https://developer.android.com/','img/android.jpg','2018-05-05 09:42:12','normal','utf8',100,'china'),(5,'hunter','microsoft','website','https://developer.microsoft.com','img/microsoft.jpg','2018-05-05 09:43:52','normal','utf8',100,'china'),(6,'hunter','facebook','website','https://developers.facebook.com/','img/facebook.jpg','2018-05-05 09:44:55','normal','utf8',100,'china'),(7,'hunter','zdnet','website','https://www.zdnet.com/topic/developer/','img/zdnet.jpg','2018-05-05 09:46:00','normal','utf8',100,'china'),(8,'hunter','oracle','website','https://developer.oracle.com/','img/oracle.jpg','2018-05-05 09:47:50','normal','utf8',100,'china'),(9,'hunter','servicenow','website','https://developer.servicenow.com','img/servicenow.jpg','2018-05-05 09:48:51','normal','utf8',100,'china'),(10,'hunter','paypal','website','https://developer.paypal.com/','img/paypal.jpg','2018-05-05 09:49:24','normal','utf8',100,'china'),(11,'hunter','amazon','website','https://developer.amazon.com/','img/amazon.jpg','2018-05-05 09:50:08','normal','utf8',100,'china'),(12,'hunter','salesforce','website','https://developer.salesforce.com/','img/salesforce.jpg','2018-05-05 09:51:26','normal','utf8',100,'china'),(13,'hunter','cisco','website','https://developer.cisco.com/','img/cisco.jpg','2018-05-05 09:52:08','normal','utf8',100,'china'),(14,'hunter','intuit','website','https://developer.intuit.com/','img/intuit.jpg','2018-05-05 09:52:53','normal','utf8',100,'china'),(15,'hunter','nvidia','website','https://developer.nvidia.com/','img/nvidia.jpg','2018-05-05 09:53:21','normal','utf8',100,'china'),(16,'hunter','thomsonreuters','website','https://developers.thomsonreuters.com/','img/thomsonreuters.jpg','2018-05-05 09:53:54','normal','utf8',100,'china'),(17,'hunter','visualstudio','website','https://developercommunity.visualstudio.com','img/visualstudio.jpg','2018-05-05 09:54:46','normal','utf8',100,'china'),(18,'hunter','elavon','website','https://developer.elavon.com/','img/elavon.jpg','2018-05-05 09:55:46','normal','utf8',100,'china'),(19,'hunter','arcgis','website','https://developers.arcgis.com/','img/arcgis.jpg','2018-05-05 09:56:39','normal','utf8',100,'china'),(20,'hunter','shopify','website','https://developers.shopify.com/','img/shopify.jpg','2018-05-05 09:57:14','normal','utf8',100,'china'),(21,'hunter','dnb','website','https://developer.dnb.com/','img/dnb.jpg','2018-05-05 09:58:03','normal','utf8',100,'china'),(22,'hunter','mozilla','website','https://developer.mozilla.org','img/mozilla.jpg','2018-05-05 09:59:04','normal','utf8',100,'china'),(23,'hunter','mypurecloud','website','https://developer.mypurecloud.com/','img/mypurecloud.jpg','2018-05-05 09:59:39','normal','utf8',100,'china'),(24,'hunter','ibm','website','https://developer.ibm.com','img/ibm.jpg','2018-05-05 10:00:21','normal','utf8',101,'china'),(25,'hunter','connectwise','website','https://developer.connectwise.com/','img/connectwise.jpg','2018-05-05 10:01:15','normal','utf8',100,'china'),(26,'hunter','ebay','website','https://go.developer.ebay.com/','img/ebay.jpg','2018-05-05 10:02:23','normal','utf8',100,'china'),(27,'hunter','valvesoftware','website','https://developer.valvesoftware.com','img/valvesoftware.jpg','2018-05-05 10:03:06','normal','utf8',100,'china'),(28,'hunter','dji','website','https://developer.dji.com/','img/dji.jpg','2018-05-05 10:03:46','normal','utf8',101,'china'),(29,'hunter','oculus','website','https://developer.oculus.com/','img/oculus.jpg','2018-05-05 10:04:29','normal','utf8',100,'china'),(30,'hunter','att','website','https://developer.att.com/','img/att.jpg','2018-05-05 10:05:38','normal','utf8',101,'china'),(31,'hunter','capitalone','website','https://developer.capitalone.com/','img/capitalone.jpg','2018-05-05 10:06:13','normal','utf8',100,'china'),(32,'hunter','vuforia','website','https://developer.vuforia.com/','img/vuforia.jpg','2018-05-05 10:06:54','normal','utf8',100,'china'),(33,'hunter','visa','website','https://developer.visa.com/','img/visa.jpg','2018-05-05 10:07:49','normal','utf8',100,'china'),(34,'hunter','ieee','website','https://developer.ieee.org/','img/ieee.jpg','2018-05-05 10:08:27','normal','utf8',100,'china'),(35,'hunter','bestbuy','website','https://developer.bestbuy.com/','img/bestbuy.jpg','2018-05-05 10:09:22','normal','utf8',100,'china'),(36,'hunter','walmart','website','https://developer.walmart.com/','img/walmart.jpg','2018-05-05 10:09:48','normal','utf8',100,'china'),(37,'hunter','samsung','website','https://developer.samsung.com','img/samsung.jpg','2018-05-05 10:10:19','normal','utf8',100,'china'),(38,'hunter','servicenow','website','https://developer.servicenow.com/','img/servicenow.jpg','2018-05-05 10:11:11','normal','utf8',100,'china'),(39,'hunter','nokia','website','https://developer.nokia.com/','img/nokia.jpg','2018-05-05 10:11:41','normal','utf8',100,'china'),(40,'hunter','bullhorn','website','http://developer.bullhorn.com/','img/bullhorn.jpg','2018-05-05 10:12:18','normal','utf8',100,'china'),(41,'hunter','motorola','website','https://developer.motorola.com/','img/motorola.jpg','2018-05-05 10:12:45','normal','utf8',100,'china'),(42,'hunter','HP','website','https://developers.hp.com/','img/hp.jpg','2018-05-05 10:13:15','normal','utf8',100,'china'),(43,'hunter','godaddy','website','https://developer.godaddy.com/','img/godaddy.jpg','2018-05-05 10:13:42','normal','utf8',100,'china'),(44,'hunter','arcgis','website','https://developers.arcgis.com','img/arcgis.jpg','2018-05-05 10:14:10','normal','utf8',100,'china'),(45,'hunter','jwplayer','website','https://developer.jwplayer.com/','img/jwplayer.jpg','2018-05-05 10:15:01','normal','utf8',100,'china'),(46,'hunter','ucsd','website','http://developer.ucsd.edu/','img/ucsd.jpg','2018-05-05 10:15:31','normal','utf8',101,'china'),(47,'hunter','googleblog','website','https://developers.googleblog.com/','img/googleblog.jpg','2018-05-05 10:16:07','normal','utf8',100,'china'),(48,'hunter','Portal','website','https://developer.inin.com/','img/inin.jpg','2018-05-05 10:17:11','normal','utf8',100,'china'),(49,'hunter','hpe','website','https://developer.hpe.com/','img/hpe.jpg','2018-05-05 10:17:51','normal','utf8',100,'china'),(50,'hunter','accuweather','website','https://developer.accuweather.com/','img/accuweather.jpg','2018-05-05 10:18:17','normal','utf8',100,'china'),(51,'hunter','adp','website','https://developers.adp.com/','img/adp.jpg','2018-05-05 10:18:44','normal','utf8',100,'china'),(52,'hunter','roblox','website','https://devforum.roblox.com/','img/roblox.jpg','2018-05-05 10:19:11','normal','utf8',100,'china'),(53,'hunter','ubuntu','website','https://developer.ubuntu.com/','img/roblox.jpg','2018-05-05 10:19:33','normal','utf8',101,'china'),(54,'hunter','developer','website','http://developerdeveloperdeveloper.com/','img/developer.jpg','2018-05-05 10:20:36','normal','utf8',100,'china'),(55,'hunter','magazine','website','https://appdevelopermagazine.com/','img/magazine.jpg','2018-05-05 10:22:13','normal','utf8',100,'china'),(56,'hunter','digitalinsight','website','https://developer.digitalinsight.com/','img/magazine.jpg','2018-05-05 10:23:27','normal','utf8',100,'china'),(57,'hunter','emotiv','website','https://www.emotiv.com/developer/','img/emotiv.jpg','2018-05-05 10:23:57','normal','utf8',100,'china'),(58,'hunter','stubhub','website','https://developer.stubhub.com/','img/stubhub.jpg','2018-05-05 10:24:17','normal','utf8',100,'china'),(59,'hunter','mapquest','website','https://developer.mapquest.com/','img/mapquest.jpg','2018-05-05 10:24:53','normal','utf8',100,'china'),(60,'hunter','chrome','website','https://developer.chrome.com/','img/mapquest.jpg','2018-05-05 10:25:14','normal','utf8',100,'china'),(61,'hunter','rackspace','website','https://developer.rackspace.com/','img/rackspace.jpg','2018-05-05 10:25:58','normal','utf8',100,'china'),(62,'hunter','spectralogic','website','https://developer.spectralogic.com/','img/spectralogic.jpg','2018-05-05 10:26:40','normal','utf8',100,'china'),(63,'hunter','egnyte','website','https://developers.egnyte.com/','img/egnyte.jpg','2018-05-05 10:27:25','normal','utf8',100,'china'),(64,'hunter','sony','website','https://developer.sony.com/','img/sony.jpg','2018-05-05 10:27:53','normal','utf8',100,'china'),(65,'hunter','stamps','website','http://developer.stamps.com/','img/stamps.jpg','2018-05-05 10:28:21','normal','utf8',100,'china'),(66,'hunter','blackboard','website','https://developer.blackboard.com/','img/blackboard.jpg','2018-05-05 10:28:58','normal','utf8',100,'china'),(67,'hunter','walgreens','website','https://developer.walgreens.com/','img/walgreens.jpg','2018-05-05 10:29:20','normal','utf8',100,'china'),(68,'hunter','wink','website','https://developer.wink.com/','img/wink.jpg','2018-05-05 10:30:47','normal','utf8',100,'china'),(69,'hunter','cnn','website','https://developer.cnn.com/','img/cnn.jpg','2018-05-05 10:31:10','normal','utf8',100,'china'),(70,'hunter','atlassian','website','https://developer.atlassian.com/','img/atlassian.jpg','2018-05-05 10:31:37','normal','utf8',100,'china'),(71,'hunter','bitcoin','website','https://bitcoin.org/en/developer-guide','img/bitcoin.jpg','2018-05-05 10:32:21','normal','utf8',100,'china'),(72,'hunter','blackberry','website','http://developer.blackberry.com','img/blackberry.jpg','2018-05-05 10:32:50','normal','utf8',100,'china');
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

-- Dump completed on 2018-05-05 10:33:48
