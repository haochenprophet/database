CREATE DATABASE  IF NOT EXISTS `price` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `price`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: price
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `ID`
--

DROP TABLE IF EXISTS `ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ID` (
  `idID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `who` varchar(45) NOT NULL DEFAULT 'hunter',
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idID`,`ID`),
  UNIQUE KEY `number_UNIQUE` (`ID`),
  UNIQUE KEY `idID_UNIQUE` (`idID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ID`
--

LOCK TABLES `ID` WRITE;
/*!40000 ALTER TABLE `ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `idprice` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `y_close` double NOT NULL,
  `open` double NOT NULL,
  `close` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `volume` double NOT NULL,
  `turnover` double NOT NULL,
  PRIMARY KEY (`idprice`,`ID`,`date`),
  UNIQUE KEY `idprice_UNIQUE` (`idprice`),
  UNIQUE KEY `date_UNIQUE` (`date`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh000001`
--

DROP TABLE IF EXISTS `sh000001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sh000001` (
  `idprice` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `y_close` double NOT NULL,
  `open` double NOT NULL,
  `close` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `volume` double NOT NULL,
  `turnover` double NOT NULL,
  PRIMARY KEY (`idprice`,`date`),
  UNIQUE KEY `idprice_UNIQUE` (`idprice`),
  UNIQUE KEY `date_UNIQUE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh000001`
--

LOCK TABLES `sh000001` WRITE;
/*!40000 ALTER TABLE `sh000001` DISABLE KEYS */;
/*!40000 ALTER TABLE `sh000001` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-17 21:02:45
