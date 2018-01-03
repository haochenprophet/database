-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: hwdc
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
-- Table structure for table `capacitance`
--

DROP TABLE IF EXISTS `capacitance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capacitance` (
  `idcapacitance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'capacitance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idcapacitance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitance`
--

LOCK TABLES `capacitance` WRITE;
/*!40000 ALTER TABLE `capacitance` DISABLE KEYS */;
/*!40000 ALTER TABLE `capacitance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chipset`
--

DROP TABLE IF EXISTS `chipset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chipset` (
  `idchipset` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `position` varchar(45) DEFAULT NULL COMMENT 'chipset position,like in PCB',
  `power` varchar(45) DEFAULT NULL,
  `clock` varchar(45) DEFAULT NULL COMMENT 'Measuring clock',
  `reset` varchar(45) DEFAULT NULL COMMENT 'chip reset\n',
  `enable` varchar(45) DEFAULT NULL COMMENT 'Minimum value',
  `configs` varchar(45) DEFAULT NULL COMMENT 'configs is ok ,pin  ,R O C',
  `link` double DEFAULT NULL COMMENT 'like tx,rx ',
  `firmware` varchar(45) DEFAULT NULL COMMENT 'firmware: if or not exist , an version ,and has been writed',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `weld` varchar(45) DEFAULT NULL COMMENT 'weld check',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idchipset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chipset`
--

LOCK TABLES `chipset` WRITE;
/*!40000 ALTER TABLE `chipset` DISABLE KEYS */;
/*!40000 ALTER TABLE `chipset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clock`
--

DROP TABLE IF EXISTS `clock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clock` (
  `idclock` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `src_point` varchar(45) DEFAULT NULL COMMENT 'Source test point',
  `src_vale` double DEFAULT NULL,
  `dest_point` varchar(45) DEFAULT NULL,
  `dest_value` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `func` varchar(45) DEFAULT NULL COMMENT 'function ',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL COMMENT 'ascription project name',
  `temperature` double DEFAULT NULL COMMENT 'Ambient temperature\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idclock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clock`
--

LOCK TABLES `clock` WRITE;
/*!40000 ALTER TABLE `clock` DISABLE KEYS */;
/*!40000 ALTER TABLE `clock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inductance`
--

DROP TABLE IF EXISTS `inductance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inductance` (
  `idinductance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'inductance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idinductance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inductance`
--

LOCK TABLES `inductance` WRITE;
/*!40000 ALTER TABLE `inductance` DISABLE KEYS */;
/*!40000 ALTER TABLE `inductance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin` (
  `idpin` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'pin position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal_len` double DEFAULT NULL COMMENT 'Nominal length value\n',
  `min_len` double DEFAULT NULL COMMENT 'Minimum length value',
  `max_len` double DEFAULT NULL COMMENT 'maximum length value',
  `len_value` double DEFAULT NULL COMMENT 'current  length value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `src` varchar(45) DEFAULT NULL COMMENT 'Source',
  `dest` varchar(45) DEFAULT NULL COMMENT 'destination',
  `min_wid` double DEFAULT NULL COMMENT 'min width value',
  `max_wid` double DEFAULT NULL COMMENT 'max width value',
  `wid_value` double DEFAULT NULL COMMENT 'current  width value',
  `nominal_wid` double DEFAULT NULL COMMENT 'Nominal width value\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idpin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resistance`
--

DROP TABLE IF EXISTS `resistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resistance` (
  `idresistance` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `shape` blob,
  `power` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT 'Resistance position,like in PCB',
  `point` varchar(45) DEFAULT NULL COMMENT 'Measuring point',
  `nominal` double DEFAULT NULL COMMENT 'Nominal value\n',
  `min` double DEFAULT NULL COMMENT 'Minimum value',
  `max` double DEFAULT NULL COMMENT 'maximum value',
  `value` double DEFAULT NULL COMMENT 'current value',
  `func` varchar(45) DEFAULT NULL COMMENT 'function',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL COMMENT 'Ambient temperature',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idresistance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resistance`
--

LOCK TABLES `resistance` WRITE;
/*!40000 ALTER TABLE `resistance` DISABLE KEYS */;
/*!40000 ALTER TABLE `resistance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voltage`
--

DROP TABLE IF EXISTS `voltage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voltage` (
  `idvoltage` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `src_point` varchar(45) DEFAULT NULL COMMENT 'Source test point',
  `src_vale` double DEFAULT NULL,
  `dest_point` varchar(45) DEFAULT NULL,
  `dest_value` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `func` varchar(45) DEFAULT NULL COMMENT 'function ',
  `desc` varchar(45) DEFAULT NULL COMMENT 'description',
  `ascription` varchar(45) DEFAULT NULL COMMENT 'ascription project name',
  `temperature` double DEFAULT NULL COMMENT 'Ambient temperature\n',
  `status` varchar(45) DEFAULT NULL COMMENT 'status:PASS,FAIL,NA',
  PRIMARY KEY (`idvoltage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voltage`
--

LOCK TABLES `voltage` WRITE;
/*!40000 ALTER TABLE `voltage` DISABLE KEYS */;
/*!40000 ALTER TABLE `voltage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 13:37:28
