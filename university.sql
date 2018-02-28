CREATE DATABASE  IF NOT EXISTS `university` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `university`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','harvard','website','https://www.harvard.edu/','img/harvard.jpg','2018-02-28 14:45:14','normal','utf8',100,'china'),(2,'hunter','stanford','website','https://www.stanford.edu/','img/stanford.jpg','2018-02-28 14:48:05','normal','utf8',100,'china'),(3,'hunter','cambridge','website','http://www.cam.ac.uk/','img/cambridge.jpg','2018-02-28 14:50:10','normal','utf8',99,'china'),(4,'hunter','massachusetts','website','http://web.mit.edu/','img/massachusetts.jpg','2018-02-28 14:54:47','normal','utf8',99,'china'),(5,'hunter','universityofcalifornia','website','https://www.universityofcalifornia.edu/','img/universityofcalifornia.jpg','2018-02-28 14:59:30','normal','utf8',98,'china'),(6,'hunter','princeton','website','https://www.princeton.edu/','img/princeton.jpg','2018-02-28 15:01:36','normal','utf8',97,'china'),(7,'hunter','Oxford','website','http://www.ox.ac.uk/','img/oxford.jpg','2018-02-28 15:04:59','normal','utf8',96,'china'),(8,'hunter','columbia','website','https://www.columbia.edu/','img/columbia.jpg','2018-02-28 15:07:47','normal','utf8',95,'china'),(9,'hunter','caltech','website','http://www.caltech.edu/','img/caltech.jpg','2018-02-28 15:09:26','normal','utf8',94,'china'),(10,'hunter','chicago','website','http://www.uchicago.edu/','img/chicago.jpg','2018-02-28 15:12:45','normal','utf8',93,'china'),(11,'hunter','yale','website','https://www.yale.edu/','img/yale.jpg','2018-02-28 15:15:52','normal','utf8',92,'china'),(12,'hunter','washington','website','http://www.washington.edu/','img/washington_edu.jpg','2018-02-28 15:18:09','normal','utf8',91,'china'),(13,'hunter','cornell','website','http://www.cornell.edu/','img/cornell.jpg','2018-02-28 15:19:34','normal','utf8',90,'china'),(14,'hunter','ucl','website','https://www.ucl.ac.uk/','img/ucl.jpg','2018-02-28 15:23:47','normal','utf8',89,'china'),(15,'hunter','upenn','website','https://www.upenn.edu/','img/upenn.jpg','2018-02-28 15:30:37','normal','utf8',88,'china'),(16,'hunter','jhu','website','https://www.jhu.edu/','img/jhu.jpg','2018-02-28 15:33:04','normal','utf8',87,'china'),(17,'hunter','ethz','website','https://www.ethz.ch','img/ethz.jpg','2018-02-28 15:36:46','normal','utf8',86,'china'),(18,'hunter','wustl','website','http://www.wustl.edu/','img/wustl.jpg','2018-02-28 15:41:45','normal','utf8',85,'china'),(19,'hunter','northwestern','website','http://www.northwestern.edu/','img/northwestern.jpg','2018-02-28 15:43:20','normal','utf8',84,'china'),(20,'hunter','utoronto','website','https://www.utoronto.ca/','img/toronto.jpg','2018-02-28 15:44:37','normal','utf8',83,'china'),(21,'hunter','tokyo','website','https://www.u-tokyo.ac.jp','img/tokyo.jpg','2018-02-28 15:47:25','normal','utf8',82,'china'),(22,'hunter','michigan','website','http://umich.edu/','img/michigan.jpg','2018-02-28 15:50:21','normal','utf8',81,'china'),(23,'hunter','duke','website','https://www.duke.edu/','img/duke.jpg','2018-02-28 15:51:20','normal','utf8',80,'china'),(24,'hunter','imperial','website','http://www.imperial.ac.uk/','img/imperial.jpg','2018-02-28 15:57:20','normal','utf8',79,'china'),(25,'hunter','wisc','website','https://www.wisc.edu/','img/wisc.jpg','2018-02-28 15:59:15','normal','utf8',78,'china'),(26,'hunter','nyu','website','http://www.nyu.edu/','img/nyu.jpg','2018-02-28 16:00:38','normal','utf8',77,'china'),(27,'hunter','ku','website','http://www.ku.dk/','img/ku.jpg','2018-02-28 16:04:52','normal','utf8',76,'china'),(28,'hunter','ubc','website','https://www.ubc.ca/','img/ubc.jpg','2018-02-28 16:08:39','normal','utf8',75,'china'),(29,'hunter','ed','website','https://www.ed.ac.uk/','img/ed.jpg','2018-02-28 16:10:06','normal','utf8',74,'china'),(30,'hunter','unc','website','https://www.unc.edu/','img/unc.jpg','2018-02-28 16:11:20','normal','utf8',73,'china'),(31,'hunter','umn','website','https://twin-cities.umn.edu/','img/umn.jpg','2018-02-28 16:12:28','normal','utf8',72,'china'),(32,'hunter','kyoto-u','website','http://www.kyoto-u.ac.jp/en/','img/kyoto-u.jpg','2018-02-28 16:14:27','normal','utf8',71,'china'),(33,'hunter','rockefeller','website','https://www.rockefeller.edu/','img/rockefeller.jpg','2018-02-28 16:15:28','normal','utf8',70,'china'),(34,'hunter','illinois','website','http://illinois.edu/','img/illinois.jpg','2018-02-28 16:17:03','normal','utf8',69,'china'),(35,'hunter','manchester','website','http://www.manchester.ac.uk/','img/manchester.jpg','2018-02-28 16:18:12','normal','utf8',68,'china'),(36,'hunter','unimelb','website','http://www.unimelb.edu.au/','img/unimelb.jpg','2018-02-28 16:19:00','normal','utf8',67,'china'),(37,'hunter','upmc','website','http://www.upmc.fr/en/','img/upmc.jpg','2018-02-28 16:20:27','normal','utf8',66,'china'),(38,'hunter','u-psud','website','http://www.u-psud.fr/en/index.html','img/u-psud.jpg','2018-02-28 16:25:57','normal','utf8',65,'china'),(39,'hunter','heidelberg','website','https://www.heidelberg.edu/','img/heidelberg.jpg','2018-02-28 16:28:01','normal','utf8',64,'china'),(40,'hunter','colorado','website','https://www.colorado.edu/','img/colorado.jpg','2018-02-28 16:28:57','normal','utf8',63,'china'),(41,'hunter','ki.se','website','https://ki.se/','img/ki.se.jpg','2018-02-28 16:30:33','normal','utf8',62,'china'),(42,'hunter','ucsb','website','https://www.ucsb.edu/','img/ucsb.jpg','2018-02-28 16:36:35','normal','utf8',61,'china'),(43,'hunter','kcl','website','https://www.kcl.ac.uk/index.aspx','img/kcl.jpg','2018-02-28 16:43:47','normal','utf8',60,'china'),(44,'hunter','uu','website','https://www.uu.nl/en','img/uu.jpg','2018-02-28 16:44:33','normal','utf8',59,'china'),(45,'hunter','utsouthwestern','website','http://www.utsouthwestern.edu/','img/utsouthwestern.jpg','2018-02-28 16:46:01','normal','utf8',58,'china'),(46,'hunter','tsinghua','website','http://www.tsinghua.edu.cn','img/tsinghua.jpg','2018-02-28 16:49:54','normal','utf8',57,'china'),(47,'hunter','tum','website','https://www.tum.de/','img/tum.jpg','2018-02-28 16:51:06','normal','utf8',56,'china'),(48,'hunter','utexas','website','https://www.utexas.edu/','img/utexas.jpg','2018-02-28 16:53:44','normal','utf8',55,'china'),(49,'hunter','vanderbilt','website','https://www.vanderbilt.edu/','img/vanderbilt.jpg','2018-02-28 16:54:44','normal','utf8',54,'china'),(50,'hunter','umd','website','https://umd.edu/','img/umd.jpg','2018-02-28 16:55:50','normal','utf8',53,'china');
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

-- Dump completed on 2018-02-28 16:57:50
