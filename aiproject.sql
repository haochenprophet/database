CREATE DATABASE  IF NOT EXISTS `aiproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `aiproject`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aiproject
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Ai Project URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'hunter','act-r','website','http://act-r.psy.cmu.edu/','img/act_r.png','2018-01-09 17:09:59','normal','china',96,'china'),(2,'hunter','caffe','website','http://caffe.berkeleyvision.org/','img/caffe.png','2018-01-09 17:15:19','normal','china',0,'china'),(3,'hunter','deepmind','website','https://deepmind.com/','img/deepmind.png','2018-01-09 17:27:31','normal','china',100,'china'),(4,'hunter','convnetjs','website','http://cs.stanford.edu/people/karpathy/convnetjs/','img/convnetjs.png','2018-01-09 17:37:45','normal','china',0,'china'),(5,'hunter','deepdetect','website','https://deepdetect.com/','img/deepdetect.png','2018-01-09 17:42:24','normal','china',0,'china'),(6,'hunter','deeplearning4j','website','https://deeplearning4j.org/','img/DL4J.png','2018-01-09 17:53:44','normal','china',0,'china'),(7,'hunter','h2oai','website','https://www.h2o.ai/','img/h2oai.png','2018-01-09 17:58:15','normal','china',0,'china'),(8,'hunter','tensorflow','website','https://www.tensorflow.org/','img/tensorflow.jpg','2018-01-09 18:04:05','normal','china',99,'china'),(9,'hunter','mycroft','website','https://mycroft.ai/','img/mycroft.jpg','2018-01-09 18:11:01','normal','china',95,'china'),(10,'hunter','sonnet','website','https://deepmind.github.io/sonnet/','img/sonnet.png','2018-01-09 18:15:59','normal','china',0,'china'),(11,'hunter','opennn','website','http://www.opennn.net/','img/opennn.png','2018-01-09 18:19:26','normal','china',94,'china'),(12,'hunter','dynet','website','https://dynet.readthedocs.io','img/DyNet.png','2018-01-09 18:23:28','normal','china',0,'china'),(13,'hunter','OpenNLP','website','https://opennlp.apache.org/','img/OpenNLP.png','2018-01-09 18:27:28','normal','china',0,'china'),(14,'hunter','systemml','website','http://systemml.apache.org/','img/systemML.png','2018-01-09 18:33:45','normal','china',0,'china'),(15,'hunter','smile','website','http://haifengl.github.io/','img/smile.png','2018-01-09 18:38:56','normal','china',0,'china'),(16,'hunter','prophet','website','https://facebook.github.io/prophet/','img/prophet.png','2018-01-09 18:42:09','normal','china',97,'china'),(17,'hunter','clips','website','https://www.clips.uantwerpen.be/','img/clips.png','2018-01-09 18:45:52','normal','china',0,'china'),(18,'hunter','sparkml','website','https://spark.apache.org/','img/sparkml.png','2018-01-09 18:49:39','normal','china',93,'china'),(19,'198382.com','OpenAI','website','https://github.com/openai','img/openai.png','2018-07-27 21:44:20','normal','utf8',98,'china');
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

-- Dump completed on 2018-07-27 21:50:17
