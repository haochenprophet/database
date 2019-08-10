CREATE DATABASE  IF NOT EXISTS `company` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `company`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.13-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL,
  `item` text,
  `type` varchar(45) DEFAULT NULL COMMENT 'income and expenses',
  `infor` text,
  `from_who` text,
  `to_who` varchar(45) DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL COMMENT 'Out of account',
  `to` varchar(45) DEFAULT NULL COMMENT 'Go to account number',
  `serial_number` varchar(45) DEFAULT NULL,
  `how` float DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `location` text,
  `approved_person` varchar(45) DEFAULT NULL COMMENT 'Signature, or certification, or confirmation',
  `receipt` blob COMMENT 'Transaction credentials',
  `remark` text COMMENT 'Place of the transaction',
  PRIMARY KEY (`idaccount`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendance` (
  `idattendance` int(11) NOT NULL,
  `who` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where attendance',
  `worker_number` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `abnormal` varchar(45) DEFAULT NULL,
  `ab_type` varchar(45) DEFAULT NULL,
  `what_ab` text,
  `ab_s_time` datetime DEFAULT NULL,
  `ab_e_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idattendance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `code` (
  `idcode` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `what` text,
  `where` varchar(45) DEFAULT NULL,
  `what_time` varchar(45) DEFAULT NULL COMMENT 'last create time ',
  `description` varchar(45) DEFAULT NULL COMMENT '{inpu,out put , usage }',
  `input` varchar(45) DEFAULT NULL COMMENT 'code input ',
  `ouput` varchar(45) DEFAULT NULL COMMENT 'code out put',
  `language` varchar(45) DEFAULT NULL COMMENT 'c ,c++ ,java,python, shell ,sql , object-c ,asm , html,php, js, asp , make, and so on ',
  `status` varchar(45) DEFAULT NULL COMMENT 'Verification passed, unauthenticated, under development, published, debug',
  `remark` text,
  PRIMARY KEY (`idcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commit`
--

DROP TABLE IF EXISTS `commit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commit` (
  `idcommit` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) NOT NULL,
  `what` text,
  `where` text,
  `what_title` varchar(45) NOT NULL,
  `what_time` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcommit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commit`
--

LOCK TABLES `commit` WRITE;
/*!40000 ALTER TABLE `commit` DISABLE KEYS */;
/*!40000 ALTER TABLE `commit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creative`
--

DROP TABLE IF EXISTS `creative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `creative` (
  `idcreative` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who''s creative',
  `work_number` int(11) DEFAULT NULL,
  `where` text COMMENT 'Creative location',
  `time` datetime DEFAULT NULL COMMENT 'Creative time',
  `what` text COMMENT 'Creative content',
  `how` text COMMENT 'How creative content is realized',
  `status` varchar(45) DEFAULT NULL COMMENT 'Has been achieved, Is being realized, Plan to achieve ,can not achieve',
  `remark` text,
  PRIMARY KEY (`idcreative`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creative`
--

LOCK TABLES `creative` WRITE;
/*!40000 ALTER TABLE `creative` DISABLE KEYS */;
/*!40000 ALTER TABLE `creative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `where` text,
  `type` varchar(45) DEFAULT NULL,
  `infor` text,
  `starus` varchar(45) DEFAULT NULL,
  `remark` text,
  `contribution` double DEFAULT NULL COMMENT 'Contribution value',
  `level` int(11) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `device` (
  `iddevice` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` text NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL COMMENT 'Existing location or place of sale.',
  `count` int(11) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `worker_number` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Lost,Damage,Normal,Lend,sell ',
  `custodian` varchar(45) DEFAULT NULL COMMENT 'By hand people, Lend or sell .',
  `borrower` varchar(45) DEFAULT NULL,
  `borrow_time` datetime DEFAULT NULL,
  `return_time` datetime DEFAULT NULL COMMENT 'Return or unsubscribe',
  `sell_time` datetime DEFAULT NULL,
  `price` text COMMENT 'Cost or purchase price',
  `sell_price` text COMMENT 'Shipping or monopoly prices',
  `remark` text,
  PRIMARY KEY (`iddevice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `idfeedback` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who''s feedback ,user name ,or login id ',
  `worker_number` int(11) DEFAULT NULL,
  `what` text COMMENT 'What is the content of the feedback',
  `where` text COMMENT 'Where the feedback, feedback there',
  `how` text,
  `what_time` datetime DEFAULT NULL COMMENT 'feedback time ',
  `fb_value` int(11) DEFAULT NULL COMMENT 'The value of the feedback information',
  `fb_priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Has responded, has not replied, has responded, has been processed, has not yet been processed, processed',
  `remark` varchar(45) DEFAULT NULL COMMENT 'How to respond to or process feedback',
  PRIMARY KEY (`idfeedback`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idea` (
  `ididea` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `what` text,
  `who` varchar(45) DEFAULT NULL COMMENT 'owner job_number ',
  `worker_number` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `location` text,
  `remark` text,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ididea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idea`
--

LOCK TABLES `idea` WRITE;
/*!40000 ALTER TABLE `idea` DISABLE KEYS */;
/*!40000 ALTER TABLE `idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invest`
--

DROP TABLE IF EXISTS `invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invest` (
  `idinvest` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `where` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL COMMENT 'who_id',
  `what` varchar(200) DEFAULT NULL,
  `amount` double DEFAULT NULL COMMENT 'how Amount',
  `status` varchar(45) NOT NULL DEFAULT 'normal',
  `remark` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) NOT NULL DEFAULT 'hunter',
  `md5` varchar(45) DEFAULT NULL COMMENT 'file md 5 for verify url point file',
  PRIMARY KEY (`idinvest`,`uuid`),
  UNIQUE KEY `idinvest_UNIQUE` (`idinvest`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invest`
--

LOCK TABLES `invest` WRITE;
/*!40000 ALTER TABLE `invest` DISABLE KEYS */;
INSERT INTO `invest` VALUES (1,'05cb13a0-34c9-4e53-8978-0cf56e69d4fc','2018-06-22 08:04:27','Suzhou, Jiangsu, China','company/invest/05cb13a0-34c9-4e53-8978-0cf56e69d4fc','hunter','320323198306180035','Create ：Red-Arrow Intelligent Technology Co. Ltd. ',12000,'normal','创立公司花费资本金',0,'2019-01-07 16:17:37','hunter',NULL),(2,'2654cd80-8903-47c4-aec0-8bb84ffecb6d','2018-07-10 08:18:48','Suzhou, Jiangsu, China','company/invest/2654cd80-8903-47c4-aec0-8bb84ffecb6d','hunter','320323198306180035','存入运营资金',10000,'normal','第一次注资入资本金',0,'2019-01-07 16:20:08','hunter',NULL),(3,'c67618ff-1469-4be1-8041-ae31cdc0c73c','2018-12-29 08:20:43','Suzhou, Jiangsu, China	','company/invest/c67618ff-1469-4be1-8041-ae31cdc0c73c','hunter','320323198712070018','营收注资',2000,'normal','第二次注资入资本金',0,'2019-01-07 16:21:41','hunter',NULL);
/*!40000 ALTER TABLE `invest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issue` (
  `idissue` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL COMMENT 'Find the problem worker number',
  `who` varchar(45) DEFAULT NULL COMMENT 'Who found the problem.',
  `who_owner` varchar(45) DEFAULT NULL COMMENT 'Who will solve the problem',
  `what` text COMMENT 'what problem is found and problem description .',
  `how` text COMMENT 'How to solve the problem.',
  `where` text COMMENT 'Where the problem was found',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Processing ,Has been resolved,unsolved,Has been revoked',
  `remark` text,
  PRIMARY KEY (`idissue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `market` (
  `idmarket` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `who_owner` varchar(45) DEFAULT NULL,
  `what_want` varchar(45) DEFAULT NULL,
  `when_start` datetime DEFAULT NULL,
  `when_end` datetime DEFAULT NULL,
  `how_count` int(11) DEFAULT NULL,
  `how_money` double DEFAULT NULL,
  `where` text,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idmarket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) NOT NULL,
  `chinese_name` text,
  `english_name` text,
  `gender` varchar(4) DEFAULT NULL,
  `Identity_number` text,
  `birthday` date DEFAULT NULL,
  `work_email` text,
  `private_email` text,
  `contact_number` text,
  `social_account` text,
  `bank_card` text,
  `houses_provident_fund` text,
  `position` text,
  `department` text,
  `basic_salary` float DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `education` text,
  `graduated_school` text,
  `health_condition` text,
  `hobby` text,
  `personcol` text,
  `specialty` text,
  `work_experience` text,
  `ability` text,
  `status` text,
  `remark` text,
  PRIMARY KEY (`idperson`,`worker_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plan` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `what` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `production` (
  `idproduction` int(11) NOT NULL AUTO_INCREMENT COMMENT 'production management',
  `what` varchar(45) DEFAULT NULL,
  `how_many` varchar(45) DEFAULT NULL COMMENT 'How much to produce',
  `how_time` int(11) DEFAULT NULL COMMENT 'how much time is required',
  `when_start` datetime DEFAULT NULL COMMENT 'When to start',
  `when_end` datetime DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL COMMENT 'Where to produce',
  `priority` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'complete,processing,has not started',
  `remark` text,
  PRIMARY KEY (`idproduction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release`
--

DROP TABLE IF EXISTS `release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `release` (
  `idrelease` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `what` varchar(45) DEFAULT NULL,
  `when` datetime DEFAULT NULL,
  `where` text,
  `version` varchar(45) DEFAULT NULL,
  `infor` text,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idrelease`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release`
--

LOCK TABLES `release` WRITE;
/*!40000 ALTER TABLE `release` DISABLE KEYS */;
/*!40000 ALTER TABLE `release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair`
--

DROP TABLE IF EXISTS `repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `repair` (
  `idrepair` int(11) NOT NULL AUTO_INCREMENT,
  `what` varchar(45) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `who_owner` varchar(45) DEFAULT NULL,
  `when_shart` datetime DEFAULT NULL,
  `when_end` datetime DEFAULT NULL,
  `how_rep` text,
  `where` text,
  `cost` double DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idrepair`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair`
--

LOCK TABLES `repair` WRITE;
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `request` (
  `idrequest` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) NOT NULL,
  `who` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `ifnor` text,
  `how_many` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `where` text COMMENT 'location',
  `remark` text,
  `status` varchar(45) DEFAULT NULL COMMENT 'In the request, In response,finish ,break',
  `feedback` text COMMENT 'feed back information ',
  PRIMARY KEY (`idrequest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `idreview` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '#0. idea/creative->\n#1. issue/request->\n#2. plan/source->\n#3. code/action->\n#4. commit/schedule->\n#5. test/Quality->\n#6. review/repair->\n',
  `id_type` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL,
  `work_number` varchar(45) DEFAULT NULL,
  `what` text COMMENT 'view content',
  `what_time` datetime DEFAULT NULL,
  `where` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idreview`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `service` (
  `idservice` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who made a service request',
  `who_owner` varchar(45) DEFAULT NULL COMMENT 'The owner of the request',
  `what` varchar(45) DEFAULT NULL COMMENT 'Request content',
  `where` varchar(45) DEFAULT NULL COMMENT 'The requested location',
  `contact` text,
  `worker_number` int(11) DEFAULT NULL COMMENT 'Request the worker number of the attribution',
  `how` text COMMENT 'How to fix the request',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `feedback` text,
  `remark` text,
  PRIMARY KEY (`idservice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `source` (
  `idsource` int(11) NOT NULL AUTO_INCREMENT,
  `worker_number` int(11) DEFAULT NULL,
  `who` varchar(45) DEFAULT NULL COMMENT 'Who can provide resources',
  `what` varchar(45) DEFAULT NULL COMMENT 'What resources name can be provided,  ',
  `type` varchar(45) DEFAULT NULL COMMENT 'Resource Type',
  `how` int(11) DEFAULT NULL COMMENT 'How much resources .',
  `price` double DEFAULT NULL COMMENT 'how money',
  `where` text COMMENT 'Where is the resource location?',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'How is the resource state?Available, not available ,Normal, damaged, occupied, does not exist',
  `remark` text COMMENT 'how much is it',
  PRIMARY KEY (`idsource`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL COMMENT 'stock number',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idcard` varchar(45) DEFAULT NULL COMMENT 'ID card',
  `owner` varchar(45) DEFAULT NULL COMMENT 'name',
  `amount` varchar(45) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `value` double unsigned DEFAULT '1' COMMENT 'Trading price',
  `price` double unsigned DEFAULT '1',
  `dividend` double NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'locked',
  `remark` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstock`,`uuid`,`number`),
  UNIQUE KEY `idstock_UNIQUE` (`idstock`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'65d30733-172c-40c6-ac41-236e153b32aa','2018122801','2019-01-02 18:09:50','120103198409256713','穆天','7000','company/stock/2018122801-120103198409256713.pdf',1,1,0,'locked','专利+著作权申请',0,'2019-01-02 09:57:20'),(2,'976e040e-66de-4c92-9289-913ff316d1c5','2018122802','2019-01-02 18:18:36','320323198712070018','陈陆陆','7000','company/stock/976e040e-66de-4c92-9289-913ff316d1c5',1,1,0,'locked','专利+著作权',0,'2019-01-02 10:16:54'),(3,'e13ec232-ab0a-42ac-b8bd-8e0ce4a58025','2019030301','2019-03-08 20:15:21','410305197812013584','武哲','100000','company/stock/e13ec232-ab0a-42ac-b8bd-8e0ce4a58025',1,1,0,'locked','人力资源',0,'2019-03-08 12:09:47');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL,
  `work_number` int(11) DEFAULT NULL,
  `what` text,
  `how` text COMMENT 'How to test and test methods.',
  `where` text,
  `idrequest` int(11) DEFAULT NULL COMMENT 'Testing requirements, link form table request',
  `status` varchar(45) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `url` (
  `idurl` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(45) DEFAULT NULL COMMENT 'who create the link item .',
  `what` varchar(100) NOT NULL COMMENT 'what the link item information ?',
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(200) NOT NULL COMMENT 'where the URL address',
  `logo` varchar(45) NOT NULL COMMENT 'where the URL logo path',
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'the link create time .',
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `where` varchar(45) NOT NULL DEFAULT 'china',
  PRIMARY KEY (`idurl`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='URL links .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'198382.com','cn.china.cn','website','https://cn.china.cn/','img/company.jpg','2018-12-27 03:40:00','normal','utf8',0,'china'),(2,'198382.com','sop','website','sop.php','img/company.jpg','2019-01-17 17:48:24','normal','utf8',0,'china'),(3,'198382.com','bill','website','bill.php','img/company.jpg','2019-01-17 17:48:39','normal','utf8',0,'china'),(4,'198382.com','item','website','item.php','img/company.jpg','2019-01-17 17:48:52','normal','utf8',0,'china'),(5,'198382.com','BIOS','website','bios.php','img/company.jpg','2019-01-17 17:50:40','normal','utf8',0,'china'),(6,'198382.com','BMC','website','bmc.php','img/company.jpg','2019-01-17 17:50:52','normal','utf8',0,'china'),(7,'198382.com','knowledge','website','knowledge.php','img/company.jpg','2019-01-17 17:51:17','normal','utf8',0,'china'),(8,'198382.com','tool','website','tool.php','img/company.jpg','2019-01-17 17:51:38','normal','utf8',0,'china'),(9,'198382.com','red_arrows','website','red_arrows.php','img/company.jpg','2019-01-17 17:51:56','normal','utf8',0,'china'),(10,'198382.com','howtodo','website','howtodo.php','img/company.jpg','2019-01-17 17:52:15','normal','utf8',0,'china'),(11,'198382.com','mindmap','website','mindmap.php','img/company.jpg','2019-01-17 17:52:32','normal','utf8',0,'china'),(12,'198382.com','spec','website','spec.php','img/company.jpg','2019-01-17 17:52:45','normal','utf8',0,'china'),(13,'198382.com','sdk','website','sdk.php','img/company.jpg','2019-01-17 17:52:58','normal','utf8',0,'china'),(14,'198382.com','book','website','book.php','img/company.jpg','2019-01-17 17:53:21','normal','utf8',0,'china'),(15,'198382.com','patent','website','patent.php','img/company.jpg','2019-01-17 17:53:36','normal','utf8',0,'china'),(16,'198382.com','law','website','law.php','img/company.jpg','2019-01-17 17:53:48','normal','utf8',0,'china'),(17,'198382.com','company_stock','website','company_stock.php','img/company.jpg','2019-03-08 20:09:27','normal','utf8',0,'china'),(18,'198382.com','customer','website','customer.php','img/company.jpg','2019-03-15 09:48:50','normal','utf8',0,'china'),(19,'198382.com','Card','website','card.php','img/company.jpg','2019-08-10 15:16:38','normal','utf8',0,'china');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `work` (
  `idwork` int(11) NOT NULL,
  `work_content` text,
  `owner` varchar(45) DEFAULT NULL,
  `worker_number` int(11) NOT NULL,
  `project` varchar(45) DEFAULT NULL COMMENT 'Affiliated projects',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'Finish,Hang,suspend,Doing Running,Stop,Abolished . ',
  `remark` text COMMENT 'ower job_number',
  PRIMARY KEY (`idwork`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-10 15:17:58
