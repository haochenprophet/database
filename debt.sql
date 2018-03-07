CREATE DATABASE  IF NOT EXISTS `debt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `debt`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: debt
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
-- Table structure for table `creditor`
--

DROP TABLE IF EXISTS `creditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditor` (
  `uuid` varchar(45) NOT NULL,
  `idcreditor` int(11) NOT NULL AUTO_INCREMENT,
  `idnumber` varchar(45) NOT NULL COMMENT 'ID number 身份证号',
  `name` varchar(45) NOT NULL COMMENT 'creditor name 债权人姓名',
  `gender` varchar(45) NOT NULL DEFAULT 'M' COMMENT 'creditor M:F male and female\n	\n\n',
  `country` varchar(45) NOT NULL DEFAULT 'china' COMMENT 'country 国家',
  `province` varchar(45) NOT NULL COMMENT 'province level :省,直辖市 ,特区',
  `city` varchar(45) NOT NULL COMMENT 'city: 地级市',
  `county` varchar(45) NOT NULL COMMENT 'county 县,区',
  `town` varchar(45) DEFAULT NULL COMMENT 'town 乡镇',
  `street` varchar(45) DEFAULT NULL COMMENT 'street 街、道',
  `village` varchar(45) DEFAULT NULL COMMENT 'village 村庄屯寨\n	\n',
  `address` varchar(200) DEFAULT NULL COMMENT 'address=country+province+city+county+town+street+village',
  `phone` varchar(45) DEFAULT NULL COMMENT 'phone number 手机号',
  `real` varchar(45) DEFAULT NULL COMMENT 'real：真实性 ，Real name',
  `IPA` varchar(45) DEFAULT NULL COMMENT 'Internet payment account ：债权人网络支付账户',
  `debtor` varchar(45) DEFAULT NULL COMMENT 'Debtor''s name 负债人姓名',
  `organization` varchar(45) DEFAULT NULL COMMENT 'Debt organization ：负债人单位名称',
  `d_address` varchar(200) DEFAULT NULL,
  `project` varchar(100) DEFAULT NULL COMMENT 'Engaged in the project name ,债务发生项目名称',
  `amount` double DEFAULT NULL COMMENT 'Debt amount 债务金额',
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Debt start time',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` datetime DEFAULT NULL,
  `audio` varchar(45) NOT NULL COMMENT 'Recording evidence URL.Upload voice\n',
  `image` varchar(45) NOT NULL COMMENT 'image URL ,Upload voice',
  `video` varchar(45) NOT NULL COMMENT 'Video evidence ,Upload video path',
  `file` varchar(45) DEFAULT NULL COMMENT 'Evidence document, path:URL',
  `status` varchar(45) DEFAULT NULL COMMENT 'status 状态： 未结案,结案,',
  `is_agent` tinyint(4) NOT NULL DEFAULT '0',
  `agent_name` varchar(45) DEFAULT NULL COMMENT 'Name of agent',
  `agent_id` varchar(45) DEFAULT NULL COMMENT 'agent_id ',
  `agent_tel` varchar(45) DEFAULT NULL,
  `agent_mail` varchar(45) DEFAULT NULL,
  `agent_address` varchar(45) DEFAULT NULL,
  `agent_relationship` varchar(45) DEFAULT NULL COMMENT 'Relationship between agent and agent',
  `is_debt_agent` tinyint(4) NOT NULL DEFAULT '0',
  `d_agent_id` varchar(45) DEFAULT NULL,
  `d_agent_name` varchar(45) DEFAULT NULL,
  `d_agent_tel` varchar(45) DEFAULT NULL,
  `d_agent_mail` varchar(45) DEFAULT NULL,
  `d_agent_address` varchar(45) DEFAULT NULL,
  `d_agent_relationship` varchar(45) DEFAULT NULL,
  `debtor_status` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `bank_card` varchar(45) DEFAULT NULL COMMENT 'Bank card number',
  `payee` varchar(45) DEFAULT NULL COMMENT 'Payee Name',
  `remark` text,
  `succor` varchar(45) NOT NULL DEFAULT '0' COMMENT 'Whether to start the rescue',
  `social_help` varchar(45) DEFAULT NULL COMMENT 'Social help',
  `gov_aid` varchar(45) DEFAULT NULL COMMENT 'Government aid',
  `court_rescue` varchar(45) DEFAULT NULL COMMENT 'Court rescue',
  `solution` text,
  PRIMARY KEY (`idcreditor`,`idnumber`,`uuid`),
  UNIQUE KEY `idcreditor_UNIQUE` (`idcreditor`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='creditor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditor`
--

LOCK TABLES `creditor` WRITE;
/*!40000 ALTER TABLE `creditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurisdiction`
--

DROP TABLE IF EXISTS `jurisdiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurisdiction` (
  `uuid` varchar(45) NOT NULL,
  `idjurisdiction` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) NOT NULL COMMENT 'country 国家',
  `province` varchar(45) NOT NULL COMMENT 'province level :省,直辖市 ,特区',
  `city` varchar(45) NOT NULL COMMENT 'city: 地级市,市,州',
  `county` varchar(45) NOT NULL COMMENT 'county 县,区',
  `town` varchar(45) NOT NULL COMMENT '''town 乡镇',
  `street` varchar(45) NOT NULL COMMENT 'street 街、道',
  `village` varchar(45) DEFAULT NULL COMMENT 'village 村庄屯寨',
  `remark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `tel` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `comm` varchar(45) NOT NULL COMMENT 'Communication account：QQ web MSI 。。。 ',
  `name` varchar(45) NOT NULL COMMENT 'Manager''s name',
  `entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`,`idjurisdiction`),
  UNIQUE KEY `idjurisdiction_UNIQUE` (`idjurisdiction`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Jurisdiction information 辖区信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurisdiction`
--

LOCK TABLES `jurisdiction` WRITE;
/*!40000 ALTER TABLE `jurisdiction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurisdiction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 10:42:42
