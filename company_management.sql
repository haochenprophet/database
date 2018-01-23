CREATE DATABASE  IF NOT EXISTS `company_management` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `company_management`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company_management
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaccount`),
  UNIQUE KEY `idaccount_UNIQUE` (`idaccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='account of company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `idbill` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT 'IN/OUT',
  `item` varchar(45) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `imgage` varchar(45) DEFAULT NULL,
  `vedio` varchar(45) DEFAULT NULL,
  `audio` varchar(45) DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL COMMENT 'source',
  `to` varchar(45) DEFAULT NULL COMMENT 'dir',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `univalent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbill`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='bill of company';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonds`
--

DROP TABLE IF EXISTS `bonds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonds` (
  `idbonds` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL COMMENT 'number of conpany',
  `name` varchar(45) DEFAULT NULL,
  `use` varchar(45) DEFAULT NULL COMMENT 'Use of bonds to raise funds',
  `total` varchar(45) DEFAULT NULL COMMENT '(3) The total amount of bonds and the nominal amount of the bonds;',
  `amount` varchar(45) DEFAULT NULL COMMENT ' nominal amount ',
  `rate` varchar(45) DEFAULT NULL COMMENT 'Bond rate to determine the way\n',
  `way` varchar(45) DEFAULT NULL COMMENT 'rate way',
  `term` varchar(45) DEFAULT NULL COMMENT 'The term and method of debt service\n',
  `method` varchar(45) DEFAULT NULL COMMENT 'The term and method of debt service\n',
  `guarantee` varchar(45) DEFAULT NULL COMMENT 'Bond guarantee situation',
  `price` varchar(45) DEFAULT NULL COMMENT '(7) the issue price of the bonds, the starting and ending dates of the issuance;\n',
  `start` datetime DEFAULT NULL COMMENT '(7) the issue price of the bonds, the starting and ending dates of the issuance;',
  `end` datetime DEFAULT NULL COMMENT 'the starting and ending dates of the issuance;',
  `assets` varchar(45) DEFAULT NULL COMMENT '(8) The net assets of the company;',
  `bondscol` varchar(45) DEFAULT NULL COMMENT '(9) The total outstanding corporate bonds issued;\n',
  `agent` varchar(100) DEFAULT NULL COMMENT '(10) Underwriting agencies of corporate bonds.\n',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbonds`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonds`
--

LOCK TABLES `bonds` WRITE;
/*!40000 ALTER TABLE `bonds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capital`
--

DROP TABLE IF EXISTS `capital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capital` (
  `idcapital` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `investor` varchar(45) DEFAULT NULL COMMENT 'investor name',
  `ways` varchar(45) DEFAULT NULL COMMENT 'ways of capital contribution by shareholders,',
  `capital` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `contract` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL COMMENT 'number of company',
  PRIMARY KEY (`idcapital`),
  UNIQUE KEY `idcapital_UNIQUE` (`idcapital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capital`
--

LOCK TABLES `capital` WRITE;
/*!40000 ALTER TABLE `capital` DISABLE KEYS */;
/*!40000 ALTER TABLE `capital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditor`
--

DROP TABLE IF EXISTS `creditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditor` (
  `idcreditor` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL COMMENT 'number of company ',
  `ID` varchar(45) DEFAULT NULL COMMENT 'ID of creditor',
  `name` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL COMMENT 'creditor address',
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `audio` varchar(45) DEFAULT NULL,
  `vedio` varchar(45) DEFAULT NULL,
  `what` varchar(45) DEFAULT NULL COMMENT 'what content of creditor',
  `where` varchar(45) DEFAULT NULL COMMENT 'debt of where',
  `lend` varchar(45) DEFAULT NULL,
  `borrow` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcreditor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditor`
--

LOCK TABLES `creditor` WRITE;
/*!40000 ALTER TABLE `creditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `iddirector` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL COMMENT 'number of company',
  `ID` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `position` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddirector`,`number`),
  UNIQUE KEY `iddirector_UNIQUE` (`iddirector`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='director';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `idregister` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL COMMENT 'number of company',
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `contry` varchar(45) NOT NULL DEFAULT 'China',
  `area` varchar(45) NOT NULL DEFAULT 'CN',
  `address` varchar(200) DEFAULT NULL COMMENT 'where address',
  `content` varchar(45) DEFAULT NULL COMMENT 'B) the company''s business scope;\n',
  `who` varchar(45) DEFAULT NULL COMMENT 'the legal representative of the company;',
  `capital` varchar(45) DEFAULT NULL COMMENT 'the company''s registered capital;',
  `shareholder` text,
  `contact` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idregister`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='register';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareholder`
--

DROP TABLE IF EXISTS `shareholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shareholder` (
  `idshareholder` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `idstock` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idshareholder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='shareholder';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareholder`
--

LOCK TABLES `shareholder` WRITE;
/*!40000 ALTER TABLE `shareholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shareholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL COMMENT 'number of company',
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL COMMENT 'Nominal amount',
  `date` date DEFAULT NULL COMMENT 'Date of incorporation',
  `time` datetime DEFAULT NULL,
  `shares` int(11) DEFAULT '1' COMMENT 'Number of shares represented',
  `shock_number` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL COMMENT 'ID of owner',
  PRIMARY KEY (`idstock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supervisor` (
  `idsupervisor` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `supervisorcol` varchar(45) DEFAULT NULL,
  `level` varchar(45) NOT NULL DEFAULT '0',
  `position` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsupervisor`,`number`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisor`
--

LOCK TABLES `supervisor` WRITE;
/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `area` varchar(45) NOT NULL DEFAULT 'CN',
  `country` varchar(45) NOT NULL DEFAULT 'China',
  PRIMARY KEY (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='company type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'有限责任公司','2018-01-23 10:13:38','CN','China'),(2,'股份有限公司','2018-01-23 10:13:38','CN','China');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ways`
--

DROP TABLE IF EXISTS `ways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ways` (
  `idways` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idways`),
  UNIQUE KEY `idways_UNIQUE` (`idways`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='capital ways';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ways`
--

LOCK TABLES `ways` WRITE;
/*!40000 ALTER TABLE `ways` DISABLE KEYS */;
INSERT INTO `ways` VALUES (1,'货币','2018-01-23 13:44:57'),(2,'实物','2018-01-23 13:44:57'),(3,'知识产权','2018-01-23 13:44:57'),(4,'土地使用权','2018-01-23 13:44:57'),(5,'其他','2018-01-23 13:45:22');
/*!40000 ALTER TABLE `ways` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-23 15:13:18
