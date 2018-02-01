CREATE DATABASE  IF NOT EXISTS `electricity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `electricity`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electricity
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','edf','website','https://www.edf.fr/','img/edf.jpg','2018-02-01 14:15:56','normal','utf8',100,'china'),(2,'hunter','eonenergy','website','https://www.eonenergy.com/','img/eonenergy.jpg','2018-02-01 14:18:10','normal','utf8',99,'china'),(3,'hunter','rwe','website','http://www.rwe.com','img/rwe.jpg','2018-02-01 14:22:19','normal','utf8',98,'china'),(4,'hunter','suez','website','https://www.suez.com/','img/suez.jpg','2018-02-01 14:28:03','normal','utf8',97,'china'),(5,'hunter','tepco','website','http://www.tepco.co.jp/','img/tepco.jpg','2018-02-01 14:34:20','normal','utf8',96,'china'),(6,'hunter','enel','website','https://www.enel.com/','img/enel.jpg','2018-02-01 14:39:08','normal','utf8',94,'china'),(7,'hunter','endesaclientes','website','https://www.endesaclientes.com/','img/endesa.jpg','2018-02-01 14:43:21','normal','utf8',93,'china'),(8,'hunter','nationalgridus','website','https://www.nationalgridus.com/','img/NationalGrid.jpg','2018-02-01 14:48:37','normal','utf8',92,'china'),(9,'hunter','kepco','website','http://www.kepco.co.kr/','img/kepco.jpg','2018-02-01 14:56:30','normal','utf8',91,'china'),(10,'hunter','iberdrola','website','https://www.iberdrola.com/','img/iberdrola.jpg','2018-02-01 15:00:10','normal','utf8',90,'china'),(11,'hunter','Exelon','website','http://www.exeloncorp.com/','img/exelon.jpg','2018-02-01 15:02:24','normal','utf8',89,'china'),(12,'hunter','.duke-energy','website','http://www.duke-energy.com/','img/DukeEnergy.jpg','2018-02-01 15:13:24','normal','utf8',88,'china'),(13,'hunter','dominion','website','https://www.dominionenergy.com/','img/dominion.jpg','2018-02-01 15:15:44','normal','utf8',87,'china'),(14,'hunter','southern','website','http://www.southerncompany.com/','img/southern.jpg','2018-02-01 15:17:36','normal','utf8',86,'china'),(15,'hunter','powergridindia','website','http://www.powergridindia.com/','img/powergridindia.jpg','2018-02-01 15:20:19','normal','utf8',85,'china'),(16,'hunter','interrao','website','https://www.interrao.ru/','img/interrao.jpg','2018-02-01 15:26:07','normal','utf8',84,'china'),(17,'hunter','northlandpower','website','http://www.northlandpower.ca/','img/northlandpower.jpg','2018-02-01 15:30:59','normal','utf8',83,'china'),(18,'hunter','dianli','website','http://dianli.net/','img/dianli.jpg','2018-02-01 15:35:12','normal','utf8',82,'china');
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

-- Dump completed on 2018-02-01 15:36:51
