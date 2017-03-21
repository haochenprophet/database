-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: task
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:51
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: bookmark
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `patent_law`
--

DROP TABLE IF EXISTS `patent_law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime DEFAULT NULL,
  `location` text,
  `device` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law`
--

LOCK TABLES `patent_law` WRITE;
/*!40000 ALTER TABLE `patent_law` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_law_Implementation_rules`
--

DROP TABLE IF EXISTS `patent_law_Implementation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_law_Implementation_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text NOT NULL,
  `translation` text,
  `mark` text,
  `comment` text,
  `remark` text,
  `time` datetime DEFAULT NULL,
  `location` text,
  `device` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_law_Implementation_rules`
--

LOCK TABLES `patent_law_Implementation_rules` WRITE;
/*!40000 ALTER TABLE `patent_law_Implementation_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_law_Implementation_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:51
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `creative`
--

DROP TABLE IF EXISTS `creative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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

-- Dump completed on 2017-03-21 17:46:51
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: question
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sQ` text NOT NULL,
  `sA` text NOT NULL,
  `sR` text NOT NULL,
  `sF` text,
  `sD` text,
  `depend` int(30) DEFAULT '0',
  `result` int(11) DEFAULT '0',
  `status` int(30) DEFAULT '0',
  `action` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:51
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2016-11-25 03:32:14',NULL),('diagnostics.include_raw','OFF','2016-11-25 03:32:14',NULL),('ps_thread_trx_info.max_length','65535','2016-11-25 03:32:14',NULL),('statement_performance_analyzer.limit','100','2016-11-25 03:32:14',NULL),('statement_performance_analyzer.view',NULL,'2016-11-25 03:32:14',NULL),('statement_truncate_len','64','2016-11-25 03:32:14',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`INNODB_METRICS`.`NAME` AS `Variable_name`,`information_schema`.`INNODB_METRICS`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`INNODB_METRICS`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`INNODB_METRICS`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`INNODB_METRICS`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size'))) union all (select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA`) and (`information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)))) where ((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`TABLES`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`COLUMNS`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if((`redundant_keys`.`subpart_exists` or `dominant_keys`.`subpart_exists`),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql') and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY')) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `information_schema`.`STATISTICS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`STATISTICS`.`TABLE_NAME` AS `table_name`,`information_schema`.`STATISTICS`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`STATISTICS`.`NON_UNIQUE`) AS `non_unique`,max(if(isnull(`information_schema`.`STATISTICS`.`SUB_PART`),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`STATISTICS`.`COLUMN_NAME` order by `information_schema`.`STATISTICS`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `INFORMATION_SCHEMA`.`STATISTICS` where ((`information_schema`.`STATISTICS`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`STATISTICS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`STATISTICS`.`TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:51
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: patent
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `idproject` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(45) DEFAULT NULL,
  `item` longtext,
  `type` varchar(45) DEFAULT NULL,
  `infor` blob,
  `owner` varchar(45) DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `depend_id` int(11) DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL,
  `position` tinytext,
  `source` blob,
  `url` longtext,
  `status` varchar(45) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`idproject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:52
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: iwant
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `demand`
--

DROP TABLE IF EXISTS `demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `who` text NOT NULL,
  `type` text NOT NULL,
  `object` text NOT NULL,
  `location` text NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `submit_time` datetime NOT NULL,
  `image` longblob,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand`
--

LOCK TABLES `demand` WRITE;
/*!40000 ALTER TABLE `demand` DISABLE KEYS */;
INSERT INTO `demand` VALUES (1,'hao','pen','paik-666','shang hai',666666,666,'2016-11-27 18:00:00','2016-11-27 18:00:00','2016-11-28 10:59:37',NULL,'888888'),(2,'lulu','house','paik-666','shang hai',99999,999,'2016-11-28 11:00:17','2016-11-28 11:00:17','2016-11-28 11:00:17','ELF\0\0\0\0\0\0\0\0\0\0>\0\0\0\0 (@\0\0\0\0\0@\0\0\0\0\0\0\0ø\0\0\0\0\0\0\0\0\0@\08\0	\0@\0 \0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0@\0\0\0\0\0@\0@\0\0\0\0\0ø\0\0\0\0\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0\0\08@\0\0\0\0\08@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0¼C\0\0\0\0\0¼C\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\ØL\0\0\0\0\0\ØLa\0\0\0\0\0\ØLa\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0øM\0\0\0\0\0øMa\0\0\0\0\0øMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0T@\0\0\0\0\0T@\0\0\0\0\0D\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\åtd\0\0\0\ã\0\0\0\0\0\0\ã@\0\0\0\0\0\ã@\0\0\0\0\0„\0\0\0\0\0\0„\0\0\0\0\0\0\0\0\0\0\0\0\0Q\åtd\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\åtd\0\0\0\ØL\0\0\0\0\0\ØLa\0\0\0\0\0\ØLa\0\0\0\0\0(\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0/lib64/ld-linux-x86-64.so.2\0\0\0\0\0\0\0\0\0\0GNU\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0GNU\0.\Ø|\'\ä@K‡j$û²şö\ì_¥£Š\0\0\0W\0\0\0\0\0\0\0\0\0 A	\0AW\0\0\0[\0\0\0^\0\0\0\n}J‡hÀ\ÈÈ\nÒc½\Å ıô	„\æge¸I\n›pô\à™Òº˜CxIk¶\0h¦)E\ÕL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\â\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0°\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\å\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ë\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ô\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ı\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Í\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ş\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0O\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0·\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ü	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0—\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ò	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Î\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0ù\0\0\"\0\0 H@\0\0\0\0\05\0\0\0\0\0\0d\0\0!\0\0\0Sa\0\0\0\0\0X\0\0\0\0\0\0\0¥\0\0!\0\0pTa\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0 $@\0\0\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\"\0\0\0°\'@\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0\0\0\0\0\0\0`$@\0\0\0\0\0\0\0\0\0\0\0\0\0¡	\0\0\0\0`Sa\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0 \'@\0\0\0\0\0\0\0\0\0\0\0\0\0¬\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\0\å\0\0\0\0\0€(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0libpthread.so.0\0_ITM_deregisterTMCloneTable\0_Jv_RegisterClasses\0_ITM_registerTMCloneTable\0send\0pthread_equal\0__pthread_key_create\0recv\0accept\0pthread_create\0connect\0libstdc++.so.6\0__gmon_start__\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc\0_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE\0_ZTVN10__cxxabiv117__class_type_infoE\0_ZSt9terminatev\0_ZNSaIcED1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_\0_ZNSt8ios_base4InitD1Ev\0_ZNSolsEPFRSoS_E\0_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE\0__gxx_personality_v0\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv\0_ZTVN10__cxxabiv120__si_class_type_infoE\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_\0__cxa_pure_virtual\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_\0_ZdlPv\0__cxa_begin_catch\0_Znam\0_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_\0__cxa_end_catch\0_ZdaPv\0_ZNSt6thread6detachEv\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc\0_ZNSaIcEC1Ev\0_ZNSolsEPKv\0_ZSt17__throw_bad_allocv\0_ZNSt8ios_base4InitC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv\0_ZNSaIcED2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv\0_Znwm\0__cxa_rethrow\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_\0_ZNSt8__detail15_List_node_base9_M_unhookEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm\0_ZSt19__throw_logic_errorPKc\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc\0_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm\0_ZNSt8__detail15_List_node_base7_M_hookEPS0_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_\0_ZSt4cout\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv\0_ZNSolsEb\0_ZNSolsEi\0_ZNSolsEl\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev\0libgcc_s.so.1\0_Unwind_Resume\0libc.so.6\0socket\0readdir\0closedir\0puts\0__stack_chk_fail\0listen\0clock\0strftime\0gmtime\0__cxa_atexit\0getaddrinfo\0memset\0bind\0memcmp\0asctime\0shutdown\0vsnprintf\0memcpy\0opendir\0system\0rename\0localtime\0difftime\0mktime\0freeaddrinfo\0strcmp\0__libc_start_main\0GCC_3.0\0GLIBC_2.2.5\0GLIBC_2.4\0GLIBC_2.14\0GLIBCXX_3.4.11\0CXXABI_1.3\0GLIBCXX_3.4.15\0GLIBCXX_3.4.21\0GLIBCXX_3.4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰\n\0\0\0\0\0 \0\0\0P&y\0\0\0Ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0u\Zi	\0\0\0§\0\0\0\0\0\0\0\0¦\n\0\0\0\0\0@\0\0\0ii\r\0\0	\0³\0\0\0\0\0”‘–\0\0\0½\0\0\0\0\0u\Zi	\0\0\0§\0\0\0\0\0\0\0\0¦\0\0\0\0\0\0\0\0\0\0aø—\0\0\n\0\È\0\0\0\0\0Ó¯k\0\0\0\×\0\0\0\0\0eø—\0\0\0\â\0\0\0\0\0qø—\0\0\0ñ\0\0\0\0\0t)’\0\0\0\0\0\0\0\0\0\0øOa\0\0\0\0\0\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0\0\0\0Y\0\0\0\0\0\0\0\0\0\0\0`Sa\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0pTa\0\0\0\0\0\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0PPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XPa\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0`Pa\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0hPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0pPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0xPa\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0€Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¨Pa\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0°Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÀPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ÈPa\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\0\0\0\0\ĞPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ØPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\àPa\0\0\0\0\0\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\èPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0øPa\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(Qa\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\00Qa\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\08Qa\0\0\0\0\0\0\0\0\"\0\0\0\0\0\0\0\0\0\0\0@Qa\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\0\0\0\0\0HQa\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0PQa\0\0\0\0\0\0\0\0%\0\0\0\0\0\0\0\0\0\0\0XQa\0\0\0\0\0\0\0\0&\0\0\0\0\0\0\0\0\0\0\0`Qa\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0hQa\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0pQa\0\0\0\0\0\0\0\0)\0\0\0\0\0\0\0\0\0\0\0xQa\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0€Qa\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0ˆQa\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0˜Qa\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0 Qa\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0\0\0¨Qa\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0°Qa\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0¸Qa\0\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0\0\0ÀQa\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\ÈQa\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0\0\0\0\0\ĞQa\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0\0\0\ØQa\0\0\0\0\0\0\0\07\0\0\0\0\0\0\0\0\0\0\0\àQa\0\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\èQa\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0\0\0\0\0ğQa\0\0\0\0\0\0\0\0:\0\0\0\0\0\0\0\0\0\0\0øQa\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0?\0\0\0\0\0\0\0\0\0\0\0 Ra\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0(Ra\0\0\0\0\0\0\0\0A\0\0\0\0\0\0\0\0\0\0\00Ra\0\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0\0\08Ra\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0@Ra\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0HRa\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\0PRa\0\0\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0XRa\0\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0`Ra\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0hRa\0\0\0\0\0\0\0\0a\0\0\0\0\0\0\0\0\0\0\0pRa\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\0\0\0xRa\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0€Ra\0\0\0\0\0\0\0\0J\0\0\0\0\0\0\0\0\0\0\0ˆRa\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0˜Ra\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0\0\0\0 Ra\0\0\0\0\0\0\0\0O\0\0\0\0\0\0\0\0\0\0\0¨Ra\0\0\0\0\0\0\0\0P\0\0\0\0\0\0\0\0\0\0\0°Ra\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0¸Ra\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\0\0ÀRa\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\ÈRa\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\ĞRa\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\ØRa\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0Hƒ\ìH‹%-!\0H…Àt\è³\0\0Hƒ\Ä\Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ5-!\0ÿ%-!\0@\0ÿ%-!\0h\0\0\0\0\é\àÿÿÿÿ%\n-!\0h\0\0\0\é\Ğÿÿÿÿ%-!\0h\0\0\0\éÀÿÿÿÿ%ú,!\0h\0\0\0\é°ÿÿÿÿ%ò,!\0h\0\0\0\é ÿÿÿÿ%\ê,!\0h\0\0\0\éÿÿÿÿ%\â,!\0h\0\0\0\é€ÿÿÿÿ%\Ú,!\0h\0\0\0\épÿÿÿÿ%\Ò,!\0h\0\0\0\é`ÿÿÿÿ%\Ê,!\0h	\0\0\0\éPÿÿÿÿ%\Â,!\0h\n\0\0\0\é@ÿÿÿÿ%º,!\0h\0\0\0\é0ÿÿÿÿ%²,!\0h\0\0\0\é ÿÿÿÿ%ª,!\0h\r\0\0\0\éÿÿÿÿ%¢,!\0h\0\0\0\é\0ÿÿÿÿ%š,!\0h\0\0\0\éğşÿÿÿ%’,!\0h\0\0\0\é\àşÿÿÿ%Š,!\0h\0\0\0\é\Ğşÿÿÿ%‚,!\0h\0\0\0\éÀşÿÿÿ%z,!\0h\0\0\0\é°şÿÿÿ%r,!\0h\0\0\0\é şÿÿÿ%j,!\0h\0\0\0\éşÿÿÿ%b,!\0h\0\0\0\é€şÿÿÿ%Z,!\0h\0\0\0\épşÿÿÿ%R,!\0h\0\0\0\é`şÿÿÿ%J,!\0h\0\0\0\éPşÿÿÿ%B,!\0h\Z\0\0\0\é@şÿÿÿ%:,!\0h\0\0\0\é0şÿÿÿ%2,!\0h\0\0\0\é şÿÿÿ%*,!\0h\0\0\0\éşÿÿÿ%\",!\0h\0\0\0\é\0şÿÿÿ%\Z,!\0h\0\0\0\éğıÿÿÿ%,!\0h \0\0\0\é\àıÿÿÿ%\n,!\0h!\0\0\0\é\Ğıÿÿÿ%,!\0h\"\0\0\0\éÀıÿÿÿ%ú+!\0h#\0\0\0\é°ıÿÿÿ%ò+!\0h$\0\0\0\é ıÿÿÿ%\ê+!\0h%\0\0\0\éıÿÿÿ%\â+!\0h&\0\0\0\é€ıÿÿÿ%\Ú+!\0h\'\0\0\0\épıÿÿÿ%\Ò+!\0h(\0\0\0\é`ıÿÿÿ%\Ê+!\0h)\0\0\0\éPıÿÿÿ%\Â+!\0h*\0\0\0\é@ıÿÿÿ%º+!\0h+\0\0\0\é0ıÿÿÿ%²+!\0h,\0\0\0\é ıÿÿÿ%ª+!\0h-\0\0\0\éıÿÿÿ%¢+!\0h.\0\0\0\é\0ıÿÿÿ%š+!\0h/\0\0\0\éğüÿÿÿ%’+!\0h0\0\0\0\é\àüÿÿÿ%Š+!\0h1\0\0\0\é\Ğüÿÿÿ%‚+!\0h2\0\0\0\éÀüÿÿÿ%z+!\0h3\0\0\0\é°üÿÿÿ%r+!\0h4\0\0\0\é üÿÿÿ%j+!\0h5\0\0\0\éüÿÿÿ%b+!\0h6\0\0\0\é€üÿÿÿ%Z+!\0h7\0\0\0\épüÿÿÿ%R+!\0h8\0\0\0\é`üÿÿÿ%J+!\0h9\0\0\0\éPüÿÿÿ%B+!\0h:\0\0\0\é@üÿÿÿ%:+!\0h;\0\0\0\é0üÿÿÿ%2+!\0h<\0\0\0\é üÿÿÿ%*+!\0h=\0\0\0\éüÿÿÿ%\"+!\0h>\0\0\0\é\0üÿÿÿ%\Z+!\0h?\0\0\0\éğûÿÿÿ%+!\0h@\0\0\0\é\àûÿÿÿ%\n+!\0hA\0\0\0\é\Ğûÿÿÿ%+!\0hB\0\0\0\éÀûÿÿÿ%ú*!\0hC\0\0\0\é°ûÿÿÿ%ò*!\0hD\0\0\0\é ûÿÿÿ%\ê*!\0hE\0\0\0\éûÿÿÿ%\â*!\0hF\0\0\0\é€ûÿÿÿ%\Ú*!\0hG\0\0\0\épûÿÿÿ%\Ò*!\0hH\0\0\0\é`ûÿÿÿ%\Ê*!\0hI\0\0\0\éPûÿÿÿ%\Â*!\0hJ\0\0\0\é@ûÿÿÿ%º*!\0hK\0\0\0\é0ûÿÿÿ%²*!\0hL\0\0\0\é ûÿÿÿ%ª*!\0hM\0\0\0\éûÿÿÿ%¢*!\0hN\0\0\0\é\0ûÿÿÿ%š*!\0hO\0\0\0\éğúÿÿÿ%’*!\0hP\0\0\0\é\àúÿÿÿ%Š*!\0hQ\0\0\0\é\Ğúÿÿÿ%‚*!\0hR\0\0\0\éÀúÿÿÿ%z*!\0hS\0\0\0\é°úÿÿÿ%r*!\0hT\0\0\0\é úÿÿÿ%j*!\0hU\0\0\0\éúÿÿÿ%b*!\0hV\0\0\0\é€úÿÿÿ%Z*!\0hW\0\0\0\épúÿÿÿ%R*!\0hX\0\0\0\é`úÿÿÿ%b\'!\0f\0\0\0\0\0\0\0\01\íI‰\Ñ^H‰\âHƒ\äğPTI\ÇÀ \È@\0H\ÇÁ0\È@\0H\Ç\Ç\Õ.@\0\è‡ÿÿÿôfD\0\0¸÷Ra\0UH-ğRa\0HƒøH‰\åv¸\0\0\0\0H…Àt]¿ğRa\0ÿ\àf„\0\0\0\0\0]\Ã@\0f.„\0\0\0\0\0¾ğRa\0UH\îğRa\0HÁşH‰\åH‰ğHÁ\è?H\ÆH\Ñşt¸\0\0\0\0H…Àt]¿ğRa\0ÿ\à\0]\ÃfD\0\0€=q+!\0\0uUH‰\å\ènÿÿÿ]\Æ^+!\0ó\Ã@\0¿ğMa\0Hƒ?\0u\ë“\0¸\0\0\0\0H…ÀtñUH‰\åÿ\Ğ]\ézÿÿÿUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èY\'\0\0º\É@\0H‹E\èH‰H‹E\èHƒÀ¾\Ì\È@\0H‰\Ç\èğüÿÿH‹E\èHƒÀ8¾\Ö\È@\0H‰\Ç\è\ÛüÿÿH‹E\èHƒÀh¾\ß\È@\0H‰\Ç\è\Æüÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è\é*\0\0H‰\ØH‰\Ç\è\êıÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÉTa\0\èıÿÿº\èRa\0¾\ÉTa\0¿€(@\0\è(ûÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHƒÀ¾ˆ\É@\0H‰\Ç\è+üÿÿH‹EøHƒÀ8¾\É@\0H‰\Ç\èüÿÿH‹EøHƒÀh¾˜\É@\0H‰\Ç\èüÿÿH‹EøHˆ\0\0\0¾\Ê@\0H‰\Ç\è\êûÿÿ¸\0\0\0\0\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è&\0\0º¸\Ë@\0H‹E\èH‰H‹E\èH(\0\0H‰\Ç\è\ÛûÿÿH‹E\èHH\0\0H‰\Ç\è\ÉûÿÿH‹E\èHh\0\0H‰\Ç\è·ûÿÿH‹E\èHˆ\0\0H‰\Ç\è¥ûÿÿH‹E\èH¨\0\0H‰\Ç\è\Ë\0\0H‹E\èHÀ\0\0H‰\Ç\è¹\0\0H‹E\èH\Ø\0\0H‰\Ç\è§\0\0H‹E\è¾\0\0\0\0H‰\Ç\è\Şşÿÿ\é˜\0\0\0H‰\ÃH‹E\èH\Ø\0\0H‰\Ç\è\è\0\0H‹E\èHÀ\0\0H‰\Ç\è\Ö\0\0H‹E\èH¨\0\0H‰\Ç\è\Ä\0\0H‹E\èHˆ\0\0H‰\Ç\èøÿÿH‹E\èHh\0\0H‰\Ç\èŒøÿÿH‹E\èHH\0\0H‰\Ç\èzøÿÿH‹E\èH(\0\0H‰\Ç\èhøÿÿH‹E\èH‰\Ç\è\Ğ(\0\0H‰\ØH‰\Ç\è\ÑûÿÿHƒ\Ä[]\ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹E\èH‰\Ç\èµ$\0\0º¸\Ë@\0H‹E\èH‰H‹E\èH(\0\0H‰\Ç\èúÿÿH‹E\èHH\0\0H‰\Ç\èmúÿÿH‹E\èHh\0\0H‰\Ç\è[úÿÿH‹E\èHˆ\0\0H‰\Ç\èIúÿÿH‹E\èH¨\0\0H‰\Ç\èo\0\0H‹E\èHÀ\0\0H‰\Ç\è]\0\0H‹E\èH\Ø\0\0H‰\Ç\èK\0\0H‹E\è¾\0\0\0\0H‰\Ç\è‚ıÿÿH‹E\èHh\0\0H‹E\àH‰\ÆH‰\×\èöÿÿ\é˜\0\0\0H‰\ÃH‹E\èH\Ø\0\0H‰\Ç\èr\0\0H‹E\èHÀ\0\0H‰\Ç\è`\0\0H‹E\èH¨\0\0H‰\Ç\èN\0\0H‹E\èHˆ\0\0H‰\Ç\è(÷ÿÿH‹E\èHh\0\0H‰\Ç\è÷ÿÿH‹E\èHH\0\0H‰\Ç\è÷ÿÿH‹E\èH(\0\0H‰\Ç\èòöÿÿH‹E\èH‰\Ç\èZ\'\0\0H‰\ØH‰\Ç\è[úÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øº¸\Ë@\0H‹EøH‰H‹EøH¨\0\0H‰\Ç\è²\0\0H‹EøHÀ\0\0H‰\Ç\è \0\0H‹EøH\Ø\0\0H‰\Ç\è\0\0H‹EøH\Ø\0\0H‰\Ç\èˆ\0\0H‹EøHÀ\0\0H‰\Ç\èv\0\0H‹EøH¨\0\0H‰\Ç\èd\0\0H‹EøHˆ\0\0H‰\Ç\è>öÿÿH‹EøHh\0\0H‰\Ç\è,öÿÿH‹EøHH\0\0H‰\Ç\è\ZöÿÿH‹EøH(\0\0H‰\Ç\èöÿÿH‹EøH‰\Ç\èp&\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHƒÀhH‰Æ¿`Sa\0\è\ãöÿÿ¸\0\0\0\0\É\ÃUH‰\åH‰}øH‰uğHƒ}ğ\0u¸ÿÿÿÿ\ë¸\0\0\0\0]\ÃUH‰\åSH\ì¨\0\0‰½\\úÿÿH‰µPúÿÿdH‹%(\0\0\0H‰E\è1À¾¼\Ê@\0¿`Sa\0\è\ÄöÿÿH…ğıÿÿH‰\Ç\è\ÃûÿÿH…ğıÿÿH‰\Ç\èş0\0\0H…`úÿÿH‰\Ç\èC‘\0\0H…`úÿÿH‰\Ç\è\à0\0\0H…ûÿÿH‰\Ç\è¯\0\0H…ûÿÿH‰\Ç\èr0\0\0H…ÀüÿÿH‰\Ç\èm\0\0H…ÀüÿÿH‰\Ç\è¤0\0\0»\0\0\0\0H…ÀüÿÿH‰\Ç\èh\0\0H…ûÿÿH‰\Ç\è1\0\0H…`úÿÿH‰\Ç\èú\0\0\0H…ğıÿÿH‰\Ç\è\çıÿÿ‰\ØH‹U\èdH3%(\0\0\0t`\ëYH‰\ÃH…ÀüÿÿH‰\Ç\è\0\0\ëH‰\ÃH…ûÿÿH‰\Ç\è\Ú\0\0\0\ëH‰\ÃH…`úÿÿH‰\Ç\è\0\0\0\ëH‰\ÃH…ğıÿÿH‰\Ç\è†ıÿÿH‰\ØH‰\Ç\è\Ï÷ÿÿ\èúõÿÿHÄ¨\0\0[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÊTa\0\è\éöÿÿº\èRa\0¾\ÊTa\0¿€(@\0\èõÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è´\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øº\à\Ê@\0H‹EøH‰H‹EøH‰\Ç\è $\0\0\ÉÃUH‰\åHƒ\ìH‰}øºp\Ë@\0H‹EøH‰H‹EøH‰\Ç\èø#\0\0\ÉÃUH‰\åHƒ\ìH‰}øº(\Ë@\0H‹EøH‰H‹EøH‰\Ç\è\Ğ#\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èp\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è|\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è|\0\0\0H‹EøH‰\Ç\èÀÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èT\0\0\0H‹EøH‰\Ç\è²\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Î\0\0\0H‹EøH‰\Ç\èŠ\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Î\0\0\0\ÉÃUH‰\åHƒ\ì H‰}\èH‹E\èH‹\0H‰EğH‹E\èH;EğtFH‹EğH‰EøH‹EøH‹\0H‰EğH‹E\èH‰\Ç\è–\0\0\0H‰\ÂH‹EøH‰\ÆH‰\×\è’\0\0\0H‹UøH‹E\èH‰\ÖH‰\Ç\è\0\0\0ë°\É\ÃUH‰\åHƒ\ìH‰}øH‹UøH‹EøH‰H‹UøH‹EøH‰PH‹Eø¾\0\0\0\0H‰\Ç\è‚\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è‚\0\0\0H‹EøH‰\Ç\è’\0\0\0\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹Mğº\0\0\0H‰\ÎH‰\Ç\èj\0\0\0\ÉÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰P]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èV\0\0\0\ÉÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EøH\Ç@\0\0\0\0]\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\è&òÿÿ\ÉÃUH‰\åH‰}ø]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èE\0\0º\È\Ì@\0H‹E\èH‰H‹E\èHƒÀ¾¬\Ì@\0H‰\Ç\è\ÜòÿÿH‹E\èHƒÀ8¾²\Ì@\0H‰\Ç\è\Çòÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è\ê \0\0H‰\ØH‰\Ç\è\ëóÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øH‰uğHƒ}ğ\0u¸ÿÿÿÿ\ë#H‹EğH‰Æ¿`Sa\0\è…ñÿÿ¾ $@\0H‰\Ç\è˜ñÿÿ¸\0\0\0\0\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ËTa\0\è\Êòÿÿº\èRa\0¾\ËTa\0¿€(@\0\è\æğÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\ßşÿÿºX\Í@\0H‹E\èH‰H‹E\èHƒÀ¾8\Í@\0H‰\Ç\è\ÔñÿÿH‹E\èHƒÀ8¾>\Í@\0H‰\Ç\è¿ñÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èf\0\0\0H‰\ØH‰\Ç\è\ãòÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÌTa\0\èòÿÿº\èRa\0¾\ÌTa\0¿€(@\0\è!ğÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åHƒ\ìH‰}øº\È\Ì@\0H‹EøH‰H‹EøH‰\Ç\èX\0\0\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è+\0\0º\è\Í@\0H‹E\èH‰H‹E\èHƒÀ¾\È\Í@\0H‰\Ç\è\æğÿÿH‹E\èHƒÀ8¾\Í\Í@\0H‰\Ç\è\Ñğÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èf\0\0\0H‰\ØH‰\Ç\èõñÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÍTa\0\èñÿÿº\èRa\0¾\ÍTa\0¿€(@\0\è3\ïÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åHƒ\ìH‰}øº8\Ï@\0H‹EøH‰H‹EøH‰\Ç\èj\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è»\îÿÿ\É\ÃUH‰\åHƒÄ€H‰}ˆdH‹%(\0\0\0H‰Eø1ÀHEH‰\Ç\è\Ò\îÿÿHEH‰\Ç\è\îÿÿH‰E˜Hƒ}ˆ\0tH‹M˜H‹UˆHE ¾P\0\0\0H‰\Ç\è\"\îÿÿ\ëH‹U˜HE H‰ÑºP\Î@\0¾P\0\0\0H‰\Ç\è\îÿÿHE H‰\Ç\è7ğÿÿ¸\0\0\0\0H‹uødH34%(\0\0\0t\è\î\îÿÿ\É\ÃUH‰\åHƒ\ì H‰}\èH‹E\èH‰EøH‹EøH‹\0H…Àt\rH‹EøH‹@H…Àu¾X\Î@\0¿`Sa\0\èP\îÿÿ¸ÿÿÿÿ\ë\ZH‹EøH‹PH‹EøH‹\0H‰\ÖH‰\Ç\è\Ï\ìÿÿ\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÎTa\0\è†\ïÿÿº\èRa\0¾\ÎTa\0¿€(@\0\è¢\íÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èyx\0\0º°\Î@\0H‹E\èH‰H‹E\èHƒÀ¾”\Î@\0H‰\Ç\è\îÿÿH‹E\èHƒÀ8¾š\Î@\0H‰\Ç\è{\îÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èf\0\0\0H‰\ØH‰\Ç\èŸ\ïÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÏTa\0\èÁ\îÿÿº\èRa\0¾\ÏTa\0¿€(@\0\è\İ\ìÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åHƒ\ìH‰}øºX\Û@\0H‹EøH‰H‹EøH‰\Ç\è\0\0\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\0\0º8\Ï@\0H‹E\èH‰H‹E\èHƒÀ¾\Ï@\0H‰\Ç\è¢\íÿÿH‹E\èHƒÀ8¾\Ï@\0H‰\Ç\è\íÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è°\0\0H‰\ØH‰\Ç\è±\îÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øH‰uğHƒ}ğ\0u\n¿\0\0\0\0\è\Ù\ìÿÿH‹Eğ‹\0‰\Ç\è\Ì\ìÿÿUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ĞTa\0\è¥\íÿÿº\èRa\0¾\ĞTa\0¿€(@\0\èÁ\ëÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\0\0º\È\Ï@\0H‹E\èH‰H‹E\èHƒÀ¾¨\Ï@\0H‰\Ç\è®\ìÿÿH‹E\èHƒÀ8¾®\Ï@\0H‰\Ç\è™\ìÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è¼\Z\0\0H‰\ØH‰\Ç\è½\íÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÑTa\0\è\ß\ìÿÿº\èRa\0¾\ÑTa\0¿€(@\0\èû\êÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èQ\0\0ºX\Ğ@\0H‹E\èH‰H‹E\èHƒÀ¾8\Ğ@\0H‰\Ç\è\è\ëÿÿH‹E\èHƒÀ8¾>\Ğ@\0H‰\Ç\è\Ó\ëÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èö\0\0H‰\ØH‰\Ç\è÷\ìÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÒTa\0\è\ìÿÿº\èRa\0¾\ÒTa\0¿€(@\0\è5\êÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è‹\0\0º \Ñ@\0H‹E\èH‰H‹E\èH(\0\0H‰\Ç\èAŠ\0\0H‹E\èHƒÀ¾\È\Ğ@\0H‰\Ç\è\ëÿÿH‹E\èHƒÀ8¾\Î\Ğ@\0H‰\Ç\èû\êÿÿH‹E\èH\0\0¾\Ø\Ğ@\0H‰\Ç\è\ä\êÿÿ\ë1H‰\ÃH‹E\èH(\0\0H‰\Ç\èw\0\0\0\ëH‰\ÃH‹E\èH‰\Ç\èğ\0\0H‰\ØH‰\Ç\èñ\ëÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÓTa\0\è\ëÿÿº\èRa\0¾\ÓTa\0¿€(@\0\è/\éÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åHƒ\ìH‰}øºh\Ñ@\0H‹EøH‰H‹EøH‰\Ç\èf\0\0\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è]\0\0º@\Ò@\0H‹E\èH‰H‹E\èHƒÀ¾\0\Ò@\0H‰\Ç\èô\éÿÿH‹E\èHƒÀ8¾\Ò@\0H‰\Ç\è\ß\éÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è\0\0H‰\ØH‰\Ç\è\ëÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øº@\Ò@\0H‹EøH‰H‹EøH‰\Ç\è\Ì\0\0\ÉÃUH‰\åHƒ\ìH‰}ø¾\r\Ò@\0¿`Sa\0\è‰\èÿÿH‹Eø\É\ÃUH‰\åSHƒ\ì(H‰}\ØHƒ}\Ø\0u¸ÿÿÿÿ\ëCH‹E\ØH‰E\èH‹E\èH‰\Ç\è$\éÿÿH‰Ã¾\Ò@\0¿`Sa\0\èB\èÿÿH‰\ŞH‰\Ç\è7\èÿÿ¾ $@\0H‰\Ç\èJ\èÿÿ¸\0\0\0\0Hƒ\Ä([]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÔTa\0\èw\éÿÿº\èRa\0¾\ÔTa\0¿€(@\0\è“\çÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\é\0\0ºp\Ë@\0H‹E\èH‰H‹E\èHƒÀ¾°\Ò@\0H‰\Ç\è€\èÿÿH‹E\èHƒÀ8¾¶\Ò@\0H‰\Ç\èk\èÿÿH‹E\èHˆ\0\0\0¾À\Ò@\0H‰\Ç\èT\èÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èw\0\0H‰\ØH‰\Ç\èx\éÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÕTa\0\èš\èÿÿº\èRa\0¾\ÕTa\0¿€(@\0\è¶\æÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\r\0\0º(\Ë@\0H‹E\èH‰H‹E\èHƒÀ¾H\Ó@\0H‰\Ç\è¤\çÿÿH‹E\èHƒÀ8¾N\Ó@\0H‰\Ç\è\çÿÿH‹E\èHƒÀh¾X\Ó@\0H‰\Ç\èz\çÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è\0\0H‰\ØH‰\Ç\è\èÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÖTa\0\èÀ\çÿÿº\èRa\0¾\ÖTa\0¿€(@\0\è\Ü\åÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è3\0\0º°\Ó@\0H‹E\èH‰H‹E\èHƒÀ¾\Ó@\0H‰\Ç\è\Ê\æÿÿH‹E\èHƒÀ8¾–\Ó@\0H‰\Ç\èµ\æÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è\Ø\0\0H‰\ØH‰\Ç\è\Ù\çÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\×Ta\0\èû\æÿÿº\èRa\0¾\×Ta\0¿€(@\0\è\åÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìHH‰}¸dH‹%(\0\0\0H‰E\è1ÀH‹E¸H‰\Ç\è^\0\0º˜\Ô@\0H‹E¸H‰H‹E¸HƒÀ¾\Ô@\0H‰\Ç\èõ\åÿÿH‹E¸H‹PHEÀH‰\ÖH‰\Ç\è\í\0\0H‹E¸HPHEÀH‰\ÆH‰\×\è‡\åÿÿHEÀH‰\Ç\è{\ãÿÿH‹E¸HƒÀ8¾&\Ô@\0H‰\Ç\è¦\åÿÿH‹E¸º\0\0\0\0¾\0\0\0\0H‰\Ç\èv\0\0\ë+H‰\ÃHEÀH‰\Ç\è?\ãÿÿ\ëH‰\ÃH‹E¸H‰\Ç\è¢\0\0H‰\ØH‰\Ç\è£\æÿÿH‹E\èdH3%(\0\0\0t\è¿\äÿÿHƒ\ÄH[]\ÃUH‰\åSHƒ\ìHH‰}¸‰u´dH‹%(\0\0\0H‰E\è1ÀH‹E¸H‰\Ç\èe\0\0º˜\Ô@\0H‹E¸H‰H‹E¸HƒÀ¾\Ô@\0H‰\Ç\èü\äÿÿH‹E¸H‹PHEÀH‰\ÖH‰\Ç\èô\0\0H‹E¸HPHEÀH‰\ÆH‰\×\è\äÿÿHEÀH‰\Ç\è‚\âÿÿH‹E¸HƒÀ8¾&\Ô@\0H‰\Ç\è­\äÿÿ‹M´H‹E¸º\0\0\0\0‰\ÎH‰\Ç\è}\0\0\0\ë+H‰\ÃHEÀH‰\Ç\èF\âÿÿ\ëH‰\ÃH‹E¸H‰\Ç\è©\0\0H‰\ØH‰\Ç\èª\åÿÿH‹E\èdH3%(\0\0\0t\è\Æ\ãÿÿHƒ\ÄH[]ÃUH‰\åHƒ\ìH‰}øº˜\Ô@\0H‹EøH‰H‹EøH‰\Ç\èZ\0\0H‹EøH‰\Ç\èR\0\0\ÉÃUH‰\åSHƒ\ìH‰}\è‰u\ä‰U\àH‹E\èÇ€0\0\0\0\0\0\0H‹E\èHÇ€(\0\0\0\0\0\0H‹E\è‹U\à‰4\0\0ƒ}\ä\0t(‹E\äH˜H‰\Ç\è\n\àÿÿH‰\ÂH‹E\èH‰(\0\0H‹E\è‹Uä‰0\0\0H‹E\èH‹€(\0\0\ëNH‰\Ç\èª\àÿÿ¾0\Ô@\0¿`Sa\0\è›\âÿÿH‰Â‹E\ä‰\ÆH‰\×\è‹\äÿÿ¾ $@\0H‰\Ç\è\âÿÿ\è9\äÿÿ\ë¸H‰\Ã\è/\äÿÿH‰\ØH‰\Ç\è”\äÿÿHƒ\Ä[]ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‰M\àHƒ}ğ\0tH‹EøH‹€(\0\0H;Eğt>H‹EøH‰\Ç\è>\'\0\0H;E\èt,H‹E\àH‰\Ç\è^\ãÿÿH…Àt\"H‹EøHPH‹E\àH‰\ÆH‰\×\è\0\0„Àt¸\0\0\0\ë¸\0\0\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‹€(\0\0H…Àt2H‹EøH‹€(\0\0H…ÀtH‹EøH‹€(\0\0H‰\Ç\èa\âÿÿH‹EøHÇ€(\0\0\0\0\0\0\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ØTa\0\è\è\âÿÿº\èRa\0¾\ØTa\0¿€(@\0\è\áÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èHƒ}\è\0u¸\0\0\0\0\ëH‹U\èH‹MğH‹EøH‰\ÎH‰\Ç\èC\ßÿÿ\É\ÃUH‰\åHƒ\ì H‰}\èH‰u\àdH‹%(\0\0\0H‰Eø1À¾ \0\0\0H‹E\èH‹U\àI‰Ğ¹\Ô@\0H‰ò¾$@\0H‰Ç¸\0\0\0\0\è\Z\0\0\0H‹E\èH‹MødH3%(\0\0\0t\è\0\áÿÿ\É\ÃUH‰\åSH\ì\0\0H‰½ÿÿÿH‰µ\0ÿÿÿH‰•øşÿÿH‰ğşÿÿL‰…`ÿÿÿL‰hÿÿÿ„Àt#)…pÿÿÿ)M€)U)] )e°)mÀ)u\Ğ)}\àdH‹%(\0\0\0H‰…8ÿÿÿ1ÀH‹…øşÿÿHP¸\0\0\0Hƒ\èHĞ»\0\0\0º\0\0\0\0H÷óHkÀH)\ÄH‰\àHƒÀHÁ\èHÁ\àH‰…ÿÿÿÇ… ÿÿÿ \0\0\0Ç…$ÿÿÿ0\0\0\0HEH‰…(ÿÿÿH…@ÿÿÿH‰…0ÿÿÿH ÿÿÿH‹•ğşÿÿH‹µøşÿÿH‹½ÿÿÿH‹…\0ÿÿÿÿĞ‰…ÿÿÿH…ÿÿÿH‰\Ç\è\Ç\áÿÿ‹…ÿÿÿHc\ĞH‹…ÿÿÿH<H•ÿÿÿH‹µÿÿÿH‹…ÿÿÿH‰\ÑH‰úH‰\Ç\èò\0\0\0H…ÿÿÿH‰\Ç\è\ßÿÿH‹…ÿÿÿH‹8ÿÿÿdH3%(\0\0\0t$\ëH‰\ÃH…ÿÿÿH‰\Ç\èT\ßÿÿH‰\ØH‰\Ç\è9\áÿÿ\èd\ßÿÿH‹]ø\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èV\Üÿÿ\É\ÃUH‰\åATSHƒ\ìH‰}\èH‰u\àH‹E\èH‰\Ç\è\Ä\İÿÿH‰\ÃH‹E\àH‰\Ç\èµ\İÿÿH9\ÃuCH‹E\èH‰\Ç\è¤\İÿÿI‰\ÄH‹E\àH‰\Ç\èe\ßÿÿH‰\ÃH‹E\èH‰\Ç\èV\ßÿÿL‰\âH‰\ŞH‰\Ç\è<ıÿÿ…Àu¸\0\0\0\ë¸\0\0\0\0Hƒ\Ä[A\\]ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‰M\ĞH‹E\èH‰\Ç\èy\İÿÿH‰ÁH‹E\èH‹U\ĞH‰\ÎH‰\Ç\èS\ŞÿÿH‹U\ØH‹M\àH‹E\èH‰\ÎH‰\Ç\è$\0\0\0\ë\ZH‰\ÃH‹E\èH‰\Ç\èışÿÿH‰\ØH‰\Ç\è \àÿÿHƒ\Ä([]ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØdH‹%(\0\0\0H‰Eø1ÀH‹U\ØH‹M\àH‹E\èHƒ\ìAPH‰\ÎH‰\Ç\è\0\0\0Hƒ\ÄH‹EødH3%(\0\0\0t\è\ï\İÿÿ\ÉÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØdH‹%(\0\0\0H‰Eø1ÀH‹U\ØH‹M\àH‹E\èHƒ\ìAPH‰\ÎH‰\Ç\è\0\0\0Hƒ\ÄH‹EødH3%(\0\0\0t\è“\İÿÿ\ÉÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰U\ÈdH‹%(\0\0\0H‰E\è1ÀH‹E\ĞH‰\Ç\è\0\0„ÀtH‹E\ĞH;E\Èt¸\0\0\0\ë¸\0\0\0\0„Àt\n¿X\Ô@\0\è\è\ÛÿÿH‹U\ÈH‹E\ĞH‰\ÖH‰\Ç\è\Ü\0\0\0H‰E\àH‹E\àHƒøv=HM\àH‹EØº\0\0\0\0H‰\ÎH‰\Ç\èÿ\ŞÿÿH‰\ÂH‹E\ØH‰\ÖH‰\Ç\è\r\ÜÿÿH‹U\àH‹E\ØH‰\ÖH‰\Ç\è\Z\ßÿÿH‹E\ØH‰\Ç\è¾\ÜÿÿH‰ÁH‹U\ÈH‹E\ĞH‰\ÆH‰\Ï\è\ÚÿÿH‹U\àH‹E\ØH‰\ÖH‰\Ç\è5\ÛÿÿH‹E\èdH3%(\0\0\0t3\ë,H‰\Ç\è+\ÚÿÿH‹E\ØH‰\Ç\è¯\Üÿÿ\èZ\İÿÿH‰\Ã\è\Ò\İÿÿH‰\ØH‰\Ç\è7\Şÿÿ\èb\ÜÿÿHƒ\Ä8[]\ÃUH‰\åH‰}øHƒ}ø\0”À]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞdH‹%(\0\0\0H‰E\è1ÀHE\ØH‰\Ç\è6\0\0\0H‹E\ØH‹U\ĞHƒ\ìSH‰\ÖH‰\Ç\è(\0\0\0Hƒ\ÄH‹M\èdH3%(\0\0\0t\è\í\ÛÿÿH‹]ø\É\ÃUH‰\åH‰}ø]\ÃUH‰\åH‰}øH‰uğH‹UğH‹EøH)\ÂH‰\Ğ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\0\0º0\Õ@\0H‹E\èH‰H‹E\èHƒÀ¾\Õ@\0H‰\Ç\è\ÜÿÿH‹E\èHƒÀ8¾\Õ@\0H‰\Ç\è\Üÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è$\n\0\0H‰\ØH‰\Ç\è%\İÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÙTa\0\èG\Üÿÿº\èRa\0¾\ÙTa\0¿€(@\0\èc\Úÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è¹\0\0º¸\Õ@\0H‹E\èH‰H‹E\èHƒÀ¾˜\Õ@\0H‰\Ç\èP\ÛÿÿH‹E\èHƒÀ8¾\Õ@\0H‰\Ç\è;\Ûÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è^	\0\0H‰\ØH‰\Ç\è_\ÜÿÿHƒ\Ä[]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞH‹E\ĞH‰E\èH‹E\è‹@H˜H‰\Ç\è.\×ÿÿH‰\ÂH‹E\èH‰PH‹E\è‹X‰\Ø\ë H‰\Ç\è\à\×ÿÿH‹E\èH\Ç@\0\0\0\0»\0\0\0\0\èŠ\Ûÿÿ\ë\ÜHƒ\Ä([]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ÚTa\0\è\Z\Ûÿÿº\èRa\0¾\ÚTa\0¿€(@\0\è6\Ùÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åH‹sŠ\0\0H…À•À¶À]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\èE\Ûÿÿ\É\ÃUH‰\åH‰}ø‰uô‹UôH‹EøğÁ‰\Ğ]\ÃUH‰\åH‰}\è‰u\äH‹E\è‹\0‰EüH‹E\è‹‹E\ä\ÂH‹E\è‰‹Eü]\ÃUH‰\åHƒ\ìH‰}ø‰uô\èmÿÿÿ…À•À„Àt‹UôH‹Eø‰\ÖH‰\Ç\èÿÿÿ\ë‹UôH‹Eø‰\ÖH‰\Ç\è•ÿÿÿ\É\ÃUH‰\åSHƒ\ìxH‰}ˆdH‹%(\0\0\0H‰E\è1ÀHEH‰\Ç\è!\0\0H‹EˆHPHEH‰\ÆH‰\×\è1\"\0\0HEH‰\Ç\è‡!\0\0H‹EˆH\Ç\0\0\0\0\0H‹EˆH\Ç@\0\0\0\0H‹Eˆ\Ç@\0\0\0\0H‹E\èdH3%(\0\0\0t!\ë\ZH‰\ÃHEH‰\Ç\èD!\0\0H‰\ØH‰\Ç\èC\Úÿÿ\èn\ØÿÿHƒ\Äx[]ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\è\à!\0\0ƒğ„ÀtH‹EøHƒÀH‰\Ç\è\ã!\0\0\ë\×H‹EøHƒÀH‰\Ç\è \0\0\É\ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\èH‰\Ç\è½\ØÿÿH‹E\èHƒÀ H‰\Ç\è­\ØÿÿH‹E\èH‹U\àH‰\ÖH‰\Ç\èº\ÔÿÿH‹E\èH‹U\èHƒ\Â H‰\ÆH‰\×\è£\ÔÿÿH‹E\èH‹U\ØH‰P@\ë*H‰\ÃH‹E\èHƒÀ H‰\Ç\èò\ÕÿÿH‹E\èH‰\Ç\è\æ\ÕÿÿH‰\ØH‰\Ç\è[\ÙÿÿHƒ\Ä([]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹UğH‰\ÖH‰\Ç\è,!\0\0„ÀtH‹EøH‰\Ç\èA\Øÿÿ\ë2H‹EøHP H‹EğH‰\ÆH‰\×\è!\0\0„ÀtH‹EøHƒÀ H‰\Ç\è\Øÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹UğH‰\ÖH‰\Ç\è´÷ÿÿ„ÀtH‹EøH‰\Ç\è\×\×ÿÿ\ë2H‹EøHP H‹EğH‰\ÆH‰\×\è‹÷ÿÿ„ÀtH‹EøHƒÀ H‰\Ç\èª\×ÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹UğH‰\ÖH‰\Ç\èJ÷ÿÿ„ÀtH‹EøH‰\Ç\èm\×ÿÿ\ë2H‹EøHP H‹EğH‰\ÆH‰\×\è!÷ÿÿ„ÀtH‹EøHƒÀ H‰\Ç\è@\×ÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åSHƒ\ì8H‰}\ØH‰uĞ‰ĞˆE\ÌdH‹%(\0\0\0H‰E\è1ÀH‹E\ØH‹@@H…Àu¸ÿÿÿÿ\ëV¶EÌƒğ„ÀtH‹E\ØH‹@@H‹U\ĞH‰\×ÿ\Ğ\ë8H‹E\ØHH@HU\ĞHE\àH‰\ÎH‰\Ç\è\" \0\0HE\àH‰\Ç\èˆ\×ÿÿHE\àH‰\Ç\è\\\0\0¸\0\0\0\0H‹M\èdH3%(\0\0\0t!\ë\ZH‰\ÃHE\àH‰\Ç\è7\0\0H‰\ØH‰\Ç\è\\\×ÿÿ\è‡\ÕÿÿHƒ\Ä8[]\ÃUH‰\åHƒ\ì H‰}\èHƒ}\è\0u¸ÿÿÿÿ\ë;H‹E\èH‰Eø¾$\Ö@\0¿`Sa\0\è\ï\ÔÿÿH‰\ÂH‹EøH‰\ÆH‰\×\è\İ\Ôÿÿ¾ $@\0H‰\Ç\èğ\Ôÿÿ¸\0\0\0\0\ÉÃUH‰\åSH\ì˜\0\0\0H‰½hÿÿÿdH‹%(\0\0\0H‰E\è1ÀºX\×@\0H‹…hÿÿÿH‰H‹…hÿÿÿHƒÀH‰\Ç\è¤\ÕÿÿH‹…hÿÿÿHƒÀ8H‰\Ç\è‘\ÕÿÿH‹…hÿÿÿHƒÀhH‰\Ç\è~\ÕÿÿH‹…hÿÿÿHˆ\0\0\0H‰\Ç\èi\ÕÿÿH‹…hÿÿÿH°\0\0\0H‰\Ç\è\à\0\0H‹…hÿÿÿH\È\0\0\0H‰\Ç\è\Ë\0\0H‹…hÿÿÿH\à\0\0\0H‰\Ç\è \0\0H‹…hÿÿÿHø\0\0\0H‰\Ç\èa \0\0H‹…hÿÿÿH\0\0H‰\Ç\èL \0\0H‹\é!\0HƒÀH‰\Ş!\0H‹\×!\0H‹…hÿÿÿH‰PH‹…hÿÿÿ\Ç@\0\0\0\0H‹…hÿÿÿ\Ç@\0\0\0\0H‹…hÿÿÿHÇ€¨\0\0\0ÿÿÿÿH‹…hÿÿÿHƒÀ¾1\Ö@\0H‰\Ç\èf\ÔÿÿH‹…hÿÿÿHPH‹…hÿÿÿHƒÀ8H‰\ÖH‰\Ç\è•\ĞÿÿH‹^!\0HE€H‰\ÖH‰\Ç\è>òÿÿH‹…hÿÿÿHPHE€H‰\ÆH‰\×\è\Õ\ÓÿÿHE€H‰\Ç\è\É\ÑÿÿH…ÿÿÿH‰\Ç\èJ\ÕÿÿH•ÿÿÿHE ¾8\Ö@\0H‰\Ç\èò\ÓÿÿHM H‹…hÿÿÿº°P@\0H‰\ÎH‰\Ç\è	\0\0HE H‰\Ç\è{\ÑÿÿH…ÿÿÿH‰\Ç\èü\ÒÿÿH…ÿÿÿH‰\Ç\è\í\ÔÿÿH•ÿÿÿHEÀ¾C\Ö@\0H‰\Ç\è•\ÓÿÿHMÀH‹…hÿÿÿº6@\0H‰\ÎH‰\Ç\è¬\0\0HEÀH‰\Ç\è\ÑÿÿH…ÿÿÿH‰\Ç\èŸ\ÒÿÿH‹…hÿÿÿ¾\0\0\0\0H‰\Ç\è±\0\0H‹…hÿÿÿHƒÀXH‰\Ç\è\Òÿÿ\è\ÑÿÿH‰\ÂH‹…hÿÿÿH‰P`H‹E\èdH3%(\0\0\0„*\0\0\é \0\0H‰\ÃHE€H‰\Ç\è­\Ğÿÿ\ëMH‰\ÃHE H‰\Ç\èœ\Ğÿÿ\ëH‰\ÃH…ÿÿÿH‰\Ç\è\Òÿÿ\ë(H‰\ÃHEÀH‰\Ç\èw\Ğÿÿ\ëH‰\ÃH…ÿÿÿH‰\Ç\èó\Ñÿÿ\ëH‰\ÃH‹…hÿÿÿH\0\0H‰\Ç\è1\Z\0\0H‹…hÿÿÿHø\0\0\0H‰\Ç\è\Z\0\0H‹…hÿÿÿH\à\0\0\0H‰\Ç\è\ë\0\0H‹…hÿÿÿH\È\0\0\0H‰\Ç\èº\0\0H‹…hÿÿÿH°\0\0\0H‰\Ç\è¥\0\0H‹…hÿÿÿHˆ\0\0\0H‰\Ç\è\à\ÏÿÿH‹…hÿÿÿHƒÀhH‰\Ç\è\Í\ÏÿÿH‹…hÿÿÿHƒÀ8H‰\Ç\èº\ÏÿÿH‹…hÿÿÿHƒÀH‰\Ç\è§\ÏÿÿH‰\ØH‰\Ç\è\Óÿÿ\èG\ÑÿÿHÄ˜\0\0\0[]ÃUH‰\åHƒ\ìH‰}øºX\×@\0H‹EøH‰H‹EøH°\0\0\0H‰\Ç\è~\0\0H‹EøH\à\0\0\0H‰\Ç\è”\0\0H‹EøH‰\Ç\è\Î\0\0H‹EøH\È\0\0\0H‰\Ç\èN\0\0H‹Eø¾\0\0\0\0H‰\Ç\è\0\0H‹EøHø\0\0\0H‰\Ç\è{\0\0H‹EøH‰\Ç\è\Ë\0\0H‹EøH\0\0H‰\Ç\è]\0\0H‹EøH\0\0H‰\Ç\è\Ç\0\0H‹EøHø\0\0\0H‰\Ç\èµ\0\0H‹EøH\à\0\0\0H‰\Ç\è‡\0\0H‹EøH\È\0\0\0H‰\Ç\èY\0\0H‹EøH°\0\0\0H‰\Ç\èG\0\0H‹EøHˆ\0\0\0H‰\Ç\è…\ÎÿÿH‹EøHƒÀhH‰\Ç\èu\ÎÿÿH‹EøHƒÀ8H‰\Ç\èe\ÎÿÿH‹EøHƒÀH‰\Ç\èU\Îÿÿ\É\ÃUH‰\åAUATSHƒ\ìH‰}\ØH‰u\ĞHƒ}\Ğ\0tqH‹E\ĞH‹XH‹E\ĞL`8H‹E\ĞLh¾J\Ö@\0¿`Sa\0\è_\ÏÿÿL‰\îH‰\Ç\è\Ïÿÿ¾P\Ö@\0H‰\Ç\èG\ÏÿÿL‰\æH‰\Ç\èü\Îÿÿ¾X\Ö@\0H‰\Ç\è/\ÏÿÿH‰\ŞH‰\Ç\è”\Ñÿÿ¾ $@\0H‰\Ç\è7\Ïÿÿ\ëoH‹E\ØH‹XH‹E\ØL`8H‹E\ØLh¾J\Ö@\0¿`Sa\0\è\î\ÎÿÿL‰\îH‰\Ç\è£\Îÿÿ¾P\Ö@\0H‰\Ç\è\Ö\ÎÿÿL‰\æH‰\Ç\è‹\Îÿÿ¾X\Ö@\0H‰\Ç\è¾\ÎÿÿH‰\ŞH‰\Ç\è#\Ñÿÿ¾ $@\0H‰\Ç\è\Æ\ÎÿÿHƒ\Ä[A\\A]]ÃUH‰\åHƒ\ì H‰}\èH‰u\àdH‹%(\0\0\0H‰Eø1ÀHƒ}\à\0tFH‹E\àH‰EğH‹E\èH°\0\0\0HEğH‰\ÆH‰\×\è¤\0\0H‹E\èH‰EğH‹E\àH\È\0\0\0HEğH‰\ÆH‰\×\è‚\0\0\ë\"H‹E\èH‰EğH‹E\èH°\0\0\0HEğH‰\ÆH‰\×\è^\0\0H‹EødH3%(\0\0\0t\èW\Îÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH°\0\0\0HEğH‰\ÆH‰\×\èf\0\0\ÉÃUH‰\åHƒ\ì H‰}\èH‹E\èH\È\0\0\0H‰\Ç\èx\0\0ƒğ„Àt@H‹E\èH\È\0\0\0H‰\Ç\è{\0\0H‹\0H‰EøH‹U\èH‹EøH‰\ÖH‰\Ç\èÿÿÿH‹E\èH\È\0\0\0H‰\Ç\è©\0\0ë§\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHPH‹EğH‰\ÆH‰\×\èb\0\0„ÀtH‹EøHƒÀH‰\Ç\ès\Îÿÿ\ë2H‹EøHP8H‹EğH‰\ÆH‰\×\è5\0\0„ÀtH‹EøHƒÀ8H‰\Ç\èF\Îÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHPH‹EğH‰\ÆH‰\×\è\â\íÿÿ„ÀtH‹EøHƒÀH‰\Ç\è\Îÿÿ\ë2H‹EøHP8H‹EğH‰\ÆH‰\×\èµ\íÿÿ„ÀtH‹EøHƒÀ8H‰\Ç\è\Ô\Íÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHPH‹EğH‰\ÆH‰\×\èp\íÿÿ„ÀtH‹EøHƒÀH‰\Ç\è\Íÿÿ\ë2H‹EøHP8H‹EğH‰\ÆH‰\×\èC\íÿÿ„ÀtH‹EøHƒÀ8H‰\Ç\èb\Íÿÿ\ë¸\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}ø‰uôH‹EøH‹P‹EôH˜H9\ÂuH‹EøHƒÀH‰\Ç\è\'\Íÿÿ\ë¸\0\0\0\0\É\ÃUH‰\åSH\ì˜\0\0\0H‰½xÿÿÿH‰µpÿÿÿH‰•hÿÿÿdH‹%(\0\0\0H‰E\è1ÀH‹•pÿÿÿHE€H‰\ÖH‰\Ç\è¸\ÉÿÿH‹•hÿÿÿHM€HE H‰\ÎH‰\Ç\è°óÿÿHE€H‰\Ç\è\ÊÿÿH‹…xÿÿÿH\à\0\0\0HE H‰\ÆH‰\×\è\ç\Z\0\0»\0\0\0HE H‰\Ç\è\è\0\0‰\ØH‹M\èdH3%(\0\0\0t;\ë4H‰\ÃHE€H‰\Ç\è\Â\ÉÿÿH‰\ØH‰\Ç\è7\ÍÿÿH‰\ÃHE H‰\Ç\è¬\0\0H‰\ØH‰\Ç\è\Íÿÿ\èH\ËÿÿHÄ˜\0\0\0[]\ÃUH‰\åHƒ\ì H‰}\èH‰u\àdH‹%(\0\0\0H‰Eø1ÀH‹E\èHø\0\0\0HE\àH‰\ÆH‰\×\è}\Z\0\0H‹E\èH‰EğH‹E\àH\0\0HEğH‰\ÆH‰\×\èŸ\Z\0\0H‹EødH3%(\0\0\0t\è\Î\Êÿÿ\É\ÃUH‰\åHƒ\ì0H‰}\ØH‰u\ĞdH‹%(\0\0\0H‰Eø1ÀH‹E\ĞH…Àt>H‹E\ØH‰E\èH‹E\ĞH\0\0HE\èH‰\ÆH‰\×\èˆ\Z\0\0H‹E\ØHø\0\0\0HE\ĞH‰\ÆH‰\×\èn\Z\0\0\ëhH‹E\ØHø\0\0\0H‰\Ç\è\0\0ƒğ„ÀtOH‹E\ØHø\0\0\0H‰\Ç\è‘\0\0H‹\0H‰EğH‹E\ØH‰E\èH‹EğH\0\0HE\èH‰\ÆH‰\×\è\Z\0\0H‹E\ØHø\0\0\0H‰\Ç\è°\0\0\ë˜H‹EødH3%(\0\0\0t\è\ê\Éÿÿ\É\ÃUH‰\åHƒ\ì0H‰}\ØdH‹%(\0\0\0H‰Eø1ÀH‹E\ØH\0\0H‰\Ç\èõ\Z\0\0ƒğ„ÀtOH‹E\ØH\0\0H‰\Ç\èø\Z\0\0H‹\0H‰EğH‹E\ØH‰E\èH‹EğHø\0\0\0HE\èH‰\ÆH‰\×\è\0\0H‹E\ØH\0\0H‰\Ç\è\0\0ë˜H‹EødH3%(\0\0\0t\èP\Éÿÿ\É\ÃUH‰\åATSHƒ\ìPH‰}¨dH‹%(\0\0\0H‰E\è1À\ÇE¼\0\0\0\0HEÀH‰\Ç\è)\0\0H‹E¨H°\0\0\0H‰\Ç\è-\0\0H‰EÀH‹E¨H°\0\0\0H‰\Ç\èc\0\0H‰E\ĞHU\ĞHEÀH‰\ÖH‰\Ç\è”\0\0„À„¨\0\0\0HEÀH‰\Ç\è\Â\0\0H‹\0H‰E\àH‹E\àH‹\0H‹\0H‹U\àH‰\×ÿ\ĞI‰\ÄH‹E\àHXƒE¼H‹E¨HƒÀH‰Æ¿`Sa\0\è\ì\Çÿÿ¾]\Ö@\0H‰\Ç\è\ÈÿÿH‰Â‹E¼‰\ÆH‰\×\è\Êÿÿ¾]\Ö@\0H‰\Ç\è\ÈÿÿH‰\ŞH‰\Ç\è·\ÇÿÿL‰\æH‰\Ç\è\Çÿÿ¾ $@\0H‰\Ç\èÿ\ÇÿÿHEÀH‰\Ç\è\0\0\é\'ÿÿÿH‹E¨HƒÀH‰Æ¿`Sa\0\èy\Çÿÿ¾_\Ö@\0H‰\Ç\è¬\ÇÿÿH‰Â‹E¼‰\ÆH‰\×\èœ\Éÿÿ¾ $@\0H‰\Ç\è¯\Çÿÿ‹E¼H‹M\èdH3%(\0\0\0t\è\Ø\ÇÿÿHƒ\ÄP[A\\]ÃUH‰\åATSHƒ\ì@H‰}¸dH‹%(\0\0\0H‰E\è1À\ÇE\Ì\0\0\0\0HE\ĞH‰\Ç\è«\Z\0\0H‹E¸H\à\0\0\0H‰\Ç\è¯\Z\0\0H‰E\ĞH‹E¸H\à\0\0\0H‰\Ç\è\å\Z\0\0H‰E\àHU\àHE\ĞH‰\ÖH‰\Ç\è\0\0„À„\0\0\0HE\ĞH‰\Ç\èD\0\0H‹@@H…À•À¶\ØHE\ĞH‰\Ç\è+\0\0I‰ÄƒE\ÌH‹E¸HƒÀH‰Æ¿`Sa\0\èu\Æÿÿ¾]\Ö@\0H‰\Ç\è¨\ÆÿÿH‰Â‹EÌ‰\ÆH‰\×\è˜\Èÿÿ¾]\Ö@\0H‰\Ç\è‹\ÆÿÿL‰\æH‰\Ç\è@\Æÿÿ‰\ŞH‰\Ç\è\Æ\Èÿÿ¾ $@\0H‰\Ç\è‰\ÆÿÿHE\ĞH‰\Ç\è—\Z\0\0\é1ÿÿÿH‹E¸HƒÀH‰Æ¿`Sa\0\è\Æÿÿ¾s\Ö@\0H‰\Ç\è6\ÆÿÿH‰Â‹EÌ‰\ÆH‰\×\è&\Èÿÿ¾ $@\0H‰\Ç\è9\Æÿÿ‹E\ÌH‹M\èdH3%(\0\0\0t\èb\ÆÿÿHƒ\Ä@[A\\]ÃUH‰\åHƒ\ìH‰}øH‹EøHˆ\0\0\0H‰\Ç\è*\ÇÿÿH…À•À„Àt$H‹EøHˆ\0\0\0H‰Æ¿`Sa\0\èy\Åÿÿ¾ $@\0H‰\Ç\è\Ì\Åÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀhH‰\Ç\è\Ü\ÆÿÿH…À•À„Àt\"H‹EøHƒÀhH‰Æ¿`Sa\0\è-\Åÿÿ¾ $@\0H‰\Ç\è€\Åÿÿ\ÉÃUH‰\åHƒ\ì0H‰}øH‰uğH‰U\èH‰M\àL‰E\ØD‰ÈˆE\ÔD¶E\ÔH‹}\ØH‹M\àH‹U\èH‹uğH‹EøE‰ÁI‰øH‰\Ç\è\0\0\0\ÉÃUH‰\åSHƒ\ìxH‰}¨H‰u H‰U˜H‰ML‰EˆD‰ÈˆE„dH‹%(\0\0\0H‰E\è1À\ÇE¼ÿÿÿÿHƒ} \0uH‹E¨¾\0\0\0\0H‰\Ç\èÿ\0\0\é\ì\0\0H‹E H°\0\0\0H‰\Ç\èx\0\0„Àt\n¸ÿÿÿÿ\é\Ì\0\0HEÀH‰\Ç\èú\0\0H‹E H°\0\0\0H‰\Ç\èş\0\0H‰EÀH‹E H°\0\0\0H‰\Ç\è4\0\0H‰E\ĞHU\ĞHEÀH‰\ÖH‰\Ç\èe\0\0„À„\0\0HEÀH‰\Ç\è“\0\0H‹\0H‰E\àHƒ}˜\0t1H‹E˜H‰\Ç\è\Æÿÿƒğ„ÀtH‹U˜H‹E\àH‰\ÖH‰\Ç\è÷ÿÿ…Àt¸\0\0\0\ë¸\0\0\0\0„Àt]Hƒ}\0t\ZH‹EH‰\Ç\è\Ğ\Åÿÿƒğ„Àt¸\0\0\0\ë¸\0\0\0\0„Àt¶M„H‹UˆH‹uH‹E\àH‰\Ç\è\ß\0\0‰E¼\ëqH‹E\à¾\0\0\0\0H‰\Ç\è\Û\0\0‰E¼\ë[Hƒ}\0t\ZH‹EH‰\Ç\ès\Åÿÿƒğ„Àt¸\0\0\0\ë¸\0\0\0\0„Àt¶M„H‹UˆH‹uH‹E\àH‰\Ç\è‚\0\0‰E¼\ëH‹E\à¾\0\0\0\0H‰\Ç\è~\0\0‰E¼HEÀH‰\Ç\èg\0\0\é²şÿÿƒ}¼ÿu!Hƒ}\0t\ZH‹EH‰\Ç\è\Åÿÿƒğ„Àt¸\0\0\0\ë¸\0\0\0\0„Àt)¶]„H‹EH‰\Ç\èúÀÿÿH‰\ÂH‹E¨‰Ù¾C\Ö@\0H‰\Ç\è\Ø\0\0‰E¼‹E¼H‹]\èdH3%(\0\0\0t\è\Z\ÃÿÿHƒ\Äx[]ÃUH‰\åSH\ì\Ø\0\0\0H‰½HÿÿÿH‰µ@ÿÿÿH‰•8ÿÿÿH‰0ÿÿÿL‰…(ÿÿÿD‰Èˆ…$ÿÿÿdH‹%(\0\0\0H‰E\è1ÀH…_ÿÿÿH‰\Ç\èœ\ÄÿÿH•_ÿÿÿH‹8ÿÿÿH…`ÿÿÿH‰\ÎH‰\Ç\è<\ÃÿÿH…_ÿÿÿH‰\Ç\èm\ÂÿÿH…_ÿÿÿH‰\Ç\è^\ÄÿÿH•_ÿÿÿH‹0ÿÿÿHE€H‰\ÎH‰\Ç\è\ÃÿÿH…_ÿÿÿH‰\Ç\è2\Âÿÿ¶$ÿÿÿHU€HEÀH‰\ÖH‰\Ç\èÀÿÿH•`ÿÿÿHE H‰\ÖH‰\Ç\èò¿ÿÿH‹½(ÿÿÿHMÀHU H‹µ@ÿÿÿH‹…HÿÿÿA‰\ÙI‰øH‰\Ç\è;üÿÿ‰\ÃHE H‰\Ç\è9ÀÿÿHEÀH‰\Ç\è-ÀÿÿHE€H‰\Ç\è!ÀÿÿH…`ÿÿÿH‰\Ç\èÀÿÿ‰\ØH‹M\èdH3%(\0\0\0„ƒ\0\0\0\ë|H‰\ÃH…_ÿÿÿH‰\Ç\èyÁÿÿH‰\ØH‰\Ç\è^\ÃÿÿH‰\ÃH…_ÿÿÿH‰\Ç\è\\Áÿÿ\ë1H‰\ÃHE H‰\Çè»¿ÿÿ\ëH‰\ÃHEÀH‰\Çèª¿ÿÿ\ëH‰\ÃHE€H‰\Çè™¿ÿÿH…`ÿÿÿH‰\ÇèŠ¿ÿÿH‰\ØH‰\Ç\èÿ\Âÿÿ\è*ÁÿÿH\Ä\Ø\0\0\0[]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹\0HƒÀH‹\0H‹MğH‹UøH‰\ÎH‰\×ÿ\Ğ\É\ÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰UÈ‰ÈˆE\ÄdH‹%(\0\0\0H‰E\è1ÀH‹E\ĞH…Àu¸ÿÿÿÿ\ëN¶EÄƒğ„ÀtH‹E\ĞH‹U\ÈH‰\×ÿ\Ğ\ë4HU\ÈHM\ĞHE\àH‰\ÎH‰\Ç\è\Ô\n\0\0HE\àH‰\Ç\è:\ÂÿÿHE\àH‰\Ç\è\0\0¸\0\0\0\0H‹u\èdH34%(\0\0\0t!\ë\ZH‰\ÃHE\àH‰\Ç\è\é\0\0H‰\ØH‰\Ç\è\Âÿÿ\è9ÀÿÿHƒ\Ä8[]\ÃUH‰\åSHƒ\ìhH‰}¨H‰u H‰U˜‰ÈˆE”dH‹%(\0\0\0H‰E\è1À¶]”HE¿H‰\Ç\è\ÙÁÿÿH‹E H‰\Ç\è]ÀÿÿH‰ÁHU¿HEÀH‰\ÎH‰\Ç\èwÀÿÿH‹U˜HuÀH‹E¨‰\ÙH‰\Ç\è{\0\0‰\ÃHEÀH‰\Ç\è¾ÿÿHE¿H‰\Çè‡¿ÿÿ‰\ØH‹M\èdH3%(\0\0\0t2\ë+H‰\ÃHEÀH‰\Ç\èÕ½ÿÿ\ëH‰\ÃHE¿H‰\Ç\èT¿ÿÿH‰\ØH‰\Ç\è9Áÿÿ\èd¿ÿÿHƒ\Äh[]ÃUH‰\åSH\ìˆ\0\0\0H‰}ˆH‰u€H‰•xÿÿÿ‰Èˆ…tÿÿÿdH‹%(\0\0\0H‰E\è1ÀHEŸH‰\Ç\èşÀÿÿHUŸH‹M€HE H‰\ÎH‰\Çè§¿ÿÿHEŸH‰\Ç\èÛ¾ÿÿ¶tÿÿÿHU HEÀH‰\ÖH‰\Çè±¼ÿÿH‹•xÿÿÿHuÀH‹Eˆ‰\ÙH‰\Ç\è‚\0\0\0‰\ÃHEÀH‰\Ç\è\n½ÿÿHE H‰\Ç\èş¼ÿÿ‰\ØH‹M\èdH3%(\0\0\0tL\ëEH‰\ÃHEŸH‰\Ç\èl¾ÿÿH‰\ØH‰\Ç\èQÀÿÿH‰\ÃHEÀH‰\Ç\èÂ¼ÿÿ\ëH‰\ÃHE H‰\Çè±¼ÿÿH‰\ØH‰\Ç\è&Àÿÿ\èQ¾ÿÿHÄˆ\0\0\0[]ÃUH‰\åSH\ìˆ\0\0\0H‰}ˆH‰u€H‰•xÿÿÿ‰Èˆ…tÿÿÿdH‹%(\0\0\0H‰E\è1À\ÇEœÿÿÿÿH‹EˆH\à\0\0\0H‰\Ç\è\0\0„Àt\n¸ÿÿÿÿ\é\Ú\0\0\0HE H‰\Ç\è\ï\0\0H‹EˆH\à\0\0\0H‰\Ç\èó\0\0H‰E H‹EˆH\à\0\0\0H‰\Ç\è)\0\0H‰E°HU°HE H‰\ÖH‰\Ç\èZ\0\0„À„„\0\0\0H‹U€HEÀH‰\ÖH‰\Ç\èW»ÿÿHE H‰\Ç\èu\0\0H‰\ÂHEÀH‰\ÆH‰\×\è¹\æÿÿ…À•\ÃHEÀH‰\Çè¨»ÿÿ„\Ût-¶tÿÿÿHE H‰\Ç\è;\0\0H‰ÁH‹…xÿÿÿ‰\ÚH‰\ÆH‰\Ï\è\ä\æÿÿ‰EœHE H‰\Ç\èõ\0\0\éKÿÿÿ‹EœH‹M\èdH3%(\0\0\0t\èÿ¼ÿÿHÄˆ\0\0\0[]ÃUH‰\åSHƒ\ì(H‰}\è‰u\äH‰UØƒ}\ä\0t‹E\äH˜H‰\Çè¹ÿÿH‰\ÂH‹E\ØH‰‹]\ä‰\Ø\ëSH‰\Ç\èTºÿÿ¾ˆ\Ö@\0¿`Sa\0\èE¼ÿÿH‰Â‹E\ä‰\ÆH‰\×\è5¾ÿÿ¾ $@\0H‰\Ç\èH¼ÿÿ»\0\0\0\0\èŞ½ÿÿ\ë¼H‰\Ã\èÔ½ÿÿH‰\ØH‰\Ç\è9¾ÿÿHƒ\Ä([]\ÃUH‰\åHƒ\ì0H‰}\è‰u\äH‰UØ‰M\àD‰ÀˆE\ÔdH‹%(\0\0\0H‰Eø1ÀH\ÇEğ\0\0\0\0‹E\ä;E\à|‹E\ä\ë}HUğ‹M\àH‹E\è‰\ÎH‰\Ç\èÿÿÿ‰E\àH‹EğH…Àt‹E\à;E\ä‹E\ä\ëO€}\Ô\0t(H‹E\ØH‹\0H…Àt‹E\äHc\ĞH‹E\ØH‹H‹EğH‰\ÎH‰\Ç\èÆºÿÿH‹U\ØH‹E\èH‰\ÖH‰\Ç\è%\0\0\0H‹UğH‹E\ØH‰‹E\àH‹uødH34%(\0\0\0tè‘»ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğHƒ}ğ\0t2H‹EğH‹\0H…Àt&H‹EğH‹\0H…ÀtH‹EğH‹\0H‰\Çè°»ÿÿH‹EğH\Ç\0\0\0\0\0\É\ÃUH‰\åH‰}øH‹EøH‹@]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‹Eø¾\0\0\0\0H‰\Ç\è\ëÿÿH‹Eø\ÉÃUH‰\åH‰}øH‹Eø‹@]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøHƒÀH‰Æ¿`Sa\0\è\'ºÿÿ¾¢\Ö@\0H‰\Ç\èZºÿÿ¸\0\0\0\0\ÉÃUH‰\åH‰}øH‰uğ¸ÿÿÿÿ]ÃUH‰\åH‰}øH‰uğ¸\0\0\0\0]ÃUH‰\åH‰}øH‰uğ¸\0\0\0\0]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\èTa\0\èp»ÿÿº\èRa\0¾\èTa\0¿€(@\0èŒ¹ÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åH‰}øH‰uğH‹Eğ]\ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹PH‹EğH‹@H9\Ât.H‹EøH‹@¶\0<*t&H‹EğH‹PH‹EøH‹@H‰\ÖH‰\Çèƒºÿÿ…Àu¸\0\0\0\ë¸\0\0\0\0\ÉÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0]\ÃUH‰\åHƒ\ì H‰}ğH‰u\àH‹U\àH‹EğH‰\ÖH‰\Ç\è¯\ßÿÿ…À•À\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\0„Àt\èo¶ÿÿ\É\ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀHEğH‰\Ç\èuÿÿÿH‹UğH‹E\èH‰\ÖH‹8\èxÿÿÿƒğH‹MødH3%(\0\0\0t\è\ë¸ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\èL\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Èÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øº \×@\0H‹EøH‰H‹EøHƒÀH‰\Ç\è¼ÿÿÿ¸\0\0\0\0…ÀtH‹EøH‰\Ç\èÿ·ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¨ÿÿÿH‹EøH‰\Ç\èØ·ÿÿ\É\ÃUH‰\åH‰}øH}øÿ\0\0w¸\0\0\0º\0\0\0\0H÷uø\ë¸\0\0\0]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Ê\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èl\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è°\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èô\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀ H‰\Ç\è\àµÿÿH‹EøH‰\Ç\èÔµÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‹\0H…ÀtH‹EøH‹\0H‰\Ç\è‘\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\ÉÃUH‰\åSHƒ\ìhH‰}˜dH‹%(\0\0\0H‰E\è1ÀH‹E˜H‰\Ç\èô\0\0H‰\ÃHEÀH‹U˜H‰\ÖH‰\Ç\è°\0\0HE H‹U˜H‰\ÖH‰\Ç\èo\0\0HUÀHu H‹E˜H‰\ÙH‰\Ç\è\r\0\0H‹E˜H‰\Ç\è\ä\0\0H‹E\èdH3%(\0\0\0tè±¶ÿÿHƒ\Äh[]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\ÖÿÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è\ê\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\r\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\r\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\èR³ÿÿ…À”À\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\èRşÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Èÿÿÿ\ÉÃUH‰\åSHƒ\ìhH‰}¨H‰u H‰U˜dH‹%(\0\0\0H‰E\è1ÀH‹E¨H‰\Ç\è\âûÿÿH‹E˜H‰\Ç\èyÿÿÿH‰\ÃH‹E H‰\Ç\è\\ÿÿÿH‰ÁHE\ĞH‰\ÚH‰\ÎH‰\Ç\èR\0\0HEÀHU\ĞH‹M¨H‰\ÎH‰\Ç\è¡\0\0HUÀHE°H‰\ÖH‰\Ç\èø\0\0HM°H‹E¨º`$@\0H‰\ÎH‰\Çè´ÿÿHE°H‰\Ç\è<üÿÿHEÀH‰\Ç\è*ÿÿÿH‹E\èdH3%(\0\0\0t-\ë&H‰\ÃHE°H‰\Ç\èüÿÿHEÀH‰\Ç\èışÿÿH‰\ØH‰\Çè¶ÿÿè»´ÿÿHƒ\Äh[]\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èª\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èª\0\0H‹EøH‰\Ç\èÀÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\ì\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èø\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èø\0\0H‹EøH‰\Ç\èÀÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è:\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èF\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èF\0\0H‹EøH‰\Ç\èÀÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Â\r\0\0H‹EøH‰\Ç\è|\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èH\0\0H‹EøH‰\Ç\èŒ\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Î\0\0H‹EøH‰\Ç\èœ\0\0\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹E\àH‰\Ç\è\ÔÿÿÿH‰\ÃH‹E\èH‰\Ç\èP\0\0H‰ÁH‹E\èH‰\ÚH‰\ÎH‰\Ç\è\0\0Hƒ\Ä[]ÃUH‰\åSHƒ\ìXH‰}¨H‰u dH‹%(\0\0\0H‰E\è1ÀH‹E¨H‰\Ç\èº\0\0H‰E°H‹E¨H‰\Ç\èö\0\0H‰EÀH‹EÀH‰E\ĞHUÀHE°H‰\ÖH‰\Ç\è\0\0„À„‹\0\0\0H‹E°H‰E\àHE\àH‰\Ç\è%\0\0HE°H‰\Ç\è9\0\0H‹H‹E H‹\0H9\Â”À„ÀtJHE°H‰\Ç\è\0\0H‰\Ç\è*\0\0H‰\ÃH‹E H‰\Ç\è)\0\0H9\Ã•À„ÀtH‹U°H‹E¨H‰\ÖH‰\Ç\è\0\0\ëH‹E°H‰E\ĞH‹E\àH‰E°\éZÿÿÿHUÀHE\ĞH‰\ÖH‰\Ç\èy\0\0„ÀtH‹U\ĞH‹E¨H‰\ÖH‰\Ç\è\Ú\0\0H‹E\èdH3%(\0\0\0tè—±ÿÿHƒ\ÄX[]\ÃUH‰\åH‰}øH‹EøH‹H‹EøH9\Â”À]ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‰\Ç\è»\0\0H‰EğHEğH‰\Ç\è\Õ\0\0HEğH‰\Ç\è)\0\0H‹UødH3%(\0\0\0t\è±ÿÿ\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‹PHEğH‰\ÖH‰\Ç\è \0\0H‹UğH‹E\èH‰\ÖH‰\Ç\è\0\0H‹EødH3%(\0\0\0t\èÀ°ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‰\Ç\è\0\0H‰ÁH‹UğH‹EøH‰\ÎH‰\Ç\èl\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‰\Ç\èª\0\0H‰ÁH‹UğH‹EøH‰\ÎH‰\Ç\è\ê\0\0\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹E\àH‰\Ç\è\ÔÿÿÿH‰\ÃH‹E\èH‰\Ç\èV\0\0H‰ÁH‹E\èH‰\ÚH‰\ÎH‰\Ç\è\0\0Hƒ\Ä[]ÃUH‰\åSHƒ\ìXH‰}¨H‰u dH‹%(\0\0\0H‰E\è1ÀH‹E¨H‰\Ç\è,\0\0H‰E°H‹E¨H‰\Ç\èü\r\0\0H‰EÀH‹EÀH‰E\ĞHUÀHE°H‰\ÖH‰\Ç\èI\0\0„À„‹\0\0\0H‹E°H‰E\àHE\àH‰\Ç\èO\0\0HE°H‰\Ç\èc\0\0H‹H‹E H‹\0H9\Â”À„ÀtJHE°H‰\Ç\èC\0\0H‰\Ç\èP\0\0H‰\ÃH‹E H‰\Ç\èO\0\0H9\Ã•À„ÀtH‹U°H‹E¨H‰\ÖH‰\Ç\èA\0\0\ëH‹E°H‰E\ĞH‹E\àH‰E°\éZÿÿÿHUÀHE\ĞH‰\ÖH‰\Ç\è£\0\0„ÀtH‹U\ĞH‹E¨H‰\ÖH‰\Ç\è\0\0\0H‹E\èdH3%(\0\0\0t\èÍ®ÿÿHƒ\ÄX[]\ÃUH‰\åH‰}øH‹EøH‹H‹EøH9\Â”À]ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‰\Ç\èÁ\0\0H‰EğHEğH‰\Ç\èû\0\0HEğH‰\Ç\èS\0\0H‹UødH3%(\0\0\0t\èS®ÿÿ\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‹PHEğH‰\ÖH‰\Ç\è\Æ\0\0H‹UğH‹E\èH‰\ÖH‰\Ç\è)\0\0H‹EødH3%(\0\0\0t\èö­ÿÿ\É\ÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0]\ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‹HEğH‰\ÖH‰\Ç\èe\0\0H‹EğH‹MødH3%(\0\0\0tè•­ÿÿ\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹U\èHEğH‰\ÖH‰\Ç\è\0\0H‹EğH‹MødH3%(\0\0\0t\èL­ÿÿ\É\ÃUH‰\åH‰}øH‰uğH‹EøH‹H‹EğH‹\0H9\Â•À]\ÃUH‰\åH‰}øH‹EøH‹\0H‹H‹EøH‰H‹Eø]ÃUH‰\åH‰}øH‹EøH‹\0HƒÀ]ÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0]\ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‹HEğH‰\ÖH‰\Ç\èm\r\0\0H‹EğH‹MødH3%(\0\0\0tè“¬ÿÿ\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹U\èHEğH‰\ÖH‰\Ç\è$\r\0\0H‹EğH‹MødH3%(\0\0\0t\èJ¬ÿÿ\É\ÃUH‰\åH‰}øH‰uğH‹EøH‹H‹EğH‹\0H9\Â•À]\ÃUH‰\åH‰}øH‹EøH‹\0H‹H‹EøH‰H‹Eø]ÃUH‰\åHƒ\ìH‰}øH‹EøH‹\0HƒÀH‰\Ç\è\Ã\0\0\ÉÃUH‰\åH‰}øH‹EøH‹H‹EøH9\Â”À]ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀ¾ÿÿÿÿH‰\Ç\èX\Òÿÿƒø”À„ÀtMH‹EøH‹\0HƒÀH‹\0H‹UøH‰\×ÿ\ĞH‹EøHƒÀ¾ÿÿÿÿH‰\Ç\è\"\Òÿÿƒø”À„ÀtH‹EøH‹\0HƒÀH‹\0H‹UøH‰\×ÿĞ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è/\0\0H‹E\è¾\0\0\0\0H‰\Ç\èŒ\0\0\ë\ZH‰\ÃH‹E\èH‰\Ç\è©ÿÿÿH‰\ØH‰\Çèº¬ÿÿHƒ\Ä[]ÃUH‰\åHƒ\ìH‰}øH‹EøH‹\0H…ÀtAH‹EøH‹@HHPH‹EøH‹H(H‹EøH‰\ÎH‰\Ç\èù\r\0\0H‹EøH‹PH‹EøH‹H‹EøH‰\ÎH‰\Ç\è!\0\0H‹EøH‰\Ç\è1ÿÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğHPH‹EøH‰\ÖH‰\Ç\èC\0\0\0H‹Eø\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğHP0H‹EøH‰\ÖH‰\Ç\è\0\0\0H‹Eø\ÉÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‰uğH‹EğH‹H‹EøH‰H‹EğH‹PH‹EøH‰PH‹EğH‹PH‹EøH‰PH‹EğH‹PH‹EøH‰P]ÃUH‰\åHƒ\ìPH‰}\ÈH‰uÀH‰U¸H‰M°dH‹%(\0\0\0H‰Eø1ÀH‹EødH3%(\0\0\0tè†©ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è¾òÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\èl\r\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøHPH‹EøHƒÀ0H‰\ÖH‰\Ç\è£\r\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‹P0H‹EøH‹@8H9\Ât-H‹EøH‹@0HPøH‹EøH‰P0H‹EøH‹P0H‹EøH‰\ÖH‰\Ç\èv\r\0\0\ëH‹EøH‰\Ç\è\r\0\0\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Úÿÿÿ\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\ÕÿÿÿH‹H‹EøH‰\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è‘ÿÿÿH‰\Ç\è£ÿÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è ÿÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\è\Öÿÿÿ\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\ÕÿÿÿH‹H‹EøH‰\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\ècÿÿÿH‰\Ç\èiÿÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\èÿÿÿH‹EğH‰\Ç\ègÿÿÿH‰\Ç\è}ÿÿÿH‰\ÂH‹EøHƒÀH‰\ÖH‰\Ç\èvÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\èyÿÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\è·ÿÿÿ\É\ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\âğÿÿH‰\ÃH‹E\àH‰\Ç\è\ÅğÿÿH‰\Ç\è\0\0H‰ÁH‹E\èH‰\ÚH‰\ÎH‰\Ç\è-\r\0\0H‹E\èHƒ\Ä([]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØdH‹%(\0\0\0H‰Eø1ÀH‹E\ØH‰\Ç\è\ÃÿÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\è \r\0\0H‹E\èH‹MødH3%(\0\0\0t\èA¦ÿÿ\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\ÕÿÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\èx\r\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è´\r\0\0H‹EøH‰\Ç\è\æ\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è´\r\0\0\ÉÃUH‰\åHƒ\ì H‰}\èH‹E\èH‹\0H‰EğH‹E\èH;EğtFH‹EğH‰EøH‹EøH‹\0H‰EğH‹E\èH‰\Ç\è|\r\0\0H‰\ÂH‹EøH‰\ÆH‰\×\èx\r\0\0H‹UøH‹E\èH‰\ÖH‰\Ç\èu\r\0\0ë°\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è„\r\0\0H‹EøH‰\Ç\èp\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è„\r\0\0\ÉÃUH‰\åHƒ\ì H‰}\èH‹E\èH‹\0H‰EğH‹E\èH;EğtFH‹EğH‰EøH‹EøH‹\0H‰EğH‹E\èH‰\Ç\èL\r\0\0H‰\ÂH‹EøH‰\ÆH‰\×\èh\r\0\0H‹UøH‹E\èH‰\ÖH‰\Ç\èu\r\0\0ë°\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è„\r\0\0H‹EøH‰\Ç\èú\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è„\r\0\0\ÉÃUH‰\åHƒ\ì H‰}\èH‹E\èH‹\0H‰EğH‹E\èH;EğtFH‹EğH‰EøH‹EøH‹\0H‰EğH‹E\èH‰\Ç\èL\r\0\0H‰\ÂH‹EøH‰\ÆH‰\×\èH\r\0\0H‹UøH‹E\èH‰\ÖH‰\Ç\èE\r\0\0ë°\É\ÃUH‰\åHƒ\ìH‰}øH‹UøH‹EøH‰H‹UøH‹EøH‰PH‹Eø¾\0\0\0\0H‰\Ç\è8\r\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹UøH‹EøH‰H‹UøH‹EøH‰PH‹Eø¾\0\0\0\0H‰\Ç\è\r\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹UøH‹EøH‰H‹UøH‹EøH‰PH‹Eø¾\0\0\0\0H‰\Ç\è\0\r\0\0\ÉÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è‰úÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\è\æ\0\0H‰EøH‹U\àH‹EøH‰\ÖH‰\Ç\èóŸÿÿH‹E\è¾\0\0\0H‰\Ç\èP\r\0\0\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ì H‰}\èH‰u\àH‹E\è¾\0\0\0H‰\Ç\è5\r\0\0H‹E\àH‰\Ç\èõ£ÿÿH‹E\àH‰EøH‹E\èH‰\Ç\è“\n\0\0H‰\ÂH‹EøH‰\ÆH‰\×\è\n\0\0H‹E\èH‹UøH‰\ÖH‰\Ç\èŒ\n\0\0\ÉÃUH‰\åH‰}øH‹EøH‹\0H‹PH‹EøH‰H‹Eø]\ÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\ÒÿÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\è˜\0\0H‰EøH‹U\àH‹EøH‰\ÖH‰\Ç\èÇÿÿH‹E\è¾\0\0\0H‰\Ç\è\r\0\0\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹U\èHEğH‰\ÖH‰\Ç\è<\0\0H‹EğH‹MødH3%(\0\0\0t\è|¡ÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\ÒÿÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\èœ\0\0H‰EøH‹U\àH‹EøH‰\ÖH‰\Ç\èÿÿH‹E\è¾\0\0\0H‰\Ç\è\r\0\0\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\ÑÿÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\è\è\0\0H‰EøH‹U\àH‹EøH‰\ÖH‰\Çè§ÿÿH‹E\è¾\0\0\0H‰\Ç\èš\0\0\ÉÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‹HEğH‰\ÖH‰\Ç\è\0\0H‹EğH‹MødH3%(\0\0\0t\èY ÿÿ\ÉÃUH‰\åH‰}øH‰uğH‹EøH‹H‹EğH‹\0H9\Â•À]\ÃUH‰\åH‰}øH‹EøH‹\0H‹H‹EøH‰H‹Eø]ÃUH‰\åH‰}øH‹EøH‹\0HƒÀ]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åHƒ\ì H‰}\èH‰u\àH‹E\è¾\0\0\0H‰\Ç\èm\0\0H‹E\àH‰\Ç\è¡ÿÿH‹E\àH‰EøH‹E\èH‰\Ç\è\Ï\0\0H‰\ÂH‹EøH‰\ÆH‰\×\è\Ë\0\0H‹E\èH‹UøH‰\ÖH‰\Ç\è\È\0\0\ÉÃUH‰\åH‰}øH‹EøH‹\0H‹PH‹EøH‰H‹Eø]\ÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰]\ÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øHƒ}ø\0tH‹EøH‹\0HƒÀH‹\0H‹UøH‰\×ÿĞ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èø\0\0H‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EøHƒÀH‰\Ç\è\í\0\0H‹EøHƒÀ0H‰\Ç\è\İ\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èü\0\0\ÉÃUH‰\åSHƒ\ìHH‰}¸H‰u°dH‹%(\0\0\0H‰E\è1À¿\0\0\0\è\n\æÿÿH‰\ÃH‹E°º\0\0\0\0H÷óHƒÀH‰E\ĞH‹E\ĞHƒÀH‰E\ÈH\ÇEÀ\0\0\0HU\ÈHEÀH‰\ÖH‰\Ç\è›\0\0H‹H‹E¸H‰PH‹E¸H‹PH‹E¸H‰\ÖH‰\Ç\è¤\0\0H‰\ÂH‹E¸H‰H‹E¸H‹H‹E¸H‹@H+E\ĞH\Ñ\èHÁ\àH\ĞH‰E\ØH‹E\ĞH\Å\0\0\0\0H‹E\ØH\ĞH‰E\àH‹U\àH‹M\ØH‹E¸H‰\ÎH‰\Ç\è\Û\0\0H‹E¸HPH‹E\ØH‰\ÆH‰\×\èH\0\0H‹E\àHPøH‹E¸HƒÀ0H‰\ÖH‰\Ç\è-\0\0H‹E¸H‹PH‹E¸H‰PH‹E¸H‹X8¿\0\0\0\èı\äÿÿH‰ÁH‹E°º\0\0\0\0H÷ñH‰\ĞHÁ\àHH‹E¸H‰P0H‹E\èdH3%(\0\0\0t\\\ëUH‰\Çè§šÿÿH‹E¸H‹PH‹E¸H‹H‹E¸H‰\ÎH‰\Ç\è\0\0\0H‹E¸H\Ç\0\0\0\0\0H‹E¸H\Ç@\0\0\0\0è­ÿÿH‰\Ã\è%ÿÿH‰\ØH‰\ÇèŠÿÿèµœÿÿHƒ\ÄH[]\ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØH‹E\àH‰EøH‹EøH;E\ØsH‹EøH‹H‹E\èH‰\ÖH‰\Ç\èŒ\0\0HƒEø\ëÙ\É\ÃUH‰\åHƒ\ì0H‰}\èH‰u\àH‰U\ØdH‹%(\0\0\0H‰Eø1ÀHE÷H‹U\èH‰\ÖH‰\Ç\è€\0\0H‹U\ØH‹M\àHE÷H‰\ÎH‰\Ç\è¸\0\0HE÷H‰\Ç\è‘\0\0H‹EødH3%(\0\0\0t\èú›ÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞdH‹%(\0\0\0H‰E\è1ÀH‹E\ĞH‰\Ç\è\ÆÿÿÿH‰\ÂH‹E\ØHƒ\ìSH‰\ÖH‰\Ç\è\0\0Hƒ\ÄH‹E\èdH3%(\0\0\0tè›ÿÿH‹]ø\É\ÃUH‰\åH‰}øH‰uğH‹EøH‹H‹EğH‹\0H9\Â”À]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\è©\0\0\É\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‹P8H‹E\èH‰\ÖH‰\Ç\è6\n\0\0H‹E\èH‹@HHPøH‹E\èHƒÀ0H‰\ÖH‰\Ç\è\Å	\0\0H‹E\èH‹@@HPøH‹E\èH‰P0H‹E\èH‹X0H‹E\èH‰\Ç\è·ğÿÿH‰\ŞH‰\Ç\èdÿÿÿHƒ\Ä[]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\äÿÿH‹H‹EøH‰\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\èc\äÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è¨ÿÿÿ\ÉÃUH‰\åH‰}øH‰uğH‹EğH‹H‹EøH‰]ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹E\èH‰\Ç\è\äÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è~ÿÿÿH‹EğH‰\Ç\è:ÿÿÿH‰\ÂH‹EøHƒÀH‰\ÖH‰\Ç\èÿÿÿ\ÉÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è¶\ãÿÿH‰\ÃH‹E\àH‰\Ç\èğşÿÿH‰ÁH‹E\èH‰\ÚH‰\ÎH‰\Ç\ècÿÿÿHƒ\Ä([]ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\èh\ãÿÿH‰\ÃH‹E\àH‰\Ç\è¢şÿÿH‰ÁH‹E\èH‰\ÚH‰\ÎH‰\Ç\èmÿÿÿHƒ\Ä([]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞdH‹%(\0\0\0H‰E\è1ÀH‹E\ĞH‰\Ç\èeòÿÿH‰\ÃHE\çH‰\Ç\èt	\0\0H‹E\ØHM\çH‰\ÚH‰\ÎH‰\Ç\è•	\0\0HE\çH‰\Ç\èn	\0\0H‹E\ØH‹U\èdH3%(\0\0\0t!\ë\ZH‰\ÃHE\çH‰\Ç\èJ	\0\0H‰\ØH‰\Ç\è}šÿÿè¨˜ÿÿHƒ\Ä([]ÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‹H‹EøH‰H‹EøHƒÀH‰\Ç\è¼ÿÿÿH‹EğHPH‹EøHƒÀH‰\ÖH‰\Ç\è[	\0\0H‹EğH\Ç\0\0\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èh	\0\0H‹EøH‰\Ç\è*¥ÿÿ\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹Mğº\0\0\0H‰\ÎH‰\Ç\è\"	\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è*	\0\0H‹EøH‰\Çè¬¤ÿÿ\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\èª\ßÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\Äÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹Mğº\0\0\0H‰\ÎH‰\Ç\è´\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¼\0\0H‹EøH‰\Ç\èş£ÿÿ\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹Mğº\0\0\0H‰\ÎH‰\Ç\èv\0\0\ÉÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰P]ÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰P]ÃUH‰\åH‰}øH‰uğH‹EøH‹UğH‰P]ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞH‹E\ØH‰\Ç\è%\0\0H‰E\èH‹E\ĞH‰\Ç\èd\íÿÿH‰\ÃH‹E\ØH‰\Ç\èúıÿÿH‰ÁH‹E\èH‰\ÚH‰\ÆH‰\Ï\è\0\0H‹E\è\ë3H‰\Ç\èu“ÿÿH‹E\ØH‹U\èH‰\ÖH‰\Ç\è\âıÿÿè–ÿÿH‰\Ã\è—ÿÿH‰\ØH‰\Ç\èz—ÿÿHƒ\Ä([]ÃUH‰\åH‰}øH‰uğH‹EøH‹PH‹EğH\ÂH‹EøH‰P]\ÃUH‰\åH‰}øH‰uğH‹EøH‹@H+EğH‰\ÂH‹EøH‰P]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞH‹E\ØH‰\Ç\è¹\0\0H‰E\èH‹E\ĞH‰\Ç\èûòÿÿH‰\ÃH‹E\ØH‰\Ç\èšıÿÿH‰ÁH‹E\èH‰\ÚH‰\ÆH‰\Ï\è©\0\0H‹E\è\ë3H‰\Çè—’ÿÿH‹E\ØH‹U\èH‰\ÖH‰\Ç\è²ıÿÿè¿•ÿÿH‰\Ã\è7–ÿÿH‰\ØH‰\Çèœ–ÿÿHƒ\Ä([]ÃUH‰\åH‰}øH‰uğH‹EøH‹PH‹EğH\ÂH‹EøH‰P]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞH‹E\ØH‰\Ç\è™\0\0H‰E\èH‹E\ĞH‰\Ç\è÷òÿÿH‰\ÃH‹E\ØH‰\Ç\èıÿÿH‰ÁH‹E\èH‰\ÚH‰\ÆH‰\Ï\è‰\0\0H‹E\è\ë3H‰\Ç\èß‘ÿÿH‹E\ØH‹U\èH‰\ÖH‰\Ç\èxıÿÿ\è•ÿÿH‰\Ã\è•ÿÿH‰\ØH‰\Ç\è\ä•ÿÿHƒ\Ä([]ÃUH‰\åH‰}øH‰uğH‹EøH‹PH‹EğH\ÂH‹EøH‰P]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞH‹E\ØH‰\Ç\è\á\0\0H‰E\èH‹E\ĞH‰\Ç\èªòÿÿH‰\ÃH‹E\ØH‰\Ç\è\ØüÿÿH‰ÁH‹E\èH‰\ÚH‰\ÆH‰\Ï\è\0\0H‹E\è\ë3H‰\Ç\è\'‘ÿÿH‹E\ØH‹U\èH‰\ÖH‰\Ç\èÀüÿÿ\èO”ÿÿH‰\Ã\èÇ”ÿÿH‰\ØH‰\Ç\è,•ÿÿHƒ\Ä([]ÃUH‰\åH‰}øH‰uğH‹EøH‹@H+EğH‰\ÂH‹EøH‰P]\ÃUH‰\åHƒ\ìH‰}øº\È\×@\0H‹EøH‰¸\0\0\0\0…ÀtH‹EøH‰\Çè‘’ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¸ÿÿÿH‹EøH‰\Ç\èj’ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è˜\0\0\ÉÃUH‰\åH‰}øH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EøH\Ç@\0\0\0\0]\ÃUH‰\åH‰}ø]\ÃUH‰\åH‰}øH‰uğH‹EøH‹H‹EğH‹\0H9\ÂsH‹Eğ\ëH‹Eø]\ÃUH‰\åSHƒ\ì(H‰}\ØH‰u\ĞdH‹%(\0\0\0H‰E\è1ÀHE\çH‹U\ØH‰\ÖH‰\Ç\èg\0\0H‹U\ĞHE\çH‰\ÖH‰\Ç\è\é\0\0H‰\ÃHE\çH‰\Ç\èy\0\0H‰\ØH‹M\èdH3%(\0\0\0t!\ë\ZH‰\ÃHE\çH‰\Ç\èV\0\0H‰\ØH‰\Çè™“ÿÿ\èÄ‘ÿÿHƒ\Ä([]ÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰U\ÈH‹E\ĞH‰E\èH‹E\èH;E\ÈsTH‹E\ØH‰\Ç\è—\0\0H‰\ÂH‹E\èH‰HƒE\è\ë\ÙH‰\Ç\èÿÿH‹U\èH‹M\ĞH‹E\ØH‰\ÎH‰\Ç\è«ôÿÿ\è4’ÿÿH‰\Ãè¬’ÿÿH‰\ØH‰\Ç\è“ÿÿHƒ\Ä8[]ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹E\èH‹U\àH‰PH‹E\àH‹H‹E\èH‰PH‹E\èH‹X\è7\0\0HÁ\àHH‹E\èH‰PHƒ\Ä[]ÃUH‰\åHƒ\ìH‰}øH‰uğ¿\0\0\0\è†\ØÿÿH‰\ÂH‹EøH‹MğH‰\ÎH‰\Ç\èş\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\0\0H‰\ÂH‹EøH‰\ÖH‰\Ç\è\0\0H‹Eø\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\n\0\0\É\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹U\èH‹MğH‹EøH‰\ÎH‰\Ç\è\è\0\0\É\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹E\àH‰\Ç\è\ë\åÿÿH‰\Ç\è\ÌÿÿÿH‰\ÂH‹E\èH‰\ÖH‰\Ç\è\Ã\0\0H‹E\è¾\0\0\0\0H‰\Ç\èdñÿÿH‹E\àH‹\0H…Àt/H‹U\àH‹E\èH‰\ÖH‰\Ç\èû\0\0\ë\ZH‰\ÃH‹E\èH‰\Ç\èb\äÿÿH‰\ØH‰\Ç\ès‘ÿÿHƒ\Ä[]ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è&\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\É\ÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰U\ÈdH‹%(\0\0\0H‰E\è1ÀH‹E\ÈH‰\Ç\è{\èÿÿH‰\ÂH‹M\ĞH‹E\ØHƒ\ìSH‰\ÎH‰\Ç\è\Ô\0\0Hƒ\ÄH‹E\ØH‹]\èdH3%(\0\0\0t\è\ìÿÿH‹]ø\É\ÃUH‰\åH‰}\èH‰u\àH‹E\àH‹\0H‰EøH‹E\èH‹H‹E\àH‰H‹E\èH‹UøH‰]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è®\0\0\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\èÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èz\0\0\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\èÆÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èF\0\0\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Çè†ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹Eøº\0\0\0\0¾\0\0\0H‰\Ç\è\0\0\É\ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\n\åÿÿH‰\ÃH‹E\àH‰Æ¿\0\0\0\èu\ÓÿÿH…ÀtH‰\ŞH‰\Ç\è\r\0\0Hƒ\Ä([]ÃUH‰\åHƒ\ìH‰}øH‹Eøº\0\0\0\0¾\0\0\0H‰\Ç\è$\0\0\É\ÃUH‰\åAUATSHƒ\ì(H‰}\ØH‰u\ĞH‰U\ÈH‹E\ÈH‰\Ç\è	\ëÿÿI‰\ÅL‹e\ĞL‰\æ¿X\0\0\0\èÿ\ÒÿÿH‰\ÃH…\Ût&L‰\îH‰\ß\èš\0\0\ëI‰\ÅL‰\æH‰\ß\è\î\ÒÿÿL‰\èH‰\Ç\èÅÿÿHƒ\Ä([A\\A]]ÃUH‰\åHƒ\ìH‰}øH‹Eøº\0\0\0\0¾\0\0\0H‰\Ç\èœ\0\0\É\ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è)\ëÿÿH‰\ÃH‹E\àH‰Æ¿\0\0\0\èk\ÒÿÿH…ÀtH‰\ŞH‰\Ç\è¡\0\0Hƒ\Ä([]ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\èF\ëÿÿH‰\ÃH‹E\àH‰Æ¿\0\0\0\è\ÒÿÿH…ÀtH‰\ŞH‰\Ç\è•\0\0Hƒ\Ä([]ÃUH‰\åH‰}ø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹MğH‹Eøº\0\0\0\0H‰\ÎH‰\Ç\è›\0\0\ÉÃUH‰\åHƒ\ìH‰}ø¿\0\0\0\è–\ÓÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è²\0\0\É\ÃUH‰\å¿\0\0\0\èt\Óÿÿ]\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹U\èH‹MğH‹EøH‰\ÎH‰\Ç\èŸ\0\0\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‰\Ç\è–\0\0\ÉÃUH‰\åH‰}ø]ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\èÀŠÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\ÛúÿÿH‰\ÂH‹EøH‰\ÖH‰\Ç\è@\0\0H‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EøHƒÀH‰\Ç\èøÿÿH‹EøHƒÀ0H‰\Ç\èøÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğHPH‹EøHƒÀH‰\ÖH‰\Ç\è\0\0H‹EğHP0H‹EøHƒÀ0H‰\ÖH‰\Ç\èô\0\0H‹UğH‹EøH‰\ÖH‰\Ç\è¥\0\0H‹EğHPH‹EøHƒÀH‰\ÖH‰\Ç\è\r\0\0\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}ø]ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\èk\ãÿÿH‰\ÂH‹E\èH‹M\àHƒ\ìSH‰\ÎH‰\Ç\è*\0\0Hƒ\ÄH‹]ø\ÉÃUH‰\åH‰}ø]ÃUH‰\åH‰}ø]ÃUH‰\åH‰}ø]ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\è€\0\0H;Eğ’À„Àt\è‡ÿÿH‹UğH‰\ĞHÀH\ĞHÁ\àH‰\Ç\è/‰ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EğH‰\Ç\è¦\àÿÿH‹H‹EøH‰P\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\è\0\0H;Eğ’À„ÀtèŠ†ÿÿH‹UğH‰\ĞHÁ\àH\ĞHÀH\ĞHÁ\àH‰\Çèšˆÿÿ\É\ÃUH‰\åSHƒ\ìH‰}\èH‰u\àH‹U\àH‹E\èH‰\ÖH‰\Çè”†ÿÿH‹E\àHP H‹E\èHƒÀ H‰\ÖH‰\Ç\èy†ÿÿH‹E\àH‹P@H‹E\èH‰P@\ë\ZH‰\ÃH‹E\èH‰\Ç\èØ†ÿÿH‰\ØH‰\Ç\èMŠÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EğH‰\Ç\è\æÿÿH‰\ÂH‹EøHƒÀH‰\ÖH‰\Ç\èEÿÿÿ\É\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\è\n\0\0H;Eğ’À„Àt\èz…ÿÿH‹UğH‰\ĞHÀH\ĞHÁ\àH‰\Çè‘‡ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EğH‰\Ç\è1\æÿÿH‹H‹EøH‰P\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH\Ç\0\0\0\0\0H‹EøH\Ç@\0\0\0\0H‹EğH‰\Ç\èZ\æÿÿH‹H‹EøH‰P\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\èN\0\0H;Eğ’À„Àtèª„ÿÿH‹EğHÁ\àH‰\Ç\èÊ†ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹MğH‹Eøº\0\0\0\0H‰\ÎH‰\Ç\è\0\0\É\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\è^†ÿÿ\ÉÃUH‰\åH‰}ø]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\è\0\0\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì@H‰}\ÈH‰uÀdH‹%(\0\0\0H‰Eø1ÀH‹E\ÈH‰\Ç\è\ÇÿÿÿH‰\ÂHE\ĞH‰\ÖH‰\Ç\è=\ÜÿÿH‹EÀH‰\Ç\è©ÿÿÿH‰\ÂH‹E\ÈH‹\nH‰H‹JH‰HH‹JH‰HH‹RH‰PHE\ĞH‰\Ç\èxÿÿÿH‰\ÂH‹EÀH‹\nH‰H‹JH‰HH‹JH‰HH‹RH‰PH‹EødH3%(\0\0\0t\èÖ…ÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì H‰}\èH‰u\àdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‰\Ç\è\ÇÿÿÿH‹\0H‰EğH‹E\àH‰\Ç\è´ÿÿÿH‹H‹E\èH‰HEğH‰\Ç\èÿÿÿH‹H‹E\àH‰H‹EødH3%(\0\0\0t\èS…ÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ì H‰}\èH‰u\àdH‹%(\0\0\0H‰Eø1ÀH‹E\èH‰\Ç\è\ÇÿÿÿH‹\0H‰EğH‹E\àH‰\Ç\è´ÿÿÿH‹H‹E\èH‰HEğH‰\Ç\èÿÿÿH‹H‹E\àH‰H‹EødH3%(\0\0\0t\èĞ„ÿÿ\É\ÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰U\ÈH‹E\ØH\Ç\0\0\0\0\0H‹E\ÈH‰\Ç\èú\İÿÿH‰\ÂH‹E\ØHxH‹E\ĞHƒ\ìSH‰\ÑH‰Â¾\0\0\0\0\è\0\0Hƒ\ÄH‹E\ØHƒÀ¾˜\Ø@\0H‰\Ç\èc\0\0H‰E\èH‹E\ØH‹U\èH‰H‹E\ØH‹H‹E\ØH‹\0H‹M\ØHƒÁH‰\ÆH‰Ï¸\0\0\0\0\èw\0\0H‹]ø\ÉÃUH‰\åH‰}øH¸ªªªªªªª\n]\ÃUH‰\åH‰}øH¸ºè¢‹.º\è]\ÃUH‰\åH‰}øH¸ªªªªªªª\n]\ÃUH‰\åH‰}øH¸ÿÿÿÿÿÿÿ]\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\èX\0\0H;Eğ’À„Àt\è(ÿÿH‹EğHÁ\àH‰\Ç\èHƒÿÿ\É\ÃUH‰\åH‰}øH‰uğ]\ÃUH‰\åH‰}øH‹Eø]ÃUH‰\åAVAUATSHƒ\ìPH‰}¨H‰u H‰U˜H‰MdH‹%(\0\0\0H‰E\Ø1ÀH‹E¨H\Ç\0\0\0\0\0H‹U˜HE¶H‰\ÖH‰\Ç\è\à\0\0HEÀHU¶H‰\ÖH‰\Ç\è\0\0HEÀH‰\Ç\èu\0\0H‰E¸H‹E˜H‰\Ç\èvÿÿÿH‰\ÂHE·H‰\ÖH‰\Ç\èy\0\0Lm·H‹EH‰\Ç\è3\ÜÿÿI‰\ÆL‹e¸L‰\æ¿8\0\0\0\è£\ÈÿÿH‰\ÃH…\ÛtL‰òL‰\îH‰\ß\è\0\0HE·H‰\Ç\è7óÿÿH‹E¨H‹U¸H‰HEÀ¾\0\0\0\0H‰\Ç\è_\0\0HEÀH‰\Ç\è©\0\0HE¶H‰\Ç\èE\0\0H‹E\ØdH3%(\0\0\0tQ\ëJI‰\ÅL‰\æH‰\ß\è?\ÈÿÿL‰\ëHE·H‰\Ç\è\Ôòÿÿ\ëH‰\ÃHEÀH‰\Ç\è]\0\0\ëH‰\ÃHE¶H‰\Ç\èô\0\0\0H‰\ØH‰\Ç\è\åƒÿÿ\è‚ÿÿHƒ\ÄP[A\\A]A^]ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‹\0H…Àt&H‹EøH‹\0H‹\0HƒÀ H‹\0H‹UøH‹H‹MğH‰\ÎH‰\×ÿ\Ğ\ë¸\0\0\0\0\É\ÃUH‰\åHƒ\ìHH‰½HÿÿÿH‰µXÿÿÿH‰•`ÿÿÿH‰hÿÿÿL‰…pÿÿÿL‰xÿÿÿ„Àt )E€)M)U )]°)eÀ)m\Ğ)u\à)}ğ\É\ÃUH‰\åH‰}øH¸ÿÿÿÿÿÿÿ]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‰\Ç\è$\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹Eğ¾\0\0\0H‰\Ç\èû\0\0H‰\ÂH‹MğH‹EøH‰\ÎH‰\Ç\è\0\0H‹Eø\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‹@H…ÀtH‹EøH‹HH‹EøH‹\0º\0\0\0H‰\ÎH‰\Ç\èü\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‹PH‹EøH‰\ÖH‰\Ç\è\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\è\ï\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Æğÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Ìÿÿÿ\ÉÃUH‰\åSHƒ\ì8H‰}\ØH‰u\ĞH‰U\ÈdH‹%(\0\0\0H‰E\è1ÀH‹E\ØH‰\Ç\è \0\0ºø\Ö@\0H‹E\ØH‰H‹U\ĞHE\çH‰\ÖH‰\Ç\èSÿÿÿH‹E\ØHPHE\çH‰\ÆH‰\×\è\Ğ\0\0HE\çH‰\Ç\è4ğÿÿH‹E\ÈH‰\Ç\è\î\ØÿÿH‰\ÃH‹E\ØH‰\Ç\è\Û\0\0H‰ÁH‹E\ĞH‰\ÚH‰\ÎH‰\Ç\è\ä\0\0\ë*H‰\ÃH‹E\ØHƒÀH‰\Ç\è-ÿÿÿH‹E\ØH‰\Ç\è#\ìÿÿH‰\ØH‰\Ç\èÿÿH‹E\èdH3%(\0\0\0t\è2ÿÿHƒ\Ä8[]ÃUH‰\åH‰}øH‰uğH‹EøH\Ç@\0\0\0\0H‹Eø]\ÃUH‰\åH‰}ø]ÃUH‰\åH‰}ø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹MğH‹Eøº\0\0\0\0H‰\ÎH‰\Ç\èy\0\0\ÉÃUH‰\åH‰}øH‰uğH‰U\èH‹EøH‹UğH‰H‹EøH‹U\èH‰P]\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹U\èH‹MğH‹EøH‰\ÎH‰\Ç\èq\0\0\É\ÃUH‰\åH‰}øH‰uğH‹Eğ]\ÃUH‰\åH‰}øH‰uğ]ÃUH‰\åH‰}ø]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Üÿÿÿº\È\×@\0H‹EøH‰H‹Eø\Ç@\0\0\0H‹Eø\Ç@\0\0\0\ÉÃUH‰\åH‰}ø]ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Üÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\è\Û\0\0\0H‹EøH‰\Ç\èµÿÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\è\Ö\0\0\0\É\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹E\èH‰\Ç\è\Æ\ÖÿÿH‰\ÂH‹MğH‹EøH‰\ÎH‰\Ç\è¸\0\0\0\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EøH‰\Ç\è\â\0\0\0H;Eğ’À„Àt\è¤zÿÿH‹EğHÁ\àH\Å\0\0\0\0H)\ÂH‰\ĞH‰\Ç\è¶|ÿÿ\É\ÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹EğH‰\Ç\èt|ÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\èKüÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èd\0\0\0\É\ÃUH‰\åSHƒ\ì(H‰}\èH‰u\àH‰U\ØH‹E\ØH‰\Ç\è\×\ÕÿÿH‰\ÃH‹E\àH‰Æ¿(\0\0\0\èG\ÂÿÿH…ÀtH‰\ŞH‰\Ç\è\0\0\0Hƒ\Ä([]ÃUH‰\åH‰}øH¸’$I’$I’]\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‹EøH\Ç\0\0\0\0\0H‹EøHƒÀH‰\Ç\èi\ãÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¾ÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øº \×@\0H‹EøH‰H‹EøHƒÀH‰\Ç\è¼ÿÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EøH‰\Ç\è¸ÿÿÿº0\×@\0H‹EøH‰H‹EğH‰\Ç\è\â\ÔÿÿH‰\ÂH‹EøHƒÀH‰\ÖH‰\Ç\èN\Ôÿÿ\ÉÃUH‰\åHƒ\ìH‰}øº0\×@\0H‹EøH‰H‹EøH‰\Ç\è \Âÿÿ¸\0\0\0\0…ÀtH‹EøH‰\Ç\è\Çzÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¬ÿÿÿH‹EøH‰\Ç\è zÿÿ\É\ÃUH‰\åHƒ\ìH‰}øºø\Ö@\0H‹EøH‰H‹EøHƒÀH‰\Ç\è¶úÿÿH‹EøH‰\Ç\è¬\çÿÿ¸\0\0\0\0…ÀtH‹EøH‰\Ç\èUzÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èœÿÿÿH‹EøH‰\Ç\è.zÿÿ\É\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è\×üÿÿH‰\ÃH‹E\èHƒÀH‰\Ç\èş\0\0\0H‰\ŞH‰\Ç\è\r\0\0Hƒ\Ä[]ÃUH‰\åHƒ\ì@H‰}\ÈdH‹%(\0\0\0H‰Eø1ÀH‹E\ÈHƒÀH‰\Ç\è¿\0\0\0H‰\ÂHE\ßH‰\ÖH‰\Ç\è\ÓøÿÿH‹U\ÈHM\ßHE\àH‰\ÎH‰\Ç\è>ûÿÿH‹E\ÈH‰\Ç\è\îşÿÿHE\àH‰\Ç\èùÿÿHE\ßH‰\Ç\è¸øÿÿH‹EødH3%(\0\0\0t\è\Ïyÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹Eğ¾˜\Ø@\0H‰\Çè©¿ÿÿ„ÀtH‹EøH‰\Ç\è\ïûÿÿ\ë¸\0\0\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‹EøHƒÀH‰\Ç\èD\0\0\0\ÉÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\èn\0\0\0\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹UğH‹EøH‰\ÖH‰\Ç\èW\0\0\0\É\ÃUH‰\åHƒ\ì H‰}\èdH‹%(\0\0\0H‰Eø1ÀH‹E\èHƒ\ìRH‰\Ç\è¶\0\0\0Hƒ\ÄH‹MødH3%(\0\0\0t\è\îxÿÿ\É\ÃUH‰\åH‰}øH‹Eø]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‹\0H‹\0H‹UğH‰\×ÿĞ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è™\Ğÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Îÿÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è¯\Ïÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‹EøH‰\Ç\è\Îÿÿÿ\É\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è™ÿÿÿH‰\Ç\èF\ĞÿÿH‹H‹E\èH‰\Ç\è¶ÿÿÿH‰\Ç\èu\ÏÿÿH‹\0H‰\Çÿ\ÓHƒ\Ä[]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èÇ¢ÿÿºP\Ú@\0H‹E\èH‰H‹E\èHƒÀ¾8\Ú@\0H‰\Ç\è^xÿÿH‹E\èHƒÀ8¾<\Ú@\0H‰\Ç\èIxÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èl¦ÿÿH‰\ØH‰\Ç\èmyÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øºP\Ú@\0H‹EøH‰H‹EøH‰\Ç\è6¦ÿÿ\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\éTa\0\èhxÿÿº\èRa\0¾\éTa\0¿€(@\0\è„vÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èÛ¡ÿÿº\Ğ\Ú@\0H‹E\èH‰H‹E\èHƒÀ¾°\Ú@\0H‰\Ç\èrwÿÿH‹E\èHƒÀ8¾¶\Ú@\0H‰\Ç\è]wÿÿ\ë\ZH‰\ÃH‹E\èH‰\Çè€¥ÿÿH‰\ØH‰\Ç\èxÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øº\Ğ\Ú@\0H‹EøH‰H‹EøH‰\Ç\èJ¥ÿÿ\ÉÃUH‰\åHƒ\ì H‰}\èH‰u\àH‹E\àH‰\Ç\èfwÿÿH‰EğHƒ}ğ\0”À„Àt¸ÿÿÿÿ\ëQH‹EğH‰\Ç\èSwÿÿH‰EøHƒ}ø\0•À„Àt$H‹EøHƒÀH‰Æ¿`Sa\0\è¾uÿÿ¾ $@\0H‰\Ç\è\Ñuÿÿ\ëÀH‹EğH‰\Ç\èCwÿÿ¸\0\0\0\0\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\êTa\0\èõvÿÿº\èRa\0¾\êTa\0¿€(@\0\èuÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èg ÿÿºX\Û@\0H‹E\èH‰H‹E\èHƒÀ¾8\Û@\0H‰\Ç\èşuÿÿH‹E\èHƒÀ8¾=\Û@\0H‰\Ç\è\éuÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è¤ÿÿH‰\ØH‰\Ç\è\rwÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ìH‰}øH‰uğHƒ}ğ\0u¸ÿÿÿÿ\ëH‹EğH‰\Ç\è<tÿÿ\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ëTa\0\èvÿÿº\èRa\0¾\ëTa\0¿€(@\0\ètÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è•üÿÿº \Ş@\0H‹E\èH‰H‹E\èHƒÀ¾À\Û@\0H‰\Ç\èuÿÿH‹E\èHƒÀ8¾\È\Û@\0H‰\Ç\è÷tÿÿH‹E\èHÇ€@\0\0\0\0\0\0H‹E\èHÇ€H\0\0\0\0\0\0H‹E\èH@\0\0H‹E\è¾\0\0\0H‰\Ç\è9·ÿÿ‰\ÂH‹Eè‰(\0\0H‹E\èHH\0\0H‹E\è¾\0\0\0H‰\Ç\è·ÿÿ‰\ÂH‹Eè‰,\0\0H‹E\èH‹€@\0\0H…Àt%H‹Eè‹€(\0\0Hc\ĞH‹E\èH‹€@\0\0¾\0\0\0\0H‰\Ç\è\äqÿÿH‹E\èH‹€H\0\0H…Àt%H‹Eè‹€,\0\0Hc\ĞH‹E\èH‹€H\0\0¾\0\0\0\0H‰\Ç\è¯qÿÿH‹Eè‹(\0\0H‹Eè‰P\0\0H‹Eè‹,\0\0H‹Eè‰T\0\0H‹E\èHÇ€8\0\0\Ï\Û@\0\ë\ZH‰\ÃH‹E\èH‰\Ç\è±ûÿÿH‰\ØH‰\Ç\èuÿÿHƒ\Ä[]ÃUH‰\åHƒ\ìH‰}øº \Ş@\0H‹EøH‰H‹EøH@\0\0H‹EøH‰\ÖH‰\Ç\èt·ÿÿH‹EøHH\0\0H‹EøH‰\ÖH‰\Ç\èZ·ÿÿH‹EøH‰\Ç\èFûÿÿ\ÉÃUH‰\åHƒ\ì H‰}ø‰uô‰Uğ‰M\ì‹U\ì‹Mğ‹Eô‰Î‰\Ç\è\Ñoÿÿ\ÉÃUH‰\åHƒ\ì H‰}ø‰uôH‰U\è‰Mğ‹UğH‹M\è‹EôH‰Î‰\Ç\è”qÿÿ\É\ÃUH‰\åHƒ\ì H‰}ø‰uôH‰U\è‰Mğ‹UğH‹M\è‹EôH‰Î‰\Ç\èXoÿÿ\É\ÃUH‰\åHƒ\ì H‰}ø‰uôH‰U\è‰MğD‰E\ä‹EğHcĞ‹M\äH‹u\è‹Eô‰\Ç\è%pÿÿ\ÉÃUH‰\åHƒ\ì H‰}ø‰uôH‰U\è‰MğD‰E\ä‹EğHcĞ‹M\äH‹u\è‹Eô‰\Ç\èaoÿÿ\ÉÃUH‰\åHƒ\ìH‰}ø‰uô‰Uğ‹Uğ‹Eô‰Ö‰\Ç\è\İqÿÿ\ÉÃUH‰\åHƒ\ì H‰}ø‰uôH‰U\èH‰M\àH‹U\àH‹M\è‹EôH‰Î‰\Ç\èşnÿÿ\É\ÃUH‰\åHƒ\ìH‰}ø‰uô‰Uğ‹Uğ‹Eô‰Ö‰\Ç\è+rÿÿ\ÉÃUH‰\åHƒ\ì0H‰}\è‰u\ä‰U\à‰M\Ü\ÇEü\0\0\0\0‹U\à‹E\ä‰Ö‰\Ç\èıqÿÿ‰Eü‹Eü\ÉÃUH‰\åH\ì \0\0\0H‰}˜H‰uH‰UˆH‰M€L‰…xÿÿÿL‰pÿÿÿH‹EH‰…hÿÿÿdH‹%(\0\0\0H‰Eø1ÀH\ÇE°\0\0\0\0H\ÇE¸\0\0\0\0\ÇE¨ÿÿÿÿHEÀº0\0\0\0¾\0\0\0\0H‰\Ç\èônÿÿ\ÇE\Ä\0\0\0\0\ÇE\È\0\0\0\ÇE\Ì\0\0\0HM°HUÀH‹uˆH‹EH‰\Ç\è\çpÿÿ…À•À„Àt¾\Ø\Û@\0¿`Sa\0\è/pÿÿ¸ÿÿÿÿ\éš\0\0H‹E°H‰E¸Hƒ}¸\0„™\0\0\0H‹E¸‹PH‹E¸‹HH‹E¸‹@‰Î‰\Ç\ètmÿÿ‰E¨ƒ}¨ÿu¾\Ü@\0¿`Sa\0\è\Üoÿÿ¸\0\0\0\éG\0\0H‹E¸‹PH‹E¸H‹H‹E¨H‰Î‰\Ç\è&oÿÿƒøÿ”À„Àt2‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è{şÿÿ\ÇE¨ÿÿÿÿH‹E¸H‹@(H‰E¸\é]ÿÿÿH‹E°H‰\Ç\èMpÿÿƒ}¨ÿu¾@\Ü@\0¿`Sa\0\èXoÿÿ¸\0\0\0\é\Ã\0\0Hƒ}€\0„\ß\0\0\0H‹…xÿÿÿ‹\0…À„\Î\0\0\0H‹…xÿÿÿ‹\0Hc\ĞH‹u€‹E¨¹\0\0\0\0‰\Ç\èsmÿÿ‰E¬ƒ}¬ÿu2¾h\Ü@\0¿`Sa\0\èûnÿÿ‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è\Êıÿÿ¸\0\0\0\éM\0\0¾‡\Ü@\0¿`Sa\0\è\ÉnÿÿH‰Â‹E¬‰\ÆH‰\×\è¹pÿÿ¾ $@\0H‰\Ç\è\ÌnÿÿH‹…xÿÿÿ‹U¬‰‹E¨¾\0\0\0‰\Ç\è¡oÿÿƒøÿ”À„Àt#‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\èVıÿÿ¸\0\0\0\é\Ù\0\0\0Hƒ½pÿÿÿ\0„­\0\0\0H‹…hÿÿÿ‹\0…À„œ\0\0\0H‹…hÿÿÿ‹\0Hc\ĞH‹µpÿÿÿ‹E¨¹\0\0\0\0‰\Ç\èókÿÿ‰E¬ƒ}¬\0~.¾“\Ü@\0¿`Sa\0\ènÿÿH‰Â‹E¬‰\ÆH‰\×\èûoÿÿ¾ $@\0H‰\Ç\ènÿÿ\ë&ƒ}¬\0u¾£\Ü@\0¿`Sa\0\è\×mÿÿ\ë¾¶\Ü@\0¿`Sa\0\è\Æmÿÿƒ}¬\0~\évÿÿÿƒ}¬\0~H‹…hÿÿÿ‹U¬‰‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\èxüÿÿ¸\0\0\0\0H‹MødH3%(\0\0\0t\è\×mÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøL€T\0\0H‹EøH‹¸H\0\0H‹EøLP\0\0H‹EøH‹ˆ@\0\0H‹EøH‹8\0\0H‹EøH‹°0\0\0H‹EøHƒ\ìAPI‰ùM‰\ĞH‰\Ç\è*üÿÿHƒ\Ä\É\ÃUH‰\åH\ì\0\0\0H‰}˜H‰uH‰UˆH‰M€L‰…xÿÿÿL‰pÿÿÿdH‹%(\0\0\0H‰Eø1À\ÇE¨ÿÿÿÿ\ÇE¬ÿÿÿÿH\ÇE¸\0\0\0\0HEÀº0\0\0\0¾\0\0\0\0H‰\Ç\è$kÿÿ\ÇE\Ä\0\0\0\ÇE\È\0\0\0\ÇE\Ì\0\0\0\ÇEÀ\0\0\0HM¸HUÀH‹EH‰Æ¿\0\0\0\0\èmÿÿ‰E°ƒ}°\0t6¾\Ø\Ü@\0¿`Sa\0\èWlÿÿH‰Â‹E°‰\ÆH‰\×\èGnÿÿ¾ $@\0H‰\Ç\èZlÿÿ¸\0\0\0\éO\0\0H‹E¸‹PH‹E¸‹HH‹E¸‹@‰Î‰\Ç\è’iÿÿ‰E¨ƒ}¨ÿu%¾\0\İ@\0¿`Sa\0\èúkÿÿH‹E¸H‰\Ç\è\Îlÿÿ¸\0\0\0\é\0\0H‹E¸‹PH‹E¸H‹H‹E¨H‰Î‰\Ç\è(iÿÿ‰E°ƒ}°ÿu>¾(\İ@\0¿`Sa\0\è°kÿÿH‹E¸H‰\Ç\è„lÿÿ‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\èsúÿÿ¸\0\0\0\é \0\0H‹E¸H‰\Ç\èUlÿÿ‹E¨¾€\0\0\0‰\Ç\è\Ökÿÿ‰E°ƒ}°ÿu2¾H\İ@\0¿`Sa\0\èNkÿÿ‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\èúÿÿ¸\0\0\0\éJ\0\0‹E¨º\0\0\0\0¾\0\0\0\0‰\Ç\è\×hÿÿ‰E¬ƒ}¬ÿu2¾p\İ@\0¿`Sa\0\èÿjÿÿ‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è\Îùÿÿ¸\0\0\0\éû\0\0‹u¨H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è«ùÿÿHƒ½xÿÿÿ\0„\Ê\0\0\0H‹…pÿÿÿ‹\0…À¹\0\0\0H‹…pÿÿÿ‹\0Hc\ĞH‹µxÿÿÿ‹E¬¹\0\0\0\0‰\Ç\èRhÿÿ‰E°ƒ}°\0~:¾“\Ü@\0¿`Sa\0\èjjÿÿH‰Â‹E°‰\ÆH‰\×\èZlÿÿ¾ $@\0H‰\Ç\èmjÿÿH‹…pÿÿÿ‹U°‰\ëIƒ}°\0u¾‘\İ@\0¿`Sa\0\è*jÿÿ\ë2¾¨\İ@\0¿`Sa\0\èjÿÿ‹u¬H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è\èøÿÿ¸\0\0\0\é\0\0ƒ}°\0~\éGÿÿÿHƒ}ˆ\0„š\0\0\0H‹E€‹\0…À„Œ\0\0\0H‹E€‹\0Hc\ĞH‹uˆ‹E¬¹\0\0\0\0‰\Ç\èhÿÿ‰E´ƒ}´ÿu2¾h\Ü@\0¿`Sa\0\èiÿÿ‹u¬H‹E˜¹\0\0\0º\0\0\0H‰\Ç\èmøÿÿ¸\0\0\0\éš\0\0\0¾\Ç\İ@\0¿`Sa\0\èliÿÿH‰Â‹E´‰\ÆH‰\×\è\\kÿÿ¾ $@\0H‰\Ç\èoiÿÿH‹E€‹U´‰‹E¬¾\0\0\0‰\Ç\èGjÿÿ‰E°ƒ}°ÿu/¾\Ø\İ@\0¿`Sa\0\èiÿÿ‹u¬H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è\î÷ÿÿ¸\0\0\0\ë‹u¬H‹E˜¹\0\0\0º\0\0\0H‰\Ç\è\Î÷ÿÿ¸\0\0\0\0H‹MødH3%(\0\0\0t\è-iÿÿ\ÉÃUH‰\åHƒ\ìH‰}øH‹EøL€T\0\0H‹EøH‹¸H\0\0H‹EøHˆP\0\0H‹EøH‹@\0\0H‹EøH‹°8\0\0H‹EøM‰ÁI‰øH‰\Ç\èmûÿÿ\ÉÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‹˜@\0\0¾û\İ@\0¿`Sa\0\èKhÿÿH‰\ŞH‰\Ç\è@hÿÿ¾ $@\0H‰\Ç\èShÿÿH‹E\èH‹˜H\0\0¾\Ş@\0¿`Sa\0\èhÿÿH‰\ŞH‰\Ç\èhÿÿ¾ $@\0H‰\Ç\è!hÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ìTa\0\èRiÿÿº\èRa\0¾\ìTa\0¿€(@\0\èngÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èÅ’ÿÿº¨\Ş@\0H‹E\èH‰H‹E\èHƒÀ¾Œ\Ş@\0H‰\Ç\è\\hÿÿH‹E\èHƒÀ8¾‘\Ş@\0H‰\Ç\èGhÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èj–ÿÿH‰\ØH‰\Ç\èkiÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\íTa\0\èhÿÿº\èRa\0¾\íTa\0¿€(@\0\è©fÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èÿ‘ÿÿº0\ß@\0H‹E\èH‰H‹E\èHƒÀ¾\ß@\0H‰\Ç\è–gÿÿH‹E\èHƒÀ8¾\ß@\0H‰\Ç\ègÿÿ\ë\ZH‰\ÃH‹E\èH‰\Çè¤•ÿÿH‰\ØH‰\Ç\è¥hÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\îTa\0\è\Çgÿÿº\èRa\0¾\îTa\0¿€(@\0\è\ãeÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è¹ğÿÿº¸\ß@\0H‹E\èH‰H‹E\èHƒÀ¾œ\ß@\0H‰\Ç\è\ĞfÿÿH‹E\èHƒÀ8¾¡\ß@\0H‰\Ç\è»fÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è¦xÿÿH‰\ØH‰\Ç\è\ßgÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿\ïTa\0\ègÿÿº\èRa\0¾\ïTa\0¿€(@\0\èeÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\èsÿÿº\à\Ê@\0H‹E\èH‰H‹E\èHƒÀ¾ \à@\0H‰\Ç\è\nfÿÿH‹E\èHƒÀ8¾%\à@\0H‰\Ç\èõeÿÿH‹E\èHƒÀh¾)\à@\0H‰\Ç\è\àeÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è”ÿÿH‰\ØH‰\Ç\ègÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿ğTa\0\è&fÿÿº\èRa\0¾ğTa\0¿€(@\0\èBdÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Çè™ÿÿºh\à@\0H‹E\èH‰H‹E\èH(\0\0H‰\Ç\è\ï¯ÿÿH‹E\èHƒÀ¾H\à@\0H‰\Ç\èeÿÿH‹E\èHƒÀ8¾N\à@\0H‰\Ç\è	eÿÿ\ë,H‰\ÃH‹E\èH(\0\0H‰\Ç\èb¬ÿÿH‹E\èH‰\Ç\è\Z“ÿÿH‰\ØH‰\Ç\èfÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿ñTa\0\è=eÿÿº\èRa\0¾ñTa\0¿€(@\0\èYcÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Çè¯ÿÿºø\à@\0H‹E\èH‰H‹E\èHƒÀ¾\Ø\à@\0H‰\Ç\èFdÿÿH‹E\èHƒÀ8¾\Ş\à@\0H‰\Ç\è1dÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èT’ÿÿH‰\ØH‰\Ç\èUeÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿òTa\0\èwdÿÿº\èRa\0¾òTa\0¿€(@\0\è“bÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìXH‰}¨dH‹%(\0\0\0H‰E\è1ÀH‹E¨H‰\Ç\èÚÿÿº\á@\0H‹E¨H‰H‹E¨HƒÀ¾h\á@\0H‰\Ç\èqcÿÿH‹E¨HƒÀ8¾o\á@\0H‰\Ç\è\\cÿÿHE¿H‰\Ç\è dÿÿHU¿HEÀ¾u\á@\0H‰\Ç\èKcÿÿH‹E¨HMÀº§6@\0H‰\ÎH‰\Ç\èe–ÿÿHEÀH‰\Ç\è\×`ÿÿHE¿H‰\Ç\è[bÿÿH‹E¨H0\0\0H‰\Ç\è\Ùaÿÿ\è\Ô`ÿÿH‰\ÂH‹E¨H‰(\0\0H‹E\èdH3%(\0\0\0tC\ë<H‰\ÃHEÀH‰\Ç\è…`ÿÿ\ëH‰\ÃHE¿H‰\Ç\èbÿÿ\ëH‰\ÃH‹E¨H‰\Ç\è×ÿÿH‰\ØH‰\Ç\è\Øcÿÿ\èbÿÿHƒ\ÄX[]\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\èWrÿÿ\É\ÃUH‰\åHƒ\ìH‰}ø\è=`ÿÿ\ÉÃUH‰\åHƒ\ì H‰}øH‰uğH‰U\èH‹U\èH‹EğH‰\ÖH‰\Ç\è³_ÿÿfH~ÀH‰E\àòE\à\ÉÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\èö_ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è\È`ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\èú^ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è¬^ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è>`ÿÿ\É\ÃUH‰\åHƒ\ìH‰}øH‰uğH‹EğH‰\Ç\è _ÿÿ\É\ÃUH‰\åHƒ\ì0H‰}øH‰uğH‰U\èH‰M\àL‰E\ØH‹M\ØH‹U\àH‹u\èH‹EğH‰\Ç\èš_ÿÿ\É\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿óTa\0\è¡aÿÿº\èRa\0¾óTa\0¿€(@\0\è½_ÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è‹ÿÿºh\Ñ@\0H‹E\èH‰H‹E\èHƒÀ¾ü\á@\0H‰\Ç\èª`ÿÿH‹E\èHƒÀ8¾\â@\0H‰\Ç\è•`ÿÿ\ë\ZH‰\ÃH‹E\èH‰\Çè¸ÿÿH‰\ØH‰\Ç\è¹aÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿ôTa\0\è\Û`ÿÿº\èRa\0¾ôTa\0¿€(@\0\è÷^ÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Ç\è!ÿÿÿº0\â@\0H‹E\èH‰H‹E\èHƒÀ¾\â@\0H‰\Ç\è\ä_ÿÿH‹E\èHƒÀ8¾\â@\0H‰\Ç\è\Ï_ÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\èhuÿÿH‰\ØH‰\Ç\èó`ÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿õTa\0\è`ÿÿº\èRa\0¾õTa\0¿€(@\0\è1^ÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]ÃUH‰\åSHƒ\ìH‰}\èH‹E\èH‰\Çè‡‰ÿÿº¸\â@\0H‹E\èH‰H‹E\èHƒÀ¾˜\â@\0H‰\Ç\è_ÿÿH‹E\èHƒÀ8¾\â@\0H‰\Ç\è	_ÿÿ\ë\ZH‰\ÃH‹E\èH‰\Ç\è,ÿÿH‰\ØH‰\Ç\è-`ÿÿHƒ\Ä[]\ÃUH‰\åHƒ\ì‰}ü‰uøƒ}üu\'}øÿÿ\0\0u¿öTa\0\èO_ÿÿº\èRa\0¾öTa\0¿€(@\0\èk]ÿÿ\É\ÃUH‰\å¾ÿÿ\0\0¿\0\0\0\è¯ÿÿÿ]\Ã\0AWAVA‰ÿAUATL%–„ \0UH-… \0SI‰öI‰\ÕL)\åHƒ\ìHÁı\ègZÿÿH…\ít 1\Û„\0\0\0\0\0L‰\êL‰öD‰ÿAÿ\ÜHƒ\ÃH9\ëu\êHƒ\Ä[]A\\A]A^A_Ãf.„\0\0\0\0\0ó\Ã\0\0Hƒ\ìHƒ\Ä\Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cbrackets\0brackets\0[...];{...};(...);<...>\0\0\0\0\0\0\0\0\0\0@\É@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0`\É@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N10n_brackets9CbracketsE\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cclass\0class\0\0\0\0[template_spec]\nclass [decl_spec] tag[:base_list]\n{\n	[member_list]\n[func_list]\n}[declarators];\n[class] tag declarators;\n\0\0\0\0\0\0\0\0#ifndef [TAG]_H\n#define [TAG]_H\n\n#include \"object.h\"\n\nnamespace n_[tag] {\n	class C[tag] :public Object\n	{\n	public:\n		Ctag();\n	};\n}\n\nusing namespace n_tag;\n\n#endif\n\0CLASS_TEST\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\Ë@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0\0\Ì@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0\0@\Ì@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0\0p\Ì@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0ˆ.@\0\0\0\0\0´.@\0\0\0\0\0p*@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\Ì@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_tag4CtagE\0\0\0€Ta\0\0\0\0\00\Ì@\0\0\0\0\0\Ù@\0\0\0\0\0N6n_make5CmakeE\0€Ta\0\0\0\0\0`\Ì@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_main5CmainE\0€Ta\0\0\0\0\0\Ì@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N7n_class6CclassE\0\0\0\0\0\0\0\0\0\0Ccout\0cout\0\0\0\0\0\0\0\0\0\0\0\Í@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0 \Í@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_cout5CcoutE\0\0\0\0\0\0\0\0Cecho\0echo\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Í@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0°\Í@\0\0\0\0\0\0\Í@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_echo5CechoE\0\0\0\0\0\0\0\0Cesc\0esc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \Î@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0V9@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\08\Î@\0\0\0\0\0p\Ï@\0\0\0\0\0N5n_esc4CescE\0\0\0\0\0\0\0\0\0\0%c\0\0\0\0\0\0error:rename_cmd->if(NULL==p->in||NULL==p->out)\n\0\0\0\0\0\0\0\0\0\0\0Cexec\0exec\0\0\0\0\0\0\0\0\0\0\è\Î@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0ú°@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\0\Ï@\0\0\0\0\0\Û@\0\0\0\0\0N6n_exec5CexecE\0\0\0\0\0\0\0\0Cexit\0exit\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\Ï@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0V9@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\Ï@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_exit5CexitE\0\0\0\0\0\0\0\0Cfile\0file\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ğ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0 \Ğ@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_file5CfileE\0\0\0\0\0\0\0\0Chome\0home\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ğ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0°\Ğ@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_home5ChomeE\0\0\0\0\0\0\0\0Chttp\0http\0\0\0\0\0\0http://authority-path-abempty[?query][#fragment]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \Ñ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0\0\Ğ\Ñ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0À\Ñ@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_http5ChttpE\0€Ta\0\0\0\0\0\è\Ñ@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_uri4CuriE\0\0\0\0\0\0\0\0\0\0Ciwant\0iwant\0I am iwant  APP.\n\0iwant_func:\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\Ò@\0\0\0\0\0\0k@\0\0\0\0\0,=@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\Ò@\0\0\0\0\0\Ù@\0\0\0\0\0N7n_iwant6CiwantE\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cmain\0main\0\0\0\0\0\0#ifndef [TAG]_TEST\n#define [TAG]_TEST 0//1\n#endif\n\n#if [TAG]_TEST\nint main(int argc, char *argv[])\n{\n	return 0;\n}\n#endif \0\0\0\0\0\0\0\0\0\0\0\0\0\0Cmake\0make\0\0\0\0\0\0target:[dependencies] [...]\n	commands\n	[...]\0\0\0\0\0\0\0\0\0\0\0Cmath\0math\0\0\0\0\0\0\0\0\0\0\0\0\0\0\è\Ó@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\0\Ô@\0\0\0\0\0\Ù@\0\0\0\0\0N6n_math5CmathE\0\0%ld\0\0\0\0\0\0\0CmyMemory\0myMemory\0\0error:CmyMemory::CmyMemory(int size)=\0\0\0basic_string::_M_construct null not valid\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ğ\Ô@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0ğ\Ô@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N11n_my_memory9CmyMemoryE\0\0\0\0\0\0\0\0\0\0Cnet\0net\0\0\0\0\0\0\0\0\0\0\0\0h\Õ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0€\Õ@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_net4CnetE\0\0\0\0\0\0\0\0\0\0Cnew\0new\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\Õ@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0¨K@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\Ö@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_new4CnewE\0\0\0\0%ld\0\0\0\0\0\0\0object_func:\0Object\0objec_func\0runcmd\0name:\0 alias:\0 id:\0:\0 my_family count : \0 my_ex_func count : \0error:Object::allot size=\0Object::func\n\0basic_string::_M_construct null not valid\0\0\0\0\0\0\0°\'@\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\×@\0\0\0\0\0\"«@\0\0\0\0\0n«@\0\0\0\0\0”«@\0\0\0\0\0Ô«@\0\0\0\0\0d¬@\0\0\0\0\0\0\0\0\0\0\0\0\0\È\Ø@\0\0\0\0\0Àª@\0\0\0\0\0üª@\0\0\0\0\0¬@\0\0\0\0\0\0\0\0\0\0\0\0\0\Ù@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0\0H\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\0x\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`(@\0\0\0\0\0\Z‡@\0\0\0\0\0`(@\0\0\0\0\0€Ta\0\0\0\0\0 \Ø@\0\0\0\0\0x\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0\0\0Sa\0\0\0\0\0°\Ø@\0\0\0\0\0\0\0\0\0\0\0\0\0St19_Sp_make_shared_tag\0€Ta\0\0\0\0\0\à\Ø@\0\0\0\0\0H\Ù@\0\0\0\0\0NSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0\0\0\0\0\0\0\0Sa\0\0\0\0\00\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N8n_object6ObjectE\0\0\0\0\0\0Sa\0\0\0\0\0`\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0NSt6thread10_Impl_baseE\0€Ta\0\0\0\0\0 \Ù@\0\0\0\0\0\Ø\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0Sa\0\0\0\0\0\0\Ú@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0\0\0\0\0Cos\0os\0\0\0\0\0\0\0\0\0\0ˆ\Ú@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0 \Ú@\0\0\0\0\0\Ù@\0\0\0\0\03Cos\0\0\0\0\0\0\0\0\0\0\0Cpath\0path\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0 \Û@\0\0\0\0\0\Ù@\0\0\0\0\0N6n_path5CpathE\0\0\0\0\0\0\0\0Crun\0run\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0ú°@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0¨\Û@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_run4CrunE\0\0\0\0\0\0\0\0\0\0Csocket\0socket\066666\0\0\0\0error:if (getaddrinfo(hostname, service, &hints, &result)\n\0\0\0\0\0\0error:connect_socket == INVALID_SOCKET\n\0error:Unable to connect to server!\n\0\0\0\0\0error:send failed with error.\n\0Bytes Sent:\0Bytes received:\0Connection closed\n\0recv failed with error: %d\n\0\0\0\0\0\0\0error:getaddrinfo failed with error:\0\0\0\0error:socket failed with error.\n\0\0\0\0\0\0\0\0error:bind failed with error.\n\0\0error:listen failed with error.\n\0\0\0\0\0\0\0\0error:accept failed with error.\n\0Connection closing...\n\0error:recv failed with error.\n\0Bytes sent:\0\0\0\0\0\0error:shutdown failed with error.\n\0sendbuf=\0recvbuf=\0\0\0\0\0\0\0\0\0\0\0\0X\Ş@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0p\Ş@\0\0\0\0\0ˆ\Ú@\0\0\0\0\0N8n_socket7CsocketE\0\0\0\0\0\0\0\0Csql\0sql\0\0\0\0\0\0\0\0\0\0\0\0\à\Ş@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0ø\Ş@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_sql4CsqlE\0\0\0\0\0\0\0\0\0\0Csyntax\0syntax\0\0\0\0\0\0\0\0\0\0h\ß@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0€\ß@\0\0\0\0\0\Ù@\0\0\0\0\0N8n_syntax7CsyntaxE\0\0\0\0\0\0\0\0Csys\0sys\0\0\0\0\0\0\0\0\0\0\0\0ğ\ß@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0ú°@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\à@\0\0\0\0\0\Û@\0\0\0\0\0N5n_sys4CsysE\0\0\0\0\0\0\0\0\0\0Ctag\0tag\0[TAG];TAG%d;tag;tag%d\0\0\0\0\0\0\0\0\0Ctask\0task\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \à@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0À\à@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_task5CtaskE\0\0\0\0\0\0\0\0Ctemp\0temp\0\0\0\0\0\0\0\0\0\0\0\0\0\00\á@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0P\á@\0\0\0\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_temp5CtempE\0\0\0\0\0\0\0\0Ctimer\0timer\0time\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\á@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04\Ä@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\à\á@\0\0\0\0\0\Ù@\0\0\0\0\0N7n_timer6CtimerE\0\0\0\0\0\0\0\0\0\0Curi\0uri\0\0\0\0\0\0\0\0\0\0\0Curl\0url\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\â@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0€\â@\0\0\0\0\0\Ğ\Ñ@\0\0\0\0\0N5n_url4CurlE\0\0\0\0\0\0\0\0\0\0Cxml\0xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\â@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0’k@\0\0\0\0\0¦k@\0\0\0\0\0€Ta\0\0\0\0\0\ã@\0\0\0\0\0\Ù@\0\0\0\0\0N5n_xml4CxmlE\0\0\0;„\0\0/\0\0\Ø?ÿÿ\Ğ\0\0ˆEÿÿ \0\0~Fÿÿ\0\0Gÿÿ@\0\0CGÿÿ`\0\0XGÿÿ€\0\0\ÆGÿÿÀ\0\0Iÿÿ\è\0\0”Jÿÿ\0\0pKÿÿ0\0\0œKÿÿP\0\0½Kÿÿ\Ğ\0\0(Mÿÿ@\0\0fMÿÿ`\0\0|Mÿÿ \0\0˜Mÿÿp\0\0ÀMÿÿ\0\0\èMÿÿ°\0\0Nÿÿø\0\0,Nÿÿ \0\0HNÿÿ@\0\0pNÿÿ`\0\0˜Nÿÿ€\0\0ÀNÿÿ \0\0\ÜNÿÿÀ\0\0FOÿÿ\à\0\0~Oÿÿ\0\0\0¦Oÿÿ \0\0²Oÿÿ@\0\0ÀOÿÿ`\0\0\ĞOÿÿ€\0\0üOÿÿ \0\0PÿÿÀ\0\04Pÿÿ\à\0\0bPÿÿ\0\0\0†Pÿÿ \0\0’Pÿÿ€\0\0Qÿÿ¨\0\0GQÿÿ\È\0\0…Qÿÿ\è\0\0šQÿÿ(\0\0RÿÿP\0\0JRÿÿp\0\0`Rÿÿ\0\0ˆRÿÿ°\0\0úRÿÿ\Ø\0\08Sÿÿø\0\0NSÿÿ\0\0uSÿÿ\0\0Sÿÿ8\0\0,TÿÿX\0\0‹Tÿÿx\0\0\ÉTÿÿ˜\0\0\ŞTÿÿ\Ø\0\0PUÿÿ\0\0\0Uÿÿ \0\0¤Uÿÿ¸\0\0\ÌUÿÿ@\0\0>Vÿÿh\0\0lVÿÿˆ\0\0ªVÿÿ¨\0\0ÀVÿÿ\È\0\02Wÿÿğ\0\0pWÿÿ\Z\0\0†Wÿÿ0\Z\0\0øWÿÿX\Z\0\06Xÿÿx\Z\0\0LXÿÿ¸\Z\0\0şXÿÿ\à\Z\0\0<Yÿÿ\0\0\0RYÿÿ˜\Z\0\0zYÿÿ \0\0\ìYÿÿH\0\0Zÿÿh\0\05Zÿÿˆ\0\0šZÿÿ°\0\0\ØZÿÿ\Ğ\0\0\îZÿÿğ\0\0w[ÿÿ\0\0µ[ÿÿ8\0\0\Ê[ÿÿX\0\0Q\\ÿÿ€\0\0\\ÿÿ \0\0¤\\ÿÿÀ\0\0]ÿÿ\è\0\0T]ÿÿ\0\0j]ÿÿh\0\0`^ÿÿ\0\0Z_ÿÿ¸\0\0_ÿÿ\Ø\0\0\\`ÿÿ\0\0\0\Ø`ÿÿ \0\0)aÿÿ\È\0\0gaÿÿ\è\0\0|aÿÿ(\0\0·aÿÿH\0\0\Zbÿÿ@\0\0ºcÿÿh\0\0\Õcÿÿˆ\0\0Zdÿÿ°\0\0\Ğdÿÿ\Ø\0\0,eÿÿø\0\0ˆeÿÿ\0\0½fÿÿ@\0\0\Ïfÿÿ`\0\01gÿÿˆ\0\0;gÿÿ¨\0\0Xgÿÿ \0\0\Êgÿÿ0 \0\0hÿÿP \0\0hÿÿp \0\0hÿÿ˜ \0\0÷hÿÿÀ \0\05iÿÿ\à \0\0Jiÿÿ\0!\0\0`iÿÿ !\0\0…iÿÿ@!\0\0Ÿiÿÿ`!\0\0\Éiÿÿ€!\0\0jÿÿ@#\0\0²jÿÿh#\0\0újÿÿˆ#\0\0”kÿÿ°#\0\0şkÿÿ\Ğ#\0\0hlÿÿğ#\0\0\Òlÿÿ$\0\0˜mÿÿ8$\0\0ğmÿÿ¸$\0\0\Üqÿÿ\à$\0\0sÿÿ%\0\0tÿÿ0%\0\0\ÄtÿÿP%\0\0òtÿÿp%\0\0Zuÿÿ%\0\0\Ìuÿÿ°%\0\0>vÿÿ\Ğ%\0\0°vÿÿğ%\0\0\êvÿÿ0&\0\0\ÚwÿÿX&\0\0Lxÿÿx&\0\00yÿÿ˜&\0\0\Êyÿÿ¸&\0\0J{ÿÿ\à&\0\0À|ÿÿ\'\0\0}ÿÿ(\'\0\0\\}ÿÿH\'\0\0¨}ÿÿh\'\0\0€ÿÿ\'\0\0øÿÿ¸\'\0\0(‚ÿÿ\Ø\'\0\0\æ‚ÿÿ\0(\0\0¼ƒÿÿ((\0\0Ò„ÿÿP(\0\0$†ÿÿx(\0\0¶†ÿÿ (\0\0Š‡ÿÿÀ(\0\0Ö‡ÿÿ\à(\0\0\è‡ÿÿ\0)\0\0ö‡ÿÿ )\0\0\Zˆÿÿ@)\0\0,ˆÿÿ`)\0\0fˆÿÿ€)\0\0zˆÿÿ )\0\0ˆÿÿÀ)\0\0¡ˆÿÿøN\0\0ßˆÿÿ Q\0\0ôˆÿÿ !\0\0‰ÿÿÀ!\0\0‰ÿÿ\à!\0\0x‰ÿÿ\0\"\0\0‰ÿÿ \"\0\0¸‰ÿÿ@\"\0\0Ü‰ÿÿ`\"\0\00Šÿÿ€\"\0\0PŠÿÿ \"\0\0lŠÿÿÀ\"\0\0¬Šÿÿ\à\"\0\0ÒŠÿÿ\0#\0\0üŠÿÿ #\0\0‹ÿÿX$\0\04‹ÿÿx$\0\0P‹ÿÿ˜$\0\0l‹ÿÿ&\0\0˜‹ÿÿ\à)\0\0Â‹ÿÿ\0*\0\0Ş‹ÿÿ *\0\0nŒÿÿH*\0\0|Œÿÿh*\0\0®Œÿÿˆ*\0\0ÈŒÿÿ¨*\0\0\ãŒÿÿ\È*\0\0\rÿÿ\è*\0\0ÿÿ+\0\0*ÿÿ(+\0\0JÿÿH+\0\0fÿÿh+\0\0dÿÿ+\0\0€ÿÿ¸+\0\0œÿÿ\Ø+\0\0Äÿÿø+\0\0\àÿÿ ,\0\0üÿÿ@,\0\0$ÿÿ`,\0\0@ÿÿˆ,\0\0\\ÿÿ¨,\0\0„ÿÿ\È,\0\0¬ÿÿ\è,\0\0Ôÿÿ-\0\0ûÿÿ(-\0\0\nÿÿH-\0\0Tÿÿh-\0\0ˆ‘ÿÿ-\0\0¤‘ÿÿ°-\0\0ş‘ÿÿ\Ğ-\0\0Z’ÿÿğ-\0\0’ÿÿ.\0\0Å’ÿÿ0.\0\0Ô’ÿÿP.\0\0“ÿÿp.\0\0R”ÿÿ˜.\0\0n”ÿÿ¸.\0\0È”ÿÿ\Ø.\0\0$•ÿÿø.\0\0:•ÿÿ/\0\0†•ÿÿ8/\0\0Î•ÿÿX/\0\0ğ•ÿÿx/\0\0–ÿÿ˜/\0\0&–ÿÿ¸/\0\0<–ÿÿ\Ø/\0\0ˆ–ÿÿø/\0\0Ğ–ÿÿ0\0\0ò–ÿÿ80\0\0—ÿÿX0\0\04—ÿÿx0\0\0P—ÿÿ˜0\0\0Ì—ÿÿ¸0\0\0\è—ÿÿ\Ø0\0\06˜ÿÿ\01\0\0˜ÿÿ 1\0\0Ì˜ÿÿ@1\0\0ú˜ÿÿ`1\0\0™ÿÿ€1\0\0V™ÿÿ 1\0\0”™ÿÿÀ1\0\0Æ™ÿÿ\à1\0\0ğ™ÿÿ\02\0\0Mšÿÿ(2\0\0[šÿÿH2\0\0ušÿÿh2\0\0„šÿÿˆ2\0\0®šÿÿ¨2\0\0\çšÿÿ\È2\0\0õšÿÿ\è2\0\0›ÿÿ3\0\0›ÿÿ(3\0\0/›ÿÿH3\0\0>›ÿÿh3\0\0h›ÿÿˆ3\0\0Ì›ÿÿ¨3\0\0ò›ÿÿ\È3\0\0œÿÿ\è3\0\0pœÿÿ4\0\0~œÿÿ04\0\0ÙœÿÿP4\0\0\èœÿÿp4\0\0\Zÿÿ4\0\0Bÿÿ°4\0\0^ÿÿ\Ğ4\0\0Èÿÿğ4\0\0ğÿÿ5\0\0ÿÿ05\0\0vÿÿP5\0\0ÿÿp5\0\0ºÿÿ5\0\0$Ÿÿÿ°5\0\0\\Ÿÿÿ\Ğ5\0\0”Ÿÿÿğ5\0\0ÌŸÿÿ6\0\0) ÿÿ06\0\07 ÿÿP6\0\0F ÿÿp6\0\0° ÿÿ6\0\0Ğ ÿÿ°6\0\0\ê ÿÿ\Ğ6\0\0ø ÿÿğ6\0\0V¡ÿÿ7\0\0¡ÿÿ07\0\0¬¡ÿÿP7\0\0	¢ÿÿp7\0\0¢ÿÿ7\0\0v¢ÿÿ°7\0\0Â¢ÿÿ\Ğ7\0\0\ä¢ÿÿğ7\0\0£ÿÿ8\0\0£ÿÿ08\0\0\'£ÿÿP8\0\06£ÿÿp8\0\0 £ÿÿ8\0\0À£ÿÿ°8\0\0Ú£ÿÿ\Ğ8\0\0ô£ÿÿğ8\0\0¤ÿÿ9\0\00¤ÿÿ09\0\0‚¤ÿÿP9\0\0¤ÿÿp9\0\0j¦ÿÿ˜9\0\0°¦ÿÿ¸9\0\0 §ÿÿ\à9\0\0.§ÿÿ\0:\0\0§ÿÿ(:\0\0²§ÿÿH:\0\0Ø§ÿÿh:\0\0V¨ÿÿ:\0\0d¨ÿÿ°:\0\0r¨ÿÿ\Ğ:\0\0œ¨ÿÿğ:\0\0Î¨ÿÿ;\0\0\ì¨ÿÿ0;\0\0D©ÿÿP;\0\0’©ÿÿx;\0\0ß©ÿÿ ;\0\0xªÿÿ\È;\0\0ªÿÿ\è;\0\0\æªÿÿ<\0\0«ÿÿ(<\0\0\Z«ÿÿH<\0\0(«ÿÿh<\0\08«ÿÿˆ<\0\0d«ÿÿ¨<\0\0Œ«ÿÿ\È<\0\0˜«ÿÿ\è<\0\0¦«ÿÿ=\0\0Æ«ÿÿ(=\0\0\æ«ÿÿH=\0\0¬ÿÿh=\0\0:¬ÿÿˆ=\0\0F¬ÿÿ¨=\0\0T¬ÿÿ\È=\0\0d¬ÿÿ\è=\0\0¬ÿÿ>\0\0¬¬ÿÿ(>\0\0È¬ÿÿH>\0\0\ä¬ÿÿh>\0\0v­ÿÿ>\0\0œ­ÿÿ°>\0\0Â­ÿÿ\Ğ>\0\0T®ÿÿø>\0\0z®ÿÿ?\0\0¯ÿÿ@?\0\02¯ÿÿ`?\0\0Ä¯ÿÿˆ?\0\0\ê¯ÿÿ¨?\0\0\Z°ÿÿ\È?\0\0@°ÿÿ\è?\0\0\\°ÿÿ@\0\0–°ÿÿ(@\0\0¡°ÿÿH@\0\0Ì°ÿÿh@\0\0\\±ÿÿ@\0\0\à±ÿÿ¸@\0\02²ÿÿ\à@\0\0f²ÿÿA\0\0š²ÿÿ(A\0\0µ²ÿÿHA\0\0\ã²ÿÿhA\0\0ò²ÿÿˆA\0\0~³ÿÿ°A\0\0³ÿÿ\ĞA\0\0ª³ÿÿğA\0\0Å³ÿÿB\0\02´ÿÿ8B\0\0f´ÿÿXB\0\0‚´ÿÿxB\0\0¦´ÿÿ˜B\0\0Â´ÿÿ¸B\0\0\æ´ÿÿ\ØB\0\0µÿÿøB\0\0&µÿÿC\0\0Jµÿÿ8C\0\0˜µÿÿ`C\0\0¼µÿÿ€C\0\00¶ÿÿ°C\0\0T¶ÿÿ\ĞC\0\0¢¶ÿÿøC\0\0ğ¶ÿÿ D\0\0û¶ÿÿ@D\0\0&·ÿÿ`D\0\0P·ÿÿ€D\0\0`·ÿÿ D\0\0·ÿÿÀD\0\0œ·ÿÿ\àD\0\0¼·ÿÿ\0E\0\0È·ÿÿ E\0\0\ì·ÿÿ@E\0\0T¸ÿÿ`E\0\0Ì¸ÿÿ€E\0\0Ø¸ÿÿ E\0\0\ä¸ÿÿÀE\0\0,¹ÿÿ\àE\0\08¹ÿÿ\0F\0\0D¹ÿÿ F\0\0P¹ÿÿ@F\0\0œ¹ÿÿ`F\0\0Ş¹ÿÿ€F\0\00ºÿÿ F\0\0¢ºÿÿ\ÈF\0\0\îºÿÿ\èF\0\0:»ÿÿG\0\0|»ÿÿ(G\0\0¾»ÿÿHG\0\0\0¼ÿÿhG\0\0*¼ÿÿˆG\0\0N¼ÿÿ¨G\0\0Z¼ÿÿ\ÈG\0\0€¼ÿÿ\èG\0\0¼ÿÿH\0\0D½ÿÿ(H\0\0R½ÿÿHH\0\0Ç½ÿÿhH\0\0Õ½ÿÿˆH\0\0J¾ÿÿ¨H\0\0ğ¾ÿÿ\ĞH\0\0¿ÿÿğH\0\0¿ÿÿI\0\0,¿ÿÿ0I\0\0@¿ÿÿPI\0\0‚¿ÿÿpI\0\0‘¿ÿÿI\0\0 ¿ÿÿ°I\0\0Áÿÿ\àI\0\0_Áÿÿ\0J\0\0¸Áÿÿ J\0\0\ÌÁÿÿ@J\0\0\ìÁÿÿ`J\0\0\Âÿÿ€J\0\0D\Âÿÿ J\0\0€\Âÿÿ\ÈJ\0\0¦\Âÿÿ\èJ\0\0\Ì\ÂÿÿK\0\0\è\Âÿÿ(K\0\0\ÃÿÿHK\0\0\î\ÃÿÿpK\0\0\ÄÿÿK\0\0\Äÿÿ°K\0\0#\Äÿÿ\ĞK\0\0N\ÄÿÿğK\0\0x\ÄÿÿL\0\0¦\Äÿÿ0L\0\0¸\ÄÿÿPL\0\0\È\ÄÿÿpL\0\0\Ô\ÄÿÿL\0\0\Åÿÿ°L\0\0\Åÿÿ\ĞL\0\0:\ÅÿÿğL\0\0l\ÅÿÿM\0\0Š\Åÿÿ0M\0\0\Ä\ÅÿÿPM\0\0\ÆÿÿpM\0\08\ÆÿÿM\0\0^\Æÿÿ°M\0\0x\Æÿÿ\ĞM\0\0\Æ\ÆÿÿøM\0\0\Ú\ÆÿÿN\0\0\è\Æÿÿ8N\0\0\ÇÿÿXN\0\0.\ÇÿÿxN\0\0Z\Çÿÿ˜N\0\0¨\Çÿÿ¸N\0\0\ä\Çÿÿ\ØN\0\0\n\ÈÿÿO\0\0V\Èÿÿ8O\0\0|\ÈÿÿXO\0\0¼\Èÿÿ€O\0\0L\Éÿÿ O\0\0†\ÉÿÿÀO\0\0¦\Éÿÿ\àO\0\0À\Éÿÿ\0P\0\0\æ\Éÿÿ P\0\0,\Êÿÿ@P\0\0:\Êÿÿ`P\0\0`\Êÿÿ€P\0\0z\Êÿÿ P\0\0”\ÊÿÿÀP\0\0®\Êÿÿ\àP\0\0\È\Êÿÿ\0Q\0\0\Ëÿÿ@Q\0\0‚\ËÿÿhQ\0\0©\ËÿÿˆQ\0\0\ç\Ëÿÿ¨Q\0\0ü\Ëÿÿ\ÈQ\0\0n\ÌÿÿğQ\0\0–\ÌÿÿR\0\0\Íÿÿ0R\0\0Z\ÍÿÿPR\0\0p\ÍÿÿpR\0\0\â\Íÿÿ˜R\0\0\Îÿÿ¸R\0\0L\Îÿÿ\ØR\0\0b\ÎÿÿøR\0\0\ä\Ïÿÿ S\0\0@\ĞÿÿHS\0\0j\ĞÿÿhS\0\0–\ĞÿÿˆS\0\0\Â\Ğÿÿ¨S\0\0ö\Ğÿÿ\ÈS\0\0*\Ñÿÿ\èS\0\0N\ÑÿÿT\0\0|\Ñÿÿ(T\0\0 \ÑÿÿHT\0\0\Ô\ÑÿÿhT\0\0D\ÕÿÿˆT\0\0°\Õÿÿ¨T\0\0\î\Ùÿÿ\ÈT\0\0F\Úÿÿ\èT\0\0¿\ÚÿÿU\0\0ı\Úÿÿ0U\0\0\ÛÿÿPU\0\0„\ÛÿÿxU\0\0\Â\Ûÿÿ˜U\0\0\Ø\Ûÿÿ¸U\0\0J\Üÿÿ\àU\0\0ˆ\Üÿÿ\0V\0\0\Üÿÿ V\0\0\İÿÿHV\0\0N\İÿÿhV\0\0d\İÿÿˆV\0\0\ë\İÿÿ°V\0\0)\Şÿÿ\ĞV\0\0>\ŞÿÿğV\0\0\Ô\ŞÿÿW\0\0\ßÿÿ8W\0\0(\ßÿÿXW\0\0š\ßÿÿ€W\0\0\Ø\ßÿÿ W\0\0\î\ßÿÿÀW\0\0\áÿÿ\èW\0\0:\áÿÿX\0\0N\áÿÿ(X\0\0†\áÿÿHX\0\0¤\áÿÿhX\0\0\Â\áÿÿˆX\0\0\à\áÿÿ¨X\0\0ş\áÿÿ\ÈX\0\0\âÿÿ\èX\0\0:\âÿÿY\0\0p\âÿÿ(Y\0\0®\âÿÿHY\0\0\Ä\âÿÿhY\0\06\ãÿÿY\0\0t\ãÿÿ°Y\0\0Š\ãÿÿ\ĞY\0\0ü\ãÿÿøY\0\0:\äÿÿZ\0\0P\äÿÿ8Z\0\0\Â\äÿÿ`Z\0\0\0\åÿÿ€Z\0\0\åÿÿ Z\0\0ˆ\åÿÿ\èZ\0\0\0\0\0\0\0\0\0\0\0\0\0zR\0x\0\0\0\0\0\0\à3ÿÿ*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0zR\0x\0\0$\0\0\0\0\0\0\0.ÿÿ \0\0\0FJw€\0?\Z;*3$\"\0\0\0\0\0\0\0\0\0\0\0zPLR\0x \'@\0\0\0$\0\0\0$\0\0\0^4ÿÿ‡\0\0\0>A\0A†C\rEƒ}\0\0\0\0\0\0Œ\0\0\0½4ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0¬\0\0\0\Û4ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0\Ì\0\0\0\Ğ4ÿÿm\0\0\0\0A†C\rh\0\0\0\0\0\ì\0\0\0\Ô:ÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0\Ì\0\0\0ş4ÿÿX\0\0,>A\0A†C\rEƒN\0\0$\0\0\0ô\0\0\0.6ÿÿv\0\0?>A\0A†C\rEƒl\0\0\0\0\0\\\0\0|7ÿÿ\Û\0\0\0\0A†C\r\Ö\0\0\0\0\0|\0\088ÿÿ,\0\0\0\0A†C\rg\0\0\0\0\0\0œ\0\0D8ÿÿ!\0\0\0\0A†C\r\\\0\0\0\0\0\0¼\0\0 :ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\Ü\0\0(:ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0ü\0\00:ÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0\Ü\0\0\å7ÿÿk\0\0R>A\0A†C\rHƒ^\0\0$\0\0\0\0\0:ÿÿ\0\0\0u>A\0A†C\rV\0\0\0\0\0\0\0\0\0\0l\0\0:ÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0Œ\0\0\0:ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0¬\0\0:ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\Ì\0\0:ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\ì\0\0:ÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\0\0:ÿÿj\0\0\0\0A†C\re\0\0\0\0\0,\0\0^:ÿÿ7\0\0\0\0A†C\rr\0\0\0\0\0\0L\0\0v:ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0l\0\0~:ÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0Œ\0\0j:ÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0¬\0\0X:ÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\0\Ì\0\0H:ÿÿ+\0\0\0\0A†C\rf\0\0\0\0\0\0\ì\0\0T:ÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\0\0P:ÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0,\0\0L:ÿÿ.\0\0\0\0A†C\ri\0\0\0\0\0\0L\0\0Z:ÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0l\0\0^:ÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0Œ\0\0\à6ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0¬\0\0ş6ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0Œ\0\0\n:ÿÿr\0\0\0y>A\0A†C\rEƒh\0\0\0\0\0\0ô\0\0T:ÿÿC\0\0\0\0A†C\r~\0\0\0\0\0\0\0\0w:ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\04\0\0•:ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0T\0\0P;ÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\04\0\0j:ÿÿr\0\0\0‰>A\0A†C\rEƒh\0\0\0\0\0\0œ\0\0´:ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0¼\0\0\Ò:ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0\Ü\0\0¶;ÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0¼\0\0\Ğ:ÿÿr\0\0\0™>A\0A†C\rEƒh\0\0\0\0\0\0$\0\0\Z;ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0D\0\08;ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0d\0\0U;ÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0„\0\0O;ÿÿ\0\0\0\0A†C\r˜\0\0\0\0\0¤\0\0\Ì;ÿÿ_\0\0\0\0A†C\rZ\0\0\0\0\0\Ä\0\0<ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\ä\0\0)<ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0\0\0\ä<ÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0\ä\0\0ş;ÿÿr\0\0\0©>A\0A†C\rEƒh\0\0\0\0\0\0L\0\0H<ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0l\0\0f<ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0L\0\0„<ÿÿr\0\0\0¹>A\0A†C\rEƒh\0\0\0\0\0\0´\0\0\Î<ÿÿ.\0\0\0\0A†C\r\0\0\0\0\0\0\0\0\0\0\Ô\0\0\Ü<ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0ô\0\0ú<ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\Ô\0\0ğ<ÿÿr\0\0\0\É>A\0A†C\rEƒh\0\0\0\0\0\0<\0\0:=ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\\\0\0X=ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0<\0\0N=ÿÿr\0\0\0\Ù>A\0A†C\rEƒh\0\0\0\0\0\0¤\0\0˜=ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\Ä\0\0¶=ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0\ä\0\0²>ÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0\Ä\0\0Œ=ÿÿ²\0\0\0\é>A\0A†C\rEƒ¨\0\0\0\0\0\0,	\0\0>ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0L	\0\04>ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0,	\0\0R>ÿÿr\0\0\0ÿ>A\0A†C\rEƒh\0\0\0\0\0\0”	\0\0œ>ÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0´	\0\0¤>ÿÿ!\0\0\0\0A†C\r\\\0\0\0$\0\0\0\Ô	\0\0¥>ÿÿe\0\0\0\0A†C\rEƒ[\0\0\0\0\0\0\0\0\0\0ü	\0\0\â>ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\n\0\0\0?ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0ü	\0\0ö>ÿÿ‰\0\0\0?A\0A†C\rEƒ\0\0\0\0\0\0d\n\0\0W?ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0„\n\0\0u?ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0d\n\0\0j?ÿÿ‡\0\0\0?A\0A†C\rEƒ}\0\0\0\0\0\0\Ì\n\0\0\É?ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\ì\n\0\0\ç?ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\Ì\n\0\0\Ü?ÿÿr\0\0\0/?A\0A†C\rEƒh\0\0\0\0\0\04\0\0&@ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0T\0\0D@ÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0t\0\0LDÿÿ;\0\0\0\0A†C\rv\0\0\0\0\0\0”\0\0gDÿÿc\0\0\0\0A†C\r^\0\0$\0\0\0t\0\0ú?ÿÿö\0\0\0@?A\0A†C\rEƒ\ì\0\0\0$\0\0\0œ\0\0\È@ÿÿù\0\0\0]?A\0A†C\rEƒ\ï\0\0\0\0\0\0\0\0šAÿÿ3\0\0\0\0A†C\rn\0\0\0$\0\0\0\ä\0\0®Aÿÿ\Í\0\0\0|?A\0A†C\rEƒ\Ã\0\0\0\0\0\0L\0\0TBÿÿ|\0\0\0\0A†C\rw\0\0\0\0\0l\0\0°BÿÿQ\0\0\0\0A†C\rL\0\0$\0\0\0L\0\0\ÒCÿÿ \0\0œ?A\0A†C\rHƒ“\0\0\0\0\0´\0\0JEÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0\Ô\0\0EEÿÿ„\0\0\0\0A†C\rGŒƒx\0\0\0\0\0$\0\0\0¼\0\0¢Eÿÿu\0\0\0°?A\0A†C\rEƒk\0\0\0\0\0\0$\r\0\0ğEÿÿ[\0\0\0\0A†C\rV\0\0\0\0\0D\r\0\0,Fÿÿ[\0\0\0\0A†C\rV\0\0$\0\0\0$\r\0\0hFÿÿ5\0\0À?A\0A†C\rEƒ+\0\0\0\0\0Œ\r\0\0uGÿÿ\0\0\0\0A†C\rM\0\0\0$\0\0\0¬\r\0\0gGÿÿb\0\0\0\0A†C\rEƒX\0\0\0\0\0\0\0\0\0\0\Ô\r\0\0¡Gÿÿ\n\0\0\0\0A†C\rE\0\0\0\0\0\0ô\r\0\0‹Gÿÿ\0\0\0\0A†C\rW\0\0\0\0\0\0\0\0YAÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\04\0\0wAÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\0\0HGÿÿr\0\0\0\è?A\0A†C\rEƒh\0\0\0\0\0\0|\0\0’Gÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0œ\0\0°Gÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0|\0\0¦Gÿÿr\0\0\0ø?A\0A†C\rEƒh\0\0\0$\0\0\0¤\0\0ğGÿÿg\0\0\0@A\0A†C\rEƒ]\0\0\0\0\0\0\0\0/Hÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0,\0\0MHÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0L\0\0BHÿÿ\0\0\0\0A†C\rQ\0\0\0\0\0\0l\0\08Hÿÿ%\0\0\0\0A†C\r`\0\0\0\0\0\0Œ\0\0=Hÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0¬\0\07Hÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0\Ì\0\0AHÿÿC\0\0\0\0A†C\r~\0\0\0\0\0\0\ì\0\0Lgÿÿ\0\0\0\0A†C\rM\0\0\0\0\0\0\0\0>gÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\0,\0\0.gÿÿa\0\0\0\0A†C\r\\\0\0\0\0\0L\0\0pgÿÿ\0\0\0\0A†C\rQ\0\0\0\0\0\0l\0\0fgÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0Œ\0\0pgÿÿ$\0\0\0\0A†C\r_\0\0\0\0\0\0¬\0\0tgÿÿS\0\0\0\0A†C\rN\0\0\0\0\0\Ì\0\0¨gÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0\ì\0\0¨gÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\0\0¤gÿÿ?\0\0\0\0A†C\rz\0\0\0\0\0\0,\0\0\Ägÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0L\0\0\Êgÿÿ)\0\0\0\0A†C\rd\0\0\0\0\0\0l\0\0\Ôgÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0L\0\0\ÄFÿÿ¥\0\0\0@A\0A†C\rEƒ›\0\0\0\0\0\0´\0\0BGÿÿH\0\0\0\0A†C\rC\0\0$\0\0\0”\0\0jGÿÿš\0\0\0-@A\0A†C\rEƒ\0\0\0\0\0\0ü\0\0\ÜGÿÿi\0\0\0\0A†C\rd\0\0\0\0\0\0\0&Hÿÿi\0\0\0\0A†C\rd\0\0\0\0\0<\0\0pHÿÿi\0\0\0\0A†C\rd\0\0$\0\0\0\0\0ºHÿÿ\Æ\0\0\0:@A\0A†C\rEƒ¼\0\0\0\0\0\0„\0\0XIÿÿW\0\0\0\0A†C\rR\0\0\0\0\0¤\0\0¸fÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\Ä\0\0´fÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\ä\0\0°fÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0\Ä\0\00Iÿÿ\ë\0\0L@A\0A†C\rHƒ\Ş\0\0$\0\0\0\ì\0\0ôLÿÿ:\0\0@A\0A†C\r5\0\0\0\0\0$\0\0\0T\0\0Nÿÿ\0\0\0A†C\rIŒƒù\0\0\0\0\0\0|\0\0\æNÿÿ¥\0\0\0\0A†C\r \0\0\0\0\0œ\0\0lOÿÿ-\0\0\0\0A†C\rh\0\0\0\0\0\0¼\0\0zOÿÿh\0\0\0\0A†C\rc\0\0\0\0\0\Ü\0\0\ÂOÿÿq\0\0\0\0A†C\rl\0\0\0\0\0ü\0\0Pÿÿq\0\0\0\0A†C\rl\0\0\0\0\0\0\0fPÿÿq\0\0\0\0A†C\rl\0\0\0\0\0<\0\0¸Pÿÿ:\0\0\0\0A†C\ru\0\0\0\0\0\0\\\0\0Teÿÿ+\0\0\0\0A†C\rf\0\0\0$\0\0\0<\0\0²Pÿÿğ\0\0\0ƒ@A\0A†C\rHƒ\ã\0\0\0\0\0\0¤\0\0zQÿÿr\0\0\0\0A†C\rm\0\0\0\0\0\Ä\0\0\ÌQÿÿ\ä\0\0\0\0A†C\r\ß\0\0\0\0\0\ä\0\0Rÿÿš\0\0\0\0A†C\r•\0\0$\0\0\0\0\0\nSÿÿ\0\0\0A†C\rGŒƒs\0\0\0\0$\0\0\0,\0\0bTÿÿu\0\0\0A†C\rGŒƒi\0\0\0\0\0\0\0T\0\0°UÿÿO\0\0\0\0A†C\rJ\0\0\0\0\0t\0\0\àUÿÿK\0\0\0\0A†C\rF\0\0\0\0\0”\0\0VÿÿK\0\0\0\0A†C\rF\0\0$\0\0\0´\0\08Vÿÿ]\0\0\0A†C\rEƒS\0\0\0\0\0\0$\0\0\0œ\0\0nXÿÿò\0\0›@A\0A†C\rHƒ\å\0\0\0\0\0\0\08Zÿÿ0\0\0\0\0A†C\rk\0\0\0$\0\0\0\ä\0\0HZÿÿ¾\0\0\0Á@A\0A†C\rEƒ´\0\0\0$\0\0\0\0\0\ŞZÿÿ\Õ\0\0\0\Ó@A\0A†C\rEƒ\Ë\0\0\0$\0\0\04\0\0Œ[ÿÿ\0\0\æ@A\0A†C\rHƒ\0\0$\0\0\0œ\0\0z\\ÿÿQ\0\0\0A†C\rHƒD\0\0\0\0\0\0$\0\0\0„\0\0¤]ÿÿ’\0\0\0\0AA\0A†C\rEƒˆ\0\0\0\0\0\0\ì\0\0^ÿÿ\Ó\0\0\0\0A†C\r\Î\0\0\0\0\0\0\0\Â^ÿÿL\0\0\0\0A†C\rG\0\0\0\0\0,\0\0\î^ÿÿ\0\0\0\0A†C\rM\0\0\0\0\0\0L\0\0\à^ÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0l\0\0\Î^ÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0Œ\0\0\Ò^ÿÿ\0\0\0\0A†C\rL\0\0\0\0\0\0¬\0\0\Ä^ÿÿ9\0\0\0\0A†C\rt\0\0\0\0\0\0\Ì\0\0\Ş^ÿÿ\0\0\0\0A†C\rN\0\0\0\0\0\0\ì\0\0\Ò^ÿÿ\0\0\0\0A†C\rN\0\0\0\0\0\0\0\0\Æ^ÿÿ\0\0\0\0A†C\rN\0\0\0\0\0\0,\0\0°aÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0L\0\0ºaÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0,\0\0¶aÿÿ\0\0\00AA\0A†C\rEƒ†\0\0\0\0\0\0”\0\0bÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0´\0\0bÿÿ1\0\0\0\0A†C\rl\0\0\0\0\0\0\Ô\0\0bÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0ô\0\0bÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\0\0bÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\04\0\0bÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0T\0\0bÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0t\0\0úaÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0”\0\0úaÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0t\0\0öaÿÿş\0\0\04AA\0A†C\rEƒô\0\0\0$\0\0\0œ\0\0\Ìbÿÿ\0\0\0GAA\0A†C\rV\0\0\0\0\0\0\0\0\0\0\Z\0\0Àbÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0$\Z\0\0¼bÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0\Z\0\0\Äbÿÿ\0\0\0KAA\0A†C\rV\0\0\0\0\0\0\0\0\0\0l\Z\0\0¸bÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0Œ\Z\0\0´bÿÿ\'\0\0\0\0A†C\rb\0\0\0$\0\0\0l\Z\0\0¼bÿÿ\0\0\0OAA\0A†C\rV\0\0\0\0\0\0\0\0\0\0\Ô\Z\0\0°bÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0ô\Z\0\0¬bÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\0\0´bÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\04\0\0¼bÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0T\0\0\Äbÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0t\0\0\Ëbÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0”\0\0ºbÿÿI\0\0\0\0A†C\rEƒ$\0\0\0´\0\0\äbÿÿ4\0\0\0A†C\rEƒ*\0\0\0\0\0\0\0\0\0\Ü\0\0ğcÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0ü\0\0\ìcÿÿY\0\0\0\0A†C\rT\0\0\0\0\0\0\0&dÿÿ\\\0\0\0\0A†C\rW\0\0\0\0\0<\0\0bdÿÿ5\0\0\0\0A†C\rp\0\0\0\0\0\0\\\0\0xdÿÿ5\0\0\0\0A†C\rp\0\0\0\0\0\0|\0\0dÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0œ\0\0|dÿÿI\0\0\0\0A†C\rEƒ$\0\0\0¼\0\0¦dÿÿ4\0\0\0A†C\rEƒ*\0\0\0\0\0\0\0\0\0\ä\0\0²eÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\0\0®eÿÿY\0\0\0\0A†C\rT\0\0\0\0\0$\0\0\èeÿÿ\\\0\0\0\0A†C\rW\0\0\0\0\0D\0\0$fÿÿ\0\0\0\0A†C\rQ\0\0\0\0\0\0d\0\0\ZfÿÿK\0\0\0\0A†C\rF\0\0\0\0\0„\0\0FfÿÿH\0\0\0\0A†C\rC\0\0\0\0\0¤\0\0nfÿÿ\"\0\0\0\0A†C\r]\0\0\0\0\0\0\Ä\0\0pfÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0\ä\0\0pfÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0\0\0ffÿÿ\0\0\0\0A†C\rQ\0\0\0\0\0\0$\0\0\\fÿÿK\0\0\0\0A†C\rF\0\0\0\0\0D\0\0ˆfÿÿH\0\0\0\0A†C\rC\0\0\0\0\0d\0\0°fÿÿ\"\0\0\0\0A†C\r]\0\0\0\0\0\0„\0\0²fÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0¤\0\0²fÿÿ!\0\0\0\0A†C\r\\\0\0\0\0\0\0\Ä\0\0´fÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\ä\0\0°fÿÿ{\0\0\0\0A†C\rv\0\0\0\0\0\0\0gÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0\ä\0\0gÿÿM\0\0\0cAA\0A†C\rEƒC\0\0\0\0\0\0L\0\0.gÿÿh\0\0\0\0A†C\rc\0\0\0\0\0l\0\0vgÿÿ-\0\0\0\0A†C\rh\0\0\0\0\0\0Œ\0\0„gÿÿ-\0\0\0\0A†C\rh\0\0\0\0\0\0¬\0\0’gÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0\Ì\0\0€gÿÿM\0\0\0\0A†C\rH\0\0\0\0\0\ì\0\0®gÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0 \0\0\Ìgÿÿ1\0\0\0\0A†C\rl\0\0\0\0\0\0, \0\0\Şgÿÿ)\0\0\0\0A†C\rd\0\0\0$\0\0\0 \0\0\ègÿÿ]\0\0\0oAA\0A†C\rX\0\0\0\0\0\0\0\0\0t \0\0hÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0” \0\0hÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0´ \0\0hÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0\Ô \0\0ôgÿÿ)\0\0\0\0A†C\rd\0\0\0\0\0\0ô \0\0şgÿÿ9\0\0\0\0A†C\rt\0\0\0\0\0\0!\0\0hÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\04!\0\0hÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0T!\0\0ógÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0t!\0\0\ágÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0”!\0\0\ßgÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0´!\0\0\Îgÿÿ)\0\0\0\0A†C\rd\0\0\0\0\0\0\Ô!\0\0\Øgÿÿc\0\0\0\0A†C\r^\0\0\0\0\0ô!\0\0hÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0\"\0\0\"hÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\04\"\0\0(hÿÿX\0\0\0\0A†C\rEƒN\0\0\0\0\0\0\0\0\0\0\\\"\0\0Xhÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0|\"\0\0Fhÿÿ[\0\0\0\0A†C\rV\0\0\0\0\0œ\"\0\0hÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0¼\"\0\0phÿÿ1\0\0\0\0A†C\rl\0\0\0\0\0\0\Ü\"\0\0‚hÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0ü\"\0\0Šhÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0#\0\0†hÿÿj\0\0\0\0A†C\re\0\0\0\0\0<#\0\0\Ğhÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\\#\0\0\Øhÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0|#\0\0\Ôhÿÿj\0\0\0\0A†C\re\0\0\0\0\0œ#\0\0iÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0¼#\0\0&iÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\Ü#\0\0\"iÿÿj\0\0\0\0A†C\re\0\0\0\0\0ü#\0\0liÿÿ7\0\0\0\0A†C\rr\0\0\0\0\0\0$\0\0„iÿÿ7\0\0\0\0A†C\rr\0\0\0\0\0\0<$\0\0œiÿÿ7\0\0\0\0A†C\rr\0\0\0\0\0\0\\$\0\0´iÿÿ]\0\0\0\0A†C\rX\0\0\0\0\0|$\0\0ñiÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0œ$\0\0\ßiÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0¼$\0\0\Îiÿÿi\0\0\0\0A†C\rd\0\0\0\0\0\Ü$\0\0jÿÿ \0\0\0\0A†C\r[\0\0\0\0\0\0ü$\0\0jÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0%\0\0jÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0<%\0\0\0jÿÿ]\0\0\0\0A†C\rX\0\0\0\0\0\\%\0\0>jÿÿH\0\0\0\0A†C\rC\0\0\0\0\0|%\0\0fjÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0œ%\0\0Tjÿÿ]\0\0\0\0A†C\rX\0\0\0\0\0¼%\0\0‘jÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0\Ü%\0\0€jÿÿ]\0\0\0\0A†C\rX\0\0\0\0\0ü%\0\0¾jÿÿK\0\0\0\0A†C\rF\0\0\0\0\0&\0\0\êjÿÿ\"\0\0\0\0A†C\r]\0\0\0\0\0\0<&\0\0\ìjÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0\\&\0\0\ìjÿÿ\0\0\0\0A†C\rP\0\0\0\0\0\0|&\0\0\ájÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0œ&\0\0\Ïjÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0¼&\0\0¾jÿÿi\0\0\0\0A†C\rd\0\0\0\0\0\Ü&\0\0kÿÿ \0\0\0\0A†C\r[\0\0\0\0\0\0ü&\0\0kÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0\'\0\0kÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0<\'\0\0üjÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0\\\'\0\0\êjÿÿ-\0\0\0\0A†C\rh\0\0\0\0\0\0|\'\0\0øjÿÿR\0\0\0\0A†C\rM\0\0\0\0\0œ\'\0\0*kÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0|\'\0\0&kÿÿ\Ì\0\0tAA\0A†C\rEƒ\Â\0\0\0\0\0\ä\'\0\0\ÊlÿÿF\0\0\0\0A†C\rA\0\0$\0\0\0\Ä\'\0\0ğlÿÿp\0\0\0˜AA\0A†C\rk\0\0\0\0\0\0\0\0\0,(\0\08mÿÿ\0\0\0\0A†C\rI\0\0\0$\0\0\0L(\0\0&mÿÿb\0\0\0\0A†C\rEƒX\0\0\0\0\0\0\0\0\0\0t(\0\0`mÿÿ\"\0\0\0\0A†C\r]\0\0\0\0\0\0”(\0\0bmÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\0´(\0\0hmÿÿ~\0\0\0\0A†C\rEƒt\0\0\0\0\0\0\0\0\0\0\Ü(\0\0¾mÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0ü(\0\0¬mÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0)\0\0šmÿÿ)\0\0\0\0A†C\rd\0\0\0\0\0\0<)\0\0¤mÿÿ1\0\0\0\0A†C\rl\0\0\0\0\0\0\\)\0\0¶mÿÿ\0\0\0\0A†C\rX\0\0\0\0\0\0|)\0\0´mÿÿW\0\0\0\0A†C\rR\0\0$\0\0\0œ)\0\0\ìmÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0$\0\0\0\Ä)\0\0nÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0$\0\0\0¬)\0\07nÿÿ˜\0\0\0œAA\0A†C\rEƒ\0\0\0\0\0\0*\0\0¨nÿÿ\0\0\0\0A†C\rQ\0\0\0\0\0\04*\0\0nÿÿW\0\0\0\0A†C\rR\0\0\0\0\0T*\0\0\Önÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0t*\0\0\Şnÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0”*\0\0\Ênÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0´*\0\0¸nÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\0\Ô*\0\0¨nÿÿ+\0\0\0\0A†C\rf\0\0\0\0\0\0ô*\0\0´nÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0+\0\0¼nÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\04+\0\0¨nÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0T+\0\0–nÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0t+\0\0–nÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0”+\0\0–nÿÿ+\0\0\0\0A†C\rf\0\0\0\0\0\0´+\0\0¢nÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\Ô+\0\0ªnÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0ô+\0\0–nÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0,\0\0„nÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\04,\0\0tnÿÿ+\0\0\0\0A†C\rf\0\0\0\0\0\0T,\0\0€nÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0t,\0\0|nÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0”,\0\0xnÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0t,\0\0tnÿÿ‘\0\0\0¬AA\0A†C\rEƒ‡\0\0\0\0\0\0\Ü,\0\0\Şnÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0ü,\0\0\änÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\0\Ü,\0\0\ênÿÿ‘\0\0\0\ÈAA\0A†C\rEƒ‡\0\0\0\0\0\0D-\0\0Toÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\0$-\0\0Zoÿÿ‘\0\0\0\äAA\0A†C\rEƒ‡\0\0\0\0\0\0Œ-\0\0\Äoÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\0l-\0\0\Êoÿÿ‘\0\0\0\0BA\0A†C\rEƒ‡\0\0\0\0\0\0\Ô-\0\04pÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0ô-\0\0:pÿÿ/\0\0\0\0A†C\rj\0\0\0\0\0\0.\0\0Jpÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\04.\0\0Ppÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0T.\0\0Lpÿÿ:\0\0\0\0A†C\ru\0\0\0\0\0\0t.\0\0fpÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0”.\0\0Qpÿÿ+\0\0\0\0A†C\rf\0\0\0$\0\0\0t.\0\0\\pÿÿ\0\0\0BA\0A†C\rEƒ…\0\0\0$\0\0\0œ.\0\0\Äpÿÿƒ\0\0\0(BA\0A†C\rEƒy\0\0\0$\0\0\0/\0\0 qÿÿQ\0\0\0\0A†C\rEƒG\0\0\0\0\0\0\0$\0\0\0\ì.\0\0Jqÿÿ3\0\0\0@BA\0A†C\rn\0\0\0\0\0\0\0\0\0\0T/\0\0Vqÿÿ4\0\0\0\0A†C\ro\0\0\0\0\0\0t/\0\0jqÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0”/\0\0eqÿÿ.\0\0\0\0A†C\ri\0\0\0\0\0\0´/\0\0sqÿÿ\0\0\0\0A†C\rI\0\0\0$\0\0\0”/\0\0bqÿÿ‹\0\0\0DBA\0A†C\rEƒ\0\0\0\0\0\0ü/\0\0\Æqÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\00\0\0¶qÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0<0\0\0²qÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0\\0\0\0­qÿÿm\0\0\0\0A†C\rEƒc\0\0\0\0\0\0\0\0\0\0„0\0\0òqÿÿ3\0\0\0\0A†C\rn\0\0\0\0\0\0¤0\0\0rÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\Ä0\0\0rÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0\ä0\0\0rÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\01\0\0rÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0$1\0\0rÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0D1\0\0rÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0d1\0\0rÿÿ$\0\0\0\0A†C\r_\0\0\0$\0\0\0„1\0\0\nrÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0\0\0\0¬1\0\00rÿÿ$\0\0\0\0A†C\r_\0\0\0,\0\0\0Œ1\0\04rÿÿs\0\0\0xBA\0A†C\rIŒƒe\0\0\0\0\0\0\0\0\0\0ü1\0\0xrÿÿ$\0\0\0\0A†C\r_\0\0\0$\0\0\02\0\0|rÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0$\0\0\0D2\0\0¢rÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0\0\0\0l2\0\0\Èrÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0Œ2\0\0³rÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0¬2\0\0¾rÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0\Ì2\0\0\Èrÿÿ\0\0\0\0A†C\rK\0\0\0\0\0\0\ì2\0\0¸rÿÿ.\0\0\0\0A†C\ri\0\0\0\0\0\03\0\0\Ærÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0,3\0\0´rÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0L3\0\0´rÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0l3\0\0 rÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0Œ3\0\0¤rÿÿh\0\0\0\0A†C\rc\0\0\0\0\0¬3\0\0\ìrÿÿw\0\0\0\0A†C\rr\0\0\0\0\0\Ì3\0\0Dsÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0\ì3\0\00sÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\04\0\0sÿÿG\0\0\0\0A†C\rEƒ}\0\0\0,4\0\0Dsÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0L4\0\00sÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0l4\0\0sÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0Œ4\0\0sÿÿK\0\0\0\0A†C\rF\0\0\0\0\0¬4\0\04sÿÿA\0\0\0\0A†C\r|\0\0\0\0\0\0\Ì4\0\0VsÿÿR\0\0\0\0A†C\rM\0\0$\0\0\0¬4\0\0ˆsÿÿr\0\0\0„BA\0A†C\rEƒh\0\0\0\0\0\05\0\0\ÒsÿÿL\0\0\0\0A†C\rG\0\0\0\0\045\0\0şsÿÿK\0\0\0\0A†C\rF\0\0\0\0\0T5\0\0*tÿÿA\0\0\0\0A†C\r|\0\0\0\0\0\0t5\0\0LtÿÿA\0\0\0\0A†C\r|\0\0\0\0\0\0”5\0\0ntÿÿB\0\0\0\0A†C\r}\0\0\0\0\0\0´5\0\0tÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0\Ô5\0\0štÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0ô5\0\0tÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\06\0\0Štÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\046\0\0tÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0T6\0\0~tÿÿ¶\0\0\0\0A†C\r±\0\0\0\0\0t6\0\0uÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0”6\0\0uÿÿu\0\0\0\0A†C\rp\0\0\0\0\0´6\0\0Wuÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0\Ô6\0\0Euÿÿu\0\0\0\0A†C\rp\0\0$\0\0\0ô6\0\0šuÿÿ¥\0\0\0\0A†C\rEƒ›\0\0\0\0\0\0\0\0\0\07\0\0vÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0<7\0\0vÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0\\7\0\0\0vÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0|7\0\0ôuÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0œ7\0\0\èuÿÿB\0\0\0\0A†C\r}\0\0\0\0\0\0¼7\0\0\nvÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\0\Ü7\0\0ùuÿÿ\0\0\0\0A†C\rI\0\0\0,\0\0\0¼7\0\0\èuÿÿu\0\0”BA\0A†C\rKŒƒe\0\0\0\0\0\0\0,8\0\0.wÿÿI\0\0\0\0A†C\rD\0\0\0\0\0L8\0\0WwÿÿY\0\0\0\0A†C\rT\0\0\0\0\0l8\0\0wÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0Œ8\0\0„wÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0¬8\0\0„wÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\Ì8\0\0wÿÿ=\0\0\0\0A†C\rx\0\0\0$\0\0\0¬8\0\0œwÿÿ;\0\0\0­BA\0A†C\rv\0\0\0\0\0\0\0\0\0\09\0\0°wÿÿ%\0\0\0\0A†C\r`\0\0\0\0\0\049\0\0¶wÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0T9\0\0¼wÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0t9\0\0¸wÿÿ\0\0\0\0A†C\rV\0\0\0$\0\0\0T9\0\0´wÿÿ\é\0\0\0±BA\0A†C\rEƒ\ß\0\0\0\0\0\0¼9\0\0vxÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0\Ü9\0\0txÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0ü9\0\0`xÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0:\0\0Kxÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0<:\0\0Vxÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0\\:\0\0`xÿÿ.\0\0\0\0A†C\ri\0\0\0\0\0\0|:\0\0nxÿÿ\0\0\0\0A†C\rM\0\0\0\0\0\0œ:\0\0`xÿÿ\0\0\0\0A†C\rJ\0\0\0\0\0\0¼:\0\0Pxÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0\Ü:\0\0<xÿÿ=\0\0\0\0A†C\rx\0\0\0\0\0\0ü:\0\0Zxÿÿ\0\0\0\0A†C\rF\0\0\0\0\0\0;\0\0Fxÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0<;\0\0Bxÿÿ2\0\0\0\0A†C\rm\0\0\0\0\0\0\\;\0\0Txÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0|;\0\0Rxÿÿ9\0\0\0\0A†C\rt\0\0\0\0\0\0œ;\0\0lxÿÿP\0\0\0\0A†C\rK\0\0\0\0\0¼;\0\0œxÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0\Ü;\0\0 xÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0ü;\0\0¦xÿÿ\Z\0\0\0\0A†C\rU\0\0\0$\0\0\0<\0\0 xÿÿM\0\0\0\0A†C\rEƒC\0\0\0\0\0\0\0\0\0\0D<\0\0\Æxÿÿ\0\0\0\0A†C\rO\0\0\0\0\0\0d<\0\0ºxÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0„<\0\0¨xÿÿ*\0\0\0\0A†C\re\0\0\0\0\0\0¤<\0\0²xÿÿ\0\0\0\0A†C\rV\0\0\0\0\0\0\Ä<\0\0®xÿÿ+\0\0\0\0A†C\rf\0\0\0\0\0\0\ä<\0\0ºxÿÿM\0\0\0\0A†C\rH\0\0\0\0\0=\0\0\èxÿÿ;\0\0\0\0A†C\rv\0\0\0\0\0\0$=\0\0yÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0D=\0\0¡9ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0d=\0\0\êxÿÿK\0\0\0\0A†C\rF\0\0\0\0\0„=\0\0yÿÿ&\0\0\0\0A†C\ra\0\0\0$\0\0\0d=\0\0yÿÿ?\0\0\0ÀBA\0A†C\rEƒu\0\0\0\0\0\0\0\Ì=\0\04yÿÿ\0\0\0\0A†C\rŠ\0\0\0\0\0\ì=\0\0¤yÿÿ:\0\0\0\0A†C\ru\0\0\0\0\0\0>\0\0¾yÿÿ\0\0\0\0A†C\rZ\0\0\0\0\0\0,>\0\0¾yÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0L>\0\0¸yÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0l>\0\0¾yÿÿF\0\0\0\0A†C\rA\0\0\0\0\0Œ>\0\0\äyÿÿ\0\0\0\0A†C\rI\0\0\0\0\0\0¬>\0\0\Òyÿÿ&\0\0\0\0A†C\ra\0\0\0\0\0\0\Ì>\0\0\Øyÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0\ì>\0\0\Òyÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0?\0\0\Ìyÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0,?\0\0\Æyÿÿ\Z\0\0\0\0A†C\rU\0\0\0\0\0\0L?\0\0ÀyÿÿG\0\0\0\0A†C\rEƒ}\0\0\0l?\0\0·7ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0L?\0\0\Èyÿÿr\0\0\0\ÄBA\0A†C\rEƒh\0\0\0\0\0\0´?\0\0zÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\Ô?\0\0zÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0ô?\0\07zÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\Ô?\0\0,zÿÿr\0\0\0\ÔBA\0A†C\rEƒh\0\0\0\0\0\0<@\0\0vzÿÿ\'\0\0\0\0A†C\rb\0\0\0\0\0\0\\@\0\0~zÿÿ†\0\0\0\0A†C\r\0\0\0\0\0|@\0\0\äzÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0œ@\0\0{ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0|@\0\0øzÿÿr\0\0\0\äBA\0A†C\rEƒh\0\0\0\0\0\0\ä@\0\0B{ÿÿ,\0\0\0\0A†C\rg\0\0\0\0\0\0A\0\0N{ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0$A\0\0l{ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0A\0\0b{ÿÿ\0\0ôBA\0A†C\rEƒw\0\0$\0\0\0,A\0\0¼|ÿÿ[\0\0\0CA\0A†C\rV\0\0\0\0\0\0\0\0\0”A\0\0ğ|ÿÿ)\0\0\0\0A†C\rd\0\0\0\0\0\0´A\0\0ú|ÿÿ,\0\0\0\0A†C\rg\0\0\0\0\0\0\ÔA\0\0}ÿÿ,\0\0\0\0A†C\rg\0\0\0\0\0\0ôA\0\0}ÿÿ3\0\0\0\0A†C\rn\0\0\0\0\0\0B\0\0&}ÿÿ3\0\0\0\0A†C\rn\0\0\0\0\0\04B\0\0:}ÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0TB\0\0>}ÿÿ.\0\0\0\0A†C\ri\0\0\0\0\0\0tB\0\0L}ÿÿ#\0\0\0\0A†C\r^\0\0\0\0\0\0”B\0\0P}ÿÿ3\0\0\0\0A†C\rn\0\0\0\0\0\0´B\0\0d}ÿÿo\0\0\0A†C\rj\0\0\0\0\ÔB\0\0´€ÿÿl\0\0\0\0A†C\rg\0\0\0\0\0ôB\0\0\0ÿÿ=\0\0\0A†C\r8\0\0\0\0C\0\0…ÿÿW\0\0\0\0A†C\rR\0\0$\0\0\04C\0\0V…ÿÿy\0\0\0\0A†C\rEƒo\0\0\0\0\0\0\0\0\0\0\\C\0\0§…ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0|C\0\0Å…ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\\C\0\0º…ÿÿr\0\0\0\nCA\0A†C\rEƒh\0\0\0\0\0\0\ÄC\0\0†ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\äC\0\0\"†ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\ÄC\0\0†ÿÿr\0\0\0\ZCA\0A†C\rEƒh\0\0\0\0\0\0,D\0\0b†ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0LD\0\0€†ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0,D\0\0v†ÿÿr\0\0\0*CA\0A†C\rEƒh\0\0\0\0\0\0”D\0\0À†ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0´D\0\0Ş†ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0”D\0\0Ô†ÿÿ‡\0\0\0:CA\0A†C\rEƒ}\0\0\0\0\0\0üD\0\03‡ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0E\0\0Q‡ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0üD\0\0F‡ÿÿ–\0\0\0JCA\0A†C\rEƒŒ\0\0\0\0\0\0dE\0\0´‡ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0„E\0\0Ò‡ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0dE\0\0È‡ÿÿr\0\0\0_CA\0A†C\rEƒh\0\0\0\0\0\0\ÌE\0\0ˆÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\ìE\0\00ˆÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\ÌE\0\0&ˆÿÿ.\0\0oCA\0A†C\rEƒ$\0\0\0\0\04F\0\0,‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0TF\0\0*‰ÿÿ\0\0\0\0A†C\rN\0\0\0\0\0\0tF\0\0‰ÿÿ7\0\0\0\0A†C\rr\0\0\0\0\0\0”F\0\06‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0´F\0\04‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0\ÔF\0\02‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0ôF\0\00‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0G\0\0.‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\04G\0\0,‰ÿÿ\0\0\0\0A†C\rY\0\0\0\0\0\0TG\0\0*‰ÿÿ6\0\0\0\0A†C\rq\0\0\0\0\0\0tG\0\0@‰ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0”G\0\0^‰ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0tG\0\0T‰ÿÿr\0\0\0ŒCA\0A†C\rEƒh\0\0\0\0\0\0\ÜG\0\0‰ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0üG\0\0¼‰ÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0\ÜG\0\0²‰ÿÿr\0\0\0œCA\0A†C\rEƒh\0\0\0\0\0\0DH\0\0ü‰ÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0dH\0\0\ZŠÿÿ\0\0\0\0A†C\rP\0\0\0$\0\0\0DH\0\0Šÿÿr\0\0\0¬CA\0A†C\rEƒh\0\0\0\0\0\0¬H\0\0ZŠÿÿ>\0\0\0\0A†C\ry\0\0\0\0\0\0\ÌH\0\0xŠÿÿ\0\0\0\0A†C\rP\0\0\0D\0\0\0\ìH\0\0pŠÿÿe\0\0\0\0BBE B(ŒH0†H8ƒM@r8A0A(B BBB\0\0\0\04I\0\0˜Šÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿ\0\05/f\0{\0\0ÿÿ\0\0¯¹\0\Ì\0\0ÿÿ\0\0³\×\0\ê\0\0ÿÿ2\0\0P¿\0n«\0Œ—\0ªƒ\0\×\0\0ÿÿ\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\02‘\0G1z\0¦\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\051h\0}\0\0ÿÿ\0\05/f\0{\0\0ÿÿ\0\05\ZQ\0f\0\0\0ÿÿ#\0\0DÁ\0r°\0“Á\0\Ö\0\0ÿÿ&\0\0G\Ä\0u³\0–\Ä\0\Ù\0\0\0\0ÿKxŠ\"³\0¬\0\0Á\0\0\0\0\0\0\0\0ÿÿ€\0\0\Éø\0\0\0ÿÿ \0\0MT\0i\0\0ÿ%\ZSc\0\0½ı\æ\0\0Œ\n–\0¤\0\0\0\0\0\0\0\0\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿ%@Y\0\0\0\0\0\0\0\0ÿÿ\r#\0\0:\0”\0\0ÿÿ	?i\0\0\0ÿÿS\0\0y \0µ\0\0ÿÿ/\Í<—\0¼\0\Ñ\Ş\0\ì\Í\0®ƒ\0\Éò\0ø—\0\×\0\0ÿÿ\0ÿÿA\0\0[­\0„\Ç\0\Â\0\0ÿÿ\"q\ç\0¬„\0\Õº\0\ë©\0–˜\0ÿd\0\0ÿÿO\0\0q˜\0­\0\0ÿÿV¯\0l\0\Ä\0\0ÿÿPÁ\0v\ì\0\Û\0\Ö0\0\0\0ÿ\"8J\"x\0q\0\0†\0\0\0\0\0\0\0ÿÿ€\0\0\Éø\0\0\0ÿÿ\0ÿÿ[\0\0\Ì\0\í\0\0ÿÿ\0ÿÿ\0ÿÿ\0ÿÿ \0\0MT\0i\0\0ÿÿ%,\0A\0\0ÿÿ\0\0ÿ!…\0\0\Ş\ë¨­\0»\0\0\0\0\0\0\0\0\0\0ÿÿ\0ÿÿ	Lr\0‡\0\0\0\0\0ÿ\0\0LWrw\0…\0\0\0\0\0\0\0ÿ\0\0LWrw\0…\0\0\0\0\0\0\0ÿ\0\0LWrw\0…\0\0\0\0\0\0\0ÿ\0\0LWrw\0…\0\0\0\0\0\0\0ÿÿAi\0~\0\0ÿ.Dch\0v\0\0\0\0\0\0\0\0ÿÿ\0ÿÿCi\0~\0\0ÿ%\ZSc\0\0½ı\æ\0\0Œ\n–\0¤\0\0\0\0\0\0\0\0\0\0ÿÿGN\0b\0\0ÿÿ\0\0:Q\0f\0\0ÿÿZ\É\0f¸\0\Â™\0\Ş\0\0ÿÿ\0ÿÿ¤\0\É\0\0ÿÿ\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05|\à\0õ\0\0ÿÿ\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05/f\0{\0\0ÿÿ\r\0\0G\Zc\0Š\0\0ÿÿ\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ#\0\0D\Zˆ\0z÷\0’\æ\0\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0ÿÿ\0\05\ZQ\0f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p)@\0\0\0\0\0[*@\0\0\0\0\0~0@\0\0\0\0\04@\0\0\0\0\0b5@\0\0\0\0\0P6@\0\0\0\0\0\á7@\0\0\0\0\0¦8@\0\0\0\0\0\Â9@\0\0\0\0\0ˆ:@\0\0\0\0\0N;@\0\0\0\0\0T<@\0\0\0\0\0ğ=@\0\0\0\0\0\Í>@\0\0\0\0\0§?@\0\0\0\0\0l@@\0\0\0\0\0D@\0\0\0\0\0 K@\0\0\0\0\0ML@\0\0\0\0\0÷k@\0\0\0\0\0ÿ®@\0\0\0\0\0r°@\0\0\0\0\0d±@\0\0\0\0\0¾@\0\0\0\0\0Ú¾@\0\0\0\0\0 ¿@\0\0\0\0\0fÀ@\0\0\0\0\0AÁ@\0\0\0\0\0*\Â@\0\0\0\0\0ğ\Â@\0\0\0\0\0\Æ\Å@\0\0\0\0\0Œ\Æ@\0\0\0\0\0R\Ç@\0\0\0\0\0\È@\0\0\0\0\0P)@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¦\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰\n\0\0\0\0\0\0\0\0\0\0\0\0\0¦\n\0\0\0\0\0\0\0\0\0\0\0\0\0\È\"@\0\0\0\0\0\r\0\0\0\0\0\0\0¤\È@\0\0\0\0\0\0\0\0\0\0\0\0\ØLa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\èMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0õşÿo\0\0\0\0˜@\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0\0\0\0\0\0\0\0ø@\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\Z@\0\0\0\0\0\0\0\0\0\0\0\0\Z@\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0şÿÿo\0\0\0\00@\0\0\0\0\0ÿÿÿo\0\0\0\0\0\0\0\0\0\0\0ğÿÿo\0\0\0\0d@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0øMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#@\0\0\0\0\0#@\0\0\0\0\0&#@\0\0\0\0\06#@\0\0\0\0\0F#@\0\0\0\0\0V#@\0\0\0\0\0f#@\0\0\0\0\0v#@\0\0\0\0\0†#@\0\0\0\0\0–#@\0\0\0\0\0¦#@\0\0\0\0\0¶#@\0\0\0\0\0\Æ#@\0\0\0\0\0\Ö#@\0\0\0\0\0\æ#@\0\0\0\0\0ö#@\0\0\0\0\0$@\0\0\0\0\0$@\0\0\0\0\0&$@\0\0\0\0\06$@\0\0\0\0\0F$@\0\0\0\0\0V$@\0\0\0\0\0f$@\0\0\0\0\0v$@\0\0\0\0\0†$@\0\0\0\0\0–$@\0\0\0\0\0¦$@\0\0\0\0\0¶$@\0\0\0\0\0\Æ$@\0\0\0\0\0\Ö$@\0\0\0\0\0\æ$@\0\0\0\0\0ö$@\0\0\0\0\0%@\0\0\0\0\0%@\0\0\0\0\0&%@\0\0\0\0\06%@\0\0\0\0\0F%@\0\0\0\0\0V%@\0\0\0\0\0f%@\0\0\0\0\0v%@\0\0\0\0\0†%@\0\0\0\0\0–%@\0\0\0\0\0¦%@\0\0\0\0\0¶%@\0\0\0\0\0\Æ%@\0\0\0\0\0\Ö%@\0\0\0\0\0\æ%@\0\0\0\0\0ö%@\0\0\0\0\0&@\0\0\0\0\0&@\0\0\0\0\0&&@\0\0\0\0\06&@\0\0\0\0\0F&@\0\0\0\0\0V&@\0\0\0\0\0f&@\0\0\0\0\0v&@\0\0\0\0\0†&@\0\0\0\0\0–&@\0\0\0\0\0¦&@\0\0\0\0\0¶&@\0\0\0\0\0\Æ&@\0\0\0\0\0\Ö&@\0\0\0\0\0\æ&@\0\0\0\0\0ö&@\0\0\0\0\0\'@\0\0\0\0\0\'@\0\0\0\0\0&\'@\0\0\0\0\06\'@\0\0\0\0\0F\'@\0\0\0\0\0V\'@\0\0\0\0\0f\'@\0\0\0\0\0v\'@\0\0\0\0\0†\'@\0\0\0\0\0–\'@\0\0\0\0\0¦\'@\0\0\0\0\0¶\'@\0\0\0\0\0\Æ\'@\0\0\0\0\0\Ö\'@\0\0\0\0\0\æ\'@\0\0\0\0\0ö\'@\0\0\0\0\0(@\0\0\0\0\0(@\0\0\0\0\0&(@\0\0\0\0\06(@\0\0\0\0\0F(@\0\0\0\0\0V(@\0\0\0\0\0f(@\0\0\0\0\0v(@\0\0\0\0\0†(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ø@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\Z@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0p\Z@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 (@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¤\È@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\È@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ã@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ô@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ØLa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\èMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0øMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0øOa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\àRa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ğ(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0)@\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0P)@\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\ÈTa\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\èMa\0\0\0\0\0\0\0\0\0\0\0\0\0z\0\0\0\0\0p)@\0\0\0\0\0\0\0\0\0\0\0\0\0†\0\0\0\0\0\ØLa\0\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Ä\È@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÉTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Å\È@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Æ\È@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\È\È@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0*@\0\0\0\0\0>\0\0\0\0\0\0\0U\0\0\0\0[*@\0\0\0\0\0\0\0\0\0\0\0\0‚\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0€\É@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÊTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\É@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0‚\É@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0„\É@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0@0@\0\0\0\0\0>\0\0\0\0\0\0\0Œ\0\0\0\0~0@\0\0\0\0\0\0\0\0\0\0\0\0¹\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0¤\Ì@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ËTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0¥\Ì@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0¦\Ì@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0¨\Ì@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0_4@\0\0\0\0\0>\0\0\0\0\0\0\0\Â\0\0\0\04@\0\0\0\0\0\0\0\0\0\0\0\0\æ\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\00\Í@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÌTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\01\Í@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\02\Í@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\04\Í@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0$5@\0\0\0\0\0>\0\0\0\0\0\0\0\ï\0\0\0\0b5@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0À\Í@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÍTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0Á\Í@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Â\Í@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Ä\Í@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\06@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0P6@\0\0\0\0\0\0\0\0\0\0\0\0=\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0H\Î@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÎTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0I\Î@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0J\Î@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0L\Î@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0£7@\0\0\0\0\0>\0\0\0\0\0\0\0I\0\0\0\0\á7@\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0Œ\Î@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÏTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Î@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Î@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Î@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0h8@\0\0\0\0\0>\0\0\0\0\0\0\0m\0\0\0\0¦8@\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ĞTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0„9@\0\0\0\0\0>\0\0\0\0\0\0\0š\0\0\0\0\Â9@\0\0\0\0\0\0\0\0\0\0\0\0¾\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0 \Ï@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÑTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0¡\Ï@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0¢\Ï@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0¤\Ï@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0J:@\0\0\0\0\0>\0\0\0\0\0\0\0\Ç\0\0\0\0ˆ:@\0\0\0\0\0\0\0\0\0\0\0\0\ë\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\00\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÒTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\01\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\02\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\04\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0;@\0\0\0\0\0>\0\0\0\0\0\0\0ô\0\0\0\0N;@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0À\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÓTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0Á\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Â\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Ä\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0<@\0\0\0\0\0>\0\0\0\0\0\0\0!\0\0\0\0T<@\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0ø\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÔTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0ù\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0ú\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0ü\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0²=@\0\0\0\0\0>\0\0\0\0\0\0\0O\0\0\0\0ğ=@\0\0\0\0\0\0\0\0\0\0\0\0u\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0¨\Ò@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÕTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0©\Ò@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0ª\Ò@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0¬\Ò@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0>@\0\0\0\0\0>\0\0\0\0\0\0\0~\0\0\0\0\Í>@\0\0\0\0\0\0\0\0\0\0\0\0¢\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0@\Ó@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÖTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0A\Ó@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0B\Ó@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0D\Ó@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0i?@\0\0\0\0\0>\0\0\0\0\0\0\0«\0\0\0\0§?@\0\0\0\0\0\0\0\0\0\0\0\0\Ï\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0ˆ\Ó@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\×Ta\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0‰\Ó@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0Š\Ó@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0Œ\Ó@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0.@@\0\0\0\0\0>\0\0\0\0\0\0\0\Ø\0\0\0\0l@@\0\0\0\0\0\0\0\0\0\0\0\0ü\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Ô@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ØTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Ô@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Ô@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Ô@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0AD@\0\0\0\0\0>\0\0\0\0\0\0\0	\0\0\0\0D@\0\0\0\0\0\0\0\0\0\0\0\07\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Õ@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÙTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\r\Õ@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Õ@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Õ@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\âJ@\0\0\0\0\0>\0\0\0\0\0\0\0?\0\0\0\0 K@\0\0\0\0\0\0\0\0\0\0\0\0a\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Õ@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ÚTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0‘\Õ@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0’\Õ@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0”\Õ@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0L@\0\0\0\0\0>\0\0\0\0\0\0\0i\0\0\0\0ML@\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Ö@\0\0\0\0\0\0\0\0\0\0\0\0–\0\0\0\0bL@\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\à\Ö@\0\0\0\0\0\0\0\0\0\0\0\0\à\0\0\0\0xL@\0\0\0\0\0%\0\0\0\0\0\0\0÷\0\0\0\0L@\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0·L@\0\0\0\0\0*\0\0\0\0\0\0\0M\0\0\0\0\áL@\0\0\0\0\0C\0\0\0\0\0\0\0\Í\0\0\0\0\0\èTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Ö@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Ö@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0 \Ö@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0¹k@\0\0\0\0\0>\0\0\0\0\0\0\0}\0\0\0\0÷k@\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\00\Ú@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\éTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\01\Ú@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\02\Ú@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\04\Ú@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0Á®@\0\0\0\0\0>\0\0\0\0\0\0\0°\0\0\0\0ÿ®@\0\0\0\0\0\0\0\0\0\0\0\0\Ë\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0¨\Ú@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\êTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0©\Ú@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0ª\Ú@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0¬\Ú@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\04°@\0\0\0\0\0>\0\0\0\0\0\0\0\Ô\0\0\0\0r°@\0\0\0\0\0\0\0\0\0\0\0\0ø\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\00\Û@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ëTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\01\Û@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\02\Û@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\04\Û@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0&±@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0\0d±@\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0¸\Û@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ìTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0¹\Û@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0º\Û@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0¼\Û@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0×½@\0\0\0\0\0>\0\0\0\0\0\0\0-\0\0\0\0¾@\0\0\0\0\0\0\0\0\0\0\0\0U\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0„\Ş@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\íTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0…\Ş@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0†\Ş@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0ˆ\Ş@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0œ¾@\0\0\0\0\0>\0\0\0\0\0\0\0]\0\0\0\0Ú¾@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\ß@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\îTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0	\ß@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\n\ß@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\ß@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0b¿@\0\0\0\0\0>\0\0\0\0\0\0\0Š\0\0\0\0 ¿@\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0”\ß@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0\ïTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0•\ß@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0–\ß@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0˜\ß@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0(À@\0\0\0\0\0>\0\0\0\0\0\0\0º\0\0\0\0fÀ@\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\à@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0ğTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\à@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Z\à@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\à@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0Á@\0\0\0\0\0>\0\0\0\0\0\0\0\ä\0\0\0\0AÁ@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0@\à@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0ñTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0A\à@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0B\à@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0D\à@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\ìÁ@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0*\Â@\0\0\0\0\0\0\0\0\0\0\0\03\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\Ğ\à@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0òTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0\Ñ\à@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\Ò\à@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\Ô\à@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0²\Â@\0\0\0\0\0>\0\0\0\0\0\0\0<\0\0\0\0ğ\Â@\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0`\á@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0óTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0a\á@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0b\á@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0d\á@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0ˆ\Å@\0\0\0\0\0>\0\0\0\0\0\0\0j\0\0\0\0\Æ\Å@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0ô\á@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0ôTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0õ\á@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0ö\á@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0ø\á@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0N\Æ@\0\0\0\0\0>\0\0\0\0\0\0\0˜\0\0\0\0Œ\Æ@\0\0\0\0\0\0\0\0\0\0\0\0º\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\â@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0õTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0	\â@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0\n\â@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0\â@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\Ç@\0\0\0\0\0>\0\0\0\0\0\0\0\Â\0\0\0\0R\Ç@\0\0\0\0\0\0\0\0\0\0\0\0\ä\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0\0\â@\0\0\0\0\0\0\0\0\0\0\0\0\Í\0\0\0\0\0öTa\0\0\0\0\0\0\0\0\0\0\0\0\Ü\0\0\0\0\0‘\â@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0\0\0’\â@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\0\0\0”\â@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\Ú\Ç@\0\0\0\0\0>\0\0\0\0\0\0\0\ì\0\0\0\0\È@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğMa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\ã@\0\0\0\0\0\0\0\0\0\0\0\0\0;\0\0\0\0øMa\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\èMa\0\0\0\0\0\0\0\0\0\0\0\0\0U\0\0\0\0\0\ØLa\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0~\0\0\"\0\0tr@\0\0\0\0\0\'\0\0\0\0\0\0\0¸\0\0\"\0\0ls@\0\0\0\0\04\0\0\0\0\0\0\ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\"\0\0\àw@\0\0\0\0\0\\\0\0\0\0\0\0\00	\0\0\"\0\0ò†@\0\0\0\0\0\Z\0\0\0\0\0\0\0}	\0\0\"\0\06v@\0\0\0\0\04\0\0\0\0\0\0¹	\0\0!\0\0¨\Ë@\0\0\0\0\0H\0\0\0\0\0\0\0\Ï	\0\0\"\0\00n@\0\0\0\0\0\0\0\0\0\0\0\0ñ	\0\0\"\0\0ñ@\0\0\0\0\0\0\0\0\0\0\0\0b\n\0\0\"\0\0ş@\0\0\0\0\0+\0\0\0\0\0\0\0º\n\0\0\"\0\0\Ø1@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\Üq@\0\0\0\0\0\0\0\0\0\0\0\0>\0\0\"\0\0\Ø0@\0\0\0\0\0\'\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¡\0\0\0\0\äX@\0\0\0\0\0q\0\0\0\0\0\0\0\0\0\0\0‚@@\0\0\0\0\0ö\0\0\0\0\0\0\0ğ\0\0\0\0k@\0\0\0\0\0#\0\0\0\0\0\0\0\Ñ\0\0\0\0ª3@\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0VY@\0\0\0\0\0q\0\0\0\0\0\0\0]\0\0\"\0\0¼t@\0\0\0\0\0Y\0\0\0\0\0\0\0‚\0\0!\0\00\á@\0\0\0\0\0\0\0\0\0\0\0\0–\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ó\0\0\"\0\0†@\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0!\0\0\Û@\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\"\0\0r@\0\0\0\0\0\'\0\0\0\0\0\0\0O\r\0\0\"\0\0üª@\0\0\0\0\0&\0\0\0\0\0\0\0…\r\0\0\"\0\0|@\0\0\0\0\0\'\0\0\0\0\0\0\0\Ë\r\0\0\"\0\0\İu@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\Å@\0\0\0\0\06\0\0\0\0\0\0\0:\0\0\"\0\0IJ@\0\0\0\0\0\n\0\0\0\0\0\0\0‰\0\0\0\06,@\0\0\0\0\0v\0\0\0\0\0\0\Ó\0\0!\0\0\è\Î@\0\0\0\0\0\0\0\0\0\0\0\0\ç\0\0\0\0¼?@\0\0\0\0\0r\0\0\0\0\0\0\0ü\0\0\"\0\0“@\0\0\0\0\0/\0\0\0\0\0\0\07\0\0\"\0\0Ô˜@\0\0\0\0\0s\0\0\0\0\0\0\0š\0\0\"\0\0¼8@\0\0\0\0\0\'\0\0\0\0\0\0\0­\0\0\0\0z±@\0\0\0\0\0\0\0\0\0\0\0\Æ\0\0\0\0¬-@\0\0\0\0\0\Û\0\0\0\0\0\0\0\İ\0\0\0\0^½@\0\0\0\0\0y\0\0\0\0\0\0\0ü\0\0\"\0\0¾¥@\0\0\0\0\0&\0\0\0\0\0\0\0<\0\0\"\0\0¾2@\0\0\0\0\0\0\0\0\0\0\0\0¤\0\0\"\0\0„@\0\0\0\0\0]\0\0\0\0\0\0\0\ç\0\0\0\0¼?@\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\"\0\0¬­@\0\0\0\0\0\Z\0\0\0\0\0\0\0E\0\0\"\0\0¦š@\0\0\0\0\0\0\0\0\0\0\0\0{\0\0!\0\0\Ì@\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0£\0\0\"\0\0(1@\0\0\0\0\0\0\0\0\0\0\0\0ğ\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\"\0\0\ä{@\0\0\0\0\0-\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\"\0\0@\0\0\0\0\0&\0\0\0\0\0\0\0|\0\0\"\0\0¦@\0\0\0\0\0\é\0\0\0\0\0\0\0\0\0\"\0\0Ø†@\0\0\0\0\0\Z\0\0\0\0\0\0\0P\0\0\"\0\0n@\0\0\0\0\0\0\0\0\0\0\0\0x\0\0!\0\0¨\ß@\0\0\0\0\0H\0\0\0\0\0\0\0Š\0\0\"\0\0N{@\0\0\0\0\0h\0\0\0\0\0\0\0¬\0\0\"\0\0e}@\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\06@\0\0\0\0\0\Z\0\0\0\0\0\0\0\×\0\0\"\0\0~p@\0\0\0\0\0ş\0\0\0\0\0\0\0ÿ\0\0\"\0\0\Æ}@\0\0\0\0\09\0\0\0\0\0\0\0#\0\0\0\0ğ¾@\0\0\0\0\0r\0\0\0\0\0\0\0<\0\0\"\0\0J•@\0\0\0\0\03\0\0\0\0\0\0\0s\0\0\0\02k@\0\0\0\0\0\0\0\0\0\0\0\0•\0\0!\0\0 \Õ@\0\0\0\0\0H\0\0\0\0\0\0\0§\0\0\"\0\0t“@\0\0\0\0\0:\0\0\0\0\0\0\0\Î\0\0\"\0\0ön@\0\0\0\0\0\0\0\0\0\0\0\0\é\0\0\"\0\0¦@\0\0\0\0\0W\0\0\0\0\0\0\0p\0\0\"\0\0N†@\0\0\0\0\0i\0\0\0\0\0\0\0À\0\0\"\0\0FŠ@\0\0\0\0\0b\0\0\0\0\0\0\0\å\0\0\0\0š®@\0\0\0\0\0\'\0\0\0\0\0\0\0ñ\0\0\"\0\0\\ @\0\0\0\0\0\0\0\0\0\0\0\0&\0\0\"\0\0”@\0\0\0\0\0A\0\0\0\0\0\0\0\\\0\0\"\0\0¢@\0\0\0\0\0\0\0\0\0\0\0\0ª\0\0\"\0\0\\¥@\0\0\0\0\0;\0\0\0\0\0\0\0<\0\0\"\0\0\ì§@\0\0\0\0\0=\0\0\0\0\0\0\0w\0\0\"\0\0<r@\0\0\0\0\0\0\0\0\0\0\0\0ª\0\0\0\0$M@\0\0\0\0\0¥\0\0\0\0\0\0\0\Ç\0\0\"\0\0”@\0\0\0\0\0A\0\0\0\0\0\0\0ı\0\0\0\0,=@\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\"\0\0È‰@\0\0\0\0\0p\0\0\0\0\0\0\0S\0\0\"\0\0Ú@\0\0\0\0\0‘\0\0\0\0\0\0\0µ\0\0\"\0\0ü›@\0\0\0\0\0G\0\0\0\0\0\0\0+\0\0\"\0\0÷Œ@\0\0\0\0\0˜\0\0\0\0\0\0\0Œ\0\0\"\0\0fŸ@\0\0\0\0\0\0\0\0\0\0\0\0²\0\0\0\0ª3@\0\0\0\0\0r\0\0\0\0\0\0\0\Ç\0\0\"\0\0ôl@\0\0\0\0\0S\0\0\0\0\0\0\0\à\0\0\0\Z\0ğRa\0\0\0\0\0\0\0\0\0\0\0\0\0\ç\0\0\0\0:@\0\0\0\0\0r\0\0\0\0\0\0\0ü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0ˆ.@\0\0\0\0\0,\0\0\0\0\0\0\0+\Z\0\0\"\0\0X“@\0\0\0\0\0\0\0\0\0\0\0\09\Z\0\0\"\0\0j<@\0\0\0\0\0\'\0\0\0\0\0\0\0L\Z\0\0\"\0\0v€@\0\0\0\0\0j\0\0\0\0\0\0\0|\Z\0\0!\0\0H\×@\0\0\0\0\0H\0\0\0\0\0\0\0“\Z\0\0\"\0\0Œ@\0\0\0\0\0W\0\0\0\0\0\0\0\Ñ\Z\0\0\0\0.V@\0\0\0\0\0\0\0\0\0\0\0ñ\Z\0\0\"\0\0Oƒ@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\"\0\0Pœ@\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Å\0\0\"\0\0P©@\0\0\0\0\0&\0\0\0\0\0\0\0!\0\0\"\0\0V~@\0\0\0\0\0)\0\0\0\0\0\0\0N\0\0\"\0\0´‹@\0\0\0\0\01\0\0\0\0\0\0\0§\0\0\0\0\Ü\Å@\0\0\0\0\0r\0\0\0\0\0\0\0w\0\0\0\0ö7@\0\0\0\0\0r\0\0\0\0\0\0\0Œ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ê\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\0ş\0\0\"\0\0.¤@\0\0\0\0\0I\0\0\0\0\0\0\0S\0\0\"\0\0’‘@\0\0\0\0\0‘\0\0\0\0\0\0\0µ\0\0\"\0\0©@\0\0\0\0\0M\0\0\0\0\0\0\0#\0\0\"\0\0R@\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\"\0\0t”@\0\0\0\0\0ƒ\0\0\0\0\0\0\0¡\0\0\"\0\0´œ@\0\0\0\0\0A\0\0\0\0\0\0\0\Æ\0\0\"\0\0¥@\0\0\0\0\0\0\0\0\0\0\0\0C\0\0!\0\0\0\Ô@\0\0\0\0\0\0\0\0\0\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0³\0\0!\0\0ğ\ß@\0\0\0\0\0\0\0\0\0\0\0\0\Å\0\0!\0\0\Ö@\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0\0’<@\0\0\0\0\0r\0\0\0\0\0\0\0<Š\0\0 \0\Z\0\àRa\0\0\0\0\0\0\0\0\0\0\0\0\0\×\0\0\"\0\0İ–@\0\0\0\0\0m\0\0\0\0\0\0\0H \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z \0\0\"\0\0Ä@\0\0\0\0\0\0\0\0\0\0\0\0Ÿ \0\0\"\0\0Ş@\0\0\0\0\0\0\0\0\0\0\0\0ó \0\0\"\0\0\\œ@\0\0\0\0\0\0\0\0\0\0\0\09!\0\0\"\0\0\"«@\0\0\0\0\0K\0\0\0\0\0\0\0²!\0\0\"\0\00§@\0\0\0\0\0\0\0\0\0\0\0\0>\"\0\0\"\0\0l™@\0\0\0\0\0M\0\0\0\0\0\0\0¡\"\0\0\"\0\0R¨@\0\0\0\0\02\0\0\0\0\0\0\0N\0\0\0\0pJ@\0\0\0\0\0r\0\0\0\0\0\0\0\"#\0\0\0\0À\È@\0\0\0\0\0\0\0\0\0\0\0\01#\0\0\"\0\0Â–@\0\0\0\0\0\0\0\0\0\0\0\0m#\0\0\"\0\0rŸ@\0\0\0\0\0&\0\0\0\0\0\0\0#\0\0\0\0ôT@\0\0\0\0\0:\0\0\0\0\0\0—#\0\0!\0\0ø\Ş@\0\0\0\0\0\0\0\0\0\0\0\0©#\0\0\"\0\0\æ‹@\0\0\0\0\0\0\0\0\0\0\0\0\Ó#\0\0\"\0\0~p@\0\0\0\0\0ş\0\0\0\0\0\0\0û#\0\0\"\0\0”«@\0\0\0\0\0?\0\0\0\0\0\0\0~$\0\0\"\0\0j<@\0\0\0\0\0\'\0\0\0\0\0\0\0‘$\0\0\0\0ø\Ä@\0\0\0\0\0\0\0\0\0\0\0\0°$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ö$\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0%\0\0\"\0\0´q@\0\0\0\0\0\'\0\0\0\0\0\0\0G%\0\0\"\0\0\ä‚@\0\0\0\0\0]\0\0\0\0\0\0\0”%\0\0\"\0\0b˜@\0\0\0\0\0M\0\0\0\0\0\0\0\ä%\0\0\"\0\0Ln@\0\0\0\0\0\0\0\0\0\0\0\0&\0\0\"\0\0Œ@\0\0\0\0\0W\0\0\0\0\0\0\0U&\0\0\"\0\0hm@\0\0\0\0\0\0\0\0\0\0\0\0„&\0\0!\0\0 \Ù@\0\0\0\0\04\0\0\0\0\0\0\0¼&\0\0\"\0\0º@\0\0\0\0\0L\0\0\0\0\0\0\0ô&\0\0\"\0\0w¤@\0\0\0\0\0Y\0\0\0\0\0\0\0V\'\0\0\"\0\0\Z‡@\0\0\0\0\0-\0\0\0\0\0\0\0›\'\0\0\"\0\0*¨@\0\0\0\0\0\0\0\0\0\0\0\0\ç,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0–)@\0\0\0\0\0‡\0\0\0\0\0\0\0Á\'\0\0\"\0\0Ln@\0\0\0\0\0\0\0\0\0\0\0\0ô\'\0\0\"\0\0@@\0\0\0\0\0\0\0\0\0\0\0\07(\0\0\"\0\0)~@\0\0\0\0\0\0\0\0\0\0\0\0h(\0\0\"\0\0¾@\0\0\0\0\0\0\0\0\0\0\0\0“(\0\0\"\0\0Í•@\0\0\0\0\0.\0\0\0\0\0\0\0\Ê(\0\0\"\0\0Dœ@\0\0\0\0\0\0\0\0\0\0\0\0ÿ(\0\0\"\0\0\n–@\0\0\0\0\0‹\0\0\0\0\0\0\0@)\0\0\"\0\0\è2@\0\0\0\0\0+\0\0\0\0\0\0\0²)\0\0\"\0\0 H@\0\0\0\0\05\0\0\0\0\0\0*\0\0\"\0\0(y@\0\0\0\0\0\0\0\0\0\0\0\08*\0\0\0\0¬N@\0\0\0\0\0i\0\0\0\0\0\0\0U*\0\0\"\0\0\0{@\0\0\0\0\0M\0\0\0\0\0\0\0w*\0\0\"\0\0Bp@\0\0\0\0\0\0\0\0\0\0\0\0\Ş*\0\0\"\0\0ş@\0\0\0\0\0\'\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01+\0\0\"\0\0º@\0\0\0\0\0L\0\0\0\0\0\0\0i+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸+\0\0\"\0\0§@\0\0\0\0\0\0\0\0\0\0\0\0K,\0\0\"\0\0~—@\0\0\0\0\0\0\0\0\0\0\0\0i,\0\0\"\0\0xš@\0\0\0\0\0.\0\0\0\0\0\0\0Ÿ,\0\0\"\0\0\ÕI@\0\0\0\0\0\0\0\0\0\0\0\0\È,\0\0\0\0\ÊM@\0\0\0\0\0H\0\0\0\0\0\0\0\å,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ú,\0\0\"\0\0´š@\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\"\0\0R@\0\0\0\0\0A\0\0\0\0\0\0\0L-\0\0\"\0\0€~@\0\0\0\0\0c\0\0\0\0\0\0\0w-\0\0\"\0\0~p@\0\0\0\0\0ş\0\0\0\0\0\0\0Ÿ-\0\0\0\0f\Ä@\0\0\0\0\07\0\0\0\0\0\0\0Á-\0\0\0\06W@\0\0\0\0\0¥\0\0\0\0\0\0\0\à-\0\0\"\0\0*ª@\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0].\0\0\"\0\0Â–@\0\0\0\0\0\0\0\0\0\0\0\0™.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­.\0\0\"\0\0hn@\0\0\0\0\0\0\0\0\0\0\0\0\à.\0\0\"\0\0¦@\0\0\0\0\0\é\0\0\0\0\0\0\0g/\0\0!\0\0\Ì@\0\0\0\0\0\0\0\0\0\0\0\0{/\0\0\"\0\0*@\0\0\0\0\0\'\0\0\0\0\0\0\0Á/\0\0\"\0\00n@\0\0\0\0\0\0\0\0\0\0\0\0\ã/\0\0\"\0\0”@\0\0\0\0\0A\0\0\0\0\0\0\00\0\0\"\0\0‚‰@\0\0\0\0\0F\0\0\0\0\0\0\0R0\0\0\"\0\0v©@\0\0\0\0\0\Z\0\0\0\0\0\0\0­0\0\0\0\0rB@\0\0\0\0\03\0\0\0\0\0\0\0\Ì0\0\0\"\0\0²•@\0\0\0\0\0\0\0\0\0\0\0\0\Û0\0\0\0\0°P@\0\0\0\0\0W\0\0\0\0\0\0\0\í0\0\0\"\0\0°@\0\0\0\0\0\0\0\0\0\0\0\0<1\0\0\"\0\0tr@\0\0\0\0\0\'\0\0\0\0\0\0\0v1\0\0\"\0\0\ä~@\0\0\0\0\0&\0\0\0\0\0\0\0–1\0\0\"\0\0\Ø1@\0\0\0\0\0\0\0\0\0\0\0\0\ç1\0\0\"\0\0ˆ@\0\0\0\0\0\0\0\0\0\0\0\072\0\0\"\0\0@\0\0\0\0\0\'\0\0\0\0\0\0\0q2\0\0\0\0Q@\0\0\0\0\0\ë\0\0\0\0\0\0‰2\0\0\"\0\0\0ª@\0\0\0\0\0*\0\0\0\0\0\0\0\×2\0\0\0\0\Õ.@\0\0\0\0\0k\0\0\0\0\0\0\Ü2\0\0\0\0\0 $@\0\0\0\0\0\0\0\0\0\0\0\0\0$3\0\0!\0\0˜\Ş@\0\0\0\0\0H\0\0\0\0\0\0\063\0\0\"\0\0b¡@\0\0\0\0\0¥\0\0\0\0\0\0\0\Ë3\0\0\"\0\0\Æ}@\0\0\0\0\09\0\0\0\0\0\0\0\ï3\0\0\0\0X³@\0\0\0\0\0)\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#4\0\0\"\0\0\à€@\0\0\0\0\0\'\0\0\0\0\0\0\0]4\0\0\"\0\0Ø¬@\0\0\0\0\0&\0\0\0\0\0\0\0Á4\0\0\"\0\0Fª@\0\0\0\0\0+\0\0\0\0\0\0\0\Ş4\0\0\"\0\0;§@\0\0\0\0\0*\0\0\0\0\0\0\0|5\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0’5\0\0\"\0\0%p@\0\0\0\0\0\0\0\0\0\0\0\0\Ì5\0\0\"\0\0¾2@\0\0\0\0\0\0\0\0\0\0\0\046\0\0\0\0²4@\0\0\0\0\0r\0\0\0\0\0\0\0I6\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0j6\0\0!\0\0€\ß@\0\0\0\0\0\0\0\0\0\0\0\0‚6\0\0\0\0\Ş*@\0\0\0\0\0X\0\0\0\0\0\0™6\0\0\"\0\0˜q@\0\0\0\0\0\0\0\0\0\0\0\0\Î6\0\0!\0\0€\â@\0\0\0\0\0\0\0\0\0\0\0\0\à6\0\0\0\0´@\0\0\0\0\03\0\0\0\0\0\0\07\0\0\"\0\0\n@\0\0\0\0\0&\0\0\0\0\0\0\0*7\0\0!\0\0¸\×@\0\0\0\0\08\0\0\0\0\0\0\0b7\0\0!\0\0 \Î@\0\0\0\0\0\0\0\0\0\0\0\0t7\0\0\"\0\0ÿ}@\0\0\0\0\0\0\0\0\0\0\0\0¥7\0\0\"\0\0°0@\0\0\0\0\0\'\0\0\0\0\0\0\0¸7\0\0\"\0\0jw@\0\0\0\0\0\0\0\0\0\0\0\0ğ7\0\0\"\0\0´‹@\0\0\0\0\01\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-8\0\0\"\0\0X¢@\0\0\0\0\0B\0\0\0\0\0\0\0\\8\0\0\0\0¯@\0\0\0\0\0r\0\0\0\0\0\0\0q8\0\0\Z\0\èRa\0\0\0\0\0\0\0\0\0\0\0\0\0~8\0\0\"\0\0H@\0\0\0\0\0r\0\0\0\0\0\0\0›8\0\0\"\0\0d¬@\0\0\0\0\0:\0\0\0\0\0\0\0/9\0\0\0\0š®@\0\0\0\0\0\'\0\0\0\0\0\0\0;9\0\0\"\0\0J’@\0\0\0\0\0‘\0\0\0\0\0\0\0›9\0\0\0\0\0`$@\0\0\0\0\0\0\0\0\0\0\0\0\0·9\0\0\0\0´.@\0\0\0\0\0!\0\0\0\0\0\0\0\Ô9\0\0\0\0¨K@\0\0\0\0\0g\0\0\0\0\0\0\0\ë9\0\0\"\0\0x5@\0\0\0\0\0\'\0\0\0\0\0\0\0\0:\0\0\"\0\0 |@\0\0\0\0\0M\0\0\0\0\0\0\0+:\0\0\0\0@e@\0\0\0\0\0¾\0\0\0\0\0\0\0R:\0\0\"\0\0t‚@\0\0\0\0\07\0\0\0\0\0\0\0’:\0\0!\0\0\Ì@\0\0\0\0\0\0\0\0\0\0\0\0¤:\0\0\"\0\0ß @\0\0\0\0\0\0\0\0\0\0\0\0\Ö:\0\0!\0\0\0\Í@\0\0\0\0\0\0\0\0\0\0\0\0\ê:\0\0!\0\0x\Ù@\0\0\0\0\0\0\0\0\0\0\0\0\";\0\0\0\0ğC@\0\0\0\0\0Q\0\0\0\0\0\0\0I;\0\0!\0\0ğ\×@\0\0\0\0\0\0\0\0\0\0\0\0¿;\0\0\"\0\0©¢@\0\0\0\0\0\0\0\0\0\0\0\0%<\0\0\"\0\0¢¨@\0\0\0\0\09\0\0\0\0\0\0\0–<\0\0\"\0\0R@\0\0\0\0\0A\0\0\0\0\0\0\0\Î<\0\0\"\0\0¶@\0\0\0\0\0\0\0\0\0\0\0\0ı<\0\0\"\0\0\à@\0\0\0\0\0\0\0\0\0\0\0\0B=\0\0\"\0\0¬|@\0\0\0\0\01\0\0\0\0\0\0\0`=\0\0\0\0h\Ç@\0\0\0\0\0r\0\0\0\0\0\0\0s=\0\0!\0\0p\Ì@\0\0\0\0\0\0\0\0\0\0\0\0‰=\0\0!\0\0\Ñ@\0\0\0\0\0H\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û=\0\0\"\0\0Bp@\0\0\0\0\0\0\0\0\0\0\0\0b>\0\0\"\0\0*@\0\0\0\0\0\'\0\0\0\0\0\0\0¨>\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0¿>\0\0\"\0\0†w@\0\0\0\0\0Y\0\0\0\0\0\0\0õ>\0\0\"\0\0¶{@\0\0\0\0\0-\0\0\0\0\0\0\0?\0\0\"\0\0’­@\0\0\0\0\0\Z\0\0\0\0\0\0\0b?\0\0\"\0\0l›@\0\0\0\0\0w\0\0\0\0\0\0\0 ?\0\0\"\0\0\Æo@\0\0\0\0\0\Z\0\0\0\0\0\0\0\Í?\0\0\"\0\0\ä~@\0\0\0\0\0&\0\0\0\0\0\0\0\í?\0\0\"\0\0\à­@\0\0\0\0\0G\0\0\0\0\0\0\0<@\0\0\"\0\0x­@\0\0\0\0\0\Z\0\0\0\0\0\0\0„@\0\0\"\0\0|q@\0\0\0\0\0\0\0\0\0\0\0\0¦@\0\0!\0\08\Î@\0\0\0\0\0\0\0\0\0\0\0\0¸@\0\0\0\0pJ@\0\0\0\0\0r\0\0\0\0\0\0\0\Ë@\0\0\"\0\0\Äm@\0\0\0\0\0&\0\0\0\0\0\0\0\è@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0û@\0\0\0\0¸´@\0\0\0\0\03\0\0\0\0\0\0\0A\0\0!\0\0€\á@\0\0\0\0\0H\0\0\0\0\0\0\02A\0\0\0\0tC@\0\0\0\0\0|\0\0\0\0\0\0\0ŠA\0\0!\0\00\Ò@\0\0\0\0\0H\0\0\0\0\0\0\0 A\0\0\"\0\0n@\0\0\0\0\0\0\0\0\0\0\0\0\ÈA\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ÜA\0\0!\0\0¸\Ï@\0\0\0\0\0H\0\0\0\0\0\0\0ğA\0\0\0\0=@\0\0\0\0\0\'\0\0\0\0\0\0\0B\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0@B\0\0\"\0\0rŸ@\0\0\0\0\0&\0\0\0\0\0\0\0RB\0\0\"\0\0.l@\0\0\0\0\0a\0\0\0\0\0\0\0jB\0\0\"\0\0\Ê2@\0\0\0\0\0\0\0\0\0\0\0\0\ÓB\0\0!\0\0\Ğ\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0›\0\0\0\0p*@\0\0\0\0\0m\0\0\0\0\0\0\0\åB\0\0\"\0\0\í @\0\0\0\0\0u\0\0\0\0\0\0\0ùB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0PC\0\0\"\0\0G~@\0\0\0\0\0\0\0\0\0\0\0\0‰C\0\0\0\0N@\0\0\0\0\0š\0\0\0\0\0\0\0\ÛC\0\0\"\0\0Lz@\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0aD\0\0!\0\0\0Sa\0\0\0\0\0X\0\0\0\0\0\0\0“D\0\0\"\0\0Ôš@\0\0\0\0\0\0\0\0\0\0\0\0¹D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ãD\0\0\"\0\0R@\0\0\0\0\0A\0\0\0\0\0\0\0E\0\0\0\0\â>@\0\0\0\0\0‡\0\0\0\0\0\0\00E\0\0!\0\0p\Ş@\0\0\0\0\0\0\0\0\0\0\0\0W´\0\0\0\0¤\È@\0\0\0\0\0\0\0\0\0\0\0\0\0HE\0\0\"\0\03@\0\0\0\0\0\0\0\0\0\0\0\0°E\0\0!\0\0À\à@\0\0\0\0\0\0\0\0\0\0\0\0\ÄE\0\0\"\0\0^@\0\0\0\0\0\0\0\0\0\0\0\0F\0\0\"\0\01†@\0\0\0\0\0\0\0\0\0\0\0\0AF\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XF\0\0\0\0Ú³@\0\0\0\0\03\0\0\0\0\0\0\0{F\0\0\"\0\0\nz@\0\0\0\0\0\0\0\0\0\0\0\0ªF\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\ÙF\0\0\"\0\0\\œ@\0\0\0\0\0\0\0\0\0\0\0\0G\0\0!\0\0X\Ş@\0\0\0\0\0\0\0\0\0\0\0\07G\0\0\"\0\0ô1@\0\0\0\0\0j\0\0\0\0\0\0\0’G\0\0\"\0\0<x@\0\0\0\0\0\0\0\0\0\0\0\0°G\0\0!\0\0°\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0\ÄG\0\0\0\0ü²@\0\0\0\0\0[\0\0\0\0\0\0\0\İG\0\0\"\0\0Dœ@\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0D7@\0\0\0\0\0_\0\0\0\0\0\0\0#H\0\0\"\0\0&@\0\0\0\0\0\0\0\0\0\0\0\0XH\0\0\"\0\0|@\0\0\0\0\0+\0\0\0\0\0\0\0°H\0\0\"\0\0>š@\0\0\0\0\0*\0\0\0\0\0\0\0\âH\0\0\"\0\0\à§@\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\ä8@\0\0\0\0\0r\0\0\0\0\0\0\0I\0\0\"\0\0FŠ@\0\0\0\0\0b\0\0\0\0\0\0\0=I\0\0\"\0\0¾¬@\0\0\0\0\0\Z\0\0\0\0\0\0\0\ÃI\0\0\"\0\0¨u@\0\0\0\0\05\0\0\0\0\0\0\0J\0\0\"\0\0D1@\0\0\0\0\0\0\0\0\0\0\0\0bJ\0\0\"\0\0D¢@\0\0\0\0\0\0\0\0\0\0\0\0J\0\0\"\0\0“@\0\0\0\0\0/\0\0\0\0\0\0\0\ËJ\0\0!\0\0¸\Ì@\0\0\0\0\0H\0\0\0\0\0\0\0\ßJ\0\0\"\0\0ş—@\0\0\0\0\0\0\0\0\0\0\0\0K\0\0\"\0\0Hm@\0\0\0\0\0\0\0\0\0\0\0\0\\K\0\0\0\0xA@\0\0\0\0\0ù\0\0\0\0\0\0\0{K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”K\0\0\"\0\0\ä›@\0\0\0\0\0\0\0\0\0\0\0\0\çK\0\0\0\0†¯@\0\0\0\0\0\'\0\0\0\0\0\0\0üK\0\0\"\0\0˜¥@\0\0\0\0\0%\0\0\0\0\0\0\0ş\0\0\0\0²4@\0\0\0\0\0r\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\çL\0\0\"\0\0Ty@\0\0\0\0\0K\0\0\0\0\0\0\0M\0\0\"\0\0SJ@\0\0\0\0\0\0\0\0\0\0\0\0M\0\0\"\0\0 t@\0\0\0\0\0\0\0\0\0\0\0\0¨M\0\0\0\0\Ä@\0\0\0\0\0\0\0\0\0\0\0\0\ÉM\0\0\"\0\0¸¢@\0\0\0\0\0u\0\0\0\0\0\0dN\0\0\"\0\0H‡@\0\0\0\0\0R\0\0\0\0\0\0\0“N\0\0\"\0\0’‘@\0\0\0\0\0‘\0\0\0\0\0\0\0õN\0\0\"\0\0\0ª@\0\0\0\0\0*\0\0\0\0\0\0\0CO\0\0\"\0\08Š@\0\0\0\0\0\0\0\0\0\0\0\0O\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0¯O\0\0\"\0\0>˜@\0\0\0\0\0$\0\0\0\0\0\0\0\ãO\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ùO\0\0\"\0\0hz@\0\0\0\0\0{\0\0\0\0\0\0\0>P\0\0\"\0\0,©@\0\0\0\0\0#\0\0\0\0\0\0\0\ØP\0\0\"\0\0R­@\0\0\0\0\0&\0\0\0\0\0\0\09Q\0\0\"\0\0\Är@\0\0\0\0\0\'\0\0\0\0\0\0\0pQ\0\0\0\0¶¿@\0\0\0\0\0r\0\0\0\0\0\0\0ƒQ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0–Q\0\0\"\0\0\\Œ@\0\0\0\0\0M\0\0\0\0\0\0\0\ÅQ\0\0\0\0b^@\0\0\0\0\0u\0\0\0\0\0\0\çQ\0\0\"\0\0\0€@\0\0\0\0\01\0\0\0\0\0\0\0IR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^R\0\0\0\0f´@\0\0\0\0\0.\0\0\0\0\0\0\0ŠR\0\0!\0\0h\ß@\0\0\0\0\0\0\0\0\0\0\0\0¢R\0\0\0\0Q@\0\0\0\0\0\ë\0\0\0\0\0\0l\0\0\0\0*¾@\0\0\0\0\0r\0\0\0\0\0\0\0ºR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\"\0\0°1@\0\0\0\0\0\'\0\0\0\0\0\0\0sS\0\0\0\0O@\0\0\0\0\0i\0\0\0\0\0\0\0\ÃS\0\0!\0\0\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0\×S\0\0\0\0\â\\@\0\0\0\0\0\0\0\0\0\0\0÷S\0\0!\0\0\à\á@\0\0\0\0\0\0\0\0\0\0\0\0\rT\0\0\"\0\0ü@\0\0\0\0\0‘\0\0\0\0\0\0\0\\T\0\0\"\0\0Ô˜@\0\0\0\0\0s\0\0\0\0\0\0\0¿T\0\0!\0\0\0\Ğ@\0\0\0\0\0\0\0\0\0\0\0\0\ÓT\0\0\"\0\0\æx@\0\0\0\0\0\"\0\0\0\0\0\0\0öT\0\0\"\0\0û•@\0\0\0\0\0\0\0\0\0\0\0\0-U\0\0\"\0\0¤@\0\0\0\0\0\0\0\0\0\0\0\0sU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‡U\0\0\0\0Z@\0\0\0\0\0ğ\0\0\0\0\0\0\0\ãU\0\0\"\0\0\àš@\0\0\0\0\0#\0\0\0\0\0\0\0V\0\0\"\0\0n«@\0\0\0\0\0&\0\0\0\0\0\0\0V\0\0\"\0\0÷Œ@\0\0\0\0\0˜\0\0\0\0\0\0\0ñV\0\0\0\0È¸@\0\0\0\0\0=\0\0\0\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05W\0\0\"\0\0rª@\0\0\0\0\0M\0\0\0\0\0\0\0nW\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\âW\0\0\"\0\0\çI@\0\0\0\0\0b\0\0\0\0\0\0\0$X\0\0\0\0\ÜW@\0\0\0\0\0-\0\0\0\0\0\0\0DX\0\0\"\0\0˜q@\0\0\0\0\0\0\0\0\0\0\0\0yX\0\0\"\0\0›@\0\0\0\0\0h\0\0\0\0\0\0\0«X\0\0!\0\0¨\â@\0\0\0\0\0H\0\0\0\0\0\0\0½X\0\0\"\0\0®“@\0\0\0\0\0\0\0\0\0\0\0\0\âX\0\0\"\0\0ru@\0\0\0\0\05\0\0\0\0\0\0\0!Y\0\0\"\0\0|@\0\0\0\0\0\'\0\0\0\0\0\0\0gY\0\0\"\0\0š—@\0\0\0\0\0#\0\0\0\0\0\0\0\ã\0\0\0\0¯@\0\0\0\0\0r\0\0\0\0\0\0\0ªY\0\0\0\04\Ä@\0\0\0\0\0\0\0\0\0\0\0\0\ÅY\0\0\"\0\0”o@\0\0\0\0\01\0\0\0\0\0\0\0ğY\0\0\"\0\00§@\0\0\0\0\0\0\0\0\0\0\0\0|Z\0\0\"\0\0\Æ}@\0\0\0\0\09\0\0\0\0\0\0\0 Z\0\0\"\0\0¦–@\0\0\0\0\0\0\0\0\0\0\0\0\ÜZ\0\0\"\0\0\ÒF@\0\0\0\0\0\0\0\0\0\0\0\0$[\0\0\"\0\06¨@\0\0\0\0\0\0\0\0\0\0\0\0z[\0\0\"\0\0Œ@\0\0\0\0\0W\0\0\0\0\0\0\0¸[\0\0\0\0\êg@\0\0\0\0\0Q\0\0\0\0\0\0\\\0\0\0\04@\0\0\0\0\0C\0\0\0\0\0\0\0%\\\0\0\"\0\02€@\0\0\0\0\0\'\0\0\0\0\0\0\0N\\\0\0\"\0\0¬­@\0\0\0\0\0\Z\0\0\0\0\0\0\0\\\0\0\0\0’<@\0\0\0\0\0r\0\0\0\0\0\0\0\è,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¦\\\0\0\"\0\0\æ‹@\0\0\0\0\0\0\0\0\0\0\0\0\Ğ\\\0\0\0\0‚³@\0\0\0\0\0,\0\0\0\0\0\0\0ü\\\0\0!\0\0ˆ\Ô@\0\0\0\0\0H\0\0\0\0\0\0\0\Z]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n]\0\0!\0\0\ã@\0\0\0\0\0\0\0\0\0\0\0\0€]\0\0\"\0\0\Ş|@\0\0\0\0\0)\0\0\0\0\0\0\0 ]\0\0\"\0\0Ä„@\0\0\0\0\0]\0\0\0\0\0\0\0\0^\0\0\"\0\0–@\0\0\0\0\0[\0\0\0\0\0\0\0`^\0\0\0\0B´@\0\0\0\0\0#\0\0\0\0\0\0\0^\0\0\"\0\0´q@\0\0\0\0\0\'\0\0\0\0\0\0\0ª^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¾^\0\0\"\0\0hš@\0\0\0\0\0\0\0\0\0\0\0\0ó^\0\0!\0\0\Ğ\Ô@\0\0\0\0\0\0\0\0\0\0\0\0_\0\0!\0\0 \Ú@\0\0\0\0\0\0\0\0\0\0\0\0\Z_\0\0\"\0\0Z€@\0\0\0\0\0\0\0\0\0\0\0\08_\0\0\"\0\0bp@\0\0\0\0\0\0\0\0\0\0\0\0€_\0\0\0\0\Îi@\0\0\0\0\0\Ó\0\0\0\0\0\0\0¡_\0\0\"\0\0º™@\0\0\0\0\0M\0\0\0\0\0\0\0`\0\0\"\0\0!…@\0\0\0\0\0\0\0\0\0\0\0\0H`\0\0\"\0\0Œ@\0\0\0\0\0W\0\0\0\0\0\0\0†`\0\0\"\0\0š¢@\0\0\0\0\0\0\0\0\0\0\0\0¯`\0\0\0\0ü²@\0\0\0\0\0[\0\0\0\0\0\0\0\È`\0\0\"\0\0fŸ@\0\0\0\0\0\0\0\0\0\0\0\0\î`\0\0\"\0\0¶„@\0\0\0\0\0\0\0\0\0\0\0\06a\0\0!\0\0\×@\0\0\0\0\0(\0\0\0\0\0\0\0Ra\0\0\0\0\ÊM@\0\0\0\0\0H\0\0\0\0\0\0\0oa\0\0\"\0\0––@\0\0\0\0\0\0\0\0\0\0\0\0¢a\0\0!\0\0 \Ñ@\0\0\0\0\0\0\0\0\0\0\0\0¶a\0\0\"\0\0\Üq@\0\0\0\0\0\0\0\0\0\0\0\0\éa\0\0\"\0\0ªŒ@\0\0\0\0\0M\0\0\0\0\0\0\0@Š\0\0\0\0 (@\0\0\0\0\0*\0\0\0\0\0\0\0#b\0\0\"\0\0H™@\0\0\0\0\0$\0\0\0\0\0\0\0hb\0\0!\0\0\Ù@\0\0\0\0\0\0\0\0\0\0\0\0b\0\0\"\0\00@\0\0\0\0\0X\0\0\0\0\0\0\0\×b\0\0\0\0@\Â@\0\0\0\0\0r\0\0\0\0\0\0\0\ìb\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Dc\0\0\"\0\0 y@\0\0\0\0\0H\0\0\0\0\0\0\0yc\0\0\0\0(`@\0\0\0\0\0K\0\0\0\0\0\0\0™c\0\0\"\0\0°0@\0\0\0\0\0\'\0\0\0\0\0\0\0¬c\0\0\0\0’k@\0\0\0\0\0\0\0\0\0\0\0\0\Ëc\0\0\0\0\îj@\0\0\0\0\0\0\0\0\0\0\0\0\çc\0\0\"\0\0ÿ}@\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\"\0\0J’@\0\0\0\0\0‘\0\0\0\0\0\0\0xd\0\0\"\0\0\ä¤@\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\"\0\0R@\0\0\0\0\0A\0\0\0\0\0\0\09e\0\0!\0\0H\Ù@\0\0\0\0\0\0\0\0\0\0\0\0Ue\0\0\"\0\0´š@\0\0\0\0\0\0\0\0\0\0\0\0oe\0\0\"\0\0°n@\0\0\0\0\0*\0\0\0\0\0\0\0¨e\0\0\0\0M=@\0\0\0\0\0e\0\0\0\0\0\0\0¹e\0\0\"\0\0@\0\0\0\0\0\'\0\0\0\0\0\0\0óe\0\0!\0\0\Ş@\0\0\0\0\0H\0\0\0\0\0\0\0f\0\0\"\0\0\Ún@\0\0\0\0\0\0\0\0\0\0\0\0&f\0\0\0\0d[@\0\0\0\0\0\ä\0\0\0\0\0\0\0Pf\0\0\"\0\0\à­@\0\0\0\0\0G\0\0\0\0\0\0\0Ÿf\0\0\0\04\Å@\0\0\0\0\0\0\0\0\0\0\0\0\Ãf\0\0\0\06,@\0\0\0\0\0v\0\0\0\0\0\0\rg\0\0\"\0\02“@\0\0\0\0\0&\0\0\0\0\0\0\0Hg\0\0\"\0\02€@\0\0\0\0\0\'\0\0\0\0\0\0\0qg\0\0\"\0\0º@\0\0\0\0\0L\0\0\0\0\0\0\0©g\0\0!\0\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0½g\0\0\"\0\0¾@\0\0\0\0\0\0\0\0\0\0\0\0\èg\0\0!\0\0@\Ú@\0\0\0\0\0H\0\0\0\0\0\0\0ñg\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0mh\0\0\"\0\0Z€@\0\0\0\0\0\0\0\0\0\0\0\0‹h\0\0\"\0\0n|@\0\0\0\0\0>\0\0\0\0\0\0\0\Üh\0\0\"\0\0´‹@\0\0\0\0\01\0\0\0\0\0\0\0i\0\0\"\0\0R¨@\0\0\0\0\02\0\0\0\0\0\0\0†i\0\0\"\0\0\ÒF@\0\0\0\0\0\0\0\0\0\0\0\0\Îi\0\0\"\0\0\0€@\0\0\0\0\01\0\0\0\0\0\0\00j\0\0!\0\0°\Ø@\0\0\0\0\0\0\0\0\0\0\0\0Lj\0\0\"\0\0´@\0\0\0\0\0&\0\0\0\0\0\0\0€j\0\0!\0\0\Ø\Í@\0\0\0\0\0H\0\0\0\0\0\0\0’j\0\0!\0\0\à\Ş@\0\0\0\0\0\0\0\0\0\0\0\0¤j\0\0\0\0rB@\0\0\0\0\03\0\0\0\0\0\0\0\Ãj\0\0\0\0§6@\0\0\0\0\0\0\0\0\0\0\0\0\Ñj\0\0\"\0\0Xr@\0\0\0\0\0\0\0\0\0\0\0\0k\0\0!\0\0¨\Û@\0\0\0\0\0\0\0\0\0\0\0\0)k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ck\0\0\"\0\0\ÏD@\0\0\0\0\0c\0\0\0\0\0\0\0]k\0\0!\0\0ø\È@\0\0\0\0\0H\0\0\0\0\0\0\0zk\0\0\0\0ôT@\0\0\0\0\0:\0\0\0\0\0\0’k\0\0\"\0\0H@\0\0\0\0\0r\0\0\0\0\0\0\0¯k\0\0!\0\0ğ\Õ@\0\0\0\0\0\0\0\0\0\0\0\0Ák\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0\"\0\0¬‚@\0\0\0\0\07\0\0\0\0\0\0\0Rl\0\0\"\0\0f6@\0\0\0\0\0\'\0\0\0\0\0\0\0gl\0\0\0\0e@\0\0\0\0\00\0\0\0\0\0\0\0†l\0\0\"\0\00…@\0\0\0\0\0]\0\0\0\0\0\0\0\äl\0\0\0\0òZ@\0\0\0\0\0r\0\0\0\0\0\0\0	m\0\0\"\0\0ü›@\0\0\0\0\0G\0\0\0\0\0\0\0m\0\0\"\0\0”o@\0\0\0\0\01\0\0\0\0\0\0\0ªm\0\0\0\0(®@\0\0\0\0\0r\0\0\0\0\0\0\0¶m\0\0\"\0\0°1@\0\0\0\0\0\'\0\0\0\0\0\0\0\nn\0\0\"\0\0€~@\0\0\0\0\0c\0\0\0\0\0\0\05n\0\0\"\0\0\\Œ@\0\0\0\0\0M\0\0\0\0\0\0\0dn\0\0\0\0rX@\0\0\0\0\0q\0\0\0\0\0\0\0€n\0\0\0\0V9@\0\0\0\0\0.\0\0\0\0\0\0\0™n\0\0\"\0\0\à€@\0\0\0\0\0\'\0\0\0\0\0\0\0\É\0\0\0\0¶¿@\0\0\0\0\0r\0\0\0\0\0\0\0\Ón\0\0\"\0\0Ò@\0\0\0\0\0j\0\0\0\0\0\0\0o\0\0\"\0\0Ö@\0\0\0\0\0B\0\0\0\0\0\0\0Do\0\0\"\0\03@\0\0\0\0\0\0\0\0\0\0\0\0¬o\0\0\"\0\0”0@\0\0\0\0\0\0\0\0\0\0\0\0ùo\0\0\"\0\0„@\0\0\0\0\0]\0\0\0\0\0\0\0Yp\0\0\"\0\0Èƒ@\0\0\0\0\0 \0\0\0\0\0\0\0wp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0“p\0\0\0\0½@\0\0\0\0\0W\0\0\0\0\0\0\0±p\0\0\"\0\0\Ø2@\0\0\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\È\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\'q\0\0\"\0\0¸†@\0\0\0\0\0 \0\0\0\0\0\0\0Vq\0\0\"\0\0\à§@\0\0\0\0\0\0\0\0\0\0\0\0Œq\0\0\"\0\0Hm@\0\0\0\0\0\0\0\0\0\0\0\0\Úq\0\0\"\0\0&@\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#r\0\0\"\0\0\ä›@\0\0\0\0\0\0\0\0\0\0\0\0vr\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\0\Êr\0\0\"\0\0Š‹@\0\0\0\0\0)\0\0\0\0\0\0\0ôr\0\0\"\0\0\êm@\0\0\0\0\0)\0\0\0\0\0\0\0s\0\0!\0\0\È\Ø@\0\0\0\0\0\0\0\0\0\0\0\0As\0\0\0\0\ä8@\0\0\0\0\0r\0\0\0\0\0\0\0Vs\0\0\Z\0ğRa\0\0\0\0\0\0\0\0\0\0\0\0\0bs\0\0\"\0\0|@\0\0\0\0\0\0\0\0\0\0\0\0—s\0\0\0\0şe@\0\0\0\0\0\Õ\0\0\0\0\0\0\0\ìs\0\0\"\0\0\n@\0\0\0\0\0&\0\0\0\0\0\0\0t\0\0\"\0\0l‘@\0\0\0\0\0&\0\0\0\0\0\0\0Yt\0\0\"\0\0\Ún@\0\0\0\0\0\0\0\0\0\0\0\0tt\0\0\0\0”´@\0\0\0\0\0#\0\0\0\0\0\0\0˜t\0\0\"\0\0x@\0\0\0\0\0H\0\0\0\0\0\0\0¼t\0\0\"\0\0š@\0\0\0\0\0\0\0\0\0\0\0\0\át\0\0\"\0\0\èy@\0\0\0\0\0\"\0\0\0\0\0\0\0u\0\0\"\0\0¾¥@\0\0\0\0\0&\0\0\0\0\0\0\0Uu\0\0\"\0\0š‡@\0\0\0\0\0\0\0\0\0\0\0\0cu\0\0\"\0\0€~@\0\0\0\0\0c\0\0\0\0\0\0\0u\0\0\"\0\0u@\0\0\0\0\0\\\0\0\0\0\0\0\0·u\0\0\"\0\0P©@\0\0\0\0\0&\0\0\0\0\0\0\0v\0\0\"\0\0¢¨@\0\0\0\0\09\0\0\0\0\0\0\0„v\0\0!\0\0P\á@\0\0\0\0\0\0\0\0\0\0\0\0˜v\0\0!\0\0 \×@\0\0\0\0\0(\0\0\0\0\0\0\0\Ív\0\0\"\0\0b˜@\0\0\0\0\0M\0\0\0\0\0\0\0w\0\0\"\0\0hn@\0\0\0\0\0\0\0\0\0\0\0\0Pw\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0dw\0\0\0\0†¯@\0\0\0\0\0\'\0\0\0\0\0\0\0yw\0\0!\0\0H\Û@\0\0\0\0\0H\0\0\0\0\0\0\0‹w\0\0\"\0\0€~@\0\0\0\0\0c\0\0\0\0\0\0\0¶w\0\0\"\0\0¶‡@\0\0\0\0\0\Ì\0\0\0\0\0\0\éw\0\0!\0\0@\Ì@\0\0\0\0\0\0\0\0\0\0\0\0ıw\0\0!\0\0\Ø\Ù@\0\0\0\0\0\0\0\0\0\0\0\00x\0\0\"\0\0Ä„@\0\0\0\0\0]\0\0\0\0\0\0\0x\0\0\0\0ˆ°@\0\0\0\0\0r\0\0\0\0\0\0\0£x\0\0\"\0\0\ìr@\0\0\0\0\0\'\0\0\0\0\0\0\0\Úx\0\0\"\0\0Àª@\0\0\0\0\0;\0\0\0\0\0\0\0y\0\0\"\0\0ş@\0\0\0\0\0\'\0\0\0\0\0\0\0#W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ey\0\0\0\0*¾@\0\0\0\0\0r\0\0\0\0\0\0\0Xy\0\0\"\0\0Ü¨@\0\0\0\0\0P\0\0\0\0\0\0\0\îy\0\0\"\0\0$@\0\0\0\0\0j\0\0\0\0\0\0\0/z\0\0\"\0\0Æ­@\0\0\0\0\0\Z\0\0\0\0\0\0\0}z\0\0\"\0\0„¨@\0\0\0\0\0\0\0\0\0\0\0\0ûz\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0O{\0\0\"\0\0¤@\0\0\0\0\0\0\0\0\0\0\0\0•{\0\0\"\0\0Rx@\0\0\0\0\0K\0\0\0\0\0\0\0y\0\0\0\0\Ã@\0\0\0\0\0.\0\0\0\0\0\0»{\0\0\"\0\0\\Œ@\0\0\0\0\0M\0\0\0\0\0\0\0\ê{\0\0\0\0>@\0\0\0\0\0‰\0\0\0\0\0\0\0ÿ{\0\0\"\0\0Ú—@\0\0\0\0\0#\0\0\0\0\0\0\0S|\0\0\"\0\0\ä¥@\0\0\0\0\0\0\0\0\0\0\0\0«|\0\0\0\0\Ş*@\0\0\0\0\0X\0\0\0\0\0\0\Â|\0\0\0\0\àTa\0\0\0\0\0\0\0\0\0\0\0\0\Ì|\0\0\"\0\0>y@\0\0\0\0\0\0\0\0\0\0\0\0û|\0\0\"\0\0}@\0\0\0\0\0]\0\0\0\0\0\0\0}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06}\0\0\"\0\0\r~@\0\0\0\0\0\0\0\0\0\0\0\0€}\0\0\"\0\0²•@\0\0\0\0\0\0\0\0\0\0\0\0}\0\0\"\0\0¦l@\0\0\0\0\0*\0\0\0\0\0\0\0§}\0\0\"\0\0˜Ÿ@\0\0\0\0\0\0\0\0\0\0\0\0÷}\0\0\0\0À`@\0\0\0\0\0]\0\0\0\0\0\0S~\0\0\0\0`Sa\0\0\0\0\0\0\0\0\0\0\0j~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸~\0\0\"\0\0ü›@\0\0\0\0\0G\0\0\0\0\0\0\0.\0\0\"\0\0x5@\0\0\0\0\0\'\0\0\0\0\0\0\0C\0\0\"\0\0j @\0\0\0\0\0u\0\0\0\0\0\0\0Z\0\0\"\0\0 |@\0\0\0\0\0M\0\0\0\0\0\0\0…\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ç\0\0!\0\0pTa\0\0\0\0\0X\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06€\0\0\0\0N@\0\0\0\0\0š\0\0\0\0\0\0\0ˆ€\0\0\0\0=@\0\0\0\0\0\'\0\0\0\0\0\0\0Ÿ€\0\0\0\0¦k@\0\0\0\0\0\0\0\0\0\0\0\0¾€\0\0\"\0\0~@\0\0\0\0\0\0\0\0\0\0\0\0\í€\0\0\"\0\0¦–@\0\0\0\0\0\0\0\0\0\0\0\0)\0\0\"\0\0\0¦@\0\0\0\0\0\0\0\0\0\0\0\0¨\0\0\"\0\0rª@\0\0\0\0\0M\0\0\0\0\0\0\0\á\0\0\"\0\0\Ğl@\0\0\0\0\0$\0\0\0\0\0\0\0ò\0\0\"\0\0\èG@\0\0\0\0\0[\0\0\0\0\0\0\0A‚\0\0!\0\0\0\Ú@\0\0\0\0\0/\0\0\0\0\0\0\0t‚\0\0\"\0\0N{@\0\0\0\0\0h\0\0\0\0\0\0\0–‚\0\0\"\0\0¾§@\0\0\0\0\0\0\0\0\0\0\0\05ƒ\0\0\"\0\0n„@\0\0\0\0\0H\0\0\0\0\0\0\0jƒ\0\0\"\0\0¨@\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0!\0\0ğ\â@\0\0\0\0\0\0\0\0\0\0\0\0°ƒ\0\0\"\0\0º@\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0VÁ@\0\0\0\0\0–\0\0\0\0\0\0\0\èƒ\0\0\0\0xA@\0\0\0\0\0ù\0\0\0\0\0\0\0„\0\0!\0\0 \Ø@\0\0\0\0\0r\0\0\0\0\0\0\0}„\0\0\"\0\00¢@\0\0\0\0\0\0\0\0\0\0\0\0Ë„\0\0\"\0\0Ø†@\0\0\0\0\0\Z\0\0\0\0\0\0\0…\0\0\"\0\0Ôš@\0\0\0\0\0\0\0\0\0\0\0\0>…\0\0\0\0\Ü\Å@\0\0\0\0\0r\0\0\0\0\0\0\0Q…\0\0\"\0\0š¢@\0\0\0\0\0\0\0\0\0\0\0\0z…\0\0\"\0\0s@\0\0\0\0\0\0\0\0\0\0\0\0­…\0\0!\0\0˜\Ø@\0\0\0\0\0\0\0\0\0\0\0\0É…\0\0\"\0\0¦@\0\0\0\0\0\é\0\0\0\0\0\0\0P†\0\0\"\0\0~•@\0\0\0\0\04\0\0\0\0\0\0\0‡†\0\0\"\0\0ªŒ@\0\0\0\0\0M\0\0\0\0\0\0\0Á†\0\0\"\0\0†o@\0\0\0\0\0\0\0\0\0\0\0\0‡\0\0\0\0¦B@\0\0\0\0\0\Í\0\0\0\0\0\0\0)‡\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0X‡\0\0\"\0\0¹“@\0\0\0\0\0+\0\0\0\0\0\0\0n‡\0\0\"\0\0‡@\0\0\0\0\0\0\0\0\0\0\0\0œ‡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\è‡\0\0\"\0\0\Z˜@\0\0\0\0\0#\0\0\0\0\0\0\0<ˆ\0\0\"\0\0y@\0\0\0\0\0\0\0\0\0\0\0\0Zˆ\0\0\"\0\0ò†@\0\0\0\0\0\Z\0\0\0\0\0\0\0§ˆ\0\0\0\0¬-@\0\0\0\0\0\Û\0\0\0\0\0\0\0¾ˆ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\"\0\0\ä~@\0\0\0\0\0&\0\0\0\0\0\0\0/‰\0\0\"\0\0\ìu@\0\0\0\0\0I\0\0\0\0\0\0\0m‰\0\0\"\0\03@\0\0\0\0\0\0\0\0\0\0\0\0Ì‰\0\0\"\0\0©@\0\0\0\0\0M\0\0\0\0\0\0\0:Š\0\0\0\Z\0\àRa\0\0\0\0\0\0\0\0\0\0\0\0\0GŠ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]Š\0\0\"\0\0°˜@\0\0\0\0\0$\0\0\0\0\0\0\0¢Š\0\0\0\06K@\0\0\0\0\0r\0\0\0\0\0\0\0µŠ\0\0\"\0\0D1@\0\0\0\0\0\0\0\0\0\0\0\0‹\0\0\"\0\0>y@\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0øTa\0\0\0\0\0\0\0\0\0\0\0\0\0D‹\0\0\"\0\0Aƒ@\0\0\0\0\0\0\0\0\0\0\0\0a‹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«‹\0\0!\0\0`\Ù@\0\0\0\0\0\0\0\0\0\0\0\0Ç‹\0\0\"\0\0hm@\0\0\0\0\0\0\0\0\0\0\0\0ö‹\0\0\"\0\0DH@\0\0\0\0\0[\0\0\0\0\0\0\0YŒ\0\0!\0\0\è\Ó@\0\0\0\0\0\0\0\0\0\0\0\0mŒ\0\0\"\0\0œr@\0\0\0\0\0\'\0\0\0\0\0\0\0“Œ\0\0\"\0\003@\0\0\0\0\0\0\0\0\0\0\0\0\äŒ\0\0\"\0\0´œ@\0\0\0\0\0A\0\0\0\0\0\0\0*\0\0\0\0 5@\0\0\0\0\0r\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|À@\0\0\0\0\0‡\0\0\0\0\0\0\00\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0Q\0\0\"\0\0¼8@\0\0\0\0\0\'\0\0\0\0\0\0\0d\0\0\"\0\0’­@\0\0\0\0\0\Z\0\0\0\0\0\0\0²\0\0\"\0\0¦@\0\0\0\0\0W\0\0\0\0\0\0\09\0\0\0\0\ÈY@\0\0\0\0\0:\0\0\0\0\0\0\0T\0\0\"\0\0ş—@\0\0\0\0\0\0\0\0\0\0\0\0ƒ\0\0!\0\0 \à@\0\0\0\0\0\0\0\0\0\0\0\0—\0\0!\0\0\è\à@\0\0\0\0\0H\0\0\0\0\0\0\0«\0\0\"\0\0\Ø0@\0\0\0\0\0\'\0\0\0\0\0\0\0À\0\0\"\0\0)~@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\"\0\0b¡@\0\0\0\0\0¥\0\0\0\0\0\0\0†\0\0\"\0\0Š‹@\0\0\0\0\0)\0\0\0\0\0\0\0°\0\0\"\0\0`1@\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\"\0\0›@\0\0\0\0\0h\0\0\0\0\0\0\06\0\0!\0\0ˆ\Ú@\0\0\0\0\0\0\0\0\0\0\0\0?\0\0\0\0\Å@\0\0\0\0\0\0\0\0\0\0\0\0_\0\0!\0\0°\Í@\0\0\0\0\0\0\0\0\0\0\0\0s\0\0\"\0\0H‡@\0\0\0\0\0R\0\0\0\0\0\0\0¢\0\0!\0\0ğ\Ë@\0\0\0\0\0\0\0\0\0\0\0\0´\0\0\"\0\0„m@\0\0\0\0\0?\0\0\0\0\0\0\0Ñ\0\0\"\0\0–2@\0\0\0\0\0\'\0\0\0\0\0\0\01‘\0\0\"\0\0r@\0\0\0\0\0\'\0\0\0\0\0\0\0k‘\0\0!\0\0`\Ì@\0\0\0\0\0\0\0\0\0\0\0\0‘\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™‘\0\0\"\0\0Ú…@\0\0\0\0\0\"\0\0\0\0\0\0\0Í‘\0\0\"\0\0Ğ§@\0\0\0\0\0\0\0\0\0\0\0\0$’\0\0\"\0\0s}@\0\0\0\0\0\Z\0\0\0\0\0\0\0N’\0\0\0\0\0k@\0\0\0\0\0\0\0\0\0\0\0\0n’\0\0\"\0\0<‚@\0\0\0\0\07\0\0\0\0\0\0\0’\0\0\"\0\0\Æ}@\0\0\0\0\09\0\0\0\0\0\0\0Á’\0\0\"\0\0ªŒ@\0\0\0\0\0M\0\0\0\0\0\0\0û’\0\0\"\0\0f§@\0\0\0\0\0*\0\0\0\0\0\0\0”“\0\0\"\0\0D­@\0\0\0\0\0\0\0\0\0\0\0\0ô“\0\0\"\0\0´‹@\0\0\0\0\01\0\0\0\0\0\0\0”\0\0\"\0\0öœ@\0\0\0\0\0R\0\0\0\0\0\0\0m”\0\0\"\0\0ü›@\0\0\0\0\0G\0\0\0\0\0\0\0\ã”\0\0!\0\0 \ß@\0\0\0\0\0H\0\0\0\0\0\0\0û”\0\0\"\0\0İ–@\0\0\0\0\0m\0\0\0\0\0\0\0l•\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼•\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ñ•\0\0\"\0\0\ào@\0\0\0\0\0\0\0\0\0\0\0\0û•\0\0!\0\0`\Ë@\0\0\0\0\0H\0\0\0\0\0\0\0–\0\0\"\0\0”D@\0\0\0\0\0;\0\0\0\0\0\0\05–\0\0\0\0ğRa\0\0\0\0\0\0\0\0\0\0\0\0\0A–\0\0\"\0\0ø”@\0\0\0\0\0Q\0\0\0\0\0\0\0v–\0\0\"\0\0bp@\0\0\0\0\0\0\0\0\0\0\0\0¾–\0\0!\0\0€\Õ@\0\0\0\0\0\0\0\0\0\0\0\0Ğ–\0\0\"\0\0¦@\0\0\0\0\0\é\0\0\0\0\0\0\0W—\0\0\"\0\0´œ@\0\0\0\0\0A\0\0\0\0\0\0\0|—\0\0\"\0\0…@\0\0\0\0\0K\0\0\0\0\0\0\0³—\0\0\"\0\0\èƒ@\0\0\0\0\0\Z\0\0\0\0\0\0\0º\0\0\0\0\â>@\0\0\0\0\0‡\0\0\0\0\0\0\0\ï—\0\0\"\0\0–2@\0\0\0\0\0\'\0\0\0\0\0\0\0¿\0\0\0\0(®@\0\0\0\0\0r\0\0\0\0\0\0\0O˜\0\0\"\0\0®“@\0\0\0\0\0\0\0\0\0\0\0\0t˜\0\0\"\0\0z3@\0\0\0\0\0#\0\0\0\0\0\0\0\ê˜\0\0\"\0\0hœ@\0\0\0\0\0K\0\0\0\0\0\0\0)™\0\0\"\0\0t“@\0\0\0\0\0:\0\0\0\0\0\0\0P™\0\0\"\0\0X“@\0\0\0\0\0\0\0\0\0\0\0\0^™\0\0\0\0\Ø_@\0\0\0\0\0O\0\0\0\0\0\0\0|™\0\0\"\0\0\r~@\0\0\0\0\0\0\0\0\0\0\0\0Æ™\0\0!\0\0X\Ñ@\0\0\0\0\0H\0\0\0\0\0\0\0Ø™\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\í™\0\0\"\0\0Ş©@\0\0\0\0\0\0\0\0\0\0\0\0š\0\0\"\0\0$§@\0\0\0\0\0\0\0\0\0\0\0\0\r›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D›\0\0\0\0<i@\0\0\0\0\0’\0\0\0\0\0\0\0c›\0\0\0\0d;@\0\0\0\0\0²\0\0\0\0\0\0\0x›\0\0!\0\0h\Õ@\0\0\0\0\0\0\0\0\0\0\0\0Š›\0\0\0\0ú°@\0\0\0\0\0,\0\0\0\0\0\0\0¡›\0\0\"\0\0\Ğl@\0\0\0\0\0$\0\0\0\0\0\0\0²›\0\0\"\0\0\01@\0\0\0\0\0\'\0\0\0\0\0\0\0Ç›\0\0\"\0\0øq@\0\0\0\0\0\0\0\0\0\0\0\0\rœ\0\0\0\00\È@\0\0\0\0\0e\0\0\0\0\0\0\0œ\0\0\"\0\0\ì§@\0\0\0\0\0=\0\0\0\0\0\0\0Xœ\0\0\0\0R\Ä@\0\0\0\0\0\0\0\0\0\0\0\0uœ\0\0\"\0\0ğ›@\0\0\0\0\0\0\0\0\0\0\0\0Èœ\0\0\"\0\0@\0\0\0\0\0K\0\0\0\0\0\0\0\0\0!\0\0\è\Ö@\0\0\0\0\08\0\0\0\0\0\0\0x\0\0\0\06K@\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\"\0\03p@\0\0\0\0\0\0\0\0\0\0\0\0Ä\0\0\"\0\0Ğ¤@\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0!\0\0 \â@\0\0\0\0\0H\0\0\0\0\0\0\0\0\0!\0\0H\Ğ@\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0\\¸@\0\0\0\0\0l\0\0\0\0\0\0\05\0\0\"\0\0\0{@\0\0\0\0\0M\0\0\0\0\0\0\0W\0\0!\0\0 \Í@\0\0\0\0\0\0\0\0\0\0\0\0K\0\0\0\0@\Â@\0\0\0\0\0r\0\0\0\0\0\0\0k\0\0\"\0\0Ô«@\0\0\0\0\0\0\0\0\0\0\0\0\î\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0d;@\0\0\0\0\0²\0\0\0\0\0\0\0ö\0\0\"\0\0§@\0\0\0\0\0.\0\0\0\0\0\0\0›Ÿ\0\0\"\0\0}@\0\0\0\0\0\0\0\0\0\0\0\0ĞŸ\0\0\"\0\0\íF@\0\0\0\0\0„\0\0\0\0\0\0\0X \0\0\"\0\0\èƒ@\0\0\0\0\0\Z\0\0\0\0\0\0\0” \0\0\"\0\0Xr@\0\0\0\0\0\0\0\0\0\0\0\0Ú \0\0\"\0\0BŸ@\0\0\0\0\0#\0\0\0\0\0\0\0\r¡\0\0\"\0\0\"«@\0\0\0\0\0K\0\0\0\0\0\0\0†¡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œ¡\0\0\"\0\0V~@\0\0\0\0\0)\0\0\0\0\0\0\0É¡\0\0\"\0\0š@\0\0\0\0\0*\0\0\0\0\0\0\0|\0\0\0\0ö7@\0\0\0\0\0r\0\0\0\0\0\0\0ù¡\0\0\"\0\0¥@\0\0\0\0\0\0\0\0\0\0\0\0v¢\0\0\0\0VÁ@\0\0\0\0\0–\0\0\0\0\0\0\0‹¢\0\0!\0\0\à@\0\0\0\0\0\0\0\0\0\0\0\0¢\0\0\"\0\0*z@\0\0\0\0\0!\0\0\0\0\0\0\0Í¢\0\0\"\0\0\äz@\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0|À@\0\0\0\0\0‡\0\0\0\0\0\0\0ü¢\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08£\0\0\0\0\Ôf@\0\0\0\0\0\0\0\0\0\0\0Z£\0\0\"\0\0f§@\0\0\0\0\0*\0\0\0\0\0\0\0ó£\0\0\"\0\0¦Ÿ@\0\0\0\0\0¶\0\0\0\0\0\0\0%¤\0\0!\0\0(\Ï@\0\0\0\0\0H\0\0\0\0\0\0\09¤\0\0\"\0\0Fª@\0\0\0\0\0+\0\0\0\0\0\0\0V¤\0\0!\0\0X\à@\0\0\0\0\0H\0\0\0\0\0\0\0j¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†¤\0\0!\0\0À\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0š¤\0\0!\0\0\Ï@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0‰\0\0\0\0\0\0\0®¤\0\0\"\0\0°n@\0\0\0\0\0*\0\0\0\0\0\0\0\ç¤\0\0\0\0\0 \'@\0\0\0\0\0\0\0\0\0\0\0\0\0¥\0\0\"\0\0\\¥@\0\0\0\0\0;\0\0\0\0\0\0\0š¥\0\0\"\0\0¸¢@\0\0\0\0\0u\0\0\0\0\0\05¦\0\0\"\0\0^2@\0\0\0\0\07\0\0\0\0\0\0\0¦\0\0\"\0\0\0°\'@\0\0\0\0\0\0\0\0\0\0\0\0\0±¦\0\0!\0\0 \Î@\0\0\0\0\0H\0\0\0\0\0\0\0Å¦\0\0\0\0\ì´@\0\0\0\0\0o\0\0\0\0\0\0ò¦\0\0\0\0\Ø9@\0\0\0\0\0r\0\0\0\0\0\0\0§\0\0\0\0¢j@\0\0\0\0\0L\0\0\0\0\0\0\0-§\0\0\0\0Dk@\0\0\0\0\09\0\0\0\0\0\0\0I§\0\0\"\0\0”0@\0\0\0\0\0\0\0\0\0\0\0\0–§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\å§\0\0\"\0\0Æ­@\0\0\0\0\0\Z\0\0\0\0\0\0\03¨\0\0\0\0~k@\0\0\0\0\0\0\0\0\0\0\0\0Q¨\0\0\"\0\00…@\0\0\0\0\0]\0\0\0\0\0\0\0¯¨\0\0!\0\0@\É@\0\0\0\0\0\0\0\0\0\0\0\0Ì¨\0\0\"\0\0<x@\0\0\0\0\0\0\0\0\0\0\0\0\ê¨\0\0!\0\0H\Í@\0\0\0\0\0H\0\0\0\0\0\0\0ş¨\0\0!\0\0\Ò@\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\"\0\0|‹@\0\0\0\0\0\0\0\0\0\0\0\0O©\0\0!\0\0\Í@\0\0\0\0\0\0\0\0\0\0\0\0c©\0\0\"\0\0¥@\0\0\0\0\0=\0\0\0\0\0\0\0ª\0\0\0\0¼\Ä@\0\0\0\0\0\0\0\0\0\0\0\0+ª\0\0\"\0\0\0¦@\0\0\0\0\0\0\0\0\0\0\0\0ªª\0\0\0\0H\\@\0\0\0\0\0š\0\0\0\0\0\0\0Íª\0\0\"\0\0l™@\0\0\0\0\0M\0\0\0\0\0\0\0<\0\0\0\0z±@\0\0\0\0\0\0\0\0\0\0\00«\0\0\"\0\0¸¢@\0\0\0\0\0u\0\0\0\0\0\0Ë«\0\0!\0\0ğ\Ô@\0\0\0\0\0\Z\0\0\0\0\0\0\0\é«\0\0\"\0\06¨@\0\0\0\0\0\0\0\0\0\0\0\0?¬\0\0\"\0\02@\0\0\0\0\0\0\0\0\0\0\0\0}¬\0\0\"\0\02E@\0\0\0\0\0 \0\0\0\0\0\0ö¬\0\0\"\0\0(1@\0\0\0\0\0\0\0\0\0\0\0\0C­\0\0\"\0\0¶@\0\0\0\0\0\0\0\0\0\0\0\0r­\0\0\"\0\0„n@\0\0\0\0\0+\0\0\0\0\0\0\0‹­\0\0\"\0\0f6@\0\0\0\0\0\'\0\0\0\0\0\0\0 ­\0\0\"\0\0\"s@\0\0\0\0\0I\0\0\0\0\0\0\0Í­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ä­\0\0!\0\0h\â@\0\0\0\0\0\0\0\0\0\0\0\0ö­\0\0\"\0\0Ü’@\0\0\0\0\0&\0\0\0\0\0\0\0;®\0\0\"\0\0„@\0\0\0\0\0\0\0\0\0\0\0\0ƒ®\0\0\"\0\0x­@\0\0\0\0\0\Z\0\0\0\0\0\0\0Ë®\0\0\"\0\0ğ›@\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\"\0\0øq@\0\0\0\0\0\0\0\0\0\0\0\0d¯\0\0\"\0\0¬|@\0\0\0\0\01\0\0\0\0\0\0\0‚¯\0\0!\0\0p\Ï@\0\0\0\0\0\0\0\0\0\0\0\0–¯\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0×¯\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0™\0\0\0\0ğ¾@\0\0\0\0\0r\0\0\0\0\0\0\0ó¯\0\0\"\0\0\ä~@\0\0\0\0\0&\0\0\0\0\0\0\0°\0\0\"\0\0`1@\0\0\0\0\0\'\0\0\0\0\0\0\0g°\0\0\"\0\0ªŒ@\0\0\0\0\0M\0\0\0\0\0\0\0¡°\0\0\"\0\0Àª@\0\0\0\0\0;\0\0\0\0\0\0\0×°\0\0\"\0\0ön@\0\0\0\0\0\0\0\0\0\0\0\0ò°\0\0\"\0\0Ğ§@\0\0\0\0\0\0\0\0\0\0\0\0I±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a±\0\0\"\0\0š@\0\0\0\0\0\0\0\0\0\0\0\0†±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ±\0\0\"\0\003@\0\0\0\0\0\0\0\0\0\0\0\0ñ±\0\0\"\0\0ü@\0\0\0\0\0‘\0\0\0\0\0\0\0@²\0\0\"\0\0<r@\0\0\0\0\0\0\0\0\0\0\0\0s²\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Š²\0\0!\0\00\Ù@\0\0\0\0\0\0\0\0\0\0\0\0¡²\0\0\"\0\0„n@\0\0\0\0\0+\0\0\0\0\0\0\0º²\0\0\"\0\0?†@\0\0\0\0\0\0\0\0\0\0\0\0\é²\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\"³\0\0\"\0\0ˆ1@\0\0\0\0\0\'\0\0\0\0\0\0\0s³\0\0!\0\0`\É@\0\0\0\0\0\0\0\0\0\0\0\0³\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ä³\0\0\"\0\0š‡@\0\0\0\0\0\0\0\0\0\0\0\0ò³\0\0\0\0t`@\0\0\0\0\0K\0\0\0\0\0\0\0M´\0\0\0\0 \È@\0\0\0\0\0\0\0\0\0\0\0\0]´\0\0\"\0\0\ä¥@\0\0\0\0\0\0\0\0\0\0\0\0µ´\0\0!\0\0\È\á@\0\0\0\0\0\0\0\0\0\0\0\0Ë´\0\0\"\0\0ÊŠ@\0\0\0\0\0&\0\0\0\0\0\0\0µ\0\0\"\0\0b¡@\0\0\0\0\0¥\0\0\0\0\0\0\0\0\0\0\0:@\0\0\0\0\0r\0\0\0\0\0\0\0–µ\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\0ªµ\0\0\0\0€O@\0\0\0\0\0i\0\0\0\0\0\0\0ùµ\0\0\"\0\0ò©@\0\0\0\0\0\0\0\0\0\0\0\0U¶\0\0!\0\0 \Û@\0\0\0\0\0\0\0\0\0\0\0\0i¶\0\0\0\0c@\0\0\0\0\0ò\0\0\0\0\0\0’¶\0\0!\0\0x\Ò@\0\0\0\0\0\0\0\0\0\0\0\0¨¶\0\0\0\0®¯@\0\0\0\0\0†\0\0\0\0\0\0\0Á¶\0\0\"\0\0ğŠ@\0\0\0\0\0~\0\0\0\0\0\0\0\Ö\0\0\0\0\Ø9@\0\0\0\0\0r\0\0\0\0\0\0\0\ë¶\0\0\"\0\0*¨@\0\0\0\0\0\0\0\0\0\0\0\0·\0\0\"\0\0R@\0\0\0\0\0\0\0\0\0\0\0\0W·\0\0\"\0\0^ƒ@\0\0\0\0\0i\0\0\0\0\0\0\0–·\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­·\0\0\"\0\0\ä¤@\0\0\0\0\0\0\0\0\0\0\0\06¸\0\0\"\0\0J—@\0\0\0\0\03\0\0\0\0\0\0\0x¸\0\0\0\0®³@\0\0\0\0\0,\0\0\0\0\0\0\0¡¸\0\0\"\0\0´œ@\0\0\0\0\0A\0\0\0\0\0\0\0Æ¸\0\0\"\0\0„m@\0\0\0\0\0?\0\0\0\0\0\0\0\ã¸\0\0\"\0\0º™@\0\0\0\0\0M\0\0\0\0\0\0\0D¹\0\0!\0\0 \Ó@\0\0\0\0\0H\0\0\0\0\0\0\0X¹\0\0\"\0\0n‹@\0\0\0\0\0\0\0\0\0\0\0\0’¹\0\0\"\0\00@\0\0\0\0\0X\0\0\0\0\0\0\0\ê¹\0\0\"\0\0P@\0\0\0\0\0+\0\0\0\0\0\0\01º\0\0\"\0\0¢@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ°@\0\0\0\0\0r\0\0\0\0\0\0\0nº\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0º\0\0!\0\0\Ğ\Ê@\0\0\0\0\0H\0\0\0\0\0\0\0Ÿº\0\0\"\0\0Ú@\0\0\0\0\0‘\0\0\0\0\0\0\0»\0\0\"\0\0\n–@\0\0\0\0\0‹\0\0\0\0\0\0\0B»\0\0\"\0\0$§@\0\0\0\0\0\0\0\0\0\0\0\0Î»\0\0!\0\0\à\Ø@\0\0\0\0\01\0\0\0\0\0\0\0¼\0\0!\0\0 \Ğ@\0\0\0\0\0\0\0\0\0\0\0\0¼\0\0\"\0\0¨Š@\0\0\0\0\0\"\0\0\0\0\0\0\0M¼\0\0\0\0\Ã@\0\0\0\0\0.\0\0\0\0\0\0d¼\0\0!\0\0\Ë@\0\0\0\0\0H\0\0\0\0\0\0\0x¼\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‡¼\0\0\"\0\0\01@\0\0\0\0\0\'\0\0\0\0\0\0\0œ¼\0\0\"\0\0\ä‚@\0\0\0\0\0]\0\0\0\0\0\0\0\é¼\0\0\"\0\0ü…@\0\0\0\0\0\0\0\0\0\0\0\0½\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\07½\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\0@½\0\0\"\0\0”@\0\0\0\0\0A\0\0\0\0\0\0\0v½\0\0\"\0\0¬@\0\0\0\0\0\0\0\0\0\0\0\0±½\0\0\"\0\0ş¬@\0\0\0\0\0F\0\0\0\0\0\0\0Ö½\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ½\0\0!\0\0\è\Ñ@\0\0\0\0\0\0\0\0\0\0\0\0¾\0\0!\0\0\Û@\0\0\0\0\0\0\0\0\0\0\0\0¾\0\0\"\0\0¾—@\0\0\0\0\0\0\0\0\0\0\0\0E¾\0\0\"\0\0Ÿ@\0\0\0\0\0*\0\0\0\0\0\0\0\Ñ\0\0\0\0¢\Æ@\0\0\0\0\0r\0\0\0\0\0\0\0t¾\0\0\"\0\0b¡@\0\0\0\0\0¥\0\0\0\0\0\0\0	¿\0\0\"\0\0~—@\0\0\0\0\0\0\0\0\0\0\0\0\'¿\0\0\0\0–)@\0\0\0\0\0‡\0\0\0\0\0\0\0E¿\0\0\"\0\0Pœ@\0\0\0\0\0\0\0\0\0\0\0\0Œ\0\0\0\0$M@\0\0\0\0\0¥\0\0\0\0\0\0\0‹¿\0\0\"\0\0¾—@\0\0\0\0\0\0\0\0\0\0\0\0º¿\0\0\0\0\Ú\Ä@\0\0\0\0\0\0\0\0\0\0\0\0İ¿\0\0\"\0\0œ}@\0\0\0\0\0)\0\0\0\0\0\0\0À\0\0\0\0\nX@\0\0\0\0\0h\0\0\0\0\0\0\01À\0\0\"\0\0$’@\0\0\0\0\0&\0\0\0\0\0\0\0û\0\0\0\0h\Ç@\0\0\0\0\0r\0\0\0\0\0\0\0vÀ\0\0\"\0\0s}@\0\0\0\0\0\Z\0\0\0\0\0\0\0 À\0\0\"\0\0\\Œ@\0\0\0\0\0M\0\0\0\0\0\0\0\ÏÀ\0\0\0\0 5@\0\0\0\0\0r\0\0\0\0\0\0\0\âÀ\0\0\"\0\0œ}@\0\0\0\0\0)\0\0\0\0\0\0\0Á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`Á\0\0\0\0‚@@\0\0\0\0\0ö\0\0\0\0\0\0\0Á\0\0\"\0\0\äz@\0\0\0\0\0\0\0\0\0\0\0\0®Á\0\0\"\0\0*ª@\0\0\0\0\0\0\0\0\0\0\0\0\İÁ\0\0\0\0¢\Æ@\0\0\0\0\0r\0\0\0\0\0\0\0ğÁ\0\0\"\0\0~p@\0\0\0\0\0ş\0\0\0\0\0\0\0\Â\0\0!\0\00\Ì@\0\0\0\0\0\0\0\0\0\0\0\0,\Â\0\0!\0\0À\Ú@\0\0\0\0\0H\0\0\0\0\0\0\0@\Â\0\0\"\0\0¸¢@\0\0\0\0\0u\0\0\0\0\0\0\Û\Â\0\0\0\0\êO@\0\0\0\0\0\Æ\0\0\0\0\0\0\0ú\Â\0\0!\0\0¨\Õ@\0\0\0\0\0H\0\0\0\0\0\0\0\Ã\0\0\"\0\0ûo@\0\0\0\0\0*\0\0\0\0\0\0\0Y\Ã\0\0\"\0\0\ä“@\0\0\0\0\0\0\0\0\0\0\0\0Š\Ã\0\0\0\0\0€(@\0\0\0\0\0\0\0\0\0\0\0\0\0¯\Ã\0\0\"\0\0|q@\0\0\0\0\0\0\0\0\0\0\0\0\0crtstuff.c\0__JCR_LIST__\0deregister_tm_clones\0__do_global_dtors_aux\0completed.7585\0__do_global_dtors_aux_fini_array_entry\0frame_dummy\0__frame_dummy_init_array_entry\0brackets.cpp\0_ZStL19piecewise_construct\0_ZStL8__ioinit\0_ZStL13allocator_arg\0_ZStL6ignore\0_ZN9__gnu_cxxL21__default_lock_policyE\0_Z41__static_initialization_and_destruction_0ii\0_GLOBAL__sub_I__ZN10n_brackets9CbracketsC2Ev\0class.cpp\0_GLOBAL__sub_I__ZN7n_class6Cclass7my_initEPv\0cout.cpp\0_GLOBAL__sub_I__ZN6n_cout5CcoutC2Ev\0echo.cpp\0_GLOBAL__sub_I__ZN6n_echo5CechoC2Ev\0esc.cpp\0_GLOBAL__sub_I__ZN5n_esc4CescC2Ev\0ex_func.cpp\0_GLOBAL__sub_I__Z6runcmdPv\0exec.cpp\0_GLOBAL__sub_I__ZN6n_exec5CexecC2Ev\0exit.cpp\0_GLOBAL__sub_I__ZN6n_exit5CexitC2Ev\0file.cpp\0_GLOBAL__sub_I__ZN6n_file5CfileC2Ev\0home.cpp\0_GLOBAL__sub_I__ZN6n_home5ChomeC2Ev\0http.cpp\0_GLOBAL__sub_I__ZN6n_http5ChttpC2Ev\0iwant.cpp\0_GLOBAL__sub_I__ZN7n_iwant6CiwantC2Ev\0main.cpp\0_GLOBAL__sub_I__ZN6n_main5CmainC2Ev\0make.cpp\0_GLOBAL__sub_I__ZN6n_make5CmakeC2Ev\0math.cpp\0_GLOBAL__sub_I__ZN6n_math5CmathC2Ev\0myMemory.cpp\0_GLOBAL__sub_I__ZN11n_my_memory9CmyMemoryC2Ev\0net.cpp\0_GLOBAL__sub_I__ZN5n_net4CnetC2Ev\0new.cpp\0_GLOBAL__sub_I__ZN5n_new4CnewC2Ev\0object.cpp\0_ZL18__gthread_active_pv\0_ZZL18__gthread_active_pvE20__gthread_active_ptr\0_ZL15__gthread_equalmm\0_ZN9__gnu_cxxL18__exchange_and_addEPVii\0_ZN9__gnu_cxxL25__exchange_and_add_singleEPii\0_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii\0_GLOBAL__sub_I__ZN8n_object10CparameterC2Ev\0os.cpp\0_GLOBAL__sub_I__ZN3CosC2Ev\0path.cpp\0_GLOBAL__sub_I__ZN6n_path5CpathC2Ev\0run.cpp\0_GLOBAL__sub_I__ZN5n_run4CrunC2Ev\0socket.cpp\0_GLOBAL__sub_I__ZN8n_socket7CsocketC2Ev\0sql.cpp\0_GLOBAL__sub_I__ZN5n_sql4CsqlC2Ev\0syntax.cpp\0_GLOBAL__sub_I__ZN8n_syntax7CsyntaxC2Ev\0sys.cpp\0_GLOBAL__sub_I__ZN5n_sys4CsysC2Ev\0tag.cpp\0_GLOBAL__sub_I__ZN5n_tag4CtagC2Ev\0task.cpp\0_GLOBAL__sub_I__ZN6n_task5CtaskC2Ev\0temp.cpp\0_GLOBAL__sub_I__ZN6n_temp5CtempC2Ev\0timer.cpp\0_GLOBAL__sub_I__ZN7n_timer6CtimerC2Ev\0uri.cpp\0_GLOBAL__sub_I__ZN5n_uri4CuriC2Ev\0url.cpp\0_GLOBAL__sub_I__ZN5n_url4CurlC2Ev\0xml.cpp\0_GLOBAL__sub_I__ZN5n_xml4CxmlC2Ev\0__FRAME_END__\0__JCR_END__\0__GNU_EH_FRAME_HDR\0_DYNAMIC\0__init_array_end\0__init_array_start\0_GLOBAL_OFFSET_TABLE_\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EED1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE6removeERKS1_\0_Znam@@GLIBCXX_3.4\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE8pop_backEv\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC2EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE6removeERKS3_\0_ZTVN7n_class6CclassE\0_ZNSt7__cxx114listIPvSaIS1_EED2Ev\0_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEEONSt16remove_referenceIT_E4typeEOSD_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EEC2Ev\0_ZN6n_main5CmainD1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21\0_ZN8n_object6Object4isMeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZN8n_object6Object8who_am_iEv\0_ZN8n_object6Object4isMeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZNSt7__cxx114listIPvSaIS1_EE4backEv\0_ZTIN6n_temp5CtempE\0_ZNSt8__detail15_List_node_base7_M_hookEPS0_@@GLIBCXX_3.4.15\0_ZNKSt14_List_iteratorIPN8n_object6ObjectEEdeEv\0_ZTIN5n_run4CrunE\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EED2Ev\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED0Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implC1Ev\0_ZSt4moveIRPN8n_object6ObjectEEONSt16remove_referenceIT_E4typeEOS5_\0_ZN7n_timer6Ctimer10t_strftimeEPcmPKcPK2tm\0_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_\0_ZN7n_class6CclassC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTIN6n_exec5CexecE\0_ZN6n_math5CmathC1Ev\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE9constructIS4_IRKS3_EEEvPT_DpOT0_\0_ZN5n_run4CrunD1Ev\0_ZN8n_socket7CsocketC1Ev\0_ZN7n_class6CclassD1Ev\0_ZN8n_socket7Csocket7displayEv\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC1ERKS8_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9_M_insertIIRKS2_EEEvSt14_List_iteratorIS2_EDpOT_\0_ZSt12__get_helperILm1EPvIEERT0_RSt11_Tuple_implIXT_EIS1_DpT1_EE\0_ZNKSt11_Deque_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv\0_ZTSN7n_class6CclassE\0bind@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC1Ev\0_ZNSt10_List_nodeImEC2IJEEEDpOT_\0_ZNSt5dequeIPvSaIS0_EE3endEv\0_ZNSaIcED2Ev@@GLIBCXX_3.4\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_inc_sizeEm\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC1IIS7_EEES9_DpOT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEC2EPNSt8__detail15_List_node_baseE\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEED1Ev\0_ZTVN5n_sys4CsysE\0_ZNSt11_Deque_baseIPvSaIS0_EED1Ev\0_ZNSt10_Head_baseILm1EPvLb0EE7_M_headERS1_\0_ZNSt6threadC2IRPFiPvEJRS1_EEEOT_DpOT0_\0_ZNSt11_Tuple_implILm1EIPvEEC2EOS1_\0_ZN8n_syntax7CsyntaxC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE18_M_deallocate_nodeEPS0_\0_ZN8n_object6Object10are_you_okEv\0_ZTVN5n_net4CnetE\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC2Ev\0_ZNSt5dequeIPvSaIS0_EED2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC1INS0_5_ImplISt12_Bind_simpleIFPFiPvES8_EEEEvEEOS_IT_LS3_2EE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE8_M_eraseESt14_List_iteratorIS3_E\0_ZNSt11_Deque_baseIPvSaIS0_EEC2EOS2_\0_ZN3CosD2Ev\0_ZSt4moveIRPPPvEONSt16remove_referenceIT_E4typeEOS5_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IJS2_EEEDpOT_\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE8max_sizeEv\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EEC1Ev\0_ZN8n_object10CparameterC1Ev\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IJS2_EEEDpOT_\0_ZN7n_iwant6Ciwant8who_am_iEv\0_ZNSt11_Deque_baseIPvSaIS0_EE17_M_deallocate_mapEPPS0_m\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC2ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEIS7_EESt10shared_ptrIT_EDpOT0_\0_ZN9__gnu_cxx13new_allocatorIPPvEC1Ev\0_ZN6n_cout5CcoutC1Ev\0_ZNKSt6thread8joinableEv\0_edata\0_ZN6n_home5ChomeC1Ev\0socket@@GLIBC_2.2.5\0_ZN7n_class6Cclass4funcEPv\0_ZNSaIPvEC1Ev\0_ZN5n_uri4CuriD1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE8_M_clearEv\0_ZTVN8n_object6ObjectE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC1IRKS2_IRS0_EvEEOT_DpOT0_\0_ZN8n_object6Object6myNameEPS0_\0_ZSt11__addressofIKPvEPT_RS2_\0_ZSt9terminatev@@GLIBCXX_3.4\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEEC1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@@GLIBCXX_3.4.21\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EEC2ERKS9_\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC2IS2_EEOT_\0_ZNSt11_Tuple_implILm1EIPvEEC1IRS0_EEOT_\0_ZN6n_exec5CexecC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@@GLIBCXX_3.4.21\0_ZNSt6thread2idC1Ev\0_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIIRKS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE9constructIS9_JS8_EEEvPT_DpOT0_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEED1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE15_M_create_nodesEPPS0_S4_\0_ZNSt10_List_nodeIPvEC2IJS0_EEEDpOT_\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev\0_ZTSN6n_math5CmathE\0accept@@GLIBC_2.2.5\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_\0_ZTIN5n_sys4CsysE\0_ZTSN5n_new4CnewE\0_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_EIS7_EESt10shared_ptrIT_ERKT0_DpOT1_\0recv@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_set_sizeEm\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE7destroyIS4_EEvPT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEEC2Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_IRKS4_EEEvPT_DpOT0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES9_\0_IO_stdin_used\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEED1Ev\0_ZNSaIPvEC1ERKS0_\0_ZN8n_object6ObjectD2Ev\0_ZTSN5n_sql4CsqlE\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC1ERKS2_\0_ZNSt6threadC1IRPFiPvEJRS1_EEEOT_DpOT0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv\0_ZN5n_uri4CuriD2Ev\0_ZN7n_timer6Ctimer7t_ctimeEPKl\0_ZSt17__throw_bad_allocv@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EED1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIIS1_EEEvSt14_List_iteratorIS1_EDpOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS3_IS2_EEEvPT_DpOT0_\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EED1Ev\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC2IRKS2_JRS0_EvEEOT_DpOT0_\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEED1Ev\0_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC1IIRKS1_EEEDpOT_\0_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv\0_ZNSt15aligned_storageILm40ELm8EEC1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE7destroyIS3_EEvPT_\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EE7_M_headERS3_\0_ZNSt10_List_nodeIN8n_object7CmyfuncEED1Ev\0_ZNSt16allocator_traitsISaIPPvEE10deallocateERS2_PS1_m\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EEC1EOS2_St17integral_constantIbLb1EE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE11_M_put_nodeEPSt10_List_nodeIS6_E\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag\0_ZNKSt14_List_iteratorIPvEdeEv\0_ZN8n_object7Cmyfunc4isMeEPc\0_ZNSt11_Deque_baseIPvSaIS0_EEC2Ev\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC1Ev\0__cxa_begin_catch@@CXXABI_1.3\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC1IJRKS1_EEEDpOT_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@@GLIBCXX_3.4.21\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn\0_ZNSaISt10_List_nodeIPvEEC2Ev\0_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_m\0_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_\0_ZN8n_object10CparameterD2Ev\0asctime@@GLIBC_2.2.5\0_ZNSaIPPvEC1IS_EERKSaIT_E\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IJRKS2_EEEDpOT_\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC2EOS3_\0_ZNSt6threadC1IRPFiPvEIRS1_EEEOT_DpOT0_\0_ZN7n_timer6Ctimer10t_difftimeEll\0_ZN8n_object6Object5addMeEPS0_\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@@GLIBCXX_3.4.21\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEED2Ev\0memcmp@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EED1Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC2IIS7_EEES9_DpOT_\0_ZTIN6n_make5CmakeE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implC2Ev\0_ZNSt7__cxx114listIPvSaIS1_EED1Ev\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IIS2_EEEDpOT_\0_ZNSt11_Deque_baseIPvSaIS0_EE16_M_destroy_nodesEPPS0_S4_\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE6_M_ptrEv\0_ZN11n_my_memory9CmyMemoryD2Ev\0_ZNSaIPPvED1Ev\0_Z11object_funcPv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE21_M_get_Node_allocatorEv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EED2Ev\0_ZNSt5tupleIJPFiPvES0_EEC2EOS3_\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev\0_ZSt7forwardISt12_Bind_simpleIFPFiPvES1_EEEOT_RNSt16remove_referenceIS6_E4typeE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EEC1Ev\0_ZN8n_object6ObjectC2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC1Ev\0main\0_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4\0_ZTVN5n_sql4CsqlE\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC1ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt11_Tuple_implILm1EJPvEEC2EOS1_\0_ZN8n_socket7Csocket8s_socketEiii\0send@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EEC2Ev\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE7destroyIS8_EEvRS9_PT_\0_ZNSt6thread10_Impl_baseC2Ev\0_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSE_m\0difftime@@GLIBC_2.2.5\0_ZSt7forwardIRPFiPvEEOT_RNSt16remove_referenceIS4_E4typeE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev\0_ZN6n_echo5CechoC1Ev\0_ZNSt10_List_nodeImEC1IIEEEDpOT_\0_ZTSN8n_syntax7CsyntaxE\0_ZN7n_class6CclassC1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD2Ev\0_ZTSN5n_url4CurlE\0_ZN8n_socket7Csocket6s_recvEiPcii\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2EOS4_\0_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZTIN5n_esc4CescE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EE7_M_tailERS3_\0_ZN5n_tag4CtagD1Ev\0_ZNKSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5emptyEv\0_ZNSt11_Tuple_implILm1EJPvEEC2IRS0_EEOT_\0memset@@GLIBC_2.2.5\0_ZN9__gnu_cxx13new_allocatorIPvE8allocateEmPKv\0_ZN6n_path5CpathC1Ev\0__dso_handle\0_ZN8n_object7CmyfuncC1ERKS0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info\0_ZN3CosD1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIIS3_EEEPSt10_List_nodeIS3_EDpOT_\0pthread_create@@GLIBC_2.2.5\0_ZN7n_class6Cclass6createEPv\0_ZN5n_new4Cnew4funcEPv\0_ZN6n_cout5CcoutD2Ev\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC1ERKS3_\0_ZN8n_object6Object7executeEPFiPvES1_b\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE7_M_initEv\0_ZTSN5n_tag4CtagE\0_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_\0_ZTIN6n_cout5CcoutE\0_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZN11n_my_memory9CmyMemory9delete_meEv\0_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEEONSt16remove_referenceIT_E4typeEOSD_\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE9constructIS8_JS7_EEEvRS9_PT_DpOT0_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IIRKS2_EEEDpOT_\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEED1Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_set_sizeEm\0_ZNSt5dequeIPvSaIS0_EEC2EOS2_\0_ZN5n_xml4CxmlC1Ev\0_ZTIN7n_class6CclassE\0_ZTVN6n_http5ChttpE\0rename@@GLIBC_2.2.5\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implC1Ev\0vsnprintf@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE4backEv\0_ZNSt5dequeIPvSaIS0_EE5beginEv\0_ZSt3getILm0EIPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeERS7_\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_impl12_M_swap_dataERS3_\0_ZNKSt5stackIPvSt5dequeIS0_SaIS0_EEE5emptyEv\0_ZNSt5tupleIIPFiPvES0_EEC1EOS3_\0_ZNSt12_Bind_simpleIFPFiPvES0_EE9_M_invokeIJLm0EEEEiSt12_Index_tupleIJXspT_EEE\0_ZSt12__get_helperILm0EPFiPvEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE\0_ZNSt7__cxx114listIPvSaIS1_EEC1Ev\0_ZTSN5n_esc4CescE\0_ZN5n_net4CnetC1Ev\0_ZNSt6thread10_Impl_baseD0Ev\0clock@@GLIBC_2.2.5\0_ZN8n_socket7Csocket7s_closeEiii\0_ZTVN7n_timer6CtimerE\0_ZN11n_my_memory9CmyMemory4isMeEPvlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTVN7n_iwant6CiwantE\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEED2Ev\0mktime@@GLIBC_2.2.5\0_ZTVN6n_file5CfileE\0_ZN7n_iwant6CiwantD2Ev\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZNSaIPvEC2ERKS0_\0_ZNKSt9type_infoeqERKS_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE21_M_get_Node_allocatorEv\0_ZTIN5n_uri4CuriE\0_ZSt4swapImEvRT_S1_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@@GLIBCXX_3.4.21\0_ZSt7forwardIPFiPvEEOT_RNSt16remove_referenceIS3_E4typeE\0_ZN8n_object7CmyfuncC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZNKSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5emptyEv\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@@GLIBCXX_3.4.21\0_ZTVN10__cxxabiv117__class_type_infoE@@CXXABI_1.3\0_ZN9__gnu_cxx13new_allocatorIPPvED1Ev\0_ZSt19__throw_logic_errorPKc@@GLIBCXX_3.4\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IIRKS2_EEEDpOT_\0_ZN6n_make5CmakeC1Ev\0_ZTSN8n_socket7CsocketE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev\0_ZTSN6n_task5CtaskE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE21_M_get_Node_allocatorEv\0_ZSt11__addressofIPN8n_object6ObjectEEPT_RS3_\0localtime@@GLIBC_2.2.5\0_ZN8n_socket7Csocket6s_sendEiPKcii\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEppEv\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEEC1Ev\0_ZTIN8n_socket7CsocketE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE8_M_clearEv\0_ZNSt14_List_iteratorIPvEC2Ev\0_ZTSN6n_home5ChomeE\0_ZN8n_socket7CsocketD1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2Ev\0_Z10rename_cmdPv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED2Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_put_nodeEPSt10_List_nodeIS3_E\0_ZNSt11_Deque_baseIPvSaIS0_EE16_M_allocate_nodeEv\0_ZNSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EEC1EOS2_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9push_backERKS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implD2Ev\0_ZNK9__gnu_cxx13new_allocatorIPPvE8max_sizeEv\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZTVN6n_cout5CcoutE\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEEC1Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN11n_my_memory9CmyMemoryC1Ei\0_ZNSolsEPKv@@GLIBCXX_3.4\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1Ev\0_ZN6n_path5CpathD2Ev\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@@GLIBCXX_3.4.21\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5beginEv\0_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag\0_ZNKSt7__cxx114listIPvSaIS1_EE5emptyEv\0_ZN7n_timer6Ctimer8t_mktimeEP2tm\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EJSB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZSt4moveIRSt11_Deque_baseIPvSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_\0_ZNSt10_List_nodeImEC1IJEEEDpOT_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_get_nodeEv\0strftime@@GLIBC_2.2.5\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE10deallocateEPSD_m\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE7destroyIS9_EEvPT_\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5clearEv\0_ZN5n_sys4CsysC1Ev\0memcpy@@GLIBC_2.14\0_ZNSt5tupleIJPFiPvES0_EEC1IRKS2_RS0_vEEOT_OT0_\0_ZN8n_object6Object10my_ex_funcEv\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC1INS0_5_ImplISt12_Bind_simpleIFPFiPvES6_EEEEvEEOS_IT_E\0connect@@GLIBC_2.2.5\0_ZN8n_socket7Csocket8s_acceptEiP8sockaddrPj\0_ZTIN8n_syntax7CsyntaxE\0_ZN8n_object6ObjectC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@@GLIBCXX_3.4.21\0system@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC2Ev\0_ZN8n_object7Cmyfunc4isMeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTIN6n_home5ChomeE\0_ZN8n_object6Object9my_familyEv\0_ZTSN7n_timer6CtimerE\0_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIJS1_EEEPSt10_List_nodeIS1_EDpOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE9constructIS4_JRKS3_EEEvPT_DpOT0_\0_ZTIN6n_file5CfileE\0_ZNKSt14_List_iteratorIPvEneERKS1_\0_ZSt4moveIRSaIPvEEONSt16remove_referenceIT_E4typeEOS4_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEED1Ev\0gmtime@@GLIBC_2.2.5\0_ZN8n_object6Object11add_ex_funcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZN9__gnu_cxx13new_allocatorIPPvE10deallocateEPS2_m\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED0Ev\0_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEJS7_EESt10shared_ptrIT_EDpOT0_\0_ZN8n_socket7Csocket6serverEPcS1_PiS1_S2_\0__cxa_atexit@@GLIBC_2.2.5\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEC1EOS6_\0_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21\0_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_\0_ZN8n_object6Object8removeMeEPv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC2EOS1_\0_ZTVN5n_xml4CxmlE\0_ZN9__gnu_cxx13new_allocatorIPvED1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9push_backERKS2_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE10deallocateEPS3_m\0_ZN7n_timer6Ctimer4funcEPv\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEEC1EOS3_\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEED2Ev\0_ZNSt11_Tuple_implILm1EJPvEEC1EOS1_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC2IRKS2_IRS0_EvEEOT_DpOT0_\0_ZN8n_object6Object7executeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvb\0_ZN6n_cout5Ccout4funcEPv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2Ev\0_ZSt12__get_helperILm1EPvJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE\0_ZN7n_iwant6CiwantC1Ev\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC2ERKS2_\0_ZN8n_socket7Csocket9s_connectEiP8sockaddri\0_ZTVN11n_my_memory9CmyMemoryE\0_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE@@GLIBCXX_3.4.21\0_ZTSN5n_xml4CxmlE\0_ZNKSt5dequeIPvSaIS0_EE5emptyEv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIIRKS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFPFiPvES2_EEEESt10shared_ptrINS_5_ImplIT_EEEOS9_\0_ZN8n_socket7Csocket8s_listenEii\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EED2Ev\0_ZdlPv@@GLIBCXX_3.4\0_ZNSt15_Deque_iteratorIPvRS0_PS0_E14_S_buffer_sizeEv\0_ZTIN11n_my_memory9CmyMemoryE\0_ZTS3Cos\0_ZNSaISt10_List_nodeIPvEED2Ev\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEED1Ev\0_ZN8n_object6Object5allotEiPPvib\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_IS4_EEEvPT_DpOT0_\0_ZSt7forwardIPN8n_object6ObjectEEOT_RNSt16remove_referenceIS3_E4typeE\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC1IRKS2_JRS0_EvEEOT_DpOT0_\0_ZN9__gnu_cxx13new_allocatorIPvEC1ERKS2_\0_ZN8n_socket7CsocketD2Ev\0_ZN9__gnu_cxx13new_allocatorIPPvEC2Ev\0_ZSt7forwardIRKPN8n_object6ObjectEEOT_RNSt16remove_referenceIS5_E4typeE\0_ZTVNSt6thread10_Impl_baseE\0_ZN8n_object10CparameterD1Ev\0_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_\0_ZTIN6n_http5ChttpE\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EEC1Ev\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1IRKS2_IRS0_EEEOT_DpOT0_\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_get_nodeEv\0_ZTIN8n_object6ObjectE\0_ZSt13__bind_simpleIRPFiPvEIRS0_EENSt19_Bind_simple_helperIT_IDpT0_EE6__typeEOS6_DpOS7_\0_ZN6n_temp5CtempC1Ev\0_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@@GLIBCXX_3.4\0_Znwm@@GLIBCXX_3.4\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE3endEv\0_ZN8n_object6Object9my_syntaxEv\0_ZN5n_tag4CtagD2Ev\0_ZN8n_object6Object7my_initEPv\0_ZN8n_object6Object5my_idEv\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EE7_M_tailERS3_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIJS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS8_EERKSaIT_E\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IJRKS2_EEEDpOT_\0_ZTINSt6thread10_Impl_baseE\0_ZNSaIPPvEC2IS_EERKSaIT_E\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev\0_Z10iwant_funcPv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EEC2Ev\0_ZTVN8n_socket7CsocketE\0_ZNSt5dequeIPvSaIS0_EEC2Ev\0_ZN8n_object6Object15clear_my_memoryEPS0_\0_ZNSt12_Bind_simpleIFPFiPvES0_EE9_M_invokeIILm0EEEEiSt12_Index_tupleIIXspT_EEE\0_ZN7n_timer6Ctimer11t_localtimeEPKl\0_ZN7n_class6CclassC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC1Ev\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC2IIRKS1_EEEDpOT_\0_ZTSN6n_exec5CexecE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEED2Ev\0_ZTV3Cos\0_ZNSolsEPFRSoS_E@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@@GLIBCXX_3.4.21\0_ZNSaISt10_List_nodeIPvEED1Ev\0_ZNSt5dequeIPvSaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_\0_ZNSt11_Tuple_implILm1EJPvEEC1IRS0_EEOT_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES9_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFPFiPvES6_EEEEvEEOS_IT_E\0_ZTSSt19_Sp_make_shared_tag\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_dec_sizeEm\0_ZTVN5n_esc4CescE\0_ZTIN5n_sql4CsqlE\0_ZN11n_my_memory9CmyMemoryD1Ev\0_Z8time_cmdPv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implD1Ev\0_ZTSN5n_run4CrunE\0_ZNSaIcED1Ev@@GLIBCXX_3.4\0_ZNSt7__cxx119to_stringEl\0_ZTVN10n_brackets9CbracketsE\0_ZN8n_object6ObjectD1Ev\0_ZN8n_object7CmyfuncC2ERKS0_\0_ZTIN5n_new4CnewE\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@@GLIBCXX_3.4.21\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE7_M_initEv\0_ZN6n_exit5CexitD2Ev\0_ZN8n_object6Object7executeEPv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIJS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZN8n_object6Object10add_memoryEPS0_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC1ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEEC2EOS3_\0_ZN3CosC1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC1Ev\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC1EOS3_\0_ZNSt5tupleIJPFiPvES0_EEC2IRKS2_RS0_vEEOT_OT0_\0_ZN8n_object6Object4isMeEPc\0_ZN6n_exit5Cexit4funcEPv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EEC1Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE8_M_clearEv\0_ZN9__gnu_cxx13new_allocatorIPPvE8allocateEmPKv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED2Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_\0_ZNSt14_List_iteratorIPvEmmEv\0__stack_chk_fail@@GLIBC_2.4\0_ZN8n_socket7Csocket6serverEv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS9_EEvPT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEmmEv\0_ZNSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED1Ev\0listen@@GLIBC_2.2.5\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE7destroyIS5_EEvPT_\0_ZNSt10_Head_baseILm1EPvLb0EEC2IRS0_EEOT_\0_ZSt16__deque_buf_sizem\0_ZTINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZN6n_exit5CexitC1Ev\0__TMC_END__\0_ZNSt11_Deque_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv\0_ZN8n_object6Object7executeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvb\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1EOS4_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_inc_sizeEm\0_ZNSt5dequeIPvSaIS0_EEC1Ev\0_ZN8n_socket7Csocket10s_shutdownEii\0_ZNSt7__cxx114listIPvSaIS1_EE3endEv\0_ZN9__gnu_cxx13new_allocatorIPvEC1Ev\0_ZNKSt14_List_iteratorIN8n_object7CmyfuncEEneERKS2_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC2ERKS8_\0_ZNSaIPvED2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC1EOS3_\0_ZNSt7__cxx114listIPvSaIS1_EE8pop_backEv\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EEC1ERKS9_\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE9constructIS8_IS7_EEEvRS9_PT_DpOT0_\0_ZTSN6n_temp5CtempE\0_ZTVNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS3_JS2_EEEvPT_DpOT0_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EED2Ev\0_Jv_RegisterClasses\0_ZN6n_path5CpathD1Ev\0_ZTVN5n_run4CrunE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC2EOS3_\0_ZNSt11_Deque_baseIPvSaIS0_EE17_M_initialize_mapEm\0_ZTIN6n_main5CmainE\0_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZN5n_run4CrunC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5clearEv\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2Ev\0_ZN5n_sql4CsqlC1Ev\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE8allocateEmPKv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE8_M_clearEv\0_ZSt3getILm1EJPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@@GLIBCXX_3.4.21\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEED2Ev\0_ZNSt7__cxx114listIPvSaIS1_EE5beginEv\0_ZNSt5tupleIIPFiPvES0_EEC2IRKS2_RS0_vEEOT_OT0_\0_ZN6n_main5CmainC1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE10deallocateEPS4_m\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EED1Ev\0_ZN7n_class6CclassC2Ev\0object_id\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC1Ev\0_ZNSt5dequeIPvSaIS0_EE8pop_backEv\0getaddrinfo@@GLIBC_2.2.5\0_ZSt4moveIRSt11_Tuple_implILm1EJPvEEEONSt16remove_referenceIT_E4typeEOS5_\0_ZNSaIPPvED2Ev\0_ZSteqNSt6thread2idES0_\0_ZSt4moveIRSt15_Deque_iteratorIPvRS1_PS1_EEONSt16remove_referenceIT_E4typeEOS7_\0_ZN8n_object6Object7executeEPS0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_Pvb\0_ZSt4cout@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@@GLIBCXX_3.4.21\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC2ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZN6n_cout5CcoutD1Ev\0_ZSt4swapIPPPvEvRT_S4_\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC2ERKS3_\0_ZdaPv@@GLIBCXX_3.4\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@@GLIBCXX_3.4.21\0_ZTVN10__cxxabiv120__si_class_type_infoE@@CXXABI_1.3\0freeaddrinfo@@GLIBC_2.2.5\0_ZN8n_object7CmyfuncC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZN7n_iwant6CiwantD1Ev\0_ZN8n_object6Object7my_exitEPv\0_ZNSt10_Head_baseILm0EPFiPvELb0EE7_M_headERS3_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC2Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEC2EOS6_\0_ZNSt6threadD1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_\0_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt11_Deque_baseIPvSaIS0_EED2Ev\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSD_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE3endEv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_set_sizeEm\0_ZTIN5n_xml4CxmlE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC2IJRKS1_EEEDpOT_\0_ZN11n_my_memory9CmyMemoryC2Ei\0_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE8max_sizeEv\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEC1EPNSt8__detail15_List_node_baseE\0_ZN9__gnu_cxx13new_allocatorIPPvED2Ev\0_ZN5n_uri4CuriC1Ev\0_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_\0_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_\0_ZTISt19_Sp_make_shared_tag\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS7_EEES9_DpOT_\0_ZNKSt11_Deque_baseIPvSaIS0_EE20_M_get_map_allocatorEv\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1IRKS2_JRS0_EEEOT_DpOT0_\0_ZSt4moveIRSt5dequeIPvSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_\0_ZN11n_my_memory9CmyMemory5allotEii\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEED1Ev\0_ZSt3maxImERKT_S2_S2_\0_ZSt11__addressofIN8n_object7CmyfuncEEPT_RS2_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@@GLIBCXX_3.4.21\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE10deallocateEPS5_m\0_ZNSt14_List_iteratorIPvEppEv\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC1EPNSt8__detail15_List_node_baseE\0_ZN7n_class6CclassD2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21\0_ZNSt5tupleIJPFiPvES0_EEC1EOS3_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9push_backEOS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE11_M_set_sizeEm\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE9constructIS9_IS8_EEEvPT_DpOT0_\0__data_start\0shutdown@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_get_nodeEv\0_ZN5n_new4CnewC1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implD1Ev\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC2Ev\0_ZSt11__addressofIPvEPT_RS1_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21\0_ZTSNSt6thread10_Impl_baseE\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type\0_ZTIN6n_math5CmathE\0_ZNSt7__cxx114listIPvSaIS1_EE5clearEv\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev\0_ZNSt10_List_nodeIPvEC1IJS0_EEEDpOT_\0strcmp@@GLIBC_2.2.5\0_ZN5n_tag4CtagC1Ev\0_ZNSt10_List_nodeImEC2IIEEEDpOT_\0_ZN5n_run4CrunD2Ev\0_ZSt3getILm0EJPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFPFiPvES8_EEEEvEEOS_IT_LS3_2EE\0_ZN8n_object6Object4isMeEi\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEEC2Ev\0_ZTIN6n_task5CtaskE\0_ZTVN6n_temp5CtempE\0_ZN6n_main5CmainD2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EE7_M_headERS3_\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC1ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt10_Head_baseILm1EPvLb0EEC1IRS0_EEOT_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED2Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC1EOS1_\0_ZTI3Cos\0_ZN7n_timer6Ctimer8t_gmtimeEPKl\0_ZTSN6n_echo5CechoE\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC2Ev\0_ZTIN5n_tag4CtagE\0_ZNSt6thread10_Impl_baseD1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implC1Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EED1Ev\0_ZTSN6n_main5CmainE\0__cxa_rethrow@@CXXABI_1.3\0_ZNKSt14_List_iteratorIPN8n_object6ObjectEEneERKS3_\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1ERKSA_\0_ZNSt11_Tuple_implILm1EIPvEE7_M_headERS1_\0_ZN8n_object6Object9i_am_hereEv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE7_M_initEv\0_ZNSt11_Tuple_implILm1EIPvEEC1EOS1_\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2IRKS2_JRS0_EEEOT_DpOT0_\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSE_PSD_\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EE6_S_getERSA_\0_ZNSt11_Tuple_implILm1EIPvEEC2IRS0_EEOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE8allocateEmPKv\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC1ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZTVN8n_syntax7CsyntaxE\0_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_EJS7_EESt10shared_ptrIT_ERKT0_DpOT1_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21\0opendir@@GLIBC_2.2.5\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEE3popEv\0_ZTVN6n_main5CmainE\0_ZNSt11char_traitsIcE7compareEPKcS2_m\0__bss_start\0_ZNSt15_Deque_iteratorIPvRS0_PS0_E11_M_set_nodeEPS2_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEED2Ev\0_ZTSN5n_net4CnetE\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC1IJS7_EEES9_DpOT_\0_ZNSt10_List_nodeIPvEC2IIS0_EEEDpOT_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5beginEv\0_ZNSt14_List_iteratorIPvEC1EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implC2Ev\0_ZN9__gnu_cxx13new_allocatorIPvED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS9_m\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8allocateEmPKv\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC1Ev\0_ZNSaIPvEC2Ev\0_ZN8n_object6Object7my_tempEv\0_ZSt4moveIRSt11_Tuple_implILm1EIPvEEEONSt16remove_referenceIT_E4typeEOS5_\0_ZTVN5n_uri4CuriE\0readdir@@GLIBC_2.2.5\0_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE8max_sizeEv\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEEC2Ev\0_ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4\0puts@@GLIBC_2.2.5\0_ZN8n_object6Object5allotEiPPv\0_ZN6n_http5ChttpC1Ev\0_ZTIN5n_net4CnetE\0_ZN5n_run4Crun4funcEPv\0_ZNSt6threadD2Ev\0_ZN6n_make5CmakeD2Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implD1Ev\0__libc_csu_init\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZN7n_timer6Ctimer7t_clockEv\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE8allocateEmPKv\0_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE\0_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv\0_ZTVN5n_url4CurlE\0_ZTVN6n_home5ChomeE\0_ZN8n_socket7Csocket6clientEv\0_ZNSt11_Deque_baseIPvSaIS0_EEC1Ev\0_ZTSN6n_cout5CcoutE\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv\0_ZnwmPv\0_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSE_PSD_m\0_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE\0_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_\0_ZNSt14_List_iteratorIPvEC2EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implD2Ev\0_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED1Ev\0closedir@@GLIBC_2.2.5\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC1IS2_EEOT_\0_ZNSt16allocator_traitsISaIPPvEE8allocateERS2_m\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev\0_ZN6n_task5CtaskC1Ev\0_ZTSN5n_sys4CsysE\0_ZNKSt14_List_iteratorIN8n_object7CmyfuncEEptEv\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implD1Ev\0_ZNSt8__detail15_List_node_base9_M_unhookEv@@GLIBCXX_3.4.15\0_ZN8n_object6Object7executeEPcPvb\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERSE_PSD_\0_ZSt4swapISt15_Deque_iteratorIPvRS1_PS1_EEvRT_S6_\0_ZTVN6n_exit5CexitE\0_ZNSt6thread10_Impl_baseC1Ev\0_ZTVN6n_task5CtaskE\0__cxa_end_catch@@CXXABI_1.3\0_ZTSN6n_http5ChttpE\0_ZTSN6n_exit5CexitE\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev\0__gxx_personality_v0@@CXXABI_1.3\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EISB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE7_M_initEv\0__pthread_key_create@@GLIBC_2.2.5\0_ZTVN6n_exec5CexecE\0_ZN8n_socket7Csocket6clientEPcS1_S1_PiS1_S2_\0_ZN6n_file5CfileC1Ev\0_ZN8n_object6Object12delete_allotEPPv\0_ZN8n_object6Object4funcEPv\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv@@GLIBCXX_3.4.21\0_ZSt3getILm1EIPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeERS7_\0_ZN8n_object6Object6createEPv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIIS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZTIN10n_brackets9CbracketsE\0_ZNSt14_List_iteratorIPvEC1Ev\0_ZTVN6n_echo5CechoE\0_ZTSN7n_iwant6CiwantE\0_ZSt7forwardIRKPFiPvEEOT_RNSt16remove_referenceIS5_E4typeE\0_ZTIN6n_echo5CechoE\0_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSG_\0_ZN7n_timer6Ctimer6t_timeEPl\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev\0_ZN8n_object6Object11clear_existEv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_JRKS4_EEEvPT_DpOT0_\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EJSB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZTSN11n_my_memory9CmyMemoryE\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv\0_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC2Ev\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEED2Ev\0_ZN8n_object7CmyfuncD2Ev\0_ZN6n_exit5CexitD1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9push_backEOS1_\0_ZNSolsEi@@GLIBCXX_3.4\0_ZTIN5n_url4CurlE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_dec_sizeEm\0_ZSt7forwardIRKN8n_object7CmyfuncEEOT_RNSt16remove_referenceIS4_E4typeE\0_ZSt12__get_helperILm0EPFiPvEIS0_EERT0_RSt11_Tuple_implIXT_EIS3_DpT1_EE\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEED2Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implD2Ev\0_ZNSt5dequeIPvSaIS0_EEC1EOS2_\0_ZTIN6n_exit5CexitE\0pthread_equal@@GLIBC_2.2.5\0_ZNSt6thread6detachEv@@GLIBCXX_3.4.11\0_ITM_deregisterTMCloneTable\0_ZNSt5tupleIIPFiPvES0_EEC2EOS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED1Ev\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2IRKS2_IRS0_EEEOT_DpOT0_\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED2Ev\0_ZNSt5dequeIPvSaIS0_EED1Ev\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2ERKSA_\0_Unwind_Resume@@GCC_3.0\0_ZN9__gnu_cxx13new_allocatorIPvEC2Ev\0_ZNSaIcEC1Ev@@GLIBCXX_3.4\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIIS1_EEEPSt10_List_nodeIS1_EDpOT_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EEC2Ev\0_ZNSolsEb@@GLIBCXX_3.4\0_ZTSN8n_object6ObjectE\0_ZN8n_object7CmyfuncD1Ev\0_ZSt11__addressofIKPN8n_object6ObjectEEPT_RS4_\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE5clearEv\0_ZTSN10n_brackets9CbracketsE\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@@GLIBCXX_3.4.21\0_ZNSaIPvED1Ev\0_ZN8n_object6Object7executeEPS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Pvb\0__libc_csu_fini\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EED2Ev\0_ZTIN7n_timer6CtimerE\0_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt6thread2idC2Ev\0_ZN8n_object7Cmyfunc4isMeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE7_M_addrEv\0_ZTSN6n_path5CpathE\0_ZN8n_object6Object7executeEPS0_PcS2_Pvb\0_ZTIN7n_iwant6CiwantE\0_ZN6n_path5Cpath4listEPc\0_ZNSt5dequeIPvSaIS0_EE15_M_pop_back_auxEv\0_ZNSt15aligned_storageILm40ELm8EEC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEED2Ev\0_ZNSt7__cxx114listIPvSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E\0_ZNSolsEl@@GLIBCXX_3.4\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS8_EERKSaIT_E\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_\0_ZN8n_socket7Csocket6s_bindEiP8sockaddri\0_ZNSt10_List_nodeIPvEC1IIS0_EEEDpOT_\0_ZNSt6thread10_Impl_baseD2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_JS4_EEEvPT_DpOT0_\0_ZTVN6n_math5CmathE\0_ZNSt26_Maybe_wrap_member_pointerIPFiPvEE9__do_wrapERKS2_\0_ZSt13__bind_simpleIRPFiPvEJRS0_EENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS6_DpOS7_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8max_sizeEv\0__libc_start_main@@GLIBC_2.2.5\0_ZTVN5n_tag4CtagE\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE14_M_create_nodeIIRKS2_EEEPSt10_List_nodeIS2_EDpOT_\0_ZNSt11_Deque_baseIPvSaIS0_EEC2EOS2_St17integral_constantIbLb1EE\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEEC1Ev\0_ZTSNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZTSN6n_file5CfileE\0_ZSteqIPvRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_\0_ZN7n_timer6CtimerC1Ev\0_ZTVN6n_make5CmakeE\0__gmon_start__\0_ZN6n_make5CmakeD1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIJS1_EEEvSt14_List_iteratorIS1_EDpOT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEppEv\0__cxa_pure_virtual@@CXXABI_1.3\0_ZdlPvS_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IIS2_EEEDpOT_\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEE6_M_runEv\0_ZNSt12_Bind_simpleIFPFiPvES0_EEclEv\0_ITM_registerTMCloneTable\0_ZTSN5n_uri4CuriE\0_ZTIN6n_path5CpathE\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEEC2Ev\0_ZNSt16allocator_traitsISaIPvEE8allocateERS1_m\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSaISt10_List_nodeIPvEEC1Ev\0_ZN10n_brackets9CbracketsC1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEEC2Ev\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEEC1Ev\0_ZN7n_timer6Ctimer9t_asctimeEPK2tm\0_ZNSt10_Head_baseILm1EPvLb0EEC1IS0_EEOT_\0_ZN8n_object6Object19remove_exist_familyEv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_inc_sizeEm\0_ZNSt11_Tuple_implILm1EJPvEE7_M_headERS1_\0_ZNSt5tupleIIPFiPvES0_EEC1IRKS2_RS0_vEEOT_OT0_\0_ZN5n_esc4CescC1Ev\0_ZNSt10_Head_baseILm1EPvLb0EEC2IS0_EEOT_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@@GLIBCXX_3.4.21\0_ZN11n_my_memory9CmyMemoryC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implD2Ev\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev\0_ZN5n_url4CurlC1Ev\0_ZNSt6threadC2IRPFiPvEIRS1_EEEOT_DpOT0_\0_ZTSN6n_make5CmakeE\0_ZTVN6n_path5CpathE\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EISB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZN8n_object7Cmyfunc5runMeEPvb\0_ZTVN5n_new4CnewE\0_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_\0_ZNSt11_Deque_baseIPvSaIS0_EE15_M_allocate_mapEm\0_ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4\0_ZNSt7__cxx114listIPvSaIS1_EEC2Ev\0\0.symtab\0.strtab\0.shstrtab\0.interp\0.note.ABI-tag\0.note.gnu.build-id\0.gnu.hash\0.dynsym\0.dynstr\0.gnu.version\0.gnu.version_r\0.rela.dyn\0.rela.plt\0.init\0.plt.got\0.text\0.fini\0.rodata\0.eh_frame_hdr\0.eh_frame\0.gcc_except_table\0.init_array\0.fini_array\0.jcr\0.dynamic\0.got.plt\0.data\0.bss\0.comment\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08@\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0T\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0t@\0\0\0\0\0t\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0öÿÿo\0\0\0\0\0\0\0˜@\0\0\0\0\0˜\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0ø@\0\0\0\0\0ø\0\0\0\0\0\0`	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0ÿÿÿo\0\0\0\0\0\0\0d@\0\0\0\0\0d\0\0\0\0\0\0\È\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k\0\0\0şÿÿo\0\0\0\0\0\0\00@\0\0\0\0\00\0\0\0\0\0\0\à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z\0\0\0\0\0\0\0\0\0\0\0\0\0\Z@\0\0\0\0\0\Z\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0\0\0\0\0B\0\0\0\0\0\0\0p\Z@\0\0\0\0\0p\Z\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È\"@\0\0\0\0\0\È\"\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰\0\0\0\0\0\0\0\0\0\0\0\0\0ğ\"@\0\0\0\0\0ğ\"\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 (@\0\0\0\0\0 (\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0£\0\0\0\0\0\0\0\0\0\0\0\0\0¤\È@\0\0\0\0\0¤\È\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0À\È@\0\0\0\0\0À\È\0\0\0\0\0\0V\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±\0\0\0\0\0\0\0\0\0\0\0\0\0\ã@\0\0\0\0\0\ã\0\0\0\0\0\0„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0\0\0\0\0\0\0\0\0\0\0\0 ô@\0\0\0\0\0 ô\0\0\0\0\0\0|I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\É\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0>\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Û\0\0\0\0\0\0\0\0\0\0\0\0\0\ØLa\0\0\0\0\0\ØL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ç\0\0\0\0\0\0\0\0\0\0\0\0\0\èMa\0\0\0\0\0\èM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ó\0\0\0\0\0\0\0\0\0\0\0\0\0ğMa\0\0\0\0\0ğM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0\0øMa\0\0\0\0\0øM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜\0\0\0\0\0\0\0\0\0\0\0\0\0øOa\0\0\0\0\0øO\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0P\0\0\0\0\0\à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\àRa\0\0\0\0\0\àR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0ğR\0\0\0\0\0ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğR\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(S\0\0\0\0\0\àv\0\0\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ê\0\0\0\0\0\Ñ\Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','666666');
/*!40000 ALTER TABLE `demand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:52
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(45) NOT NULL,
  `LoginMail` varchar(95) NOT NULL,
  `Password` text,
  `SafeMail` varchar(45) DEFAULT NULL,
  `PasswordRecoverQuestion` varchar(45) DEFAULT NULL,
  `PasswordRecoverAnswer` text,
  `Status` int(11) DEFAULT '0',
  `RegisterDate` date DEFAULT NULL,
  PRIMARY KEY (`id`,`LoginName`,`LoginMail`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Dan-dan_Xue','dan-dan_xue@asus.com','b03c6e18072db193c9a91d33e84e09e4','dan-dan_xue@asus.com','My OA?','ffb4513f2a3a46ad17d19ff6b56f9a2d',0,'2012-02-26'),(2,'Hubert','Hubert_Zhang@asus.com','5c613856b215b68999efb8eed5755b74','Hubert_Zhang@asus.com','Name','dc647eb65e6711e155375218212b3964',0,'2012-02-26'),(3,'Hunter_Chen','Hunter_Chen@asus.com','d1071878263c8e3aa1de4a863d40b62d','Hunter_Chen@asus.com','My name is?','6f7f62ba4458f067cfc7afa32b3c7b8a',0,'2012-02-26'),(4,'Hao__Chen','xhfch@126.com','d1071878263c8e3aa1de4a863d40b62d','xhfch@126.com','My name is?','02839ed514749f635038586b1846c6b5',0,'2012-02-26'),(7,'test','hao__chen@sina.com','e10adc3949ba59abbe56e057f20f883e','hao__chen@sina.com','my name?','6f7f62ba4458f067cfc7afa32b3c7b8a',0,'2017-03-07');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:52
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 17:46:52
