CREATE DATABASE  IF NOT EXISTS `car` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `car`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: car
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','tesla','website','https://www.tesla.com/','img/tesla.jpg','2018-01-25 11:18:03','normal','utf8',100,'china'),(2,'hunter','ferrari','website','http://www.ferrari.com/','img/ferrari.jpg','2018-01-25 11:21:17','normal','utf8',99,'china'),(3,'hunter','lamborghini','website','http://www.lamborghini.com/','img/lamborghini.jpg','2018-01-25 11:23:02','normal','utf8',98,'china'),(4,'hunter','bentley','website','https://www.bentleymotors.com/','img/bentley.jpg','2018-01-25 11:26:14','normal','utf8',97,'china'),(5,'hunter','lincoln','website','https://www.lincoln.com/','img/lincoln.jpg','2018-01-25 11:29:03','normal','utf8',96,'china'),(6,'hunter','bugatti','website','https://www.bugatti.com/','img/bugatti.jpg','2018-01-25 11:32:19','normal','utf8',95,'china'),(7,'hunter','koenigsegg','website','https://www.koenigsegg.com/','img/koenigsegg.jpg','2018-01-25 11:33:58','normal','utf8',94,'china'),(8,'hunter','wmotors','website','http://wmotors.ae/','img/wmotors.jpg','2018-01-25 11:35:45','normal','utf8',93,'china'),(9,'hunter','venomgt','website','http://www.venomgt.com/','img/venom-gt.jpg','2018-01-25 11:38:19','normal','utf8',93,'china'),(10,'hunter','astonmartin','website','https://global.astonmartin.com/','img/astonmartin.jpg','2018-01-25 11:41:24','normal','utf8',92,'china'),(11,'hunter','mercedes-ben','website','http://www.mercedes-benz.com','img/mercedes-ben.jpg','2018-01-25 11:45:36','normal','utf8',91,'china'),(12,'hunter','porsche','website','https://www.porsche.com/','img/porsche.jpg','2018-01-25 11:48:31','normal','utf8',90,'china'),(13,'hunter','pagani','website','https://www.pagani.com/','img/pagani.jpg','2018-01-25 11:55:47','normal','utf8',89,'china'),(14,'hunter','zenvo','website','http://zenvoautomotive.com/','img/zenvo.jpg','2018-01-25 14:15:56','normal','utf8',88,'china'),(15,'hunter','sscnorthamerica','website','http://sscnorthamerica.com/','img/sscnorthamerica.jpg','2018-01-25 14:21:10','normal','utf8',87,'china'),(16,'hunter','toyota','website','https://www.toyota.com/','img/toyota.jpg','2018-01-25 14:23:10','normal','utf8',86,'china'),(17,'hunter','rolls-royce','website','http://www.rolls-royce.com/','img/rolls-royce.jpg','2018-01-25 14:24:56','normal','utf8',95,'china'),(18,'hunter','hongqi','website','http://www.faw-hongqi.com.cn/','img/hongqi.jpg','2018-01-25 14:27:50','normal','utf8',85,'china'),(19,'hunter','maserati','website','https://www.maserati.com/','img/maserati.jpg','2018-01-25 14:30:40','normal','utf8',84,'china'),(20,'hunter','bmw','website','https://www.bmw.com/','img/bmw.jpg','2018-01-25 14:33:04','normal','utf8',82,'china'),(21,'hunter','vw','website','http://www.vw.com/','img/vw.jpg','2018-01-25 14:35:45','normal','utf8',81,'china'),(22,'hunter','volocars','website','https://www.volocars.com/','img/volocars.jpg','2018-01-25 14:38:31','normal','utf8',80,'china'),(23,'hunter','cadillac','website','http://www.cadillac.com/','img/cadillac.jpg','2018-01-25 14:42:33','normal','utf8',79,'china'),(24,'hunter','honda','website','https://www.honda.com/','img/honda.jpg','2018-01-25 14:44:20','normal','utf8',78,'china'),(25,'hunter','landroverusa','website','https://www.landroverusa.com','img/landroverusa.jpg','2018-01-25 14:53:16','normal','utf8',77,'china'),(26,'hunter','ford','website','https://www.ford.com/','img/ford.jpg','2018-01-25 14:54:50','normal','utf8',76,'china'),(27,'hunter','gm','website','http://www.gm.com','img/gm.jpg','2018-01-25 14:56:20','normal','utf8',75,'china'),(28,'hunter','buick','website','http://www.buick.com/','img/buick.jpg','2018-01-25 14:58:42','normal','utf8',74,'china'),(29,'hunter','hyundaiusa','website','https://www.hyundaiusa.com/','img/hyundaiusa.jpg','2018-01-25 15:03:28','normal','utf8',73,'china'),(30,'hunter','renault','website','https://group.renault.com/','img/renault.jpg','2018-01-25 15:09:39','normal','utf8',75,'china'),(31,'hunter','fiat','website','https://www.fiat.com/','img/fiat.jpg','2018-01-25 15:11:42','normal','utf8',72,'china'),(32,'hunter','peugeot','website','http://www.peugeot.com','img/peugeot.jpg','2018-01-25 15:14:33','normal','utf8',71,'china'),(33,'hunter','lada','website','http://www.lada.ru/','img/lada.jpg','2018-01-25 15:22:34','normal','utf8',70,'china'),(34,'hunter','gazglobal','website','http://gazglobal.com/','img/gazglobal.jpg','2018-01-25 15:26:48','normal','utf8',70,'china'),(35,'hunter','kamaz','website','https://kamaz.ru/','img/kamaz.jpg','2018-01-25 15:30:05','normal','utf8',69,'china'),(36,'hunter','uaz','website','https://www.uaz.ru','img/uaz.jpg','2018-01-25 15:32:01','normal','utf8',68,'china');
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

-- Dump completed on 2018-01-25 15:33:45
