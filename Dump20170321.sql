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
INSERT INTO `demand` VALUES (1,'hao','pen','paik-666','shang hai',666666,666,'2016-11-27 18:00:00','2016-11-27 18:00:00','2016-11-28 10:59:37',NULL,'888888'),(2,'lulu','house','paik-666','shang hai',99999,999,'2016-11-28 11:00:17','2016-11-28 11:00:17','2016-11-28 11:00:17','ELF\0\0\0\0\0\0\0\0\0\0>\0\0\0\0�(@\0\0\0\0\0@\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0@\08\0	\0@\0 \0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0@\0\0\0\0\0@\0@\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0\0\08@\0\0\0\0\08@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0�C\0\0\0\0\0�C\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\�L\0\0\0\0\0\�La\0\0\0\0\0\�La\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0�M\0\0\0\0\0�Ma\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0T@\0\0\0\0\0T@\0\0\0\0\0D\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\�td\0\0\0\�\0\0\0\0\0\0\�@\0\0\0\0\0\�@\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0Q\�td\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\�td\0\0\0\�L\0\0\0\0\0\�La\0\0\0\0\0\�La\0\0\0\0\0(\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0/lib64/ld-linux-x86-64.so.2\0\0\0\0\0\0\0\0\0\0GNU\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0GNU\0.\�|\'\�@K�j$����\�_���\0\0\0W\0\0\0\0\0\0\0\0\0�� A	\0AW\0\0\0[\0\0\0^\0\0\0\n}J�h�\�ȁ\nҝc�\� ��	�\�ge�I\n�p�\��Һ�CxIk�\0h�)E\�L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0O\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0�\0\0\"\0\0�H@\0\0\0\0\05\0\0\0\0\0\0d\0\0!\0\0\0Sa\0\0\0\0\0X\0\0\0\0\0\0\0�\0\0!\0\0pTa\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0 $@\0\0\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0\0�$@\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0\0\"\0\0\0�\'@\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0�\0\0\0\0\0\0`$@\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0`Sa\0\0\0\0\0\0\0\0\0\0\0R\0\0\0\0\0�\'@\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0libpthread.so.0\0_ITM_deregisterTMCloneTable\0_Jv_RegisterClasses\0_ITM_registerTMCloneTable\0send\0pthread_equal\0__pthread_key_create\0recv\0accept\0pthread_create\0connect\0libstdc++.so.6\0__gmon_start__\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc\0_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE\0_ZTVN10__cxxabiv117__class_type_infoE\0_ZSt9terminatev\0_ZNSaIcED1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_\0_ZNSt8ios_base4InitD1Ev\0_ZNSolsEPFRSoS_E\0_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE\0__gxx_personality_v0\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv\0_ZTVN10__cxxabiv120__si_class_type_infoE\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_\0__cxa_pure_virtual\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_\0_ZdlPv\0__cxa_begin_catch\0_Znam\0_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_\0__cxa_end_catch\0_ZdaPv\0_ZNSt6thread6detachEv\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc\0_ZNSaIcEC1Ev\0_ZNSolsEPKv\0_ZSt17__throw_bad_allocv\0_ZNSt8ios_base4InitC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv\0_ZNSaIcED2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv\0_Znwm\0__cxa_rethrow\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_\0_ZNSt8__detail15_List_node_base9_M_unhookEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm\0_ZSt19__throw_logic_errorPKc\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc\0_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm\0_ZNSt8__detail15_List_node_base7_M_hookEPS0_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_\0_ZSt4cout\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv\0_ZNSolsEb\0_ZNSolsEi\0_ZNSolsEl\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev\0libgcc_s.so.1\0_Unwind_Resume\0libc.so.6\0socket\0readdir\0closedir\0puts\0__stack_chk_fail\0listen\0clock\0strftime\0gmtime\0__cxa_atexit\0getaddrinfo\0memset\0bind\0memcmp\0asctime\0shutdown\0vsnprintf\0memcpy\0opendir\0system\0rename\0localtime\0difftime\0mktime\0freeaddrinfo\0strcmp\0__libc_start_main\0GCC_3.0\0GLIBC_2.2.5\0GLIBC_2.4\0GLIBC_2.14\0GLIBCXX_3.4.11\0CXXABI_1.3\0GLIBCXX_3.4.15\0GLIBCXX_3.4.21\0GLIBCXX_3.4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0 \0\0\0P&y\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0u\Zi	\0\0\0�\0\0\0\0\0\0\0\0�\n\0\0\0\0\0@\0\0\0ii\r\0\0	\0�\0\0\0\0\0���\0\0\0�\0\0\0\0\0u\Zi	\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0a��\0\0\n\0\�\0\0\0\0\0ӯk\0\0\0\�\0\0\0\0\0e��\0\0\0\�\0\0\0\0\0q��\0\0\0�\0\0\0\0\0t)�\0\0\0\0\0\0\0\0\0\0�Oa\0\0\0\0\0\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0\0\0\0Y\0\0\0\0\0\0\0\0\0\0\0`Sa\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0pTa\0\0\0\0\0\0\0\0Z\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0PPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XPa\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0`Pa\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0hPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0pPa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0xPa\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Pa\0\0\0\0\0\0\0\0_\0\0\0\0\0\0\0\0\0\0\0\�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Pa\0\0\0\0\0\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0\�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Pa\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Qa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(Qa\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\00Qa\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\08Qa\0\0\0\0\0\0\0\0\"\0\0\0\0\0\0\0\0\0\0\0@Qa\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\0\0\0\0\0HQa\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0PQa\0\0\0\0\0\0\0\0%\0\0\0\0\0\0\0\0\0\0\0XQa\0\0\0\0\0\0\0\0&\0\0\0\0\0\0\0\0\0\0\0`Qa\0\0\0\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0hQa\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0pQa\0\0\0\0\0\0\0\0)\0\0\0\0\0\0\0\0\0\0\0xQa\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\�Qa\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0\0\0\0\0\�Qa\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0\0\0\�Qa\0\0\0\0\0\0\0\07\0\0\0\0\0\0\0\0\0\0\0\�Qa\0\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\�Qa\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0:\0\0\0\0\0\0\0\0\0\0\0�Qa\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0Ra\0\0\0\0\0\0\0\0?\0\0\0\0\0\0\0\0\0\0\0 Ra\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0(Ra\0\0\0\0\0\0\0\0A\0\0\0\0\0\0\0\0\0\0\00Ra\0\0\0\0\0\0\0\0B\0\0\0\0\0\0\0\0\0\0\08Ra\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0@Ra\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0HRa\0\0\0\0\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\0PRa\0\0\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0XRa\0\0\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0`Ra\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0hRa\0\0\0\0\0\0\0\0a\0\0\0\0\0\0\0\0\0\0\0pRa\0\0\0\0\0\0\0\0]\0\0\0\0\0\0\0\0\0\0\0xRa\0\0\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0J\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0O\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0P\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\0\0�Ra\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\�Ra\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\�Ra\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\�Ra\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0H�\�H�%-!\0H��t\�\0\0H�\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�5-!\0�%-!\0@\0�%-!\0h\0\0\0\0\�\�����%\n-!\0h\0\0\0\�\�����%-!\0h\0\0\0\������%�,!\0h\0\0\0\�����%�,!\0h\0\0\0\�����%\�,!\0h\0\0\0\�����%\�,!\0h\0\0\0\�����%\�,!\0h\0\0\0\�p����%\�,!\0h\0\0\0\�`����%\�,!\0h	\0\0\0\�P����%\�,!\0h\n\0\0\0\�@����%�,!\0h\0\0\0\�0����%�,!\0h\0\0\0\� ����%�,!\0h\r\0\0\0\�����%�,!\0h\0\0\0\�\0����%�,!\0h\0\0\0\������%�,!\0h\0\0\0\�\�����%�,!\0h\0\0\0\�\�����%�,!\0h\0\0\0\������%z,!\0h\0\0\0\�����%r,!\0h\0\0\0\�����%j,!\0h\0\0\0\�����%b,!\0h\0\0\0\�����%Z,!\0h\0\0\0\�p����%R,!\0h\0\0\0\�`����%J,!\0h\0\0\0\�P����%B,!\0h\Z\0\0\0\�@����%:,!\0h\0\0\0\�0����%2,!\0h\0\0\0\� ����%*,!\0h\0\0\0\�����%\",!\0h\0\0\0\�\0����%\Z,!\0h\0\0\0\������%,!\0h \0\0\0\�\�����%\n,!\0h!\0\0\0\�\�����%,!\0h\"\0\0\0\������%�+!\0h#\0\0\0\�����%�+!\0h$\0\0\0\�����%\�+!\0h%\0\0\0\�����%\�+!\0h&\0\0\0\�����%\�+!\0h\'\0\0\0\�p����%\�+!\0h(\0\0\0\�`����%\�+!\0h)\0\0\0\�P����%\�+!\0h*\0\0\0\�@����%�+!\0h+\0\0\0\�0����%�+!\0h,\0\0\0\� ����%�+!\0h-\0\0\0\�����%�+!\0h.\0\0\0\�\0����%�+!\0h/\0\0\0\������%�+!\0h0\0\0\0\�\�����%�+!\0h1\0\0\0\�\�����%�+!\0h2\0\0\0\������%z+!\0h3\0\0\0\�����%r+!\0h4\0\0\0\�����%j+!\0h5\0\0\0\�����%b+!\0h6\0\0\0\�����%Z+!\0h7\0\0\0\�p����%R+!\0h8\0\0\0\�`����%J+!\0h9\0\0\0\�P����%B+!\0h:\0\0\0\�@����%:+!\0h;\0\0\0\�0����%2+!\0h<\0\0\0\� ����%*+!\0h=\0\0\0\�����%\"+!\0h>\0\0\0\�\0����%\Z+!\0h?\0\0\0\������%+!\0h@\0\0\0\�\�����%\n+!\0hA\0\0\0\�\�����%+!\0hB\0\0\0\������%�*!\0hC\0\0\0\�����%�*!\0hD\0\0\0\�����%\�*!\0hE\0\0\0\�����%\�*!\0hF\0\0\0\�����%\�*!\0hG\0\0\0\�p����%\�*!\0hH\0\0\0\�`����%\�*!\0hI\0\0\0\�P����%\�*!\0hJ\0\0\0\�@����%�*!\0hK\0\0\0\�0����%�*!\0hL\0\0\0\� ����%�*!\0hM\0\0\0\�����%�*!\0hN\0\0\0\�\0����%�*!\0hO\0\0\0\������%�*!\0hP\0\0\0\�\�����%�*!\0hQ\0\0\0\�\�����%�*!\0hR\0\0\0\������%z*!\0hS\0\0\0\�����%r*!\0hT\0\0\0\�����%j*!\0hU\0\0\0\�����%b*!\0hV\0\0\0\�����%Z*!\0hW\0\0\0\�p����%R*!\0hX\0\0\0\�`����%b\'!\0f�\0\0\0\0\0\0\0\01\�I�\�^H�\�H�\��PTI\���\�@\0H\��0\�@\0H\�\�\�.@\0\�����fD\0\0��Ra\0UH-�Ra\0H��H�\�v�\0\0\0\0H��t]��Ra\0�\�f�\0\0\0\0\0]\�@\0f.�\0\0\0\0\0��Ra\0UH�\��Ra\0H��H�\�H��H�\�?H\�H\��t�\0\0\0\0H��t]��Ra\0�\�\0]\�fD\0\0�=q+!\0\0uUH�\�\�n���]\�^+!\0�\�@\0��Ma\0H�?\0u\�\0�\0\0\0\0H��t�UH�\��\�]\�z���UH�\�SH�\�H�}\�H�E\�H�\�\�Y\'\0\0�\�@\0H�E\�H�H�E\�H���\�\�@\0H�\�\�����H�E\�H��8�\�\�@\0H�\�\�\����H�E\�H��h�\�\�@\0H�\�\�\����\�\ZH�\�H�E\�H�\�\�\�*\0\0H�\�H�\�\�\����H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�����\�Ra\0�\�Ta\0��(@\0\�(����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�H�\�H�}�H�u�H�E�H����\�@\0H�\�\�+���H�E�H��8��\�@\0H�\�\����H�E�H��h��\�@\0H�\�\����H�E�H�\0\0\0�\�@\0H�\�\�\�����\0\0\0\0\�ÐUH�\�SH�\�H�}\�H�E\�H�\�\�&\0\0��\�@\0H�E\�H�H�E\�H(\0\0H�\�\�\����H�E\�HH\0\0H�\�\�\����H�E\�Hh\0\0H�\�\����H�E\�H�\0\0H�\�\����H�E\�H�\0\0H�\�\�\�\0\0H�E\�H�\0\0H�\�\�\0\0H�E\�H\�\0\0H�\�\�\0\0H�E\�\0\0\0\0H�\�\�\����\�\0\0\0H�\�H�E\�H\�\0\0H�\�\�\�\0\0H�E\�H�\0\0H�\�\�\�\0\0H�E\�H�\0\0H�\�\�\�\0\0H�E\�H�\0\0H�\�\����H�E\�Hh\0\0H�\�\����H�E\�HH\0\0H�\�\�z���H�E\�H(\0\0H�\�\�h���H�E\�H�\�\�\�(\0\0H�\�H�\�\�\����H�\�[]\�UH�\�SH�\�H�}\�H�u\�H�E\�H�\�\�$\0\0��\�@\0H�E\�H�H�E\�H(\0\0H�\�\����H�E\�HH\0\0H�\�\�m���H�E\�Hh\0\0H�\�\�[���H�E\�H�\0\0H�\�\�I���H�E\�H�\0\0H�\�\�o\0\0H�E\�H�\0\0H�\�\�]\0\0H�E\�H\�\0\0H�\�\�K\0\0H�E\�\0\0\0\0H�\�\����H�E\�H��h\0\0H�E\�H�\�H�\�\����\�\0\0\0H�\�H�E\�H\�\0\0H�\�\�r\0\0H�E\�H�\0\0H�\�\�`\0\0H�E\�H�\0\0H�\�\�N\0\0H�E\�H�\0\0H�\�\�(���H�E\�Hh\0\0H�\�\����H�E\�HH\0\0H�\�\����H�E\�H(\0\0H�\�\�����H�E\�H�\�\�Z\'\0\0H�\�H�\�\�[���H�\�[]\�UH�\�H�\�H�}���\�@\0H�E�H�H�E�H�\0\0H�\�\�\0\0H�E�H�\0\0H�\�\�\0\0H�E�H\�\0\0H�\�\�\0\0H�E�H\�\0\0H�\�\�\0\0H�E�H�\0\0H�\�\�v\0\0H�E�H�\0\0H�\�\�d\0\0H�E�H�\0\0H�\�\�>���H�E�Hh\0\0H�\�\�,���H�E�HH\0\0H�\�\�\Z���H�E�H(\0\0H�\�\����H�E�H�\�\�p&\0\0�\�ÐUH�\�H�\�H�}�H�u�H�E�H��hH�ƿ`Sa\0\�\�����\0\0\0\0\�\�UH�\�H�}�H�u�H�}�\0u�����\��\0\0\0\0]\�UH�\�SH�\�\0\0��\\���H��P���dH�%(\0\0\0H�E\�1���\�@\0�`Sa\0\�\����H������H�\�\�\����H������H�\�\��0\0\0H��`���H�\�\�C�\0\0H��`���H�\�\�\�0\0\0H������H�\�\�\0\0H������H�\�\�r0\0\0H������H�\�\�m\0\0H������H�\�\�0\0\0�\0\0\0\0H������H�\�\�h\0\0H������H�\�\�1\0\0H��`���H�\�\��\0\0\0H������H�\�\�\�����\�H�U\�dH3%(\0\0\0t`\�YH�\�H������H�\�\�\0\0\�H�\�H������H�\�\�\�\0\0\0\�H�\�H��`���H�\�\�\0\0\0\�H�\�H������H�\�\����H�\�H�\�\�\����\�����H�Ĩ\0\0[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\�����\�Ra\0�\�Ta\0��(@\0\�����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0\0�\�ÐUH�\�H�\�H�}��\�\�@\0H�E�H�H�E�H�\�\� $\0\0�\�ÐUH�\�H�\�H�}��p\�@\0H�E�H�H�E�H�\�\��#\0\0�\�ÐUH�\�H�\�H�}��(\�@\0H�E�H�H�E�H�\�\�\�#\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�p\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�|\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�|\0\0\0H�E�H�\�\������\�ÐUH�\�H�\�H�}�H�E�H�\�\�T\0\0\0H�E�H�\�\�\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�\0\0\0H�E�H�\�\�\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�\0\0\0�\�ÐUH�\�H�\� H�}\�H�E\�H�\0H�E�H�E\�H;E�tFH�E�H�E�H�E�H�\0H�E�H�E\�H�\�\�\0\0\0H�\�H�E�H�\�H�\�\�\0\0\0H�U�H�E\�H�\�H�\�\�\0\0\0밐\�\�UH�\�H�\�H�}�H�U�H�E�H�H�U�H�E�H�PH�E��\0\0\0\0H�\�\�\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0\0H�E�H�\�\�\0\0\0�\�ÐUH�\�H�}��]ÐUH�\�H�}�H�E�]\�UH�\�H�}�H�u�]ÐUH�\�H�\�H�}�H�u�H�E�H�M�\0\0\0H�\�H�\�\�j\0\0\0�\�ÐUH�\�H�}�H�u�H�E�H�U�H�P�]ÐUH�\�H�\�H�}�H�E�H�\�\�V\0\0\0�\�ÐUH�\�H�}�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H\�@\0\0\0\0�]\�UH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�&����\�ÐUH�\�H�}��]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�E\0\0�\�\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\����H�E\�H��8��\�@\0H�\�\�\����\�\ZH�\�H�E\�H�\�\�\� \0\0H�\�H�\�\�\����H�\�[]\�UH�\�H�\�H�}�H�u�H�}�\0u�����\�#H�E�H�ƿ`Sa\0\����� $@\0H�\�\�����\0\0\0\0\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\�����\�Ra\0�\�Ta\0��(@\0\�\�����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�\�����X\�@\0H�E\�H�H�E\�H���8\�@\0H�\�\�\����H�E\�H��8�>\�@\0H�\�\����\�\ZH�\�H�E\�H�\�\�f\0\0\0H�\�H�\�\�\����H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�����\�Ra\0�\�Ta\0��(@\0\�!����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�H�\�H�}��\�\�@\0H�E�H�H�E�H�\�\�X\0\0�\�ÐUH�\�SH�\�H�}\�H�E\�H�\�\�+\0\0�\�\�@\0H�E\�H�H�E\�H���\�\�@\0H�\�\�\����H�E\�H��8�\�\�@\0H�\�\�\����\�\ZH�\�H�E\�H�\�\�f\0\0\0H�\�H�\�\�����H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�����\�Ra\0�\�Ta\0��(@\0\�3\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�H�\�H�}��8\�@\0H�E�H�H�E�H�\�\�j\0\0�\�\�UH�\�H�\�H�}�H�E�H�\�\�\���\�\�UH�\�H�ĀH�}�dH�%(\0\0\0H�E�1�H�E�H�\�\�\�\���H�E�H�\�\�\���H�E�H�}�\0tH�M�H�U�H�E��P\0\0\0H�\�\�\"\���\�H�U�H�E�H�ѺP\�@\0�P\0\0\0H�\�\�\���H�E�H�\�\�7����\0\0\0\0H�u�dH34%(\0\0\0t\�\�\���\�\�UH�\�H�\� H�}\�H�E\�H�E�H�E�H�\0H��t\rH�E�H�@H��u�X\�@\0�`Sa\0\�P\��������\�\ZH�E�H�PH�E�H�\0H�\�H�\�\�\�\���\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\����\�Ra\0�\�Ta\0��(@\0\�\����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�yx\0\0��\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\���H�E\�H��8��\�@\0H�\�\�{\���\�\ZH�\�H�E\�H�\�\�f\0\0\0H�\�H�\�\�\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\��\����\�Ra\0�\�Ta\0��(@\0\�\�\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�H�\�H�}��X\�@\0H�E�H�H�E�H�\�\�\0\0�\�ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\0\0�8\�@\0H�E\�H�H�E\�H���\�@\0H�\�\�\���H�E\�H��8�\�@\0H�\�\�\���\�\ZH�\�H�E\�H�\�\�\0\0H�\�H�\�\�\���H�\�[]\�UH�\�H�\�H�}�H�u�H�}�\0u\n�\0\0\0\0\�\�\���H�E��\0�\�\�\�\���UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\����\�Ra\0�\�Ta\0��(@\0\��\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\0\0�\�\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\���H�E\�H��8��\�@\0H�\�\�\���\�\ZH�\�H�E\�H�\�\�\Z\0\0H�\�H�\�\�\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\�\����\�Ra\0�\�Ta\0��(@\0\��\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�Q\0\0�X\�@\0H�E\�H�H�E\�H���8\�@\0H�\�\�\�\���H�E\�H��8�>\�@\0H�\�\�\�\���\�\ZH�\�H�E\�H�\�\��\0\0H�\�H�\�\��\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\����\�Ra\0�\�Ta\0��(@\0\�5\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\0\0� \�@\0H�E\�H�H�E\�H(\0\0H�\�\�A�\0\0H�E\�H���\�\�@\0H�\�\�\���H�E\�H��8�\�\�@\0H�\�\��\���H�E\�H�\0\0�\�\�@\0H�\�\�\�\���\�1H�\�H�E\�H(\0\0H�\�\�w\0\0\0\�H�\�H�E\�H�\�\��\0\0H�\�H�\�\��\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\����\�Ra\0�\�Ta\0��(@\0\�/\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�H�\�H�}��h\�@\0H�E�H�H�E�H�\�\�f\0\0�\�ÐUH�\�SH�\�H�}\�H�E\�H�\�\�]\0\0�@\�@\0H�E\�H�H�E\�H���\0\�@\0H�\�\��\���H�E\�H��8�\�@\0H�\�\�\�\���\�\ZH�\�H�E\�H�\�\�\0\0H�\�H�\�\�\���H�\�[]\�UH�\�H�\�H�}��@\�@\0H�E�H�H�E�H�\�\�\�\0\0�\�ÐUH�\�H�\�H�}��\r\�@\0�`Sa\0\�\���H�E�\�\�UH�\�SH�\�(H�}\�H�}\�\0u�����\�CH�E\�H�E\�H�E\�H�\�\�$\���H�þ\�@\0�`Sa\0\�B\���H�\�H�\�\�7\���� $@\0H�\�\�J\����\0\0\0\0H�\�([]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�w\����\�Ra\0�\�Ta\0��(@\0\�\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\�\0\0�p\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\���H�E\�H��8��\�@\0H�\�\�k\���H�E\�H�\0\0\0��\�@\0H�\�\�T\���\�\ZH�\�H�E\�H�\�\�w\0\0H�\�H�\�\�x\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\����\�Ra\0�\�Ta\0��(@\0\�\����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�\r\0\0�(\�@\0H�E\�H�H�E\�H���H\�@\0H�\�\�\���H�E\�H��8�N\�@\0H�\�\�\���H�E\�H��h�X\�@\0H�\�\�z\���\�\ZH�\�H�E\�H�\�\�\0\0H�\�H�\�\�\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\��\����\�Ra\0�\�Ta\0��(@\0\�\�\����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�3\0\0��\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\�\���H�E\�H��8��\�@\0H�\�\�\���\�\ZH�\�H�E\�H�\�\�\�\0\0H�\�H�\�\�\�\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\��\����\�Ra\0�\�Ta\0��(@\0\�\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�HH�}�dH�%(\0\0\0H�E\�1�H�E�H�\�\�^\0\0��\�@\0H�E�H�H�E�H���\�@\0H�\�\��\���H�E�H�PH�E�H�\�H�\�\�\�\0\0H�E�H�PH�E�H�\�H�\�\�\���H�E�H�\�\�{\���H�E�H��8�&\�@\0H�\�\�\���H�E��\0\0\0\0�\0\0\0\0H�\�\�v\0\0\�+H�\�H�E�H�\�\�?\���\�H�\�H�E�H�\�\�\0\0H�\�H�\�\�\���H�E\�dH3%(\0\0\0t\�\���H�\�H[]\�UH�\�SH�\�HH�}��u�dH�%(\0\0\0H�E\�1�H�E�H�\�\�e\0\0��\�@\0H�E�H�H�E�H���\�@\0H�\�\��\���H�E�H�PH�E�H�\�H�\�\��\0\0H�E�H�PH�E�H�\�H�\�\�\���H�E�H�\�\�\���H�E�H��8�&\�@\0H�\�\�\����M�H�E��\0\0\0\0�\�H�\�\�}\0\0\0\�+H�\�H�E�H�\�\�F\���\�H�\�H�E�H�\�\�\0\0H�\�H�\�\�\���H�E\�dH3%(\0\0\0t\�\�\���H�\�H[]ÐUH�\�H�\�H�}���\�@\0H�E�H�H�E�H�\�\�Z\0\0H�E�H�\�\�R\0\0�\�ÐUH�\�SH�\�H�}\�u\�U\�H�E\�ǀ0\0\0\0\0\0\0H�E\�Hǀ(\0\0\0\0\0\0H�E\�U\���4\0\0�}\�\0t(�E\�H�H�\�\�\n\���H�\�H�E\�H��(\0\0H�E\�U䉐0\0\0H�E\�H��(\0\0\�NH�\�\�\����0\�@\0�`Sa\0\�\���H�E\�\�H�\�\�\���� $@\0H�\�\�\���\�9\���\�H�\�\�/\���H�\�H�\�\�\���H�\�[]ÐUH�\�H�\� H�}�H�u�H�U\�H�M\�H�}�\0tH�E�H��(\0\0H;E�t>H�E�H�\�\�>\'\0\0H;E\�t,H�E\�H�\�\�^\���H��t\"H�E�H�PH�E\�H�\�H�\�\�\0\0��t�\0\0\0\��\0\0\0\0\�\�UH�\�H�\�H�}�H�E�H��(\0\0H��t2H�E�H��(\0\0H��tH�E�H��(\0\0H�\�\�a\���H�E�Hǀ(\0\0\0\0\0\0�\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\�\����\�Ra\0�\�Ta\0��(@\0\�\����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�H�\� H�}�H�u�H�U\�H�}\�\0u�\0\0\0\0\�H�U\�H�M�H�E�H�\�H�\�\�C\���\�\�UH�\�H�\� H�}\�H�u\�dH�%(\0\0\0H�E�1�� \0\0\0H�E\�H�U\�I�й\�@\0H��$@\0H�Ǹ\0\0\0\0\�\Z\0\0\0H�E\�H�M�dH3%(\0\0\0t\�\0\���\�\�UH�\�SH�\�\0\0H�����H��\0���H������H������L��`���L��h�����t#)�p���)M�)U�)]�)e�)m�)u\�)}\�dH�%(\0\0\0H��8���1�H������H�P�\0\0\0H�\�Hл\0\0\0�\0\0\0\0H��Hk�H)\�H�\�H��H�\�H�\�H�����ǅ ��� \0\0\0ǅ$���0\0\0\0H�EH��(���H��@���H��0���H�� ���H������H������H�����H��\0����Љ����H�����H�\�\�\�\��������Hc\�H�����H�<H�����H�����H�����H�\�H��H�\�\��\0\0\0H�����H�\�\�\���H�����H��8���dH3%(\0\0\0t$\�H�\�H�����H�\�\�T\���H�\�H�\�\�9\���\�d\���H�]�\�\�UH�\�H�\�H�}�H�E�H�\�\�V\����\�\�UH�\�ATSH�\�H�}\�H�u\�H�E\�H�\�\�\�\���H�\�H�E\�H�\�\�\���H9\�uCH�E\�H�\�\�\���I�\�H�E\�H�\�\�e\���H�\�H�E\�H�\�\�V\���L�\�H�\�H�\�\�<�����u�\0\0\0\��\0\0\0\0H�\�[A\\]ÐUH�\�SH�\�(H�}\�H�u\�H�U\�H�M\�H�E\�H�\�\�y\���H��H�E\�H�U\�H�\�H�\�\�S\���H�U\�H�M\�H�E\�H�\�H�\�\�$\0\0\0\�\ZH�\�H�E\�H�\�\�����H�\�H�\�\� \���H�\�([]ÐUH�\�H�\�0H�}\�H�u\�H�U\�dH�%(\0\0\0H�E�1�H�U\�H�M\�H�E\�H�\�APH�\�H�\�\�\0\0\0H�\��H�E�dH3%(\0\0\0t\�\�\���\�ÐUH�\�H�\�0H�}\�H�u\�H�U\�dH�%(\0\0\0H�E�1�H�U\�H�M\�H�E\�H�\�APH�\�H�\�\�\0\0\0H�\��H�E�dH3%(\0\0\0t\�\���\�ÐUH�\�SH�\�8H�}\�H�u\�H�U\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�\0\0��tH�E\�H;E\�t�\0\0\0\��\0\0\0\0��t\n�X\�@\0\�\�\���H�U\�H�E\�H�\�H�\�\�\�\0\0\0H�E\�H�E\�H��v=H�M\�H�Eغ\0\0\0\0H�\�H�\�\��\���H�\�H�E\�H�\�H�\�\�\r\���H�U\�H�E\�H�\�H�\�\�\Z\���H�E\�H�\�\�\���H��H�U\�H�E\�H�\�H�\�\�\���H�U\�H�E\�H�\�H�\�\�5\����H�E\�dH3%(\0\0\0t3\�,H�\�\�+\���H�E\�H�\�\�\���\�Z\���H�\�\�\�\���H�\�H�\�\�7\���\�b\���H�\�8[]\�UH�\�H�}�H�}�\0��]\�UH�\�SH�\�(H�}\�H�u\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�6\0\0\0H�E\�H�U\�H�\�SH�\�H�\�\�(\0\0\0H�\�H�M\�dH3%(\0\0\0t\�\�\���H�]�\�\�UH�\�H�}�]\�UH�\�H�}�H�u�H�U�H�E�H)\�H�\�]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\0\0�0\�@\0H�E\�H�H�E\�H���\�@\0H�\�\�\���H�E\�H��8�\�@\0H�\�\�\���\�\ZH�\�H�E\�H�\�\�$\n\0\0H�\�H�\�\�%\���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�G\����\�Ra\0�\�Ta\0��(@\0\�c\����\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�\0\0��\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�P\���H�E\�H��8��\�@\0H�\�\�;\���\�\ZH�\�H�E\�H�\�\�^	\0\0H�\�H�\�\�_\���H�\�[]\�UH�\�SH�\�(H�}\�H�u\�H�E\�H�E\�H�E\�@H�H�\�\�.\���H�\�H�E\�H�PH�E\�X�\�\� H�\�\�\�\���H�E\�H\�@\0\0\0\0�\0\0\0\0\�\���\�\�H�\�([]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\Z\����\�Ra\0�\�Ta\0��(@\0\�6\����\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�H�s�\0\0H������]\�UH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�E\���\�\�UH�\�H�}��u�U�H�E����\�]\�UH�\�H�}\�u\�H�E\�\0�E�H�E\��E\�\�H�E\��E�]\�UH�\�H�\�H�}��u�\�m���������t�U�H�E��\�H�\�\����\��U�H�E��\�H�\�\����\�\�UH�\�SH�\�xH�}�dH�%(\0\0\0H�E\�1�H�E�H�\�\�!\0\0H�E�H�PH�E�H�\�H�\�\�1\"\0\0H�E�H�\�\�!\0\0H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�\�@\0\0\0\0�H�E\�dH3%(\0\0\0t!\�\ZH�\�H�E�H�\�\�D!\0\0H�\�H�\�\�C\���\�n\���H�\�x[]ÐUH�\�H�\�H�}�H�E�H��H�\�\�\�!\0\0����tH�E�H��H�\�\�\�!\0\0\�\�H�E�H��H�\�\� \0\0�\�\�UH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�\���H�E\�H�� H�\�\�\���H�E\�H�U\�H�\�H�\�\�\���H�E\�H�U\�H�\� H�\�H�\�\�\���H�E\�H�U\�H�P@\�*H�\�H�E\�H�� H�\�\��\���H�E\�H�\�\�\�\���H�\�H�\�\�[\���H�\�([]\�UH�\�H�\�H�}�H�u�H�E�H�U�H�\�H�\�\�,!\0\0��tH�E�H�\�\�A\���\�2H�E�H�P H�E�H�\�H�\�\�!\0\0��tH�E�H�� H�\�\�\���\��\0\0\0\0\�ÐUH�\�H�\�H�}�H�u�H�E�H�U�H�\�H�\�\������tH�E�H�\�\�\�\���\�2H�E�H�P H�E�H�\�H�\�\������tH�E�H�� H�\�\�\���\��\0\0\0\0\�ÐUH�\�H�\�H�}�H�u�H�E�H�U�H�\�H�\�\�J�����tH�E�H�\�\�m\���\�2H�E�H�P H�E�H�\�H�\�\�!�����tH�E�H�� H�\�\�@\���\��\0\0\0\0\�ÐUH�\�SH�\�8H�}\�H�uЉЈE\�dH�%(\0\0\0H�E\�1�H�E\�H�@@H��u�����\�V�Ẽ���tH�E\�H�@@H�U\�H�\��\�\�8H�E\�H�H@H�U\�H�E\�H�\�H�\�\�\" \0\0H�E\�H�\�\�\���H�E\�H�\�\�\\\0\0�\0\0\0\0H�M\�dH3%(\0\0\0t!\�\ZH�\�H�E\�H�\�\�7\0\0H�\�H�\�\�\\\���\�\���H�\�8[]\�UH�\�H�\� H�}\�H�}\�\0u�����\�;H�E\�H�E��$\�@\0�`Sa\0\�\�\���H�\�H�E�H�\�H�\�\�\�\���� $@\0H�\�\��\����\0\0\0\0\�ÐUH�\�SH�\�\0\0\0H��h���dH�%(\0\0\0H�E\�1��X\�@\0H��h���H�H��h���H��H�\�\�\���H��h���H��8H�\�\�\���H��h���H��hH�\�\�~\���H��h���H�\0\0\0H�\�\�i\���H��h���H�\0\0\0H�\�\�\�\0\0H��h���H\�\0\0\0H�\�\�\�\0\0H��h���H\�\0\0\0H�\�\� \0\0H��h���H�\0\0\0H�\�\�a \0\0H��h���H\0\0H�\�\�L \0\0H�\�!\0H��H�\�!\0H�\�!\0H��h���H�PH��h���\�@\0\0\0\0H��h���\�@\0\0\0\0H��h���Hǀ�\0\0\0����H��h���H���1\�@\0H�\�\�f\���H��h���H�PH��h���H��8H�\�H�\�\�\���H�^!\0H�E�H�\�H�\�\�>���H��h���H�PH�E�H�\�H�\�\�\�\���H�E�H�\�\�\�\���H�����H�\�\�J\���H�����H�E��8\�@\0H�\�\��\���H�M�H��h�����P@\0H�\�H�\�\�	\0\0H�E�H�\�\�{\���H�����H�\�\��\���H�����H�\�\�\�\���H�����H�E��C\�@\0H�\�\�\���H�M�H��h�����6@\0H�\�H�\�\�\0\0H�E�H�\�\�\���H�����H�\�\�\���H��h����\0\0\0\0H�\�\�\0\0H��h���H��XH�\�\�\���\�\���H�\�H��h���H�P`�H�E\�dH3%(\0\0\0�*\0\0\� \0\0H�\�H�E�H�\�\�\���\�MH�\�H�E�H�\�\�\���\�H�\�H�����H�\�\�\���\�(H�\�H�E�H�\�\�w\���\�H�\�H�����H�\�\��\���\�H�\�H��h���H\0\0H�\�\�1\Z\0\0H��h���H�\0\0\0H�\�\�\Z\0\0H��h���H\�\0\0\0H�\�\�\�\0\0H��h���H\�\0\0\0H�\�\�\0\0H��h���H�\0\0\0H�\�\�\0\0H��h���H�\0\0\0H�\�\�\�\���H��h���H��hH�\�\�\�\���H��h���H��8H�\�\�\���H��h���H��H�\�\�\���H�\�H�\�\�\���\�G\���H�Ę\0\0\0[]ÐUH�\�H�\�H�}��X\�@\0H�E�H�H�E�H�\0\0\0H�\�\�~\0\0H�E�H\�\0\0\0H�\�\�\0\0H�E�H�\�\�\�\0\0H�E�H\�\0\0\0H�\�\�N\0\0H�E��\0\0\0\0H�\�\�\0\0H�E�H�\0\0\0H�\�\�{\0\0H�E�H�\�\�\�\0\0H�E�H\0\0H�\�\�]\0\0H�E�H\0\0H�\�\�\�\0\0H�E�H�\0\0\0H�\�\�\0\0H�E�H\�\0\0\0H�\�\�\0\0H�E�H\�\0\0\0H�\�\�Y\0\0H�E�H�\0\0\0H�\�\�G\0\0H�E�H�\0\0\0H�\�\�\���H�E�H��hH�\�\�u\���H�E�H��8H�\�\�e\���H�E�H��H�\�\�U\����\�\�UH�\�AUATSH�\�H�}\�H�u\�H�}\�\0tqH�E\�H�XH�E\�L�`8H�E\�L�h�J\�@\0�`Sa\0\�_\���L�\�H�\�\�\����P\�@\0H�\�\�G\���L�\�H�\�\��\����X\�@\0H�\�\�/\���H�\�H�\�\�\���� $@\0H�\�\�7\���\�oH�E\�H�XH�E\�L�`8H�E\�L�h�J\�@\0�`Sa\0\�\�\���L�\�H�\�\�\����P\�@\0H�\�\�\�\���L�\�H�\�\�\����X\�@\0H�\�\�\���H�\�H�\�\�#\���� $@\0H�\�\�\�\���H�\�[A\\A]]ÐUH�\�H�\� H�}\�H�u\�dH�%(\0\0\0H�E�1�H�}\�\0tFH�E\�H�E�H�E\�H���\0\0\0H�E�H�\�H�\�\�\0\0H�E\�H�E�H�E\�H��\�\0\0\0H�E�H�\�H�\�\�\0\0\�\"H�E\�H�E�H�E\�H���\0\0\0H�E�H�\�H�\�\�^\0\0�H�E�dH3%(\0\0\0t\�W\���\�ÐUH�\�H�\�H�}�H�u�H�E�H���\0\0\0H�E�H�\�H�\�\�f\0\0�\�ÐUH�\�H�\� H�}\�H�E\�H\�\0\0\0H�\�\�x\0\0����t@H�E\�H\�\0\0\0H�\�\�{\0\0H�\0H�E�H�U\�H�E�H�\�H�\�\����H�E\�H\�\0\0\0H�\�\�\0\0말\�\�UH�\�H�\�H�}�H�u�H�E�H�PH�E�H�\�H�\�\�b\0\0��tH�E�H��H�\�\�s\���\�2H�E�H�P8H�E�H�\�H�\�\�5\0\0��tH�E�H��8H�\�\�F\���\��\0\0\0\0\�ÐUH�\�H�\�H�}�H�u�H�E�H�PH�E�H�\�H�\�\�\�\�����tH�E�H��H�\�\�\���\�2H�E�H�P8H�E�H�\�H�\�\�\�����tH�E�H��8H�\�\�\�\���\��\0\0\0\0\�ÐUH�\�H�\�H�}�H�u�H�E�H�PH�E�H�\�H�\�\�p\�����tH�E�H��H�\�\�\���\�2H�E�H�P8H�E�H�\�H�\�\�C\�����tH�E�H��8H�\�\�b\���\��\0\0\0\0\�ÐUH�\�H�\�H�}��u�H�E�H�P�E�H�H9\�uH�E�H��H�\�\�\'\���\��\0\0\0\0\�\�UH�\�SH�\�\0\0\0H��x���H��p���H��h���dH�%(\0\0\0H�E\�1�H��p���H�E�H�\�H�\�\�\���H��h���H�M�H�E�H�\�H�\�\����H�E�H�\�\�\���H��x���H��\�\0\0\0H�E�H�\�H�\�\�\�\Z\0\0�\0\0\0H�E�H�\�\�\�\0\0�\�H�M\�dH3%(\0\0\0t;\�4H�\�H�E�H�\�\�\�\���H�\�H�\�\�7\���H�\�H�E�H�\�\�\0\0H�\�H�\�\�\���\�H\���H�Ę\0\0\0[]\�UH�\�H�\� H�}\�H�u\�dH�%(\0\0\0H�E�1�H�E\�H���\0\0\0H�E\�H�\�H�\�\�}\Z\0\0H�E\�H�E�H�E\�H��\0\0H�E�H�\�H�\�\�\Z\0\0�H�E�dH3%(\0\0\0t\�\�\���\�\�UH�\�H�\�0H�}\�H�u\�dH�%(\0\0\0H�E�1�H�E\�H��t>H�E\�H�E\�H�E\�H��\0\0H�E\�H�\�H�\�\�\Z\0\0H�E\�H���\0\0\0H�E\�H�\�H�\�\�n\Z\0\0\�hH�E\�H�\0\0\0H�\�\�\0\0����tOH�E\�H�\0\0\0H�\�\�\0\0H�\0H�E�H�E\�H�E\�H�E�H��\0\0H�E\�H�\�H�\�\�\Z\0\0H�E\�H�\0\0\0H�\�\�\0\0\�H�E�dH3%(\0\0\0t\�\�\���\�\�UH�\�H�\�0H�}\�dH�%(\0\0\0H�E�1�H�E\�H\0\0H�\�\��\Z\0\0����tOH�E\�H\0\0H�\�\��\Z\0\0H�\0H�E�H�E\�H�E\�H�E�H���\0\0\0H�E\�H�\�H�\�\�\0\0H�E\�H\0\0H�\�\�\0\0또H�E�dH3%(\0\0\0t\�P\���\�\�UH�\�ATSH�\�PH�}�dH�%(\0\0\0H�E\�1�\�E�\0\0\0\0H�E�H�\�\�)\0\0H�E�H�\0\0\0H�\�\�-\0\0H�E�H�E�H�\0\0\0H�\�\�c\0\0H�E\�H�U\�H�E�H�\�H�\�\�\0\0����\0\0\0H�E�H�\�\�\�\0\0H�\0H�E\�H�E\�H�\0H�\0H�U\�H�\��\�I�\�H�E\�H�X�E�H�E�H��H�ƿ`Sa\0\�\�\����]\�@\0H�\�\�\���H�E��\�H�\�\�\����]\�@\0H�\�\�\���H�\�H�\�\�\���L�\�H�\�\�\���� $@\0H�\�\��\���H�E�H�\�\�\0\0\�\'���H�E�H��H�ƿ`Sa\0\�y\����_\�@\0H�\�\�\���H�E��\�H�\�\�\���� $@\0H�\�\�\����E�H�M\�dH3%(\0\0\0t\�\�\���H�\�P[A\\]ÐUH�\�ATSH�\�@H�}�dH�%(\0\0\0H�E\�1�\�E\�\0\0\0\0H�E\�H�\�\�\Z\0\0H�E�H\�\0\0\0H�\�\�\Z\0\0H�E\�H�E�H\�\0\0\0H�\�\�\�\Z\0\0H�E\�H�U\�H�E\�H�\�H�\�\�\0\0����\0\0\0H�E\�H�\�\�D\0\0H�@@H�����\�H�E\�H�\�\�+\0\0I�ăE\�H�E�H��H�ƿ`Sa\0\�u\����]\�@\0H�\�\�\���H�Ẻ\�H�\�\�\����]\�@\0H�\�\�\���L�\�H�\�\�@\����\�H�\�\�\�\���� $@\0H�\�\�\���H�E\�H�\�\�\Z\0\0\�1���H�E�H��H�ƿ`Sa\0\�\����s\�@\0H�\�\�6\���H�Ẻ\�H�\�\�&\���� $@\0H�\�\�9\����E\�H�M\�dH3%(\0\0\0t\�b\���H�\�@[A\\]ÐUH�\�H�\�H�}�H�E�H�\0\0\0H�\�\�*\���H������t$H�E�H�\0\0\0H�ƿ`Sa\0\�y\���� $@\0H�\�\�\�\����\�ÐUH�\�H�\�H�}�H�E�H��hH�\�\�\�\���H������t\"H�E�H��hH�ƿ`Sa\0\�-\���� $@\0H�\�\�\����\�ÐUH�\�H�\�0H�}�H�u�H�U\�H�M\�L�E\�D�ȈE\�D�E\�H�}\�H�M\�H�U\�H�u�H�E�E��I��H�\�\�\0\0\0\�ÐUH�\�SH�\�xH�}�H�u�H�U�H�M�L�E�D�ȈE�dH�%(\0\0\0H�E\�1�\�E�����H�}�\0uH�E��\0\0\0\0H�\�\��\0\0\�\�\0\0H�E�H�\0\0\0H�\�\�x\0\0��t\n�����\�\�\0\0H�E�H�\�\��\0\0H�E�H�\0\0\0H�\�\��\0\0H�E�H�E�H�\0\0\0H�\�\�4\0\0H�E\�H�U\�H�E�H�\�H�\�\�e\0\0���\0\0H�E�H�\�\�\0\0H�\0H�E\�H�}�\0t1H�E�H�\�\�\�������tH�U�H�E\�H�\�H�\�\������t�\0\0\0\��\0\0\0\0��t]H�}�\0t\ZH�E�H�\�\�\�\�������t�\0\0\0\��\0\0\0\0��t�M�H�U�H�u�H�E\�H�\�\�\�\0\0�E�\�qH�E\�\0\0\0\0H�\�\�\�\0\0�E�\�[H�}�\0t\ZH�E�H�\�\�s\�������t�\0\0\0\��\0\0\0\0��t�M�H�U�H�u�H�E\�H�\�\�\0\0�E�\�H�E\�\0\0\0\0H�\�\�~\0\0�E�H�E�H�\�\�g\0\0\�����}��u!H�}�\0t\ZH�E�H�\�\�\�������t�\0\0\0\��\0\0\0\0��t)�]�H�E�H�\�\�����H�\�H�E��پC\�@\0H�\�\�\�\0\0�E��E�H�]\�dH3%(\0\0\0t\�\Z\���H�\�x[]ÐUH�\�SH�\�\�\0\0\0H��H���H��@���H��8���H��0���L��(���D�Ȉ�$���dH�%(\0\0\0H�E\�1�H��_���H�\�\�\���H��_���H��8���H��`���H�\�H�\�\�<\���H��_���H�\�\�m\���H��_���H�\�\�^\���H��_���H��0���H�E�H�\�H�\�\�\���H��_���H�\�\�2\�����$���H�U�H�E�H�\�H�\�\����H��`���H�E�H�\�H�\�\����H��(���H�M�H�U�H��@���H��H���A�\�I��H�\�\�;����\�H�E�H�\�\�9���H�E�H�\�\�-���H�E�H�\�\�!���H��`���H�\�\�����\�H�M\�dH3%(\0\0\0��\0\0\0\�|H�\�H��_���H�\�\�y���H�\�H�\�\�^\���H�\�H��_���H�\�\�\\���\�1H�\�H�E�H�\�軿��\�H�\�H�E�H�\�調��\�H�\�H�E�H�\�虿��H��`���H�\�芿��H�\�H�\�\��\���\�*���H�\�\�\0\0\0[]\�UH�\�H�\�H�}�H�u�H�E�H�\0H��H�\0H�M�H�U�H�\�H�\��\�\�\�UH�\�SH�\�8H�}\�H�u\�H�UȉȈE\�dH�%(\0\0\0H�E\�1�H�E\�H��u�����\�N�Eă���tH�E\�H�U\�H�\��\�\�4H�U\�H�M\�H�E\�H�\�H�\�\�\�\n\0\0H�E\�H�\�\�:\���H�E\�H�\�\�\0\0�\0\0\0\0H�u\�dH34%(\0\0\0t!\�\ZH�\�H�E\�H�\�\�\�\0\0H�\�H�\�\�\���\�9���H�\�8[]\�UH�\�SH�\�hH�}�H�u�H�U��ȈE�dH�%(\0\0\0H�E\�1��]�H�E�H�\�\�\����H�E�H�\�\�]���H��H�U�H�E�H�\�H�\�\�w���H�U�H�u�H�E��\�H�\�\�{\0\0�\�H�E�H�\�\����H�E�H�\�臿���\�H�M\�dH3%(\0\0\0t2\�+H�\�H�E�H�\�\�ս��\�H�\�H�E�H�\�\�T���H�\�H�\�\�9���\�d���H�\�h[]ÐUH�\�SH�\�\0\0\0H�}�H�u�H��x����Ȉ�t���dH�%(\0\0\0H�E\�1�H�E�H�\�\�����H�U�H�M�H�E�H�\�H�\�觿��H�E�H�\�\�۾����t���H�U�H�E�H�\�H�\�豼��H��x���H�u�H�E��\�H�\�\�\0\0\0�\�H�E�H�\�\�\n���H�E�H�\�\������\�H�M\�dH3%(\0\0\0tL\�EH�\�H�E�H�\�\�l���H�\�H�\�\�Q���H�\�H�E�H�\�\�¼��\�H�\�H�E�H�\�豼��H�\�H�\�\�&���\�Q���H�Ĉ\0\0\0[]ÐUH�\�SH�\�\0\0\0H�}�H�u�H��x����Ȉ�t���dH�%(\0\0\0H�E\�1�\�E�����H�E�H\�\0\0\0H�\�\�\0\0��t\n�����\�\�\0\0\0H�E�H�\�\�\�\0\0H�E�H\�\0\0\0H�\�\��\0\0H�E�H�E�H\�\0\0\0H�\�\�)\0\0H�E�H�U�H�E�H�\�H�\�\�Z\0\0����\0\0\0H�U�H�E�H�\�H�\�\�W���H�E�H�\�\�u\0\0H�\�H�E�H�\�H�\�\�\������\�H�E�H�\�註���\�t-��t���H�E�H�\�\�;\0\0H��H��x����\�H�\�H�\�\�\�\����E�H�E�H�\�\��\0\0\�K����E�H�M\�dH3%(\0\0\0t\�����H�Ĉ\0\0\0[]ÐUH�\�SH�\�(H�}\�u\�H�U؃}\�\0t�E\�H�H�\�蝹��H�\�H�E\�H��]\�\�\�SH�\�\�T�����\�@\0�`Sa\0\�E���H�E\�\�H�\�\�5���� $@\0H�\�\�H����\0\0\0\0\�޽��\�H�\�\�Խ��H�\�H�\�\�9���H�\�([]\�UH�\�H�\�0H�}\�u\�H�U؉M\�D���E\�dH�%(\0\0\0H�E�1�H\�E�\0\0\0\0�E\�;E\�|�E\�\�}H�U��M\�H�E\�\�H�\�\�����E\�H�E�H��t�E\�;E\��E\�\�O�}\�\0t(H�E\�H�\0H��t�E\�Hc\�H�E\�H�H�E�H�\�H�\�\�ƺ��H�U\�H�E\�H�\�H�\�\�%\0\0\0H�U�H�E\�H��E\�H�u�dH34%(\0\0\0t葻��\�ÐUH�\�H�\�H�}�H�u�H�}�\0t2H�E�H�\0H��t&H�E�H�\0H��tH�E�H�\0H�\�谻��H�E�H\�\0\0\0\0\0�\�\�UH�\�H�}�H�E�H�@]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�E��\0\0\0\0H�\�\�\���H�E�\�ÐUH�\�H�}�H�E��@]ÐUH�\�H�\�H�}�H�u�H�E�H��H�ƿ`Sa\0\�\'�����\�@\0H�\�\�Z����\0\0\0\0\�ÐUH�\�H�}�H�u�����]ÐUH�\�H�}�H�u�\0\0\0\0]ÐUH�\�H�}�H�u�\0\0\0\0]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�p����\�Ra\0�\�Ta\0��(@\0茹���\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�H�}�H�u�H�E�]\�UH�\�H�}�H�u�]ÐUH�\�H�\�H�}�H�u�H�E�H�PH�E�H�@H9\�t.H�E�H�@�\0<*t&H�E�H�PH�E�H�@H�\�H�\�胺����u�\0\0\0\��\0\0\0\0\�ÐUH�\�H�}�H�E�H\�\0\0\0\0\0�]\�UH�\�H�\� H�}�H�u\�H�U\�H�E�H�\�H�\�\�\�������\�\�UH�\�H�\�H�}�H�E�H�\�\�\0\0\0��t\�o����\�\�UH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E�H�\�\�u���H�U�H�E\�H�\�H�8\�x�����H�M�dH3%(\0\0\0t\�\���\�ÐUH�\�H�\�H�}�H�E�H��H�\�\�L\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�����\�ÐUH�\�H�\�H�}���\�@\0H�E�H�H�E�H��H�\�\�����\0\0\0\0��tH�E�H�\�\�����\�ÐUH�\�H�\�H�}�H�E�H�\�\����H�E�H�\�\�ط��\�\�UH�\�H�}�H�}��\0\0w�\0\0\0�\0\0\0\0H�u�\��\0\0\0]ÐUH�\�H�\�H�}�H�E�H�\�\�\�\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�l\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\��\0\0�\�ÐUH�\�H�\�H�}�H�E�H�� H�\�\�\���H�E�H�\�\�Ե���\�ÐUH�\�H�\�H�}�H�E�H�\0H��tH�E�H�\0H�\�\�\0\0�\�\�UH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�SH�\�hH�}�dH�%(\0\0\0H�E\�1�H�E�H�\�\��\0\0H�\�H�E�H�U�H�\�H�\�\�\0\0H�E�H�U�H�\�H�\�\�o\0\0H�U�H�u�H�E�H�\�H�\�\�\r\0\0H�E�H�\�\�\�\0\0�H�E\�dH3%(\0\0\0t豶��H�\�h[]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�u�H�E�H�\�\�\����H�\�H�E�H�\�H�\�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\r\0\0\�\�UH�\�H�\�H�}�H�E�H�\�\�\r\0\0�\�\�UH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�R�������\�\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]ÐUH�\�H�\�H�}�H�E�H��H�\�\�R����\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�����\�ÐUH�\�SH�\�hH�}�H�u�H�U�dH�%(\0\0\0H�E\�1�H�E�H�\�\�\����H�E�H�\�\�y���H�\�H�E�H�\�\�\\���H��H�E\�H�\�H�\�H�\�\�R\0\0H�E�H�U\�H�M�H�\�H�\�\�\0\0H�U�H�E�H�\�H�\�\��\0\0H�M�H�E��`$@\0H�\�H�\�萴��H�E�H�\�\�<���H�E�H�\�\�*����H�E\�dH3%(\0\0\0t-\�&H�\�H�E�H�\�\����H�E�H�\�\�����H�\�H�\�萶��軴��H�\�h[]\�UH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0H�E�H�\�\������\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\��\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\��\0\0H�E�H�\�\������\�ÐUH�\�H�\�H�}�H�E�H�\�\�:\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�F\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�F\0\0H�E�H�\�\������\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�\r\0\0H�E�H�\�\�|\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�H\0\0H�E�H�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�\0\0H�E�H�\�\�\0\0�\�\�UH�\�H�}�H�E�]ÐUH�\�SH�\�H�}\�H�u\�H�E\�H�\�\�\����H�\�H�E\�H�\�\�P\0\0H��H�E\�H�\�H�\�H�\�\�\0\0�H�\�[]ÐUH�\�SH�\�XH�}�H�u�dH�%(\0\0\0H�E\�1�H�E�H�\�\�\0\0H�E�H�E�H�\�\��\0\0H�E�H�E�H�E\�H�U�H�E�H�\�H�\�\�\0\0����\0\0\0H�E�H�E\�H�E\�H�\�\�%\0\0H�E�H�\�\�9\0\0H�H�E�H�\0H9\�����tJH�E�H�\�\�\0\0H�\�\�*\0\0H�\�H�E�H�\�\�)\0\0H9\�����tH�U�H�E�H�\�H�\�\�\0\0\�H�E�H�E\�H�E\�H�E�\�Z���H�U�H�E\�H�\�H�\�\�y\0\0��tH�U\�H�E�H�\�H�\�\�\�\0\0�H�E\�dH3%(\0\0\0t藱��H�\�X[]\�UH�\�H�}�H�E�H�H�E�H9\���]ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�\�\�\0\0H�E�H�E�H�\�\�\�\0\0H�E�H�\�\�)\0\0H�U�dH3%(\0\0\0t\����\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�PH�E�H�\�H�\�\�\0\0H�U�H�E\�H�\�H�\�\�\0\0�H�E�dH3%(\0\0\0t\�����\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\�\0\0H��H�U�H�E�H�\�H�\�\�l\0\0�\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\0\0H��H�U�H�E�H�\�H�\�\�\�\0\0�\�\�UH�\�H�}�H�E�]ÐUH�\�SH�\�H�}\�H�u\�H�E\�H�\�\�\����H�\�H�E\�H�\�\�V\0\0H��H�E\�H�\�H�\�H�\�\�\0\0�H�\�[]ÐUH�\�SH�\�XH�}�H�u�dH�%(\0\0\0H�E\�1�H�E�H�\�\�,\0\0H�E�H�E�H�\�\��\r\0\0H�E�H�E�H�E\�H�U�H�E�H�\�H�\�\�I\0\0����\0\0\0H�E�H�E\�H�E\�H�\�\�O\0\0H�E�H�\�\�c\0\0H�H�E�H�\0H9\�����tJH�E�H�\�\�C\0\0H�\�\�P\0\0H�\�H�E�H�\�\�O\0\0H9\�����tH�U�H�E�H�\�H�\�\�A\0\0\�H�E�H�E\�H�E\�H�E�\�Z���H�U�H�E\�H�\�H�\�\�\0\0��tH�U\�H�E�H�\�H�\�\�\0\0\0�H�E\�dH3%(\0\0\0t\�ͮ��H�\�X[]\�UH�\�H�}�H�E�H�H�E�H9\���]ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�\�\��\0\0H�E�H�E�H�\�\��\0\0H�E�H�\�\�S\0\0H�U�dH3%(\0\0\0t\�S���\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�PH�E�H�\�H�\�\�\�\0\0H�U�H�E\�H�\�H�\�\�)\0\0�H�E�dH3%(\0\0\0t\�����\�\�UH�\�H�}�H�E�H\�\0\0\0\0\0�]\�UH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�H�E�H�\�H�\�\�e\0\0H�E�H�M�dH3%(\0\0\0t蕭��\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�U\�H�E�H�\�H�\�\�\0\0H�E�H�M�dH3%(\0\0\0t\�L���\�\�UH�\�H�}�H�u�H�E�H�H�E�H�\0H9\���]\�UH�\�H�}�H�E�H�\0H�H�E�H�H�E�]ÐUH�\�H�}�H�E�H�\0H��]ÐUH�\�H�}�H�E�H\�\0\0\0\0\0�]\�UH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�H�E�H�\�H�\�\�m\r\0\0H�E�H�M�dH3%(\0\0\0t蓬��\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�U\�H�E�H�\�H�\�\�$\r\0\0H�E�H�M�dH3%(\0\0\0t\�J���\�\�UH�\�H�}�H�u�H�E�H�H�E�H�\0H9\���]\�UH�\�H�}�H�E�H�\0H�H�E�H�H�E�]ÐUH�\�H�\�H�}�H�E�H�\0H��H�\�\�\�\0\0\�ÐUH�\�H�}�H�E�H�H�E�H9\���]ÐUH�\�H�\�H�}�H�E�H�������H�\�\�X\���������tMH�E�H�\0H��H�\0H�U�H�\��\�H�E�H�������H�\�\�\"\���������tH�E�H�\0H��H�\0H�U�H�\��А\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�SH�\�H�}\�H�E\�H�\�\�/\0\0H�E\�\0\0\0\0H�\�\�\0\0\�\ZH�\�H�E\�H�\�\����H�\�H�\�躬��H�\�[]ÐUH�\�H�\�H�}�H�E�H�\0H��tAH�E�H�@HH�PH�E�H�H(H�E�H�\�H�\�\��\r\0\0H�E�H�PH�E�H�H�E�H�\�H�\�\�!\0\0H�E�H�\�\�1����\�\�UH�\�H�\�H�}�H�u�H�E�H�PH�E�H�\�H�\�\�C\0\0\0H�E�\�ÐUH�\�H�\�H�}�H�u�H�E�H�P0H�E�H�\�H�\�\�\0\0\0H�E�\�ÐUH�\�H�}�H�E�]\�UH�\�H�}�H�u�H�E�H�H�E�H�H�E�H�PH�E�H�PH�E�H�PH�E�H�PH�E�H�PH�E�H�P�]ÐUH�\�H�\�PH�}\�H�u�H�U�H�M�dH�%(\0\0\0H�E�1��H�E�dH3%(\0\0\0t膩��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\����H�\�H�E�H�\�H�\�\�l\r\0\0�\�ÐUH�\�H�\�H�}�H�E�H�PH�E�H��0H�\�H�\�\�\r\0\0\�ÐUH�\�H�\�H�}�H�E�H�P0H�E�H�@8H9\�t-H�E�H�@0H�P�H�E�H�P0H�E�H�P0H�E�H�\�H�\�\�v\r\0\0\�H�E�H�\�\�\r\0\0�\�\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�E�H�\�\�\����\�\�UH�\�H�}�H�E�]ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\����H�H�E�H��\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\����H�\�\����H�\�H�E�H�\�H�\�\�����\�\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�E�H��H�\�\�\����\�\�UH�\�H�}�H�E�]ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\����H�H�E�H��\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�c���H�\�\�i���H�\�H�E�H�\�H�\�\����H�E�H�\�\�g���H�\�\�}���H�\�H�E�H��H�\�H�\�\�v����\�ÐUH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�y����\�\�UH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�����\�\�UH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�\����H�\�H�E\�H�\�\�\����H�\�\�\0\0H��H�E\�H�\�H�\�H�\�\�-\r\0\0H�E\�H�\�([]\�UH�\�H�}�H�E�]\�UH�\�H�\�0H�}\�H�u\�H�U\�dH�%(\0\0\0H�E�1�H�E\�H�\�\�\����H�\�H�E\�H�\�H�\�\� \r\0\0H�E\�H�M�dH3%(\0\0\0t\�A���\�\�UH�\�H�}�H�E�]ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\����H�\�H�E�H�\�H�\�\�x\r\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\r\0\0H�E�H�\�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\r\0\0�\�ÐUH�\�H�\� H�}\�H�E\�H�\0H�E�H�E\�H;E�tFH�E�H�E�H�E�H�\0H�E�H�E\�H�\�\�|\r\0\0H�\�H�E�H�\�H�\�\�x\r\0\0H�U�H�E\�H�\�H�\�\�u\r\0\0밐\�\�UH�\�H�\�H�}�H�E�H�\�\�\r\0\0H�E�H�\�\�p\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\r\0\0�\�ÐUH�\�H�\� H�}\�H�E\�H�\0H�E�H�E\�H;E�tFH�E�H�E�H�E�H�\0H�E�H�E\�H�\�\�L\r\0\0H�\�H�E�H�\�H�\�\�h\r\0\0H�U�H�E\�H�\�H�\�\�u\r\0\0밐\�\�UH�\�H�\�H�}�H�E�H�\�\�\r\0\0H�E�H�\�\��\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\r\0\0�\�ÐUH�\�H�\� H�}\�H�E\�H�\0H�E�H�E\�H;E�tFH�E�H�E�H�E�H�\0H�E�H�E\�H�\�\�L\r\0\0H�\�H�E�H�\�H�\�\�H\r\0\0H�U�H�E\�H�\�H�\�\�E\r\0\0밐\�\�UH�\�H�\�H�}�H�U�H�E�H�H�U�H�E�H�PH�E��\0\0\0\0H�\�\�8\r\0\0�\�ÐUH�\�H�\�H�}�H�U�H�E�H�H�U�H�E�H�PH�E��\0\0\0\0H�\�\�\r\0\0�\�ÐUH�\�H�\�H�}�H�U�H�E�H�H�U�H�E�H�PH�E��\0\0\0\0H�\�\�\0\r\0\0�\�ÐUH�\�H�\�0H�}\�H�u\�H�U\�H�E\�H�\�\����H�\�H�E\�H�\�H�\�\�\�\0\0H�E�H�U\�H�E�H�\�H�\�\����H�E\�\0\0\0H�\�\�P\r\0\0�\�\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]ÐUH�\�H�\� H�}\�H�u\�H�E\�\0\0\0H�\�\�5\r\0\0H�E\�H�\�\�����H�E\�H�E�H�E\�H�\�\�\n\0\0H�\�H�E�H�\�H�\�\�\n\0\0H�E\�H�U�H�\�H�\�\�\n\0\0�\�ÐUH�\�H�}�H�E�H�\0H�PH�E�H�H�E�]\�UH�\�H�}�H�u�H�E�H�U�H��]\�UH�\�H�}�H�E�]\�UH�\�H�\�0H�}\�H�u\�H�U\�H�E\�H�\�\�\����H�\�H�E\�H�\�H�\�\�\0\0H�E�H�U\�H�E�H�\�H�\�\�Ǟ��H�E\�\0\0\0H�\�\�\r\0\0�\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�U\�H�E�H�\�H�\�\�<\0\0H�E�H�M�dH3%(\0\0\0t\�|���\�\�UH�\�H�}�H�E�]\�UH�\�H�\�0H�}\�H�u\�H�U\�H�E\�H�\�\�\����H�\�H�E\�H�\�H�\�\�\0\0H�E�H�U\�H�E�H�\�H�\�\����H�E\�\0\0\0H�\�\�\r\0\0�\�\�UH�\�H�}�H�E�]ÐUH�\�H�\�0H�}\�H�u\�H�U\�H�E\�H�\�\�\����H�\�H�E\�H�\�H�\�\�\�\0\0H�E�H�U\�H�E�H�\�H�\�觝��H�E\�\0\0\0H�\�\�\0\0�\�ÐUH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�H�E�H�\�H�\�\�\0\0H�E�H�M�dH3%(\0\0\0t\�Y���\�ÐUH�\�H�}�H�u�H�E�H�H�E�H�\0H9\���]\�UH�\�H�}�H�E�H�\0H�H�E�H�H�E�]ÐUH�\�H�}�H�E�H�\0H��]\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]ÐUH�\�H�\� H�}\�H�u\�H�E\�\0\0\0H�\�\�m\0\0H�E\�H�\�\����H�E\�H�E�H�E\�H�\�\�\�\0\0H�\�H�E�H�\�H�\�\�\�\0\0H�E\�H�U�H�\�H�\�\�\�\0\0�\�ÐUH�\�H�}�H�E�H�\0H�PH�E�H�H�E�]\�UH�\�H�}�H�u�H�E�H�U�H��]\�UH�\�H�}�H�u�H�E�H�U�H��]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�}�\0tH�E�H�\0H��H�\0H�U�H�\��А\�ÐUH�\�H�\�H�}�H�E�H�\�\��\0\0H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H��H�\�\�\�\0\0H�E�H��0H�\�\�\�\0\0�\�\�UH�\�H�\�H�}�H�E�H�\�\��\0\0�\�ÐUH�\�SH�\�HH�}�H�u�dH�%(\0\0\0H�E\�1��\0\0\0\�\n\���H�\�H�E��\0\0\0\0H��H��H�E\�H�E\�H��H�E\�H\�E�\0\0\0H�U\�H�E�H�\�H�\�\�\0\0H�H�E�H�PH�E�H�PH�E�H�\�H�\�\�\0\0H�\�H�E�H�H�E�H�H�E�H�@H+E\�H\�\�H�\�H\�H�E\�H�E\�H�\�\0\0\0\0H�E\�H\�H�E\�H�U\�H�M\�H�E�H�\�H�\�\�\�\0\0H�E�H�PH�E\�H�\�H�\�\�H\0\0H�E\�H�P�H�E�H��0H�\�H�\�\�-\0\0H�E�H�PH�E�H�PH�E�H�X8�\0\0\0\��\���H��H�E��\0\0\0\0H��H�\�H�\�H�H�E�H�P0�H�E\�dH3%(\0\0\0t\\\�UH�\�觚��H�E�H�PH�E�H�H�E�H�\�H�\�\�\0\0\0H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0譝��H�\�\�%���H�\�H�\�芞��赜��H�\�H[]\�UH�\�H�\�0H�}\�H�u\�H�U\�H�E\�H�E�H�E�H;E\�sH�E�H�H�E\�H�\�H�\�\�\0\0H�E�\�ِ\�\�UH�\�H�\�0H�}\�H�u\�H�U\�dH�%(\0\0\0H�E�1�H�E�H�U\�H�\�H�\�\�\0\0H�U\�H�M\�H�E�H�\�H�\�\�\0\0H�E�H�\�\�\0\0�H�E�dH3%(\0\0\0t\�����\�\�UH�\�H�}�H�E�]\�UH�\�SH�\�(H�}\�H�u\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�\����H�\�H�E\�H�\�SH�\�H�\�\�\0\0H�\��H�E\�dH3%(\0\0\0t莛��H�]�\�\�UH�\�H�}�H�u�H�E�H�H�E�H�\0H9\���]\�UH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�\0\0�\�\�UH�\�SH�\�H�}\�H�E\�H�P8H�E\�H�\�H�\�\�6\n\0\0H�E\�H�@HH�P�H�E\�H��0H�\�H�\�\�\�	\0\0H�E\�H�@@H�P�H�E\�H�P0H�E\�H�X0H�E\�H�\�\����H�\�H�\�\�d����H�\�[]\�UH�\�H�}�H�E�]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�u�H�E�H�\�\�\���H�H�E�H��\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�c\���H�\�H�E�H�\�H�\�\�����\�ÐUH�\�H�}�H�u�H�E�H�H�E�H��]ÐUH�\�H�\� H�}�H�u�H�U\�H�E\�H�\�\�\���H�\�H�E�H�\�H�\�\�~���H�E�H�\�\�:���H�\�H�E�H��H�\�H�\�\�����\�ÐUH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�\���H�\�H�E\�H�\�\�����H��H�E\�H�\�H�\�H�\�\�c����H�\�([]ÐUH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�h\���H�\�H�E\�H�\�\����H��H�E\�H�\�H�\�H�\�\�m����H�\�([]\�UH�\�SH�\�(H�}\�H�u\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�e���H�\�H�E\�H�\�\�t	\0\0H�E\�H�M\�H�\�H�\�H�\�\�	\0\0H�E\�H�\�\�n	\0\0H�E\�H�U\�dH3%(\0\0\0t!\�\ZH�\�H�E\�H�\�\�J	\0\0H�\�H�\�\�}���記��H�\�([]ÐUH�\�H�}�H�E�H\�\0\0\0\0\0�]\�UH�\�H�\�H�}�H�u�H�E�H�H�E�H�H�E�H��H�\�\����H�E�H�PH�E�H��H�\�H�\�\�[	\0\0H�E�H\�\0\0\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�h	\0\0H�E�H�\�\�*����\�ÐUH�\�H�}��]ÐUH�\�H�}�H�E�]\�UH�\�H�}�H�u�]ÐUH�\�H�\�H�}�H�u�H�E�H�M�\0\0\0H�\�H�\�\�\"	\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�*	\0\0H�E�H�\�謤���\�ÐUH�\�H�}��]ÐUH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�E�H��H�\�\�\����\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\�����\�ÐUH�\�H�\�H�}�H�u�H�E�H�M�\0\0\0H�\�H�\�\�\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0H�E�H�\�\������\�ÐUH�\�H�}��]ÐUH�\�H�}�H�E�]\�UH�\�H�}�H�u�]ÐUH�\�H�\�H�}�H�u�H�E�H�M�\0\0\0H�\�H�\�\�v\0\0�\�ÐUH�\�H�}�H�u�H�E�H�U�H�P�]ÐUH�\�H�}�H�u�H�E�H�U�H�P�]ÐUH�\�H�}�H�u�H�E�H�U�H�P�]ÐUH�\�SH�\�(H�}\�H�u\�H�E\�H�\�\�%\0\0H�E\�H�E\�H�\�\�d\���H�\�H�E\�H�\�\�����H��H�E\�H�\�H�\�H�\�\�\0\0H�E\�\�3H�\�\�u���H�E\�H�U\�H�\�H�\�\�\����蝖��H�\�\����H�\�H�\�\�z���H�\�([]ÐUH�\�H�}�H�u�H�E�H�PH�E�H\�H�E�H�P�]\�UH�\�H�}�H�u�H�E�H�@H+E�H�\�H�E�H�P�]\�UH�\�SH�\�(H�}\�H�u\�H�E\�H�\�\�\0\0H�E\�H�E\�H�\�\�����H�\�H�E\�H�\�\����H��H�E\�H�\�H�\�H�\�\�\0\0H�E\�\�3H�\�藒��H�E\�H�U\�H�\�H�\�\����迕��H�\�\�7���H�\�H�\�蜖��H�\�([]ÐUH�\�H�}�H�u�H�E�H�PH�E�H\�H�E�H�P�]\�UH�\�SH�\�(H�}\�H�u\�H�E\�H�\�\�\0\0H�E\�H�E\�H�\�\�����H�\�H�E\�H�\�\����H��H�E\�H�\�H�\�H�\�\�\0\0H�E\�\�3H�\�\�ߑ��H�E\�H�U\�H�\�H�\�\�x���\����H�\�\����H�\�H�\�\�\���H�\�([]ÐUH�\�H�}�H�u�H�E�H�PH�E�H\�H�E�H�P�]\�UH�\�SH�\�(H�}\�H�u\�H�E\�H�\�\�\�\0\0H�E\�H�E\�H�\�\����H�\�H�E\�H�\�\�\����H��H�E\�H�\�H�\�H�\�\�\0\0H�E\�\�3H�\�\�\'���H�E\�H�U\�H�\�H�\�\�����\�O���H�\�\�ǔ��H�\�H�\�\�,���H�\�([]ÐUH�\�H�}�H�u�H�E�H�@H+E�H�\�H�E�H�P�]\�UH�\�H�\�H�}��\�\�@\0H�E�H��\0\0\0\0��tH�E�H�\�葒��\�ÐUH�\�H�\�H�}�H�E�H�\�\����H�E�H�\�\�j���\�\�UH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�H�}�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H\�@\0\0\0\0H�E�H\�@\0\0\0\0�]\�UH�\�H�}��]\�UH�\�H�}�H�u�H�E�H�H�E�H�\0H9\�sH�E�\�H�E�]\�UH�\�SH�\�(H�}\�H�u\�dH�%(\0\0\0H�E\�1�H�E\�H�U\�H�\�H�\�\�g\0\0H�U\�H�E\�H�\�H�\�\�\�\0\0H�\�H�E\�H�\�\�y\0\0H�\�H�M\�dH3%(\0\0\0t!\�\ZH�\�H�E\�H�\�\�V\0\0H�\�H�\�虓��\�đ��H�\�([]ÐUH�\�SH�\�8H�}\�H�u\�H�U\�H�E\�H�E\�H�E\�H;E\�sTH�E\�H�\�\�\0\0H�\�H�E\�H�H�E\�\�\�H�\�\����H�U\�H�M\�H�E\�H�\�H�\�\����\�4���H�\�謒��H�\�H�\�\�����H�\�8[]ÐUH�\�SH�\�H�}\�H�u\�H�E\�H�U\�H�PH�E\�H�H�E\�H�PH�E\�H�X\�7\0\0H�\�H�H�E\�H�P�H�\�[]ÐUH�\�H�\�H�}�H�u�\0\0\0\�\���H�\�H�E�H�M�H�\�H�\�\��\0\0�\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\0\0H�\�H�E�H�\�H�\�\�\0\0H�E�\�\�UH�\�H�\�H�}�H�E�H�\�\�\n\0\0�\�\�UH�\�H�\� H�}�H�u�H�U\�H�U\�H�M�H�E�H�\�H�\�\�\�\0\0�\�\�UH�\�H�}�H�E�]ÐUH�\�SH�\�H�}\�H�u\�H�E\�H�\�\�\�\���H�\�\�\����H�\�H�E\�H�\�H�\�\�\�\0\0H�E\�\0\0\0\0H�\�\�d���H�E\�H�\0H��t/H�U\�H�E\�H�\�H�\�\��\0\0\�\ZH�\�H�E\�H�\�\�b\���H�\�H�\�\�s����H�\�[]ÐUH�\�H�}�H�u�]ÐUH�\�H�\�H�}�H�E�H�\�\�&\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�\�UH�\�SH�\�8H�}\�H�u\�H�U\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�{\���H�\�H�M\�H�E\�H�\�SH�\�H�\�\�\�\0\0H�\�H�E\�H�]\�dH3%(\0\0\0t\�\���H�]�\�\�UH�\�H�}\�H�u\�H�E\�H�\0H�E�H�E\�H�H�E\�H�H�E\�H�U�H��]ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�����\�ÐUH�\�H�\�H�}�H�E�H�\�\�z\0\0�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�ƍ���\�ÐUH�\�H�\�H�}�H�E�H�\�\�F\0\0�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�膍���\�ÐUH�\�H�\�H�}�H�E��\0\0\0\0�\0\0\0H�\�\�\0\0\�\�UH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�\n\���H�\�H�E\�H�ƿ\0\0\0\�u\���H��tH�\�H�\�\�\r\0\0�H�\�([]ÐUH�\�H�\�H�}�H�E��\0\0\0\0�\0\0\0H�\�\�$\0\0\�\�UH�\�AUATSH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�	\���I�\�L�e\�L�\�X\0\0\0\��\���H�\�H�\�t&L�\�H�\�\�\0\0\�I�\�L�\�H�\�\�\�\���L�\�H�\�\�Ŏ���H�\�([A\\A]]ÐUH�\�H�\�H�}�H�E��\0\0\0\0�\0\0\0H�\�\�\0\0\�\�UH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�)\���H�\�H�E\�H�ƿ\0\0\0\�k\���H��tH�\�H�\�\�\0\0�H�\�([]ÐUH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�F\���H�\�H�E\�H�ƿ\0\0\0\�\���H��tH�\�H�\�\�\0\0�H�\�([]ÐUH�\�H�}��]\�UH�\�H�\�H�}�H�u�H�M�H�E��\0\0\0\0H�\�H�\�\�\0\0\�ÐUH�\�H�\�H�}��\0\0\0\�\���H�\�H�E�H�\�H�\�\�\0\0\�\�UH�\�\0\0\0\�t\���]\�UH�\�H�\� H�}�H�u�H�U\�H�U\�H�M�H�E�H�\�H�\�\�\0\0�\�\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�u�H�E�H�\�\�\0\0�\�ÐUH�\�H�}��]ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\������\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�\����H�\�H�E�H�\�H�\�\�@\0\0H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H��H�\�\����H�E�H��0H�\�\�����\�\�UH�\�H�\�H�}�H�u�H�E�H�PH�E�H��H�\�H�\�\�\0\0H�E�H�P0H�E�H��0H�\�H�\�\��\0\0H�U�H�E�H�\�H�\�\�\0\0H�E�H�PH�E�H��H�\�H�\�\�\r\0\0�\�ÐUH�\�H�}��]ÐUH�\�H�}��]ÐUH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�k\���H�\�H�E\�H�M\�H�\�SH�\�H�\�\�*\0\0H�\��H�]�\�ÐUH�\�H�}��]ÐUH�\�H�}��]ÐUH�\�H�}��]ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�\0\0H;E�����t\����H�U�H�\�H�H\�H�\�H�\�\�/���\�ÐUH�\�H�\�H�}�H�u�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H�\�\�\���H�H�E�H�P�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�\0\0H;E�����t芆��H�U�H�\�H�\�H\�H�H\�H�\�H�\�蚈��\�\�UH�\�SH�\�H�}\�H�u\�H�U\�H�E\�H�\�H�\�蔆��H�E\�H�P H�E\�H�� H�\�H�\�\�y���H�E\�H�P@H�E\�H�P@\�\ZH�\�H�E\�H�\�\�؆��H�\�H�\�\�M���H�\�[]\�UH�\�H�\�H�}�H�u�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H�\�\�\���H�\�H�E�H��H�\�H�\�\�E����\�\�UH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�\n\0\0H;E�����t\�z���H�U�H�\�H�H\�H�\�H�\�葇��\�ÐUH�\�H�\�H�}�H�u�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H�\�\�1\���H�H�E�H�P�\�ÐUH�\�H�\�H�}�H�u�H�E�H\�\0\0\0\0\0H�E�H\�@\0\0\0\0H�E�H�\�\�Z\���H�H�E�H�P�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�N\0\0H;E�����t誄��H�E�H�\�H�\�\�ʆ��\�\�UH�\�H�\�H�}�H�u�H�M�H�E��\0\0\0\0H�\�H�\�\�\0\0\�\�UH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�^����\�ÐUH�\�H�}��]ÐUH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�\0\0�\�\�UH�\�H�}�H�E�]\�UH�\�H�\�@H�}\�H�u�dH�%(\0\0\0H�E�1�H�E\�H�\�\�\����H�\�H�E\�H�\�H�\�\�=\���H�E�H�\�\����H�\�H�E\�H�\nH�H�JH�HH�JH�HH�RH�PH�E\�H�\�\�x���H�\�H�E�H�\nH�H�JH�HH�JH�HH�RH�P�H�E�dH3%(\0\0\0t\�օ��\�\�UH�\�H�}�H�E�]\�UH�\�H�\� H�}\�H�u\�dH�%(\0\0\0H�E�1�H�E\�H�\�\�\����H�\0H�E�H�E\�H�\�\����H�H�E\�H�H�E�H�\�\����H�H�E\�H��H�E�dH3%(\0\0\0t\�S���\�\�UH�\�H�}�H�E�]\�UH�\�H�\� H�}\�H�u\�dH�%(\0\0\0H�E�1�H�E\�H�\�\�\����H�\0H�E�H�E\�H�\�\����H�H�E\�H�H�E�H�\�\����H�H�E\�H��H�E�dH3%(\0\0\0t\�Є��\�\�UH�\�SH�\�8H�}\�H�u\�H�U\�H�E\�H\�\0\0\0\0\0H�E\�H�\�\��\���H�\�H�E\�H�xH�E\�H�\�SH�\�H�¾\0\0\0\0\�\0\0H�\�H�E\�H����\�@\0H�\�\�c\0\0H�E\�H�E\�H�U\�H�H�E\�H�H�E\�H�\0H�M\�H��H�\�H�ϸ\0\0\0\0\�w\0\0�H�]�\�ÐUH�\�H�}�H��������\n]\�UH�\�H�}�H��袋.�\�]\�UH�\�H�}�H��������\n]\�UH�\�H�}�H��������]\�UH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�X\0\0H;E�����t\�(���H�E�H�\�H�\�\�H���\�\�UH�\�H�}�H�u�]\�UH�\�H�}�H�E�]ÐUH�\�AVAUATSH�\�PH�}�H�u�H�U�H�M�dH�%(\0\0\0H�E\�1�H�E�H\�\0\0\0\0\0H�U�H�E�H�\�H�\�\�\�\0\0H�E�H�U�H�\�H�\�\�\0\0H�E�H�\�\�u\0\0H�E�H�E�H�\�\�v���H�\�H�E�H�\�H�\�\�y\0\0L�m�H�E�H�\�\�3\���I�\�L�e�L�\�8\0\0\0\�\���H�\�H�\�tL��L�\�H�\�\�\0\0H�E�H�\�\�7���H�E�H�U�H�H�E��\0\0\0\0H�\�\�_\0\0H�E�H�\�\�\0\0H�E�H�\�\�E\0\0�H�E\�dH3%(\0\0\0tQ\�JI�\�L�\�H�\�\�?\���L�\�H�E�H�\�\�\����\�H�\�H�E�H�\�\�]\0\0\�H�\�H�E�H�\�\��\0\0\0H�\�H�\�\�\���\����H�\�P[A\\A]A^]ÐUH�\�H�\�H�}�H�u�H�E�H�\0H��t&H�E�H�\0H�\0H�� H�\0H�U�H�H�M�H�\�H�\��\�\��\0\0\0\0\�\�UH�\�H�\�HH��H���H��X���H��`���H��h���L��p���L��x�����t )E�)M�)U�)]�)e�)m\�)u\�)}�\�\�UH�\�H�}�H��������]\�UH�\�H�\�H�}�H�u�H�E�H�\�\�$\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�\0\0�\�\�UH�\�H�\�H�}�H�u�H�E�\0\0\0H�\�\��\0\0H�\�H�M�H�E�H�\�H�\�\�\0\0H�E�\�\�UH�\�H�\�H�}�H�E�H�@H��tH�E�H�HH�E�H�\0�\0\0\0H�\�H�\�\��\0\0�\�ÐUH�\�H�\�H�}�H�E�H�PH�E�H�\�H�\�\�\0\0\�ÐUH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�\�\0\0�\�\�UH�\�H�\�H�}�H�E�H�\�\�\�����\�ÐUH�\�H�\�H�}�H�E�H�\�\�\�����\�ÐUH�\�SH�\�8H�}\�H�u\�H�U\�dH�%(\0\0\0H�E\�1�H�E\�H�\�\�\0\0��\�@\0H�E\�H�H�U\�H�E\�H�\�H�\�\�S���H�E\�H�PH�E\�H�\�H�\�\�\�\0\0H�E\�H�\�\�4���H�E\�H�\�\�\�\���H�\�H�E\�H�\�\�\�\0\0H��H�E\�H�\�H�\�H�\�\�\�\0\0\�*H�\�H�E\�H��H�\�\�-���H�E\�H�\�\�#\���H�\�H�\�\����H�E\�dH3%(\0\0\0t\�2��H�\�8[]ÐUH�\�H�}�H�u�H�E�H\�@\0\0\0\0H�E�]\�UH�\�H�}��]ÐUH�\�H�}��]\�UH�\�H�\�H�}�H�u�H�M�H�E��\0\0\0\0H�\�H�\�\�y\0\0\�ÐUH�\�H�}�H�u�H�U\�H�E�H�U�H�H�E�H�U\�H�P�]\�UH�\�H�\� H�}�H�u�H�U\�H�U\�H�M�H�E�H�\�H�\�\�q\0\0�\�\�UH�\�H�}�H�u�H�E�]\�UH�\�H�}�H�u�]ÐUH�\�H�}��]ÐUH�\�H�\�H�}�H�E�H�\�\�\�����\�\�@\0H�E�H�H�E�\�@\0\0\0H�E�\�@\0\0\0�\�ÐUH�\�H�}��]ÐUH�\�H�\�H�}�H�E�H�\�\�\�����\�ÐUH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�\�\0\0\0H�E�H�\�\�����\�\�UH�\�H�\�H�}�H�E�H��H�\�\�\�\0\0\0\�\�UH�\�H�\� H�}�H�u�H�U\�H�E\�H�\�\�\�\���H�\�H�M�H�E�H�\�H�\�\�\0\0\0�\�ÐUH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�\�\0\0\0H;E�����t\�z��H�E�H�\�H�\�\0\0\0\0H)\�H�\�H�\�\�|��\�\�UH�\�H�\� H�}�H�u�H�U\�H�E�H�\�\�t|���\�ÐUH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�K����\�\�UH�\�H�\�H�}�H�E�H�\�\�d\0\0\0\�\�UH�\�SH�\�(H�}\�H�u\�H�U\�H�E\�H�\�\�\�\���H�\�H�E\�H�ƿ(\0\0\0\�G\���H��tH�\�H�\�\�\0\0\0�H�\�([]ÐUH�\�H�}�H��$I�$I�]\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�E�H\�\0\0\0\0\0H�E�H��H�\�\�i\����\�\�UH�\�H�\�H�}�H�E�H�\�\�����\�ÐUH�\�H�\�H�}���\�@\0H�E�H�H�E�H��H�\�\�����\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\�����0\�@\0H�E�H�H�E�H�\�\�\�\���H�\�H�E�H��H�\�H�\�\�N\����\�ÐUH�\�H�\�H�}��0\�@\0H�E�H�H�E�H�\�\�\����\0\0\0\0��tH�E�H�\�\�\�z��\�ÐUH�\�H�\�H�}�H�E�H�\�\����H�E�H�\�\�z��\�\�UH�\�H�\�H�}���\�@\0H�E�H�H�E�H��H�\�\����H�E�H�\�\�\����\0\0\0\0��tH�E�H�\�\�Uz��\�ÐUH�\�H�\�H�}�H�E�H�\�\����H�E�H�\�\�.z��\�\�UH�\�SH�\�H�}\�H�E\�H�\�\�\����H�\�H�E\�H��H�\�\��\0\0\0H�\�H�\�\�\r\0\0�H�\�[]ÐUH�\�H�\�@H�}\�dH�%(\0\0\0H�E�1�H�E\�H��H�\�\�\0\0\0H�\�H�E\�H�\�H�\�\�\����H�U\�H�M\�H�E\�H�\�H�\�\�>���H�E\�H�\�\�\����H�E\�H�\�\����H�E\�H�\�\�����H�E�dH3%(\0\0\0t\�\�y��\�ÐUH�\�H�\�H�}�H�u�H�E�\�@\0H�\�詿����tH�E�H�\�\�\����\��\0\0\0\0\�\�UH�\�H�\�H�}�H�E�H��H�\�\�D\0\0\0�\�ÐUH�\�H�\�H�}�H�E�H�\�\�n\0\0\0\�\�UH�\�H�\�H�}�H�u�H�U�H�E�H�\�H�\�\�W\0\0\0�\�\�UH�\�H�\� H�}\�dH�%(\0\0\0H�E�1�H�E\�H�\�RH�\�\�\0\0\0H�\�H�M�dH3%(\0\0\0t\�\�x��\�\�UH�\�H�}�H�E�]\�UH�\�H�\�H�}�H�u�H�E�H�\0H�\0H�U�H�\��А\�\�UH�\�H�\�H�}�H�E�H�\�\�\���\�\�UH�\�H�\�H�}�H�E�H�\�\�\����\�\�UH�\�H�\�H�}�H�E�H�\�\�\���\�\�UH�\�H�\�H�}�H�E�H�\�\�\����\�\�UH�\�SH�\�H�}\�H�E\�H�\�\����H�\�\�F\���H�H�E\�H�\�\����H�\�\�u\���H�\0H�\��\�H�\�[]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�Ǣ���P\�@\0H�E\�H�H�E\�H���8\�@\0H�\�\�^x��H�E\�H��8�<\�@\0H�\�\�Ix��\�\ZH�\�H�E\�H�\�\�l���H�\�H�\�\�my��H�\�[]\�UH�\�H�\�H�}��P\�@\0H�E�H�H�E�H�\�\�6����\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�hx���\�Ra\0�\�Ta\0��(@\0\�v���\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�ۡ���\�\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�rw��H�E\�H��8��\�@\0H�\�\�]w��\�\ZH�\�H�E\�H�\�耥��H�\�H�\�\�x��H�\�[]\�UH�\�H�\�H�}��\�\�@\0H�E�H�H�E�H�\�\�J����\�ÐUH�\�H�\� H�}\�H�u\�H�E\�H�\�\�fw��H�E�H�}�\0����t�����\�QH�E�H�\�\�Sw��H�E�H�}�\0����t$H�E�H��H�ƿ`Sa\0\�u��� $@\0H�\�\�\�u��\��H�E�H�\�\�Cw���\0\0\0\0\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\��v���\�Ra\0�\�Ta\0��(@\0\�u���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�g����X\�@\0H�E\�H�H�E\�H���8\�@\0H�\�\��u��H�E\�H��8�=\�@\0H�\�\�\�u��\�\ZH�\�H�E\�H�\�\����H�\�H�\�\�\rw��H�\�[]\�UH�\�H�\�H�}�H�u�H�}�\0u�����\�H�E�H�\�\�<t��\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�v���\�Ra\0�\�Ta\0��(@\0\�t���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\����� \�@\0H�E\�H�H�E\�H����\�@\0H�\�\�u��H�E\�H��8�\�\�@\0H�\�\��t��H�E\�Hǀ@\0\0\0\0\0\0H�E\�HǀH\0\0\0\0\0\0H�E\�H��@\0\0H�E\�\0\0\0H�\�\�9����\�H�E艐(\0\0H�E\�H��H\0\0H�E\�\0\0\0H�\�\�����\�H�E艐,\0\0H�E\�H��@\0\0H��t%H�E苀(\0\0Hc\�H�E\�H��@\0\0�\0\0\0\0H�\�\�\�q��H�E\�H��H\0\0H��t%H�E苀,\0\0Hc\�H�E\�H��H\0\0�\0\0\0\0H�\�\�q��H�E苐(\0\0H�E艐P\0\0H�E苐,\0\0H�E艐T\0\0H�E\�Hǀ8\0\0\�\�@\0\�\ZH�\�H�E\�H�\�\����H�\�H�\�\�u��H�\�[]ÐUH�\�H�\�H�}�� \�@\0H�E�H�H�E�H��@\0\0H�E�H�\�H�\�\�t���H�E�H��H\0\0H�E�H�\�H�\�\�Z���H�E�H�\�\�F����\�ÐUH�\�H�\� H�}��u�U��M\�U\�M��E�Ή\�\�\�o��\�ÐUH�\�H�\� H�}��u�H�U\�M��U�H�M\�E�H�Ή\�\�q��\�\�UH�\�H�\� H�}��u�H�U\�M��U�H�M\�E�H�Ή\�\�Xo��\�\�UH�\�H�\� H�}��u�H�U\�M�D�E\�E�HcЋM\�H�u\�E�\�\�%p��\�ÐUH�\�H�\� H�}��u�H�U\�M�D�E\�E�HcЋM\�H�u\�E�\�\�ao��\�ÐUH�\�H�\�H�}��u�U��U��E�։\�\�\�q��\�ÐUH�\�H�\� H�}��u�H�U\�H�M\�H�U\�H�M\�E�H�Ή\�\��n��\�\�UH�\�H�\�H�}��u�U��U��E�։\�\�+r��\�ÐUH�\�H�\�0H�}\�u\�U\��M\�\�E�\0\0\0\0�U\��E\�։\�\��q���E��E�\�ÐUH�\�H�\�\0\0\0H�}�H�u�H�U�H�M�L��x���L��p���H�EH��h���dH�%(\0\0\0H�E�1�H\�E�\0\0\0\0H\�E�\0\0\0\0\�E�����H�E��0\0\0\0�\0\0\0\0H�\�\��n��\�E\�\0\0\0\0\�E\�\0\0\0\�E\�\0\0\0H�M�H�U�H�u�H�E�H�\�\�\�p��������t�\�\�@\0�`Sa\0\�/p�������\�\0\0H�E�H�E�H�}�\0��\0\0\0H�E��PH�E��HH�E��@�Ή\�\�tm���E��}��u�\�@\0�`Sa\0\�\�o���\0\0\0\�G\0\0H�E��PH�E�H�H�E�H�Ή\�\�&o���������t2�u�H�E��\0\0\0�\0\0\0H�\�\�{���\�E������H�E�H�@(H�E�\�]����H�E�H�\�\�Mp���}��u�@\�@\0�`Sa\0\�Xo���\0\0\0\�\�\0\0H�}�\0�\�\0\0\0H��x����\0���\�\0\0\0H��x����\0Hc\�H�u��E��\0\0\0\0�\�\�sm���E��}��u2�h\�@\0�`Sa\0\��n���u�H�E��\0\0\0�\0\0\0H�\�\�\�����\0\0\0\�M\0\0��\�@\0�`Sa\0\�\�n��H�E��\�H�\�\�p��� $@\0H�\�\�\�n��H��x����U���E��\0\0\0�\�\�o���������t#�u�H�E��\0\0\0�\0\0\0H�\�\�V����\0\0\0\�\�\0\0\0H��p���\0��\0\0\0H��h����\0����\0\0\0H��h����\0Hc\�H��p����E��\0\0\0\0�\�\��k���E��}�\0~.��\�@\0�`Sa\0\�n��H�E��\�H�\�\��o��� $@\0H�\�\�n��\�&�}�\0u��\�@\0�`Sa\0\�\�m��\���\�@\0�`Sa\0\�\�m���}�\0~\�v����}�\0~H��h����U���u�H�E��\0\0\0�\0\0\0H�\�\�x����\0\0\0\0H�M�dH3%(\0\0\0t\�\�m��\�ÐUH�\�H�\�H�}�H�E�L��T\0\0H�E�H��H\0\0H�E�L��P\0\0H�E�H��@\0\0H�E�H��8\0\0H�E�H��0\0\0H�E�H�\�API��M�\�H�\�\�*���H�\�\�\�UH�\�H�\�\0\0\0H�}�H�u�H�U�H�M�L��x���L��p���dH�%(\0\0\0H�E�1�\�E�����\�E�����H\�E�\0\0\0\0H�E��0\0\0\0�\0\0\0\0H�\�\�$k��\�E\�\0\0\0\�E\�\0\0\0\�E\�\0\0\0\�E�\0\0\0H�M�H�U�H�E�H�ƿ\0\0\0\0\�m���E��}�\0t6�\�\�@\0�`Sa\0\�Wl��H�E��\�H�\�\�Gn��� $@\0H�\�\�Zl���\0\0\0\�O\0\0H�E��PH�E��HH�E��@�Ή\�\�i���E��}��u%�\0\�@\0�`Sa\0\��k��H�E�H�\�\�\�l���\0\0\0\�\0\0H�E��PH�E�H�H�E�H�Ή\�\�(i���E��}��u>�(\�@\0�`Sa\0\�k��H�E�H�\�\�l���u�H�E��\0\0\0�\0\0\0H�\�\�s����\0\0\0\�\0\0H�E�H�\�\�Ul���E���\0\0\0�\�\�\�k���E��}��u2�H\�@\0�`Sa\0\�Nk���u�H�E��\0\0\0�\0\0\0H�\�\�����\0\0\0\�J\0\0�E��\0\0\0\0�\0\0\0\0�\�\�\�h���E��}��u2�p\�@\0�`Sa\0\��j���u�H�E��\0\0\0�\0\0\0H�\�\�\�����\0\0\0\��\0\0�u�H�E��\0\0\0�\0\0\0H�\�\����H��x���\0�\�\0\0\0H��p����\0����\0\0\0H��p����\0Hc\�H��x����E��\0\0\0\0�\�\�Rh���E��}�\0~:��\�@\0�`Sa\0\�jj��H�E��\�H�\�\�Zl��� $@\0H�\�\�mj��H��p����U��\�I�}�\0u��\�@\0�`Sa\0\�*j��\�2��\�@\0�`Sa\0\�j���u�H�E��\0\0\0�\0\0\0H�\�\�\�����\0\0\0\�\0\0�}�\0~\�G���H�}�\0��\0\0\0H�E��\0����\0\0\0H�E��\0Hc\�H�u��E��\0\0\0\0�\�\�h���E��}��u2�h\�@\0�`Sa\0\�i���u�H�E��\0\0\0�\0\0\0H�\�\�m����\0\0\0\�\0\0\0�\�\�@\0�`Sa\0\�li��H�E��\�H�\�\�\\k��� $@\0H�\�\�oi��H�E��U���E��\0\0\0�\�\�Gj���E��}��u/�\�\�@\0�`Sa\0\�i���u�H�E��\0\0\0�\0\0\0H�\�\�\�����\0\0\0\��u�H�E��\0\0\0�\0\0\0H�\�\�\�����\0\0\0\0H�M�dH3%(\0\0\0t\�-i��\�ÐUH�\�H�\�H�}�H�E�L��T\0\0H�E�H��H\0\0H�E�H��P\0\0H�E�H��@\0\0H�E�H��8\0\0H�E�M��I��H�\�\�m���\�ÐUH�\�SH�\�H�}\�H�E\�H��@\0\0��\�@\0�`Sa\0\�Kh��H�\�H�\�\�@h��� $@\0H�\�\�Sh��H�E\�H��H\0\0�\�@\0�`Sa\0\�h��H�\�H�\�\�h��� $@\0H�\�\�!h���H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�Ri���\�Ra\0�\�Ta\0��(@\0\�ng���\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�\�Œ����\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\\h��H�E\�H��8��\�@\0H�\�\�Gh��\�\ZH�\�H�E\�H�\�\�j���H�\�H�\�\�ki��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�h���\�Ra\0�\�Ta\0��(@\0\�f���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\������0\�@\0H�E\�H�H�E\�H���\�@\0H�\�\�g��H�E\�H��8�\�@\0H�\�\�g��\�\ZH�\�H�E\�H�\�褕��H�\�H�\�\�h��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�\�g���\�Ra\0�\�Ta\0��(@\0\�\�e���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\������\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�\�f��H�E\�H��8��\�@\0H�\�\�f��\�\ZH�\�H�E\�H�\�\�x��H�\�H�\�\�\�g��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u�\�Ta\0\�g���\�Ra\0�\�Ta\0��(@\0\�e���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�s����\�\�@\0H�E\�H�H�E\�H��� \�@\0H�\�\�\nf��H�E\�H��8�%\�@\0H�\�\��e��H�E\�H��h�)\�@\0H�\�\�\�e��\�\ZH�\�H�E\�H�\�\����H�\�H�\�\�g��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�&f���\�Ra\0��Ta\0��(@\0\�Bd���\�\�UH�\���\0\0�\0\0\0\����]\�UH�\�SH�\�H�}\�H�E\�H�\�虏���h\�@\0H�E\�H�H�E\�H(\0\0H�\�\�\���H�E\�H���H\�@\0H�\�\�e��H�E\�H��8�N\�@\0H�\�\�	e��\�,H�\�H�E\�H(\0\0H�\�\�b���H�E\�H�\�\�\Z���H�\�H�\�\�f��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�=e���\�Ra\0��Ta\0��(@\0\�Yc���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�诎����\�@\0H�E\�H�H�E\�H���\�\�@\0H�\�\�Fd��H�E\�H��8�\�\�@\0H�\�\�1d��\�\ZH�\�H�E\�H�\�\�T���H�\�H�\�\�Ue��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�wd���\�Ra\0��Ta\0��(@\0\�b���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�XH�}�dH�%(\0\0\0H�E\�1�H�E�H�\�\�ڍ����\�@\0H�E�H�H�E�H���h\�@\0H�\�\�qc��H�E�H��8�o\�@\0H�\�\�\\c��H�E�H�\�\�d��H�U�H�E��u\�@\0H�\�\�Kc��H�E�H�M���6@\0H�\�H�\�\�e���H�E�H�\�\�\�`��H�E�H�\�\�[b��H�E�H0\0\0H�\�\�\�a��\�\�`��H�\�H�E�H��(\0\0�H�E\�dH3%(\0\0\0tC\�<H�\�H�E�H�\�\�`��\�H�\�H�E�H�\�\�b��\�H�\�H�E�H�\�\�א��H�\�H�\�\�\�c��\�b��H�\�X[]\�UH�\�H�\�H�}�H�u�H�E�H�\�\�Wr��\�\�UH�\�H�\�H�}�\�=`��\�ÐUH�\�H�\� H�}�H�u�H�U\�H�U\�H�E�H�\�H�\�\�_��fH~�H�E\��E\�\�ÐUH�\�H�\�H�}�H�u�H�E�H�\�\��_��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\�\�`��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\��^��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\�^��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\�>`��\�\�UH�\�H�\�H�}�H�u�H�E�H�\�\�_��\�\�UH�\�H�\�0H�}�H�u�H�U\�H�M\�L�E\�H�M\�H�U\�H�u\�H�E�H�\�\�_��\�\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�a���\�Ra\0��Ta\0��(@\0\�_���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�����h\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�`��H�E\�H��8�\�@\0H�\�\�`��\�\ZH�\�H�E\�H�\�踎��H�\�H�\�\�a��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�\�`���\�Ra\0��Ta\0��(@\0\��^���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�\�!����0\�@\0H�E\�H�H�E\�H���\�@\0H�\�\�\�_��H�E\�H��8�\�@\0H�\�\�\�_��\�\ZH�\�H�E\�H�\�\�hu��H�\�H�\�\��`��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�`���\�Ra\0��Ta\0��(@\0\�1^���\�\�UH�\���\0\0�\0\0\0\����]ÐUH�\�SH�\�H�}\�H�E\�H�\�臉����\�@\0H�E\�H�H�E\�H����\�@\0H�\�\�_��H�E\�H��8��\�@\0H�\�\�	_��\�\ZH�\�H�E\�H�\�\�,���H�\�H�\�\�-`��H�\�[]\�UH�\�H�\��}��u��}�u\'�}���\0\0u��Ta\0\�O_���\�Ra\0��Ta\0��(@\0\�k]���\�\�UH�\���\0\0�\0\0\0\����]\�\0AWAVA��AUATL�%�� \0UH�-�� \0SI��I�\�L)\�H�\�H��\�gZ��H�\�t 1\��\0\0\0\0\0L�\�L��D��A�\�H�\�H9\�u\�H�\�[]A\\A]A^A_Ðf.�\0\0\0\0\0�\�\0\0H�\�H�\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cbrackets\0brackets\0[...];{...};(...);<...>\0\0\0\0\0\0\0\0\0\0@\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0`\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N10n_brackets9CbracketsE\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cclass\0class\0\0\0\0[template_spec]\nclass [decl_spec] tag[:base_list]\n{\n	[member_list]\n[func_list]\n}[declarators];\n[class] tag declarators;\n\0\0\0\0\0\0\0\0#ifndef [TAG]_H\n#define [TAG]_H\n\n#include \"object.h\"\n\nnamespace n_[tag] {\n	class C[tag] :public Object\n	{\n	public:\n		Ctag();\n	};\n}\n\nusing namespace n_tag;\n\n#endif\n\0CLASS_TEST\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\0@\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\0p\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0�.@\0\0\0\0\0�.@\0\0\0\0\0p*@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_tag4CtagE\0\0\0�Ta\0\0\0\0\00\�@\0\0\0\0\0\�@\0\0\0\0\0N6n_make5CmakeE\0�Ta\0\0\0\0\0`\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_main5CmainE\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N7n_class6CclassE\0\0\0\0\0\0\0\0\0\0Ccout\0cout\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0 \�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_cout5CcoutE\0\0\0\0\0\0\0\0Cecho\0echo\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_echo5CechoE\0\0\0\0\0\0\0\0Cesc\0esc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0V9@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\08\�@\0\0\0\0\0p\�@\0\0\0\0\0N5n_esc4CescE\0\0\0\0\0\0\0\0\0\0%c\0\0\0\0\0\0error:rename_cmd->if(NULL==p->in||NULL==p->out)\n\0\0\0\0\0\0\0\0\0\0\0Cexec\0exec\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0��@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\0\�@\0\0\0\0\0�\�@\0\0\0\0\0N6n_exec5CexecE\0\0\0\0\0\0\0\0Cexit\0exit\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0V9@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_exit5CexitE\0\0\0\0\0\0\0\0Cfile\0file\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0 \�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_file5CfileE\0\0\0\0\0\0\0\0Chome\0home\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_home5ChomeE\0\0\0\0\0\0\0\0Chttp\0http\0\0\0\0\0\0http://authority-path-abempty[?query][#fragment]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_http5ChttpE\0�Ta\0\0\0\0\0\�\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_uri4CuriE\0\0\0\0\0\0\0\0\0\0Ciwant\0iwant\0I am iwant  APP.\n\0iwant_func:\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\�@\0\0\0\0\0\0k@\0\0\0\0\0,=@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0N7n_iwant6CiwantE\0\0\0\0\0\0\0\0\0\0\0\0\0\0Cmain\0main\0\0\0\0\0\0#ifndef [TAG]_TEST\n#define [TAG]_TEST 0//1\n#endif\n\n#if [TAG]_TEST\nint main(int argc, char *argv[])\n{\n	return 0;\n}\n#endif \0\0\0\0\0\0\0\0\0\0\0\0\0\0Cmake\0make\0\0\0\0\0\0target:[dependencies] [...]\n	commands\n	[...]\0\0\0\0\0\0\0\0\0\0\0Cmath\0math\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\0\�@\0\0\0\0\0\�@\0\0\0\0\0N6n_math5CmathE\0\0%ld\0\0\0\0\0\0\0CmyMemory\0myMemory\0\0error:CmyMemory::CmyMemory(int size)=\0\0\0basic_string::_M_construct null not valid\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N11n_my_memory9CmyMemoryE\0\0\0\0\0\0\0\0\0\0Cnet\0net\0\0\0\0\0\0\0\0\0\0\0\0h\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_net4CnetE\0\0\0\0\0\0\0\0\0\0Cnew\0new\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0�K@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_new4CnewE\0\0\0\0%ld\0\0\0\0\0\0\0object_func:\0Object\0objec_func\0runcmd\0name:\0 alias:\0 id:\0:\0 my_family count : \0 my_ex_func count : \0error:Object::allot size=\0Object::func\n\0basic_string::_M_construct null not valid\0\0\0\0\0\0\0�\'@\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\"�@\0\0\0\0\0n�@\0\0\0\0\0��@\0\0\0\0\0ԫ@\0\0\0\0\0d�@\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\0H\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\0x\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`(@\0\0\0\0\0\Z�@\0\0\0\0\0`(@\0\0\0\0\0�Ta\0\0\0\0\0 \�@\0\0\0\0\0x\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0\0\0Sa\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\0St19_Sp_make_shared_tag\0�Ta\0\0\0\0\0\�\�@\0\0\0\0\0H\�@\0\0\0\0\0NSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0\0\0\0\0\0\0\0Sa\0\0\0\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N8n_object6ObjectE\0\0\0\0\0\0Sa\0\0\0\0\0`\�@\0\0\0\0\0\0\0\0\0\0\0\0\0NSt6thread10_Impl_baseE\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0Sa\0\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0\0\0\0\0\0\0\0\0Cos\0os\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\03Cos\0\0\0\0\0\0\0\0\0\0\0Cpath\0path\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0 \�@\0\0\0\0\0\�@\0\0\0\0\0N6n_path5CpathE\0\0\0\0\0\0\0\0Crun\0run\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0��@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_run4CrunE\0\0\0\0\0\0\0\0\0\0Csocket\0socket\066666\0\0\0\0error:if (getaddrinfo(hostname, service, &hints, &result)\n\0\0\0\0\0\0error:connect_socket == INVALID_SOCKET\n\0error:Unable to connect to server!\n\0\0\0\0\0error:send failed with error.\n\0Bytes Sent:\0Bytes received:\0Connection closed\n\0recv failed with error: %d\n\0\0\0\0\0\0\0error:getaddrinfo failed with error:\0\0\0\0error:socket failed with error.\n\0\0\0\0\0\0\0\0error:bind failed with error.\n\0\0error:listen failed with error.\n\0\0\0\0\0\0\0\0error:accept failed with error.\n\0Connection closing...\n\0error:recv failed with error.\n\0Bytes sent:\0\0\0\0\0\0error:shutdown failed with error.\n\0sendbuf=\0recvbuf=\0\0\0\0\0\0\0\0\0\0\0\0X\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0p\�@\0\0\0\0\0�\�@\0\0\0\0\0N8n_socket7CsocketE\0\0\0\0\0\0\0\0Csql\0sql\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_sql4CsqlE\0\0\0\0\0\0\0\0\0\0Csyntax\0syntax\0\0\0\0\0\0\0\0\0\0h\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0N8n_syntax7CsyntaxE\0\0\0\0\0\0\0\0Csys\0sys\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0��@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\�@\0\0\0\0\0�\�@\0\0\0\0\0N5n_sys4CsysE\0\0\0\0\0\0\0\0\0\0Ctag\0tag\0[TAG];TAG%d;tag;tag%d\0\0\0\0\0\0\0\0\0Ctask\0task\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_task5CtaskE\0\0\0\0\0\0\0\0Ctemp\0temp\0\0\0\0\0\0\0\0\0\0\0\0\0\00\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0P\�@\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0N6n_temp5CtempE\0\0\0\0\0\0\0\0Ctimer\0timer\0time\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\04\�@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\�\�@\0\0\0\0\0\�@\0\0\0\0\0N7n_timer6CtimerE\0\0\0\0\0\0\0\0\0\0Curi\0uri\0\0\0\0\0\0\0\0\0\0\0Curl\0url\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0�\�@\0\0\0\0\0\�\�@\0\0\0\0\0N5n_url4CurlE\0\0\0\0\0\0\0\0\0\0Cxml\0xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0k@\0\0\0\0\0k@\0\0\0\0\02k@\0\0\0\0\0Dk@\0\0\0\0\0~k@\0\0\0\0\0�k@\0\0\0\0\0�k@\0\0\0\0\0�Ta\0\0\0\0\0\�@\0\0\0\0\0\�@\0\0\0\0\0N5n_xml4CxmlE\0\0\0;�\0\0/\0\0\�?��\�\0\0�E���\0\0~F��\0\0G��@\0\0CG��`\0\0XG���\0\0\�G���\0\0I��\�\0\0�J��\0\0pK��0\0\0�K��P\0\0�K��\�\0\0(M��@\0\0fM��`\0\0|M���\0\0�M��p\0\0�M���\0\0\�M���\0\0N���\0\0,N�� \0\0HN��@\0\0pN��`\0\0�N���\0\0�N���\0\0\�N���\0\0FO��\�\0\0~O��\0\0\0�O�� \0\0�O��@\0\0�O��`\0\0\�O���\0\0�O���\0\0P���\0\04P��\�\0\0bP��\0\0\0�P�� \0\0�P���\0\0Q���\0\0GQ��\�\0\0�Q��\�\0\0�Q��(\0\0R��P\0\0JR��p\0\0`R��\0\0�R���\0\0�R��\�\0\08S���\0\0NS���\0\0uS��\0\0�S��8\0\0,T��X\0\0�T��x\0\0\�T���\0\0\�T��\�\0\0PU��\0\0\0�U�� \0\0�U���\0\0\�U��@\0\0>V��h\0\0lV���\0\0�V���\0\0�V��\�\0\02W���\0\0pW��\Z\0\0�W��0\Z\0\0�W��X\Z\0\06X��x\Z\0\0LX���\Z\0\0�X��\�\Z\0\0<Y��\0\0\0RY���\Z\0\0zY�� \0\0\�Y��H\0\0Z��h\0\05Z���\0\0�Z���\0\0\�Z��\�\0\0\�Z���\0\0w[��\0\0�[��8\0\0\�[��X\0\0Q\\���\0\0�\\���\0\0�\\���\0\0]��\�\0\0T]��\0\0j]��h\0\0`^���\0\0Z_���\0\0�_��\�\0\0\\`��\0\0\0\�`�� \0\0)a��\�\0\0ga��\�\0\0|a��(\0\0�a��H\0\0\Zb��@\0\0�c��h\0\0\�c���\0\0Zd���\0\0\�d��\�\0\0,e���\0\0�e��\0\0�f��@\0\0\�f��`\0\01g���\0\0;g���\0\0Xg�� \0\0\�g��0 \0\0h��P \0\0h��p \0\0�h��� \0\0�h��� \0\05i��\� \0\0Ji��\0!\0\0`i�� !\0\0�i��@!\0\0�i��`!\0\0\�i���!\0\0j��@#\0\0�j��h#\0\0�j���#\0\0�k���#\0\0�k��\�#\0\0hl���#\0\0\�l��$\0\0�m��8$\0\0�m���$\0\0\�q��\�$\0\0s��%\0\0t��0%\0\0\�t��P%\0\0�t��p%\0\0Zu���%\0\0\�u���%\0\0>v��\�%\0\0�v���%\0\0\�v��0&\0\0\�w��X&\0\0Lx��x&\0\00y���&\0\0\�y���&\0\0J{��\�&\0\0�|��\'\0\0}��(\'\0\0\\}��H\'\0\0�}��h\'\0\0����\'\0\0�����\'\0\0(���\�\'\0\0\���\0(\0\0����((\0\0҄��P(\0\0$���x(\0\0�����(\0\0�����(\0\0և��\�(\0\0\���\0)\0\0���� )\0\0\Z���@)\0\0,���`)\0\0f����)\0\0z����)\0\0�����)\0\0�����N\0\0߈�� Q\0\0����!\0\0����!\0\0���\�!\0\0x���\0\"\0\0���� \"\0\0����@\"\0\0܉��`\"\0\00����\"\0\0P����\"\0\0l����\"\0\0����\�\"\0\0Ҋ��\0#\0\0���� #\0\0���X$\0\04���x$\0\0P����$\0\0l���&\0\0����\�)\0\0��\0*\0\0ދ�� *\0\0n���H*\0\0|���h*\0\0�����*\0\0Ȍ���*\0\0\���\�*\0\0\r���\�*\0\0���+\0\0*���(+\0\0J���H+\0\0f���h+\0\0d����+\0\0�����+\0\0����\�+\0\0Ď���+\0\0\���� ,\0\0����@,\0\0$���`,\0\0@����,\0\0\\����,\0\0����\�,\0\0����\�,\0\0ԏ��-\0\0����(-\0\0\n���H-\0\0T���h-\0\0�����-\0\0�����-\0\0����\�-\0\0Z����-\0\0����.\0\0Œ��0.\0\0Ԓ��P.\0\0���p.\0\0R����.\0\0n����.\0\0Ȕ��\�.\0\0$����.\0\0:���/\0\0����8/\0\0Ε��X/\0\0���x/\0\0����/\0\0&����/\0\0<���\�/\0\0�����/\0\0Ж��0\0\0���80\0\0���X0\0\04���x0\0\0P����0\0\0̗���0\0\0\���\�0\0\06���\01\0\0���� 1\0\0̘��@1\0\0����`1\0\0����1\0\0V����1\0\0�����1\0\0ƙ��\�1\0\0���\02\0\0M���(2\0\0[���H2\0\0u���h2\0\0�����2\0\0�����2\0\0\���\�2\0\0����\�2\0\0���3\0\0���(3\0\0/���H3\0\0>���h3\0\0h����3\0\0̛���3\0\0���\�3\0\0���\�3\0\0p���4\0\0~���04\0\0ٜ��P4\0\0\���p4\0\0\Z����4\0\0B����4\0\0^���\�4\0\0ȝ���4\0\0���5\0\0���05\0\0v���P5\0\0����p5\0\0�����5\0\0$����5\0\0\\���\�5\0\0�����5\0\0̟��6\0\0)���06\0\07���P6\0\0F���p6\0\0�����6\0\0Р���6\0\0\���\�6\0\0�����6\0\0V���7\0\0����07\0\0����P7\0\0	���p7\0\0����7\0\0v����7\0\0¢��\�7\0\0\����7\0\0���8\0\0���08\0\0\'���P8\0\06���p8\0\0�����8\0\0�����8\0\0ڣ��\�8\0\0�����8\0\0���9\0\00���09\0\0����P9\0\0����p9\0\0j����9\0\0�����9\0\0 ���\�9\0\0.���\0:\0\0����(:\0\0����H:\0\0ا��h:\0\0V����:\0\0d����:\0\0r���\�:\0\0�����:\0\0Ψ��;\0\0\���0;\0\0D���P;\0\0����x;\0\0ߩ���;\0\0x���\�;\0\0����\�;\0\0\���<\0\0���(<\0\0\Z���H<\0\0(���h<\0\08����<\0\0d����<\0\0����\�<\0\0����\�<\0\0����=\0\0ƫ��(=\0\0\���H=\0\0���h=\0\0:����=\0\0F����=\0\0T���\�=\0\0d���\�=\0\0����>\0\0����(>\0\0Ȭ��H>\0\0\���h>\0\0v����>\0\0�����>\0\0­��\�>\0\0T����>\0\0z���?\0\0���@?\0\02���`?\0\0į���?\0\0\����?\0\0\Z���\�?\0\0@���\�?\0\0\\���@\0\0����(@\0\0����H@\0\0̰��h@\0\0\\����@\0\0\����@\0\02���\�@\0\0f���A\0\0����(A\0\0����HA\0\0\���hA\0\0����A\0\0~����A\0\0����\�A\0\0�����A\0\0ų��B\0\02���8B\0\0f���XB\0\0����xB\0\0�����B\0\0´���B\0\0\���\�B\0\0����B\0\0&���C\0\0J���8C\0\0����`C\0\0�����C\0\00����C\0\0T���\�C\0\0�����C\0\0��� D\0\0����@D\0\0&���`D\0\0P����D\0\0`����D\0\0�����D\0\0����\�D\0\0����\0E\0\0ȷ�� E\0\0\���@E\0\0T���`E\0\0̸���E\0\0ظ���E\0\0\����E\0\0,���\�E\0\08���\0F\0\0D��� F\0\0P���@F\0\0����`F\0\0޹���F\0\00����F\0\0����\�F\0\0\���\�F\0\0:���G\0\0|���(G\0\0����HG\0\0\0���hG\0\0*����G\0\0N����G\0\0Z���\�G\0\0����\�G\0\0����H\0\0D���(H\0\0R���HH\0\0ǽ��hH\0\0ս���H\0\0J����H\0\0���\�H\0\0����H\0\0���I\0\0,���0I\0\0@���PI\0\0����pI\0\0�����I\0\0�����I\0\0���\�I\0\0_���\0J\0\0���� J\0\0\����@J\0\0\����`J\0\0\����J\0\0D\����J\0\0�\���\�J\0\0�\���\�J\0\0\�\���K\0\0\�\���(K\0\0\���HK\0\0\�\���pK\0\0\����K\0\0\����K\0\0#\���\�K\0\0N\����K\0\0x\���L\0\0�\���0L\0\0�\���PL\0\0\�\���pL\0\0\�\����L\0\0\����L\0\0\���\�L\0\0:\����L\0\0l\���M\0\0�\���0M\0\0\�\���PM\0\0\���pM\0\08\����M\0\0^\����M\0\0x\���\�M\0\0\�\����M\0\0\�\���N\0\0\�\���8N\0\0\���XN\0\0.\���xN\0\0Z\����N\0\0�\����N\0\0\�\���\�N\0\0\n\���O\0\0V\���8O\0\0|\���XO\0\0�\����O\0\0L\����O\0\0�\����O\0\0�\���\�O\0\0�\���\0P\0\0\�\��� P\0\0,\���@P\0\0:\���`P\0\0`\����P\0\0z\����P\0\0�\����P\0\0�\���\�P\0\0\�\���\0Q\0\0\���@Q\0\0�\���hQ\0\0�\����Q\0\0\�\����Q\0\0�\���\�Q\0\0n\����Q\0\0�\���R\0\0\���0R\0\0Z\���PR\0\0p\���pR\0\0\�\����R\0\0\����R\0\0L\���\�R\0\0b\����R\0\0\�\��� S\0\0@\���HS\0\0j\���hS\0\0�\����S\0\0\�\����S\0\0�\���\�S\0\0*\���\�S\0\0N\���T\0\0|\���(T\0\0�\���HT\0\0\�\���hT\0\0D\����T\0\0�\����T\0\0\�\���\�T\0\0F\���\�T\0\0�\���U\0\0�\���0U\0\0\���PU\0\0�\���xU\0\0\�\����U\0\0\�\����U\0\0J\���\�U\0\0�\���\0V\0\0�\��� V\0\0\���HV\0\0N\���hV\0\0d\����V\0\0\�\����V\0\0)\���\�V\0\0>\����V\0\0\�\���W\0\0\���8W\0\0(\���XW\0\0�\����W\0\0\�\����W\0\0\�\����W\0\0\���\�W\0\0:\���X\0\0N\���(X\0\0�\���HX\0\0�\���hX\0\0\�\����X\0\0\�\����X\0\0�\���\�X\0\0\���\�X\0\0:\���Y\0\0p\���(Y\0\0�\���HY\0\0\�\���hY\0\06\����Y\0\0t\����Y\0\0�\���\�Y\0\0�\����Y\0\0:\���Z\0\0P\���8Z\0\0\�\���`Z\0\0\0\����Z\0\0\����Z\0\0�\���\�Z\0\0\0\0\0\0\0\0\0\0\0\0\0zR\0x�\0\0\0\0\0\0\�3��*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0zR\0x�\0\0$\0\0\0\0\0\0\0.���\0\0\0FJw�\0?\Z;*3$\"\0\0\0\0\0\0\0\0\0\0\0zPLR\0x�\'@\0�\0\0$\0\0\0$\0\0\0^4���\0\0\0>A\0A�C\rE�}\0\0\0\0\0\0�\0\0\0�4��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\0\0\0\�4��\0\0\0\0A�C\rP\0\0\0\0\0\0\�\0\0\0\�4��m\0\0\0\0A�C\rh\0\0\0\0\0\�\0\0\0\�:��\0\0\0\0A�C\rV\0\0\0$\0\0\0\�\0\0\0�4��X\0\0,>A\0A�C\rE�N\0\0$\0\0\0�\0\0\0.6��v\0\0?>A\0A�C\rE�l\0\0\0\0\0\\\0\0|7��\�\0\0\0\0A�C\r\�\0\0\0\0\0|\0\088��,\0\0\0\0A�C\rg\0\0\0\0\0\0�\0\0D8��!\0\0\0\0A�C\r\\\0\0\0\0\0\0�\0\0 :��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\�\0\0(:��\'\0\0\0\0A�C\rb\0\0\0\0\0\0�\0\00:��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0\�\0\0\�7��k\0\0R>A\0A�C\rH�^\0\0$\0\0\0\0\0:��\0\0\0u>A\0A�C\rV\0\0\0\0\0\0\0\0\0\0l\0\0:��\0\0\0\0A�C\rV\0\0\0\0\0\0�\0\0\0:��\'\0\0\0\0A�C\rb\0\0\0\0\0\0�\0\0:��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\�\0\0:��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\�\0\0:��\0\0\0\0A�C\rV\0\0\0\0\0\0\0\0:��j\0\0\0\0A�C\re\0\0\0\0\0,\0\0^:��7\0\0\0\0A�C\rr\0\0\0\0\0\0L\0\0v:��\'\0\0\0\0A�C\rb\0\0\0\0\0\0l\0\0~:��\0\0\0\0A�C\rF\0\0\0\0\0\0�\0\0j:��\0\0\0\0A�C\rI\0\0\0\0\0\0�\0\0X:��\0\0\0\0A�C\rJ\0\0\0\0\0\0\�\0\0H:��+\0\0\0\0A�C\rf\0\0\0\0\0\0\�\0\0T:��\0\0\0\0A�C\rV\0\0\0\0\0\0\0\0P:��\0\0\0\0A�C\rV\0\0\0\0\0\0,\0\0L:��.\0\0\0\0A�C\ri\0\0\0\0\0\0L\0\0Z:��#\0\0\0\0A�C\r^\0\0\0\0\0\0l\0\0^:��\0\0\0\0A�C\rF\0\0\0\0\0\0�\0\0\�6��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\0\0�6��\0\0\0\0A�C\rP\0\0\0$\0\0\0�\0\0\n:��r\0\0\0y>A\0A�C\rE�h\0\0\0\0\0\0�\0\0T:��C\0\0\0\0A�C\r~\0\0\0\0\0\0\0\0w:��>\0\0\0\0A�C\ry\0\0\0\0\0\04\0\0�:��\0\0\0\0A�C\rP\0\0\0\0\0\0T\0\0P;��\'\0\0\0\0A�C\rb\0\0\0$\0\0\04\0\0j:��r\0\0\0�>A\0A�C\rE�h\0\0\0\0\0\0�\0\0�:��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\0\0\�:��\0\0\0\0A�C\rP\0\0\0\0\0\0\�\0\0�;��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0�\0\0\�:��r\0\0\0�>A\0A�C\rE�h\0\0\0\0\0\0$\0\0\Z;��>\0\0\0\0A�C\ry\0\0\0\0\0\0D\0\08;��\0\0\0\0A�C\rP\0\0\0\0\0\0d\0\0U;��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0�\0\0O;���\0\0\0\0A�C\r�\0\0\0\0\0�\0\0\�;��_\0\0\0\0A�C\rZ\0\0\0\0\0\�\0\0<��>\0\0\0\0A�C\ry\0\0\0\0\0\0\�\0\0)<��\0\0\0\0A�C\rP\0\0\0\0\0\0\0\0\�<��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0\�\0\0�;��r\0\0\0�>A\0A�C\rE�h\0\0\0\0\0\0L\0\0H<��>\0\0\0\0A�C\ry\0\0\0\0\0\0l\0\0f<��\0\0\0\0A�C\rP\0\0\0$\0\0\0L\0\0�<��r\0\0\0�>A\0A�C\rE�h\0\0\0\0\0\0�\0\0\�<��.\0\0\0\0A�C\r\0\0\0\0\0\0\0\0\0\0\�\0\0\�<��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\0\0�<��\0\0\0\0A�C\rP\0\0\0$\0\0\0\�\0\0�<��r\0\0\0\�>A\0A�C\rE�h\0\0\0\0\0\0<\0\0:=��>\0\0\0\0A�C\ry\0\0\0\0\0\0\\\0\0X=��\0\0\0\0A�C\rP\0\0\0$\0\0\0<\0\0N=��r\0\0\0\�>A\0A�C\rE�h\0\0\0\0\0\0�\0\0�=��>\0\0\0\0A�C\ry\0\0\0\0\0\0\�\0\0�=��\0\0\0\0A�C\rP\0\0\0\0\0\0\�\0\0�>��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0\�\0\0�=���\0\0\0\�>A\0A�C\rE��\0\0\0\0\0\0,	\0\0>��>\0\0\0\0A�C\ry\0\0\0\0\0\0L	\0\04>��\0\0\0\0A�C\rP\0\0\0$\0\0\0,	\0\0R>��r\0\0\0�>A\0A�C\rE�h\0\0\0\0\0\0�	\0\0�>��\'\0\0\0\0A�C\rb\0\0\0\0\0\0�	\0\0�>��!\0\0\0\0A�C\r\\\0\0\0$\0\0\0\�	\0\0�>��e\0\0\0\0A�C\rE�[\0\0\0\0\0\0\0\0\0\0�	\0\0\�>��>\0\0\0\0A�C\ry\0\0\0\0\0\0\n\0\0\0?��\0\0\0\0A�C\rP\0\0\0$\0\0\0�	\0\0�>���\0\0\0?A\0A�C\rE�\0\0\0\0\0\0d\n\0\0W?��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\n\0\0u?��\0\0\0\0A�C\rP\0\0\0$\0\0\0d\n\0\0j?���\0\0\0?A\0A�C\rE�}\0\0\0\0\0\0\�\n\0\0\�?��>\0\0\0\0A�C\ry\0\0\0\0\0\0\�\n\0\0\�?��\0\0\0\0A�C\rP\0\0\0$\0\0\0\�\n\0\0\�?��r\0\0\0/?A\0A�C\rE�h\0\0\0\0\0\04\0\0&@��>\0\0\0\0A�C\ry\0\0\0\0\0\0T\0\0D@��\0\0\0\0A�C\rP\0\0\0\0\0\0t\0\0LD��;\0\0\0\0A�C\rv\0\0\0\0\0\0�\0\0gD��c\0\0\0\0A�C\r^\0\0$\0\0\0t\0\0�?���\0\0\0@?A\0A�C\rE�\�\0\0\0$\0\0\0�\0\0\�@���\0\0\0]?A\0A�C\rE�\�\0\0\0\0\0\0\0\0�A��3\0\0\0\0A�C\rn\0\0\0$\0\0\0\�\0\0�A��\�\0\0\0|?A\0A�C\rE�\�\0\0\0\0\0\0L\0\0TB��|\0\0\0\0A�C\rw\0\0\0\0\0l\0\0�B��Q\0\0\0\0A�C\rL\0\0$\0\0\0L\0\0\�C���\0\0�?A\0A�C\rH��\0\0\0\0\0�\0\0JE��\0\0\0\0A�C\rV\0\0\0$\0\0\0\�\0\0EE���\0\0\0\0A�C\rG��x\0\0\0\0\0$\0\0\0�\0\0�E��u\0\0\0�?A\0A�C\rE�k\0\0\0\0\0\0$\r\0\0�E��[\0\0\0\0A�C\rV\0\0\0\0\0D\r\0\0,F��[\0\0\0\0A�C\rV\0\0$\0\0\0$\r\0\0hF��5\0\0�?A\0A�C\rE�+\0\0\0\0\0�\r\0\0uG��\0\0\0\0A�C\rM\0\0\0$\0\0\0�\r\0\0gG��b\0\0\0\0A�C\rE�X\0\0\0\0\0\0\0\0\0\0\�\r\0\0�G��\n\0\0\0\0A�C\rE\0\0\0\0\0\0�\r\0\0�G��\0\0\0\0A�C\rW\0\0\0\0\0\0\0\0YA��>\0\0\0\0A�C\ry\0\0\0\0\0\04\0\0wA��\0\0\0\0A�C\rP\0\0\0$\0\0\0\0\0HG��r\0\0\0\�?A\0A�C\rE�h\0\0\0\0\0\0|\0\0�G��>\0\0\0\0A�C\ry\0\0\0\0\0\0�\0\0�G��\0\0\0\0A�C\rP\0\0\0$\0\0\0|\0\0�G��r\0\0\0�?A\0A�C\rE�h\0\0\0$\0\0\0�\0\0�G��g\0\0\0@A\0A�C\rE�]\0\0\0\0\0\0\0\0/H��>\0\0\0\0A�C\ry\0\0\0\0\0\0,\0\0MH��\0\0\0\0A�C\rP\0\0\0\0\0\0L\0\0BH��\0\0\0\0A�C\rQ\0\0\0\0\0\0l\0\08H��%\0\0\0\0A�C\r`\0\0\0\0\0\0�\0\0=H��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0�\0\07H��*\0\0\0\0A�C\re\0\0\0\0\0\0\�\0\0AH��C\0\0\0\0A�C\r~\0\0\0\0\0\0\�\0\0Lg��\0\0\0\0A�C\rM\0\0\0\0\0\0\0\0>g��\0\0\0\0A�C\rJ\0\0\0\0\0\0,\0\0.g��a\0\0\0\0A�C\r\\\0\0\0\0\0L\0\0pg��\0\0\0\0A�C\rQ\0\0\0\0\0\0l\0\0fg��*\0\0\0\0A�C\re\0\0\0\0\0\0�\0\0pg��$\0\0\0\0A�C\r_\0\0\0\0\0\0�\0\0tg��S\0\0\0\0A�C\rN\0\0\0\0\0\�\0\0�g��\0\0\0\0A�C\rZ\0\0\0\0\0\0\�\0\0�g��\0\0\0\0A�C\rV\0\0\0\0\0\0\0\0�g��?\0\0\0\0A�C\rz\0\0\0\0\0\0,\0\0\�g��&\0\0\0\0A�C\ra\0\0\0\0\0\0L\0\0\�g��)\0\0\0\0A�C\rd\0\0\0\0\0\0l\0\0\�g��\0\0\0\0A�C\rV\0\0\0$\0\0\0L\0\0\�F���\0\0\0@A\0A�C\rE��\0\0\0\0\0\0�\0\0BG��H\0\0\0\0A�C\rC\0\0$\0\0\0�\0\0jG���\0\0\0-@A\0A�C\rE��\0\0\0\0\0\0�\0\0\�G��i\0\0\0\0A�C\rd\0\0\0\0\0\0\0&H��i\0\0\0\0A�C\rd\0\0\0\0\0<\0\0pH��i\0\0\0\0A�C\rd\0\0$\0\0\0\0\0�H��\�\0\0\0:@A\0A�C\rE��\0\0\0\0\0\0�\0\0XI��W\0\0\0\0A�C\rR\0\0\0\0\0�\0\0�f��\0\0\0\0A�C\rV\0\0\0\0\0\0\�\0\0�f��\0\0\0\0A�C\rV\0\0\0\0\0\0\�\0\0�f��\0\0\0\0A�C\rV\0\0\0$\0\0\0\�\0\00I��\�\0\0L@A\0A�C\rH�\�\0\0$\0\0\0\�\0\0�L��:\0\0@A\0A�C\r5\0\0\0\0\0$\0\0\0T\0\0N��\0\0\0A�C\rI����\0\0\0\0\0\0|\0\0\�N���\0\0\0\0A�C\r�\0\0\0\0\0�\0\0lO��-\0\0\0\0A�C\rh\0\0\0\0\0\0�\0\0zO��h\0\0\0\0A�C\rc\0\0\0\0\0\�\0\0\�O��q\0\0\0\0A�C\rl\0\0\0\0\0�\0\0P��q\0\0\0\0A�C\rl\0\0\0\0\0\0\0fP��q\0\0\0\0A�C\rl\0\0\0\0\0<\0\0�P��:\0\0\0\0A�C\ru\0\0\0\0\0\0\\\0\0Te��+\0\0\0\0A�C\rf\0\0\0$\0\0\0<\0\0�P���\0\0\0�@A\0A�C\rH�\�\0\0\0\0\0\0�\0\0zQ��r\0\0\0\0A�C\rm\0\0\0\0\0\�\0\0\�Q��\�\0\0\0\0A�C\r\�\0\0\0\0\0\�\0\0�R���\0\0\0\0A�C\r�\0\0$\0\0\0\0\0\nS��\0\0\0A�C\rG��s\0\0\0\0$\0\0\0,\0\0bT��u\0\0\0A�C\rG��i\0\0\0\0\0\0\0T\0\0�U��O\0\0\0\0A�C\rJ\0\0\0\0\0t\0\0\�U��K\0\0\0\0A�C\rF\0\0\0\0\0�\0\0V��K\0\0\0\0A�C\rF\0\0$\0\0\0�\0\08V��]\0\0\0A�C\rE�S\0\0\0\0\0\0$\0\0\0�\0\0nX���\0\0�@A\0A�C\rH�\�\0\0\0\0\0\0\08Z��0\0\0\0\0A�C\rk\0\0\0$\0\0\0\�\0\0HZ���\0\0\0�@A\0A�C\rE��\0\0\0$\0\0\0\0\0\�Z��\�\0\0\0\�@A\0A�C\rE�\�\0\0\0$\0\0\04\0\0�[��\0\0\�@A\0A�C\rH�\0\0$\0\0\0�\0\0z\\��Q\0\0\0A�C\rH�D\0\0\0\0\0\0$\0\0\0�\0\0�]���\0\0\0\0AA\0A�C\rE��\0\0\0\0\0\0\�\0\0^��\�\0\0\0\0A�C\r\�\0\0\0\0\0\0\0\�^��L\0\0\0\0A�C\rG\0\0\0\0\0,\0\0\�^��\0\0\0\0A�C\rM\0\0\0\0\0\0L\0\0\�^��\0\0\0\0A�C\rI\0\0\0\0\0\0l\0\0\�^��#\0\0\0\0A�C\r^\0\0\0\0\0\0�\0\0\�^��\0\0\0\0A�C\rL\0\0\0\0\0\0�\0\0\�^��9\0\0\0\0A�C\rt\0\0\0\0\0\0\�\0\0\�^��\0\0\0\0A�C\rN\0\0\0\0\0\0\�\0\0\�^��\0\0\0\0A�C\rN\0\0\0\0\0\0\0\0\�^��\0\0\0\0A�C\rN\0\0\0\0\0\0,\0\0�a��*\0\0\0\0A�C\re\0\0\0\0\0\0L\0\0�a��\0\0\0\0A�C\rV\0\0\0$\0\0\0,\0\0�a���\0\0\00AA\0A�C\rE��\0\0\0\0\0\0�\0\0b��\0\0\0\0A�C\rI\0\0\0\0\0\0�\0\0b��1\0\0\0\0A�C\rl\0\0\0\0\0\0\�\0\0b��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0�\0\0b��\0\0\0\0A�C\rV\0\0\0\0\0\0\0\0b��*\0\0\0\0A�C\re\0\0\0\0\0\04\0\0b��\0\0\0\0A�C\rI\0\0\0\0\0\0T\0\0b��\0\0\0\0A�C\rI\0\0\0\0\0\0t\0\0�a��\0\0\0\0A�C\rZ\0\0\0\0\0\0�\0\0�a��\0\0\0\0A�C\rV\0\0\0$\0\0\0t\0\0�a���\0\0\04AA\0A�C\rE��\0\0\0$\0\0\0�\0\0\�b��\0\0\0GAA\0A�C\rV\0\0\0\0\0\0\0\0\0\0\Z\0\0�b��\0\0\0\0A�C\rV\0\0\0\0\0\0$\Z\0\0�b��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0\Z\0\0\�b��\0\0\0KAA\0A�C\rV\0\0\0\0\0\0\0\0\0\0l\Z\0\0�b��\0\0\0\0A�C\rV\0\0\0\0\0\0�\Z\0\0�b��\'\0\0\0\0A�C\rb\0\0\0$\0\0\0l\Z\0\0�b��\0\0\0OAA\0A�C\rV\0\0\0\0\0\0\0\0\0\0\�\Z\0\0�b��\0\0\0\0A�C\rV\0\0\0\0\0\0�\Z\0\0�b��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\0\0�b��\'\0\0\0\0A�C\rb\0\0\0\0\0\04\0\0�b��\'\0\0\0\0A�C\rb\0\0\0\0\0\0T\0\0\�b��\'\0\0\0\0A�C\rb\0\0\0\0\0\0t\0\0\�b��\0\0\0\0A�C\rI\0\0\0\0\0\0�\0\0�b��I\0\0\0\0A�C\rE�$\0\0\0�\0\0\�b��4\0\0\0A�C\rE�*\0\0\0\0\0\0\0\0\0\�\0\0�c��\0\0\0\0A�C\rV\0\0\0\0\0\0�\0\0\�c��Y\0\0\0\0A�C\rT\0\0\0\0\0\0\0&d��\\\0\0\0\0A�C\rW\0\0\0\0\0<\0\0bd��5\0\0\0\0A�C\rp\0\0\0\0\0\0\\\0\0xd��5\0\0\0\0A�C\rp\0\0\0\0\0\0|\0\0�d��\0\0\0\0A�C\rI\0\0\0\0\0\0�\0\0|d��I\0\0\0\0A�C\rE�$\0\0\0�\0\0�d��4\0\0\0A�C\rE�*\0\0\0\0\0\0\0\0\0\�\0\0�e��\0\0\0\0A�C\rV\0\0\0\0\0\0\0\0�e��Y\0\0\0\0A�C\rT\0\0\0\0\0$\0\0\�e��\\\0\0\0\0A�C\rW\0\0\0\0\0D\0\0$f��\0\0\0\0A�C\rQ\0\0\0\0\0\0d\0\0\Zf��K\0\0\0\0A�C\rF\0\0\0\0\0�\0\0Ff��H\0\0\0\0A�C\rC\0\0\0\0\0�\0\0nf��\"\0\0\0\0A�C\r]\0\0\0\0\0\0\�\0\0pf��\0\0\0\0A�C\rZ\0\0\0\0\0\0\�\0\0pf��\0\0\0\0A�C\rP\0\0\0\0\0\0\0\0ff��\0\0\0\0A�C\rQ\0\0\0\0\0\0$\0\0\\f��K\0\0\0\0A�C\rF\0\0\0\0\0D\0\0�f��H\0\0\0\0A�C\rC\0\0\0\0\0d\0\0�f��\"\0\0\0\0A�C\r]\0\0\0\0\0\0�\0\0�f��\0\0\0\0A�C\rZ\0\0\0\0\0\0�\0\0�f��!\0\0\0\0A�C\r\\\0\0\0\0\0\0\�\0\0�f��\0\0\0\0A�C\rV\0\0\0\0\0\0\�\0\0�f��{\0\0\0\0A�C\rv\0\0\0\0\0\0\0g��\0\0\0\0A�C\rV\0\0\0$\0\0\0\�\0\0g��M\0\0\0cAA\0A�C\rE�C\0\0\0\0\0\0L\0\0.g��h\0\0\0\0A�C\rc\0\0\0\0\0l\0\0vg��-\0\0\0\0A�C\rh\0\0\0\0\0\0�\0\0�g��-\0\0\0\0A�C\rh\0\0\0\0\0\0�\0\0�g��\0\0\0\0A�C\rI\0\0\0\0\0\0\�\0\0�g��M\0\0\0\0A�C\rH\0\0\0\0\0\�\0\0�g��>\0\0\0\0A�C\ry\0\0\0\0\0\0 \0\0\�g��1\0\0\0\0A�C\rl\0\0\0\0\0\0, \0\0\�g��)\0\0\0\0A�C\rd\0\0\0$\0\0\0 \0\0\�g��]\0\0\0oAA\0A�C\rX\0\0\0\0\0\0\0\0\0t \0\0h��\0\0\0\0A�C\rI\0\0\0\0\0\0� \0\0h��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0� \0\0h��\0\0\0\0A�C\rI\0\0\0\0\0\0\� \0\0�g��)\0\0\0\0A�C\rd\0\0\0\0\0\0� \0\0�g��9\0\0\0\0A�C\rt\0\0\0\0\0\0!\0\0h��\0\0\0\0A�C\rI\0\0\0\0\0\04!\0\0h��\0\0\0\0A�C\rI\0\0\0\0\0\0T!\0\0�g��\0\0\0\0A�C\rI\0\0\0\0\0\0t!\0\0\�g��\0\0\0\0A�C\rY\0\0\0\0\0\0�!\0\0\�g��\0\0\0\0A�C\rI\0\0\0\0\0\0�!\0\0\�g��)\0\0\0\0A�C\rd\0\0\0\0\0\0\�!\0\0\�g��c\0\0\0\0A�C\r^\0\0\0\0\0�!\0\0h��&\0\0\0\0A�C\ra\0\0\0\0\0\0\"\0\0\"h��&\0\0\0\0A�C\ra\0\0\0$\0\0\04\"\0\0(h��X\0\0\0\0A�C\rE�N\0\0\0\0\0\0\0\0\0\0\\\"\0\0Xh��\0\0\0\0A�C\rI\0\0\0\0\0\0|\"\0\0Fh��[\0\0\0\0A�C\rV\0\0\0\0\0�\"\0\0�h��\0\0\0\0A�C\rI\0\0\0\0\0\0�\"\0\0ph��1\0\0\0\0A�C\rl\0\0\0\0\0\0\�\"\0\0�h��\'\0\0\0\0A�C\rb\0\0\0\0\0\0�\"\0\0�h��\0\0\0\0A�C\rV\0\0\0\0\0\0#\0\0�h��j\0\0\0\0A�C\re\0\0\0\0\0<#\0\0\�h��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\\#\0\0\�h��\0\0\0\0A�C\rV\0\0\0\0\0\0|#\0\0\�h��j\0\0\0\0A�C\re\0\0\0\0\0�#\0\0i��\'\0\0\0\0A�C\rb\0\0\0\0\0\0�#\0\0&i��\0\0\0\0A�C\rV\0\0\0\0\0\0\�#\0\0\"i��j\0\0\0\0A�C\re\0\0\0\0\0�#\0\0li��7\0\0\0\0A�C\rr\0\0\0\0\0\0$\0\0�i��7\0\0\0\0A�C\rr\0\0\0\0\0\0<$\0\0�i��7\0\0\0\0A�C\rr\0\0\0\0\0\0\\$\0\0�i��]\0\0\0\0A�C\rX\0\0\0\0\0|$\0\0�i��\0\0\0\0A�C\rI\0\0\0\0\0\0�$\0\0\�i��\0\0\0\0A�C\rI\0\0\0\0\0\0�$\0\0\�i��i\0\0\0\0A�C\rd\0\0\0\0\0\�$\0\0j�� \0\0\0\0A�C\r[\0\0\0\0\0\0�$\0\0j��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0%\0\0j��\0\0\0\0A�C\rI\0\0\0\0\0\0<%\0\0\0j��]\0\0\0\0A�C\rX\0\0\0\0\0\\%\0\0>j��H\0\0\0\0A�C\rC\0\0\0\0\0|%\0\0fj��\0\0\0\0A�C\rI\0\0\0\0\0\0�%\0\0Tj��]\0\0\0\0A�C\rX\0\0\0\0\0�%\0\0�j��\0\0\0\0A�C\rI\0\0\0\0\0\0\�%\0\0�j��]\0\0\0\0A�C\rX\0\0\0\0\0�%\0\0�j��K\0\0\0\0A�C\rF\0\0\0\0\0&\0\0\�j��\"\0\0\0\0A�C\r]\0\0\0\0\0\0<&\0\0\�j��\0\0\0\0A�C\rZ\0\0\0\0\0\0\\&\0\0\�j��\0\0\0\0A�C\rP\0\0\0\0\0\0|&\0\0\�j��\0\0\0\0A�C\rI\0\0\0\0\0\0�&\0\0\�j��\0\0\0\0A�C\rI\0\0\0\0\0\0�&\0\0�j��i\0\0\0\0A�C\rd\0\0\0\0\0\�&\0\0k�� \0\0\0\0A�C\r[\0\0\0\0\0\0�&\0\0k��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0\'\0\0k��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0<\'\0\0�j��\0\0\0\0A�C\rI\0\0\0\0\0\0\\\'\0\0\�j��-\0\0\0\0A�C\rh\0\0\0\0\0\0|\'\0\0�j��R\0\0\0\0A�C\rM\0\0\0\0\0�\'\0\0*k��\0\0\0\0A�C\rV\0\0\0$\0\0\0|\'\0\0&k��\�\0\0tAA\0A�C\rE�\�\0\0\0\0\0\�\'\0\0\�l��F\0\0\0\0A�C\rA\0\0$\0\0\0\�\'\0\0�l��p\0\0\0�AA\0A�C\rk\0\0\0\0\0\0\0\0\0,(\0\08m��\0\0\0\0A�C\rI\0\0\0$\0\0\0L(\0\0&m��b\0\0\0\0A�C\rE�X\0\0\0\0\0\0\0\0\0\0t(\0\0`m��\"\0\0\0\0A�C\r]\0\0\0\0\0\0�(\0\0bm��&\0\0\0\0A�C\ra\0\0\0$\0\0\0�(\0\0hm��~\0\0\0\0A�C\rE�t\0\0\0\0\0\0\0\0\0\0\�(\0\0�m��\0\0\0\0A�C\rI\0\0\0\0\0\0�(\0\0�m��\0\0\0\0A�C\rI\0\0\0\0\0\0)\0\0�m��)\0\0\0\0A�C\rd\0\0\0\0\0\0<)\0\0�m��1\0\0\0\0A�C\rl\0\0\0\0\0\0\\)\0\0�m��\0\0\0\0A�C\rX\0\0\0\0\0\0|)\0\0�m��W\0\0\0\0A�C\rR\0\0$\0\0\0�)\0\0\�m��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0$\0\0\0\�)\0\0n��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0$\0\0\0�)\0\07n���\0\0\0�AA\0A�C\rE��\0\0\0\0\0\0*\0\0�n��\0\0\0\0A�C\rQ\0\0\0\0\0\04*\0\0�n��W\0\0\0\0A�C\rR\0\0\0\0\0T*\0\0\�n��\'\0\0\0\0A�C\rb\0\0\0\0\0\0t*\0\0\�n��\0\0\0\0A�C\rF\0\0\0\0\0\0�*\0\0\�n��\0\0\0\0A�C\rI\0\0\0\0\0\0�*\0\0�n��\0\0\0\0A�C\rJ\0\0\0\0\0\0\�*\0\0�n��+\0\0\0\0A�C\rf\0\0\0\0\0\0�*\0\0�n��\'\0\0\0\0A�C\rb\0\0\0\0\0\0+\0\0�n��\0\0\0\0A�C\rF\0\0\0\0\0\04+\0\0�n��\0\0\0\0A�C\rI\0\0\0\0\0\0T+\0\0�n��\0\0\0\0A�C\rZ\0\0\0\0\0\0t+\0\0�n��\0\0\0\0A�C\rZ\0\0\0\0\0\0�+\0\0�n��+\0\0\0\0A�C\rf\0\0\0\0\0\0�+\0\0�n��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\�+\0\0�n��\0\0\0\0A�C\rF\0\0\0\0\0\0�+\0\0�n��\0\0\0\0A�C\rI\0\0\0\0\0\0,\0\0�n��\0\0\0\0A�C\rJ\0\0\0\0\0\04,\0\0tn��+\0\0\0\0A�C\rf\0\0\0\0\0\0T,\0\0�n��\0\0\0\0A�C\rV\0\0\0\0\0\0t,\0\0|n��\0\0\0\0A�C\rV\0\0\0\0\0\0�,\0\0xn��\0\0\0\0A�C\rV\0\0\0$\0\0\0t,\0\0tn���\0\0\0�AA\0A�C\rE��\0\0\0\0\0\0\�,\0\0\�n��&\0\0\0\0A�C\ra\0\0\0\0\0\0�,\0\0\�n��&\0\0\0\0A�C\ra\0\0\0$\0\0\0\�,\0\0\�n���\0\0\0\�AA\0A�C\rE��\0\0\0\0\0\0D-\0\0To��&\0\0\0\0A�C\ra\0\0\0$\0\0\0$-\0\0Zo���\0\0\0\�AA\0A�C\rE��\0\0\0\0\0\0�-\0\0\�o��&\0\0\0\0A�C\ra\0\0\0$\0\0\0l-\0\0\�o���\0\0\0\0BA\0A�C\rE��\0\0\0\0\0\0\�-\0\04p��&\0\0\0\0A�C\ra\0\0\0\0\0\0�-\0\0:p��/\0\0\0\0A�C\rj\0\0\0\0\0\0.\0\0Jp��&\0\0\0\0A�C\ra\0\0\0\0\0\04.\0\0Pp��\0\0\0\0A�C\rV\0\0\0\0\0\0T.\0\0Lp��:\0\0\0\0A�C\ru\0\0\0\0\0\0t.\0\0fp��\0\0\0\0A�C\rF\0\0\0\0\0\0�.\0\0Qp��+\0\0\0\0A�C\rf\0\0\0$\0\0\0t.\0\0\\p���\0\0\0BA\0A�C\rE��\0\0\0$\0\0\0�.\0\0\�p���\0\0\0(BA\0A�C\rE�y\0\0\0$\0\0\0/\0\0 q��Q\0\0\0\0A�C\rE�G\0\0\0\0\0\0\0$\0\0\0\�.\0\0Jq��3\0\0\0@BA\0A�C\rn\0\0\0\0\0\0\0\0\0\0T/\0\0Vq��4\0\0\0\0A�C\ro\0\0\0\0\0\0t/\0\0jq��\0\0\0\0A�C\rV\0\0\0\0\0\0�/\0\0eq��.\0\0\0\0A�C\ri\0\0\0\0\0\0�/\0\0sq��\0\0\0\0A�C\rI\0\0\0$\0\0\0�/\0\0bq���\0\0\0DBA\0A�C\rE��\0\0\0\0\0\0�/\0\0\�q��\0\0\0\0A�C\rJ\0\0\0\0\0\00\0\0�q��\0\0\0\0A�C\rV\0\0\0\0\0\0<0\0\0�q��\0\0\0\0A�C\rV\0\0\0$\0\0\0\\0\0\0�q��m\0\0\0\0A�C\rE�c\0\0\0\0\0\0\0\0\0\0�0\0\0�q��3\0\0\0\0A�C\rn\0\0\0\0\0\0�0\0\0r��\0\0\0\0A�C\rV\0\0\0\0\0\0\�0\0\0r��#\0\0\0\0A�C\r^\0\0\0\0\0\0\�0\0\0r��\0\0\0\0A�C\rV\0\0\0\0\0\01\0\0r��#\0\0\0\0A�C\r^\0\0\0\0\0\0$1\0\0r��\0\0\0\0A�C\rV\0\0\0\0\0\0D1\0\0r��#\0\0\0\0A�C\r^\0\0\0\0\0\0d1\0\0r��$\0\0\0\0A�C\r_\0\0\0$\0\0\0�1\0\0\nr��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0\0\0\0�1\0\00r��$\0\0\0\0A�C\r_\0\0\0,\0\0\0�1\0\04r��s\0\0\0xBA\0A�C\rI���e\0\0\0\0\0\0\0\0\0\0�1\0\0xr��$\0\0\0\0A�C\r_\0\0\0$\0\0\02\0\0|r��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0$\0\0\0D2\0\0�r��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0\0\0\0l2\0\0\�r��\0\0\0\0A�C\rF\0\0\0\0\0\0�2\0\0�r��*\0\0\0\0A�C\re\0\0\0\0\0\0�2\0\0�r��*\0\0\0\0A�C\re\0\0\0\0\0\0\�2\0\0\�r��\0\0\0\0A�C\rK\0\0\0\0\0\0\�2\0\0�r��.\0\0\0\0A�C\ri\0\0\0\0\0\03\0\0\�r��\0\0\0\0A�C\rI\0\0\0\0\0\0,3\0\0�r��\0\0\0\0A�C\rZ\0\0\0\0\0\0L3\0\0�r��\0\0\0\0A�C\rF\0\0\0\0\0\0l3\0\0�r��#\0\0\0\0A�C\r^\0\0\0\0\0\0�3\0\0�r��h\0\0\0\0A�C\rc\0\0\0\0\0�3\0\0\�r��w\0\0\0\0A�C\rr\0\0\0\0\0\�3\0\0Ds��\0\0\0\0A�C\rF\0\0\0\0\0\0\�3\0\00s��\0\0\0\0A�C\rF\0\0\0\0\0\04\0\0s��G\0\0\0\0A�C\rE�}\0\0\0,4\0\0Ds��\0\0\0\0A�C\rF\0\0\0\0\0\0L4\0\00s��\0\0\0\0A�C\rF\0\0\0\0\0\0l4\0\0s��\0\0\0\0A�C\rF\0\0\0\0\0\0�4\0\0s��K\0\0\0\0A�C\rF\0\0\0\0\0�4\0\04s��A\0\0\0\0A�C\r|\0\0\0\0\0\0\�4\0\0Vs��R\0\0\0\0A�C\rM\0\0$\0\0\0�4\0\0�s��r\0\0\0�BA\0A�C\rE�h\0\0\0\0\0\05\0\0\�s��L\0\0\0\0A�C\rG\0\0\0\0\045\0\0�s��K\0\0\0\0A�C\rF\0\0\0\0\0T5\0\0*t��A\0\0\0\0A�C\r|\0\0\0\0\0\0t5\0\0Lt��A\0\0\0\0A�C\r|\0\0\0\0\0\0�5\0\0nt��B\0\0\0\0A�C\r}\0\0\0\0\0\0�5\0\0�t��*\0\0\0\0A�C\re\0\0\0\0\0\0\�5\0\0�t��#\0\0\0\0A�C\r^\0\0\0\0\0\0�5\0\0�t��\0\0\0\0A�C\rF\0\0\0\0\0\06\0\0�t��&\0\0\0\0A�C\ra\0\0\0\0\0\046\0\0�t��\0\0\0\0A�C\rI\0\0\0\0\0\0T6\0\0~t���\0\0\0\0A�C\r�\0\0\0\0\0t6\0\0u��\0\0\0\0A�C\rI\0\0\0\0\0\0�6\0\0u��u\0\0\0\0A�C\rp\0\0\0\0\0�6\0\0Wu��\0\0\0\0A�C\rI\0\0\0\0\0\0\�6\0\0Eu��u\0\0\0\0A�C\rp\0\0$\0\0\0�6\0\0�u���\0\0\0\0A�C\rE��\0\0\0\0\0\0\0\0\0\07\0\0v��\0\0\0\0A�C\rO\0\0\0\0\0\0<7\0\0v��\0\0\0\0A�C\rO\0\0\0\0\0\0\\7\0\0\0v��\0\0\0\0A�C\rO\0\0\0\0\0\0|7\0\0�u��\0\0\0\0A�C\rO\0\0\0\0\0\0�7\0\0\�u��B\0\0\0\0A�C\r}\0\0\0\0\0\0�7\0\0\nv��\0\0\0\0A�C\rJ\0\0\0\0\0\0\�7\0\0�u��\0\0\0\0A�C\rI\0\0\0,\0\0\0�7\0\0\�u��u\0\0�BA\0A�C\rK����e\0\0\0\0\0\0\0,8\0\0.w��I\0\0\0\0A�C\rD\0\0\0\0\0L8\0\0Ww��Y\0\0\0\0A�C\rT\0\0\0\0\0l8\0\0�w��\0\0\0\0A�C\rO\0\0\0\0\0\0�8\0\0�w��\0\0\0\0A�C\rZ\0\0\0\0\0\0�8\0\0�w��\0\0\0\0A�C\rV\0\0\0\0\0\0\�8\0\0w��=\0\0\0\0A�C\rx\0\0\0$\0\0\0�8\0\0�w��;\0\0\0�BA\0A�C\rv\0\0\0\0\0\0\0\0\0\09\0\0�w��%\0\0\0\0A�C\r`\0\0\0\0\0\049\0\0�w��&\0\0\0\0A�C\ra\0\0\0\0\0\0T9\0\0�w��\0\0\0\0A�C\rV\0\0\0\0\0\0t9\0\0�w��\0\0\0\0A�C\rV\0\0\0$\0\0\0T9\0\0�w��\�\0\0\0�BA\0A�C\rE�\�\0\0\0\0\0\0�9\0\0vx��\0\0\0\0A�C\rY\0\0\0\0\0\0\�9\0\0tx��\0\0\0\0A�C\rF\0\0\0\0\0\0�9\0\0`x��\0\0\0\0A�C\rF\0\0\0\0\0\0:\0\0Kx��*\0\0\0\0A�C\re\0\0\0\0\0\0<:\0\0Vx��*\0\0\0\0A�C\re\0\0\0\0\0\0\\:\0\0`x��.\0\0\0\0A�C\ri\0\0\0\0\0\0|:\0\0nx��\0\0\0\0A�C\rM\0\0\0\0\0\0�:\0\0`x��\0\0\0\0A�C\rJ\0\0\0\0\0\0�:\0\0Px��\0\0\0\0A�C\rF\0\0\0\0\0\0\�:\0\0<x��=\0\0\0\0A�C\rx\0\0\0\0\0\0�:\0\0Zx��\0\0\0\0A�C\rF\0\0\0\0\0\0;\0\0Fx��\0\0\0\0A�C\rV\0\0\0\0\0\0<;\0\0Bx��2\0\0\0\0A�C\rm\0\0\0\0\0\0\\;\0\0Tx��\0\0\0\0A�C\rY\0\0\0\0\0\0|;\0\0Rx��9\0\0\0\0A�C\rt\0\0\0\0\0\0�;\0\0lx��P\0\0\0\0A�C\rK\0\0\0\0\0�;\0\0�x��#\0\0\0\0A�C\r^\0\0\0\0\0\0\�;\0\0�x��&\0\0\0\0A�C\ra\0\0\0\0\0\0�;\0\0�x��\Z\0\0\0\0A�C\rU\0\0\0$\0\0\0<\0\0�x��M\0\0\0\0A�C\rE�C\0\0\0\0\0\0\0\0\0\0D<\0\0\�x��\0\0\0\0A�C\rO\0\0\0\0\0\0d<\0\0�x��\0\0\0\0A�C\rI\0\0\0\0\0\0�<\0\0�x��*\0\0\0\0A�C\re\0\0\0\0\0\0�<\0\0�x��\0\0\0\0A�C\rV\0\0\0\0\0\0\�<\0\0�x��+\0\0\0\0A�C\rf\0\0\0\0\0\0\�<\0\0�x��M\0\0\0\0A�C\rH\0\0\0\0\0=\0\0\�x��;\0\0\0\0A�C\rv\0\0\0\0\0\0$=\0\0y��&\0\0\0\0A�C\ra\0\0\0\0\0\0D=\0\0�9��>\0\0\0\0A�C\ry\0\0\0\0\0\0d=\0\0\�x��K\0\0\0\0A�C\rF\0\0\0\0\0�=\0\0y��&\0\0\0\0A�C\ra\0\0\0$\0\0\0d=\0\0y��?\0\0\0�BA\0A�C\rE�u\0\0\0\0\0\0\0\�=\0\04y���\0\0\0\0A�C\r�\0\0\0\0\0\�=\0\0�y��:\0\0\0\0A�C\ru\0\0\0\0\0\0>\0\0�y��\0\0\0\0A�C\rZ\0\0\0\0\0\0,>\0\0�y��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0L>\0\0�y��&\0\0\0\0A�C\ra\0\0\0\0\0\0l>\0\0�y��F\0\0\0\0A�C\rA\0\0\0\0\0�>\0\0\�y��\0\0\0\0A�C\rI\0\0\0\0\0\0�>\0\0\�y��&\0\0\0\0A�C\ra\0\0\0\0\0\0\�>\0\0\�y��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0\�>\0\0\�y��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0?\0\0\�y��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0,?\0\0\�y��\Z\0\0\0\0A�C\rU\0\0\0\0\0\0L?\0\0�y��G\0\0\0\0A�C\rE�}\0\0\0l?\0\0�7��\0\0\0\0A�C\rP\0\0\0$\0\0\0L?\0\0\�y��r\0\0\0\�BA\0A�C\rE�h\0\0\0\0\0\0�?\0\0z��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\�?\0\0z��>\0\0\0\0A�C\ry\0\0\0\0\0\0�?\0\07z��\0\0\0\0A�C\rP\0\0\0$\0\0\0\�?\0\0,z��r\0\0\0\�BA\0A�C\rE�h\0\0\0\0\0\0<@\0\0vz��\'\0\0\0\0A�C\rb\0\0\0\0\0\0\\@\0\0~z���\0\0\0\0A�C\r�\0\0\0\0\0|@\0\0\�z��>\0\0\0\0A�C\ry\0\0\0\0\0\0�@\0\0{��\0\0\0\0A�C\rP\0\0\0$\0\0\0|@\0\0�z��r\0\0\0\�BA\0A�C\rE�h\0\0\0\0\0\0\�@\0\0B{��,\0\0\0\0A�C\rg\0\0\0\0\0\0A\0\0N{��>\0\0\0\0A�C\ry\0\0\0\0\0\0$A\0\0l{��\0\0\0\0A�C\rP\0\0\0$\0\0\0A\0\0b{���\0\0�BA\0A�C\rE�w\0\0$\0\0\0,A\0\0�|��[\0\0\0CA\0A�C\rV\0\0\0\0\0\0\0\0\0�A\0\0�|��)\0\0\0\0A�C\rd\0\0\0\0\0\0�A\0\0�|��,\0\0\0\0A�C\rg\0\0\0\0\0\0\�A\0\0}��,\0\0\0\0A�C\rg\0\0\0\0\0\0�A\0\0}��3\0\0\0\0A�C\rn\0\0\0\0\0\0B\0\0&}��3\0\0\0\0A�C\rn\0\0\0\0\0\04B\0\0:}��#\0\0\0\0A�C\r^\0\0\0\0\0\0TB\0\0>}��.\0\0\0\0A�C\ri\0\0\0\0\0\0tB\0\0L}��#\0\0\0\0A�C\r^\0\0\0\0\0\0�B\0\0P}��3\0\0\0\0A�C\rn\0\0\0\0\0\0�B\0\0d}��o\0\0\0A�C\rj\0\0\0\0\�B\0\0����l\0\0\0\0A�C\rg\0\0\0\0\0�B\0\0\0���=\0\0\0A�C\r8\0\0\0\0C\0\0���W\0\0\0\0A�C\rR\0\0$\0\0\04C\0\0V���y\0\0\0\0A�C\rE�o\0\0\0\0\0\0\0\0\0\0\\C\0\0����>\0\0\0\0A�C\ry\0\0\0\0\0\0|C\0\0Ņ��\0\0\0\0A�C\rP\0\0\0$\0\0\0\\C\0\0����r\0\0\0\nCA\0A�C\rE�h\0\0\0\0\0\0\�C\0\0���>\0\0\0\0A�C\ry\0\0\0\0\0\0\�C\0\0\"���\0\0\0\0A�C\rP\0\0\0$\0\0\0\�C\0\0���r\0\0\0\ZCA\0A�C\rE�h\0\0\0\0\0\0,D\0\0b���>\0\0\0\0A�C\ry\0\0\0\0\0\0LD\0\0����\0\0\0\0A�C\rP\0\0\0$\0\0\0,D\0\0v���r\0\0\0*CA\0A�C\rE�h\0\0\0\0\0\0�D\0\0����>\0\0\0\0A�C\ry\0\0\0\0\0\0�D\0\0ކ��\0\0\0\0A�C\rP\0\0\0$\0\0\0�D\0\0Ԇ���\0\0\0:CA\0A�C\rE�}\0\0\0\0\0\0�D\0\03���>\0\0\0\0A�C\ry\0\0\0\0\0\0E\0\0Q���\0\0\0\0A�C\rP\0\0\0$\0\0\0�D\0\0F����\0\0\0JCA\0A�C\rE��\0\0\0\0\0\0dE\0\0����>\0\0\0\0A�C\ry\0\0\0\0\0\0�E\0\0҇��\0\0\0\0A�C\rP\0\0\0$\0\0\0dE\0\0ȇ��r\0\0\0_CA\0A�C\rE�h\0\0\0\0\0\0\�E\0\0���>\0\0\0\0A�C\ry\0\0\0\0\0\0\�E\0\00���\0\0\0\0A�C\rP\0\0\0$\0\0\0\�E\0\0&���.\0\0oCA\0A�C\rE�$\0\0\0\0\04F\0\0,���\0\0\0\0A�C\rY\0\0\0\0\0\0TF\0\0*���\0\0\0\0A�C\rN\0\0\0\0\0\0tF\0\0���7\0\0\0\0A�C\rr\0\0\0\0\0\0�F\0\06���\0\0\0\0A�C\rY\0\0\0\0\0\0�F\0\04���\0\0\0\0A�C\rY\0\0\0\0\0\0\�F\0\02���\0\0\0\0A�C\rY\0\0\0\0\0\0�F\0\00���\0\0\0\0A�C\rY\0\0\0\0\0\0G\0\0.���\0\0\0\0A�C\rY\0\0\0\0\0\04G\0\0,���\0\0\0\0A�C\rY\0\0\0\0\0\0TG\0\0*���6\0\0\0\0A�C\rq\0\0\0\0\0\0tG\0\0@���>\0\0\0\0A�C\ry\0\0\0\0\0\0�G\0\0^���\0\0\0\0A�C\rP\0\0\0$\0\0\0tG\0\0T���r\0\0\0�CA\0A�C\rE�h\0\0\0\0\0\0\�G\0\0����>\0\0\0\0A�C\ry\0\0\0\0\0\0�G\0\0����\0\0\0\0A�C\rP\0\0\0$\0\0\0\�G\0\0����r\0\0\0�CA\0A�C\rE�h\0\0\0\0\0\0DH\0\0����>\0\0\0\0A�C\ry\0\0\0\0\0\0dH\0\0\Z���\0\0\0\0A�C\rP\0\0\0$\0\0\0DH\0\0���r\0\0\0�CA\0A�C\rE�h\0\0\0\0\0\0�H\0\0Z���>\0\0\0\0A�C\ry\0\0\0\0\0\0\�H\0\0x���\0\0\0\0A�C\rP\0\0\0D\0\0\0\�H\0\0p���e\0\0\0\0B�B�E �B(�H0�H8�M@r8A0A(B BBB\0\0\0\04I\0\0����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\05/f\0{\0\0��\0\0��\0\�\0\0��\0\0�\�\0\�\0\0��2\0\0P�\0n�\0��\0��\0\�\0\0��\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\02�\0G1z\0�\0\0��\0\05\ZQ\0f\0\0��\0\051h\0}\0\0��\0\05/f\0{\0\0��\0\05\ZQ\0f\0\0\0��#\0\0D�\0r�\0��\0\�\0\0��&\0\0G\�\0u�\0�\�\0\�\0\0\0\0�Kx�\"�\0�\0\0�\0\0\0\0\0\0\0\0���\0\0\��\0�\0\0�� \0\0MT\0i\0\0�%\ZSc\0\0��\�\0\0�\n�\0�\0\0\0\0\0\0\0\0\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0�%@Y\0\0\0\0\0\0\0\0��\r#\0\0:\0�\0\0��	?i\0�\0\0��S\0\0y�\0�\0\0��/\�<�\0��\0\�\�\0\�\�\0��\0\��\0��\0\�\0\0��\0��A\0\0[�\0�\�\0\�\0\0��\"q\�\0��\0\��\0\��\0��\0�d\0\0��O\0\0q�\0�\0\0��V�\0l�\0\�\0\0��P�\0v\�\0�\�\0\�0\0\0\0�\"8J\"x\0q\0\0�\0\0\0\0\0\0\0���\0\0\��\0�\0\0��\0��[\0\0�\�\0\�\0\0��\0��\0��\0�� \0\0MT\0i\0\0��%,\0A\0\0��\0\0�!�\0\0\�\���\0�\0\0\0\0\0\0\0\0\0\0��\0��	Lr\0�\0\0\0\0\0�\0\0LWrw\0�\0\0\0\0\0\0\0�\0\0LWrw\0�\0\0\0\0\0\0\0�\0\0LWrw\0�\0\0\0\0\0\0\0�\0\0LWrw\0�\0\0\0\0\0\0\0��Ai\0~\0\0�.Dch\0v\0\0\0\0\0\0\0\0��\0��Ci\0~\0\0�%\ZSc\0\0��\�\0\0�\n�\0�\0\0\0\0\0\0\0\0\0\0��GN\0b\0\0��\0\0:Q\0f\0\0��Z\�\0f�\0\��\0\�\0\0��\0����\0\�\0\0��\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05|\�\0�\0\0��\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05/f\0{\0\0��\r\0\0G\Zc\0�\0\0��\0��\0\05\ZQ\0f\0\0��#\0\0D\Z�\0z�\0�\�\0�\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0��\0\05\ZQ\0f\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p)@\0\0\0\0\0[*@\0\0\0\0\0~0@\0\0\0\0\0�4@\0\0\0\0\0b5@\0\0\0\0\0P6@\0\0\0\0\0\�7@\0\0\0\0\0�8@\0\0\0\0\0\�9@\0\0\0\0\0�:@\0\0\0\0\0N;@\0\0\0\0\0T<@\0\0\0\0\0�=@\0\0\0\0\0\�>@\0\0\0\0\0�?@\0\0\0\0\0l@@\0\0\0\0\0D@\0\0\0\0\0 K@\0\0\0\0\0ML@\0\0\0\0\0�k@\0\0\0\0\0��@\0\0\0\0\0r�@\0\0\0\0\0d�@\0\0\0\0\0�@\0\0\0\0\0ھ@\0\0\0\0\0��@\0\0\0\0\0f�@\0\0\0\0\0A�@\0\0\0\0\0*\�@\0\0\0\0\0�\�@\0\0\0\0\0\�\�@\0\0\0\0\0�\�@\0\0\0\0\0R\�@\0\0\0\0\0\�@\0\0\0\0\0P)@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\�\"@\0\0\0\0\0\r\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�La\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���o\0\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\Z@\0\0\0\0\0\0\0\0\0\0\0\0\Z@\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0���o\0\0\0\00@\0\0\0\0\0���o\0\0\0\0\0\0\0\0\0\0\0���o\0\0\0\0d@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#@\0\0\0\0\0#@\0\0\0\0\0&#@\0\0\0\0\06#@\0\0\0\0\0F#@\0\0\0\0\0V#@\0\0\0\0\0f#@\0\0\0\0\0v#@\0\0\0\0\0�#@\0\0\0\0\0�#@\0\0\0\0\0�#@\0\0\0\0\0�#@\0\0\0\0\0\�#@\0\0\0\0\0\�#@\0\0\0\0\0\�#@\0\0\0\0\0�#@\0\0\0\0\0$@\0\0\0\0\0$@\0\0\0\0\0&$@\0\0\0\0\06$@\0\0\0\0\0F$@\0\0\0\0\0V$@\0\0\0\0\0f$@\0\0\0\0\0v$@\0\0\0\0\0�$@\0\0\0\0\0�$@\0\0\0\0\0�$@\0\0\0\0\0�$@\0\0\0\0\0\�$@\0\0\0\0\0\�$@\0\0\0\0\0\�$@\0\0\0\0\0�$@\0\0\0\0\0%@\0\0\0\0\0%@\0\0\0\0\0&%@\0\0\0\0\06%@\0\0\0\0\0F%@\0\0\0\0\0V%@\0\0\0\0\0f%@\0\0\0\0\0v%@\0\0\0\0\0�%@\0\0\0\0\0�%@\0\0\0\0\0�%@\0\0\0\0\0�%@\0\0\0\0\0\�%@\0\0\0\0\0\�%@\0\0\0\0\0\�%@\0\0\0\0\0�%@\0\0\0\0\0&@\0\0\0\0\0&@\0\0\0\0\0&&@\0\0\0\0\06&@\0\0\0\0\0F&@\0\0\0\0\0V&@\0\0\0\0\0f&@\0\0\0\0\0v&@\0\0\0\0\0�&@\0\0\0\0\0�&@\0\0\0\0\0�&@\0\0\0\0\0�&@\0\0\0\0\0\�&@\0\0\0\0\0\�&@\0\0\0\0\0\�&@\0\0\0\0\0�&@\0\0\0\0\0\'@\0\0\0\0\0\'@\0\0\0\0\0&\'@\0\0\0\0\06\'@\0\0\0\0\0F\'@\0\0\0\0\0V\'@\0\0\0\0\0f\'@\0\0\0\0\0v\'@\0\0\0\0\0�\'@\0\0\0\0\0�\'@\0\0\0\0\0�\'@\0\0\0\0\0�\'@\0\0\0\0\0\�\'@\0\0\0\0\0\�\'@\0\0\0\0\0\�\'@\0\0\0\0\0�\'@\0\0\0\0\0(@\0\0\0\0\0(@\0\0\0\0\0&(@\0\0\0\0\06(@\0\0\0\0\0F(@\0\0\0\0\0V(@\0\0\0\0\0f(@\0\0\0\0\0v(@\0\0\0\0\0�(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0t@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\Z@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0p\Z@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0�(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�La\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Oa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�(@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0)@\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0P)@\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0z\0\0\0\0\0p)@\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�La\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0*@\0\0\0\0\0>\0\0\0\0\0\0\0U\0\0\0\0[*@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0@0@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0~0@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0_4@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0�4@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\01\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\02\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0$5@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0b5@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\06@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0P6@\0\0\0\0\0\0\0\0\0\0\0\0=\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0H\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0I\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0J\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0L\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�7@\0\0\0\0\0>\0\0\0\0\0\0\0I\0\0\0\0\�7@\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0h8@\0\0\0\0\0>\0\0\0\0\0\0\0m\0\0\0\0�8@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�9@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0\�9@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0J:@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0�:@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\01\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\02\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0;@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0N;@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0<@\0\0\0\0\0>\0\0\0\0\0\0\0!\0\0\0\0T<@\0\0\0\0\0\0\0\0\0\0\0\0E\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�=@\0\0\0\0\0>\0\0\0\0\0\0\0O\0\0\0\0�=@\0\0\0\0\0\0\0\0\0\0\0\0u\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�>@\0\0\0\0\0>\0\0\0\0\0\0\0~\0\0\0\0\�>@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0@\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0A\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0B\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0D\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0i?@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0�?@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0.@@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0l@@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0AD@\0\0\0\0\0>\0\0\0\0\0\0\0	\0\0\0\0D@\0\0\0\0\0\0\0\0\0\0\0\07\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\r\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\�J@\0\0\0\0\0>\0\0\0\0\0\0\0?\0\0\0\0 K@\0\0\0\0\0\0\0\0\0\0\0\0a\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0L@\0\0\0\0\0>\0\0\0\0\0\0\0i\0\0\0\0ML@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0bL@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0xL@\0\0\0\0\0%\0\0\0\0\0\0\0�\0\0\0\0�L@\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0�L@\0\0\0\0\0*\0\0\0\0\0\0\0M\0\0\0\0\�L@\0\0\0\0\0C\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0 \�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�k@\0\0\0\0\0>\0\0\0\0\0\0\0}\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\01\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\02\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0��@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\04�@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0r�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\01\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\02\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0&�@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0\0d�@\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0׽@\0\0\0\0\0>\0\0\0\0\0\0\0-\0\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0U\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0��@\0\0\0\0\0>\0\0\0\0\0\0\0]\0\0\0\0ھ@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0	\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\n\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0b�@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0(�@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0f�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\Z\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0A�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0@\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0A\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0B\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0D\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\��@\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0*\�@\0\0\0\0\0\0\0\0\0\0\0\03\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�\�@\0\0\0\0\0>\0\0\0\0\0\0\0<\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0`\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0a\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0b\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0d\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0�\�@\0\0\0\0\0>\0\0\0\0\0\0\0j\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0N\�@\0\0\0\0\0>\0\0\0\0\0\0\0�\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0	\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\n\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\�@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0R\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0%\0\0\0\0\�\�@\0\0\0\0\0>\0\0\0\0\0\0\0\�\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0;\0\0\0\0�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\�Ma\0\0\0\0\0\0\0\0\0\0\0\0\0U\0\0\0\0\0\�La\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0Pa\0\0\0\0\0\0\0\0\0\0\0\0\0~\0\0\"\0\0tr@\0\0\0\0\0\'\0\0\0\0\0\0\0�\0\0\"\0\0ls@\0\0\0\0\04\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0\�w@\0\0\0\0\0\\\0\0\0\0\0\0\00	\0\0\"\0\0�@\0\0\0\0\0\Z\0\0\0\0\0\0\0}	\0\0\"\0\06v@\0\0\0\0\04\0\0\0\0\0\0�	\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0\�	\0\0\"\0\00n@\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0b\n\0\0\"\0\0��@\0\0\0\0\0+\0\0\0\0\0\0\0�\n\0\0\"\0\0\�1@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\�q@\0\0\0\0\0\0\0\0\0\0\0\0>\0\0\"\0\0\�0@\0\0\0\0\0\'\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\�X@\0\0\0\0\0q\0\0\0\0\0\0\0\0\0\0\0�@@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\0\0k@\0\0\0\0\0#\0\0\0\0\0\0\0\�\0\0\0\0�3@\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0VY@\0\0\0\0\0q\0\0\0\0\0\0\0]\0\0\"\0\0�t@\0\0\0\0\0Y\0\0\0\0\0\0\0�\0\0!\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\"\0\0r@\0\0\0\0\0\'\0\0\0\0\0\0\0O\r\0\0\"\0\0��@\0\0\0\0\0&\0\0\0\0\0\0\0�\r\0\0\"\0\0|�@\0\0\0\0\0\'\0\0\0\0\0\0\0\�\r\0\0\"\0\0\�u@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R\�@\0\0\0\0\06\0\0\0\0\0\0\0:\0\0\"\0\0IJ@\0\0\0\0\0\n\0\0\0\0\0\0\0�\0\0\0\06,@\0\0\0\0\0v\0\0\0\0\0\0\�\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0�?@\0\0\0\0\0r\0\0\0\0\0\0\0�\0\0\"\0\0�@\0\0\0\0\0/\0\0\0\0\0\0\07\0\0\"\0\0Ԙ@\0\0\0\0\0s\0\0\0\0\0\0\0�\0\0\"\0\0�8@\0\0\0\0\0\'\0\0\0\0\0\0\0�\0\0\0\0z�@\0\0\0\0\0�\0\0\0\0\0\0\�\0\0\0\0�-@\0\0\0\0\0\�\0\0\0\0\0\0\0\�\0\0\0\0^�@\0\0\0\0\0y\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0&\0\0\0\0\0\0\0<\0\0\"\0\0�2@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0�@\0\0\0\0\0]\0\0\0\0\0\0\0\�\0\0\0\0�?@\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\"\0\0��@\0\0\0\0\0\Z\0\0\0\0\0\0\0E\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0{\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0(1@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\"\0\0\�{@\0\0\0\0\0-\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\"\0\0��@\0\0\0\0\0&\0\0\0\0\0\0\0|\0\0\"\0\0�@\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\"\0\0؆@\0\0\0\0\0\Z\0\0\0\0\0\0\0P\0\0\"\0\0n@\0\0\0\0\0\0\0\0\0\0\0\0x\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0�\0\0\"\0\0N{@\0\0\0\0\0h\0\0\0\0\0\0\0�\0\0\"\0\0e}@\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0�6@\0\0\0\0\0\Z\0\0\0\0\0\0\0\�\0\0\"\0\0~p@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0\�}@\0\0\0\0\09\0\0\0\0\0\0\0#\0\0\0\0�@\0\0\0\0\0r\0\0\0\0\0\0\0<\0\0\"\0\0J�@\0\0\0\0\03\0\0\0\0\0\0\0s\0\0\0\02k@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0!\0\0 \�@\0\0\0\0\0H\0\0\0\0\0\0\0�\0\0\"\0\0t�@\0\0\0\0\0:\0\0\0\0\0\0\0\�\0\0\"\0\0�n@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0W\0\0\0\0\0\0\0p\0\0\"\0\0N�@\0\0\0\0\0i\0\0\0\0\0\0\0�\0\0\"\0\0F�@\0\0\0\0\0b\0\0\0\0\0\0\0\�\0\0\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0�\0\0\"\0\0\\�@\0\0\0\0\0\0\0\0\0\0\0\0&\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0\\\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0\\�@\0\0\0\0\0;\0\0\0\0\0\0\0<\0\0\"\0\0\�@\0\0\0\0\0=\0\0\0\0\0\0\0w\0\0\"\0\0<r@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0$M@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0�\0\0\0\0,=@\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\"\0\0ȉ@\0\0\0\0\0p\0\0\0\0\0\0\0S\0\0\"\0\0ڐ@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0G\0\0\0\0\0\0\0+\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0f�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0�3@\0\0\0\0\0r\0\0\0\0\0\0\0\�\0\0\"\0\0�l@\0\0\0\0\0S\0\0\0\0\0\0\0\�\0\0\0\Z\0�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0�:@\0\0\0\0\0r\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0�.@\0\0\0\0\0,\0\0\0\0\0\0\0+\Z\0\0\"\0\0X�@\0\0\0\0\0\0\0\0\0\0\0\09\Z\0\0\"\0\0j<@\0\0\0\0\0\'\0\0\0\0\0\0\0L\Z\0\0\"\0\0v�@\0\0\0\0\0j\0\0\0\0\0\0\0|\Z\0\0!\0\0H\�@\0\0\0\0\0H\0\0\0\0\0\0\0�\Z\0\0\"\0\0�@\0\0\0\0\0W\0\0\0\0\0\0\0\�\Z\0\0\0\0.V@\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0\"\0\0O�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\"\0\0P�@\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0P�@\0\0\0\0\0&\0\0\0\0\0\0\0!\0\0\"\0\0V~@\0\0\0\0\0)\0\0\0\0\0\0\0N\0\0\"\0\0��@\0\0\0\0\01\0\0\0\0\0\0\0�\0\0\0\0\�\�@\0\0\0\0\0r\0\0\0\0\0\0\0w\0\0\0\0�7@\0\0\0\0\0r\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0�l@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0.�@\0\0\0\0\0I\0\0\0\0\0\0\0S\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0#\0\0\"\0\0R�@\0\0\0\0\0\0\0\0\0\0\0\0i\0\0\"\0\0t�@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0\�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0C\0\0!\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0�\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0\0�<@\0\0\0\0\0r\0\0\0\0\0\0\0<�\0\0 \0\Z\0\�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0ݖ@\0\0\0\0\0m\0\0\0\0\0\0\0H \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z \0\0\"\0\0ď@\0\0\0\0\0\0\0\0\0\0\0\0� \0\0\"\0\0ގ@\0\0\0\0\0\0\0\0\0\0\0\0� \0\0\"\0\0\\�@\0\0\0\0\0\0\0\0\0\0\0\09!\0\0\"\0\0\"�@\0\0\0\0\0K\0\0\0\0\0\0\0�!\0\0\"\0\00�@\0\0\0\0\0\0\0\0\0\0\0\0>\"\0\0\"\0\0l�@\0\0\0\0\0M\0\0\0\0\0\0\0�\"\0\0\"\0\0R�@\0\0\0\0\02\0\0\0\0\0\0\0N\0\0\0\0pJ@\0\0\0\0\0r\0\0\0\0\0\0\0\"#\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\01#\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0m#\0\0\"\0\0r�@\0\0\0\0\0&\0\0\0\0\0\0\0#\0\0\0\0�T@\0\0\0\0\0:\0\0\0\0\0\0�#\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�#\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�#\0\0\"\0\0~p@\0\0\0\0\0�\0\0\0\0\0\0\0�#\0\0\"\0\0��@\0\0\0\0\0?\0\0\0\0\0\0\0~$\0\0\"\0\0j<@\0\0\0\0\0\'\0\0\0\0\0\0\0�$\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�$\0\0\"\0\0rG@\0\0\0\0\0u\0\0\0\0\0\0\0%\0\0\"\0\0�q@\0\0\0\0\0\'\0\0\0\0\0\0\0G%\0\0\"\0\0\�@\0\0\0\0\0]\0\0\0\0\0\0\0�%\0\0\"\0\0b�@\0\0\0\0\0M\0\0\0\0\0\0\0\�%\0\0\"\0\0Ln@\0\0\0\0\0\0\0\0\0\0\0\0&\0\0\"\0\0�@\0\0\0\0\0W\0\0\0\0\0\0\0U&\0\0\"\0\0hm@\0\0\0\0\0\0\0\0\0\0\0\0�&\0\0!\0\0�\�@\0\0\0\0\04\0\0\0\0\0\0\0�&\0\0\"\0\0��@\0\0\0\0\0L\0\0\0\0\0\0\0�&\0\0\"\0\0w�@\0\0\0\0\0Y\0\0\0\0\0\0\0V\'\0\0\"\0\0\Z�@\0\0\0\0\0-\0\0\0\0\0\0\0�\'\0\0\"\0\0*�@\0\0\0\0\0\0\0\0\0\0\0\0\�,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\0\0�)@\0\0\0\0\0�\0\0\0\0\0\0\0�\'\0\0\"\0\0Ln@\0\0\0\0\0\0\0\0\0\0\0\0�\'\0\0\"\0\0@�@\0\0\0\0\0\0\0\0\0\0\0\07(\0\0\"\0\0)~@\0\0\0\0\0\0\0\0\0\0\0\0h(\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�(\0\0\"\0\0͕@\0\0\0\0\0.\0\0\0\0\0\0\0\�(\0\0\"\0\0D�@\0\0\0\0\0\0\0\0\0\0\0\0�(\0\0\"\0\0\n�@\0\0\0\0\0�\0\0\0\0\0\0\0@)\0\0\"\0\0\�2@\0\0\0\0\0+\0\0\0\0\0\0\0�)\0\0\"\0\0�H@\0\0\0\0\05\0\0\0\0\0\0*\0\0\"\0\0(y@\0\0\0\0\0\0\0\0\0\0\0\08*\0\0\0\0�N@\0\0\0\0\0i\0\0\0\0\0\0\0U*\0\0\"\0\0\0{@\0\0\0\0\0M\0\0\0\0\0\0\0w*\0\0\"\0\0Bp@\0\0\0\0\0\0\0\0\0\0\0\0\�*\0\0\"\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01+\0\0\"\0\0��@\0\0\0\0\0L\0\0\0\0\0\0\0i+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�+\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0K,\0\0\"\0\0~�@\0\0\0\0\0\0\0\0\0\0\0\0i,\0\0\"\0\0x�@\0\0\0\0\0.\0\0\0\0\0\0\0�,\0\0\"\0\0\�I@\0\0\0\0\0\0\0\0\0\0\0\0\�,\0\0\0\0\�M@\0\0\0\0\0H\0\0\0\0\0\0\0\�,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�,\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\"\0\0R�@\0\0\0\0\0A\0\0\0\0\0\0\0L-\0\0\"\0\0�~@\0\0\0\0\0c\0\0\0\0\0\0\0w-\0\0\"\0\0~p@\0\0\0\0\0�\0\0\0\0\0\0\0�-\0\0\0\0f\�@\0\0\0\0\07\0\0\0\0\0\0\0�-\0\0\0\06W@\0\0\0\0\0�\0\0\0\0\0\0\0\�-\0\0\"\0\0*�@\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0].\0\0\"\0\0@\0\0\0\0\0\0\0\0\0\0\0\0�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�.\0\0\"\0\0hn@\0\0\0\0\0\0\0\0\0\0\0\0\�.\0\0\"\0\0�@\0\0\0\0\0\�\0\0\0\0\0\0\0g/\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0{/\0\0\"\0\0*�@\0\0\0\0\0\'\0\0\0\0\0\0\0�/\0\0\"\0\00n@\0\0\0\0\0\0\0\0\0\0\0\0\�/\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\00\0\0\"\0\0��@\0\0\0\0\0F\0\0\0\0\0\0\0R0\0\0\"\0\0v�@\0\0\0\0\0\Z\0\0\0\0\0\0\0�0\0\0\0\0rB@\0\0\0\0\03\0\0\0\0\0\0\0\�0\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\�0\0\0\0\0�P@\0\0\0\0\0W\0\0\0\0\0\0\0\�0\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0<1\0\0\"\0\0tr@\0\0\0\0\0\'\0\0\0\0\0\0\0v1\0\0\"\0\0\�~@\0\0\0\0\0&\0\0\0\0\0\0\0�1\0\0\"\0\0\�1@\0\0\0\0\0\0\0\0\0\0\0\0\�1\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\072\0\0\"\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0q2\0\0\0\0Q@\0\0\0\0\0\�\0\0\0\0\0\0�2\0\0\"\0\0\0�@\0\0\0\0\0*\0\0\0\0\0\0\0\�2\0\0\0\0\�.@\0\0\0\0\0k\0\0\0\0\0\0\�2\0\0\0\0\0 $@\0\0\0\0\0\0\0\0\0\0\0\0\0$3\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\063\0\0\"\0\0b�@\0\0\0\0\0�\0\0\0\0\0\0\0\�3\0\0\"\0\0\�}@\0\0\0\0\09\0\0\0\0\0\0\0\�3\0\0\0\0X�@\0\0\0\0\0)\0\0\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#4\0\0\"\0\0\��@\0\0\0\0\0\'\0\0\0\0\0\0\0]4\0\0\"\0\0ج@\0\0\0\0\0&\0\0\0\0\0\0\0�4\0\0\"\0\0F�@\0\0\0\0\0+\0\0\0\0\0\0\0\�4\0\0\"\0\0;�@\0\0\0\0\0*\0\0\0\0\0\0\0|5\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�5\0\0\"\0\0%p@\0\0\0\0\0\0\0\0\0\0\0\0\�5\0\0\"\0\0�2@\0\0\0\0\0\0\0\0\0\0\0\046\0\0\0\0�4@\0\0\0\0\0r\0\0\0\0\0\0\0I6\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0j6\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�6\0\0\0\0\�*@\0\0\0\0\0X\0\0\0\0\0\0�6\0\0\"\0\0�q@\0\0\0\0\0\0\0\0\0\0\0\0\�6\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�6\0\0\0\0�@\0\0\0\0\03\0\0\0\0\0\0\07\0\0\"\0\0\n@\0\0\0\0\0&\0\0\0\0\0\0\0*7\0\0!\0\0�\�@\0\0\0\0\08\0\0\0\0\0\0\0b7\0\0!\0\0 \�@\0\0\0\0\0\0\0\0\0\0\0\0t7\0\0\"\0\0�}@\0\0\0\0\0\0\0\0\0\0\0\0�7\0\0\"\0\0�0@\0\0\0\0\0\'\0\0\0\0\0\0\0�7\0\0\"\0\0jw@\0\0\0\0\0\0\0\0\0\0\0\0�7\0\0\"\0\0��@\0\0\0\0\01\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-8\0\0\"\0\0X�@\0\0\0\0\0B\0\0\0\0\0\0\0\\8\0\0\0\0�@\0\0\0\0\0r\0\0\0\0\0\0\0q8\0\0\Z\0\�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0~8\0\0\"\0\0H�@\0\0\0\0\0r\0\0\0\0\0\0\0�8\0\0\"\0\0d�@\0\0\0\0\0:\0\0\0\0\0\0\0/9\0\0\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0;9\0\0\"\0\0J�@\0\0\0\0\0�\0\0\0\0\0\0\0�9\0\0\0\0\0`$@\0\0\0\0\0\0\0\0\0\0\0\0\0�9\0\0\0\0�.@\0\0\0\0\0!\0\0\0\0\0\0\0\�9\0\0\0\0�K@\0\0\0\0\0g\0\0\0\0\0\0\0\�9\0\0\"\0\0x5@\0\0\0\0\0\'\0\0\0\0\0\0\0\0:\0\0\"\0\0 |@\0\0\0\0\0M\0\0\0\0\0\0\0+:\0\0\0\0@e@\0\0\0\0\0�\0\0\0\0\0\0\0R:\0\0\"\0\0t�@\0\0\0\0\07\0\0\0\0\0\0\0�:\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�:\0\0\"\0\0ߠ@\0\0\0\0\0\0\0\0\0\0\0\0\�:\0\0!\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�:\0\0!\0\0x\�@\0\0\0\0\0\0\0\0\0\0\0\0\";\0\0\0\0�C@\0\0\0\0\0Q\0\0\0\0\0\0\0I;\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�;\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0%<\0\0\"\0\0��@\0\0\0\0\09\0\0\0\0\0\0\0�<\0\0\"\0\0R�@\0\0\0\0\0A\0\0\0\0\0\0\0\�<\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�<\0\0\"\0\0\��@\0\0\0\0\0\0\0\0\0\0\0\0B=\0\0\"\0\0�|@\0\0\0\0\01\0\0\0\0\0\0\0`=\0\0\0\0h\�@\0\0\0\0\0r\0\0\0\0\0\0\0s=\0\0!\0\0p\�@\0\0\0\0\0\0\0\0\0\0\0\0�=\0\0!\0\0\�@\0\0\0\0\0H\0\0\0\0\0\0\0�=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�=\0\0\"\0\0Bp@\0\0\0\0\0\0\0\0\0\0\0\0b>\0\0\"\0\0*�@\0\0\0\0\0\'\0\0\0\0\0\0\0�>\0\0\0\0\0�$@\0\0\0\0\0\0\0\0\0\0\0\0\0�>\0\0\"\0\0�w@\0\0\0\0\0Y\0\0\0\0\0\0\0�>\0\0\"\0\0�{@\0\0\0\0\0-\0\0\0\0\0\0\0?\0\0\"\0\0��@\0\0\0\0\0\Z\0\0\0\0\0\0\0b?\0\0\"\0\0l�@\0\0\0\0\0w\0\0\0\0\0\0\0�?\0\0\"\0\0\�o@\0\0\0\0\0\Z\0\0\0\0\0\0\0\�?\0\0\"\0\0\�~@\0\0\0\0\0&\0\0\0\0\0\0\0\�?\0\0\"\0\0\�@\0\0\0\0\0G\0\0\0\0\0\0\0<@\0\0\"\0\0x�@\0\0\0\0\0\Z\0\0\0\0\0\0\0�@\0\0\"\0\0|q@\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0!\0\08\�@\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0pJ@\0\0\0\0\0r\0\0\0\0\0\0\0\�@\0\0\"\0\0\�m@\0\0\0\0\0&\0\0\0\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0��@\0\0\0\0\03\0\0\0\0\0\0\0A\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\02A\0\0\0\0tC@\0\0\0\0\0|\0\0\0\0\0\0\0�A\0\0!\0\00\�@\0\0\0\0\0H\0\0\0\0\0\0\0�A\0\0\"\0\0n@\0\0\0\0\0\0\0\0\0\0\0\0\�A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�A\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0�A\0\0\0\0=@\0\0\0\0\0\'\0\0\0\0\0\0\0B\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0@B\0\0\"\0\0r�@\0\0\0\0\0&\0\0\0\0\0\0\0RB\0\0\"\0\0.l@\0\0\0\0\0a\0\0\0\0\0\0\0jB\0\0\"\0\0\�2@\0\0\0\0\0\0\0\0\0\0\0\0\�B\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0p*@\0\0\0\0\0m\0\0\0\0\0\0\0\�B\0\0\"\0\0\�@\0\0\0\0\0u\0\0\0\0\0\0\0�B\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0PC\0\0\"\0\0G~@\0\0\0\0\0\0\0\0\0\0\0\0�C\0\0\0\0N@\0\0\0\0\0�\0\0\0\0\0\0\0\�C\0\0\"\0\0Lz@\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0aD\0\0!\0\0\0Sa\0\0\0\0\0X\0\0\0\0\0\0\0�D\0\0\"\0\0Ԛ@\0\0\0\0\0\0\0\0\0\0\0\0�D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�D\0\0\"\0\0R�@\0\0\0\0\0A\0\0\0\0\0\0\0E\0\0\0\0\�>@\0\0\0\0\0�\0\0\0\0\0\0\00E\0\0!\0\0p\�@\0\0\0\0\0\0\0\0\0\0\0\0W�\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\0HE\0\0\"\0\0�3@\0\0\0\0\0\0\0\0\0\0\0\0�E\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�E\0\0\"\0\0^�@\0\0\0\0\0\0\0\0\0\0\0\0F\0\0\"\0\01�@\0\0\0\0\0\0\0\0\0\0\0\0AF\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XF\0\0\0\0ڳ@\0\0\0\0\03\0\0\0\0\0\0\0{F\0\0\"\0\0\nz@\0\0\0\0\0\0\0\0\0\0\0\0�F\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\�F\0\0\"\0\0\\�@\0\0\0\0\0\0\0\0\0\0\0\0G\0\0!\0\0X\�@\0\0\0\0\0\0\0\0\0\0\0\07G\0\0\"\0\0�1@\0\0\0\0\0j\0\0\0\0\0\0\0�G\0\0\"\0\0<x@\0\0\0\0\0\0\0\0\0\0\0\0�G\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�G\0\0\0\0��@\0\0\0\0\0[\0\0\0\0\0\0\0\�G\0\0\"\0\0D�@\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0D7@\0\0\0\0\0_\0\0\0\0\0\0\0#H\0\0\"\0\0&�@\0\0\0\0\0\0\0\0\0\0\0\0XH\0\0\"\0\0|�@\0\0\0\0\0+\0\0\0\0\0\0\0�H\0\0\"\0\0>�@\0\0\0\0\0*\0\0\0\0\0\0\0\�H\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\�8@\0\0\0\0\0r\0\0\0\0\0\0\0I\0\0\"\0\0F�@\0\0\0\0\0b\0\0\0\0\0\0\0=I\0\0\"\0\0��@\0\0\0\0\0\Z\0\0\0\0\0\0\0\�I\0\0\"\0\0�u@\0\0\0\0\05\0\0\0\0\0\0\0J\0\0\"\0\0D1@\0\0\0\0\0\0\0\0\0\0\0\0bJ\0\0\"\0\0D�@\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\"\0\0�@\0\0\0\0\0/\0\0\0\0\0\0\0\�J\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0\�J\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0K\0\0\"\0\0Hm@\0\0\0\0\0\0\0\0\0\0\0\0\\K\0\0\0\0xA@\0\0\0\0\0�\0\0\0\0\0\0\0{K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�K\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�K\0\0\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0�K\0\0\"\0\0��@\0\0\0\0\0%\0\0\0\0\0\0\0�\0\0\0\0�4@\0\0\0\0\0r\0\0\0\0\0\0\0�L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�L\0\0\"\0\0Ty@\0\0\0\0\0K\0\0\0\0\0\0\0M\0\0\"\0\0SJ@\0\0\0\0\0\0\0\0\0\0\0\0�M\0\0\"\0\0�t@\0\0\0\0\0\0\0\0\0\0\0\0�M\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�M\0\0\"\0\0��@\0\0\0\0\0u\0\0\0\0\0\0dN\0\0\"\0\0H�@\0\0\0\0\0R\0\0\0\0\0\0\0�N\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0�N\0\0\"\0\0\0�@\0\0\0\0\0*\0\0\0\0\0\0\0CO\0\0\"\0\08�@\0\0\0\0\0\0\0\0\0\0\0\0�O\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0�O\0\0\"\0\0>�@\0\0\0\0\0$\0\0\0\0\0\0\0\�O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�O\0\0\"\0\0hz@\0\0\0\0\0{\0\0\0\0\0\0\0>P\0\0\"\0\0,�@\0\0\0\0\0#\0\0\0\0\0\0\0\�P\0\0\"\0\0R�@\0\0\0\0\0&\0\0\0\0\0\0\09Q\0\0\"\0\0\�r@\0\0\0\0\0\'\0\0\0\0\0\0\0pQ\0\0\0\0��@\0\0\0\0\0r\0\0\0\0\0\0\0�Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Q\0\0\"\0\0\\�@\0\0\0\0\0M\0\0\0\0\0\0\0\�Q\0\0\0\0b^@\0\0\0\0\0u\0\0\0\0\0\0\�Q\0\0\"\0\0\0�@\0\0\0\0\01\0\0\0\0\0\0\0IR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^R\0\0\0\0f�@\0\0\0\0\0.\0\0\0\0\0\0\0�R\0\0!\0\0h\�@\0\0\0\0\0\0\0\0\0\0\0\0�R\0\0\0\0Q@\0\0\0\0\0\�\0\0\0\0\0\0l\0\0\0\0*�@\0\0\0\0\0r\0\0\0\0\0\0\0�R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S\0\0\"\0\0�1@\0\0\0\0\0\'\0\0\0\0\0\0\0sS\0\0\0\0O@\0\0\0\0\0i\0\0\0\0\0\0\0\�S\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\�S\0\0\0\0\�\\@\0\0\0\0\0\0\0\0\0\0\0�S\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0\rT\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0\\T\0\0\"\0\0Ԙ@\0\0\0\0\0s\0\0\0\0\0\0\0�T\0\0!\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�T\0\0\"\0\0\�x@\0\0\0\0\0\"\0\0\0\0\0\0\0�T\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0-U\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0sU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�U\0\0\0\0Z@\0\0\0\0\0�\0\0\0\0\0\0\0\�U\0\0\"\0\0\��@\0\0\0\0\0#\0\0\0\0\0\0\0V\0\0\"\0\0n�@\0\0\0\0\0&\0\0\0\0\0\0\0�V\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0�V\0\0\0\0ȸ@\0\0\0\0\0=\0\0\0\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05W\0\0\"\0\0r�@\0\0\0\0\0M\0\0\0\0\0\0\0nW\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�W\0\0\"\0\0\�I@\0\0\0\0\0b\0\0\0\0\0\0\0$X\0\0\0\0\�W@\0\0\0\0\0-\0\0\0\0\0\0\0DX\0\0\"\0\0�q@\0\0\0\0\0\0\0\0\0\0\0\0yX\0\0\"\0\0�@\0\0\0\0\0h\0\0\0\0\0\0\0�X\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0�X\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\�X\0\0\"\0\0ru@\0\0\0\0\05\0\0\0\0\0\0\0!Y\0\0\"\0\0|�@\0\0\0\0\0\'\0\0\0\0\0\0\0gY\0\0\"\0\0��@\0\0\0\0\0#\0\0\0\0\0\0\0\�\0\0\0\0�@\0\0\0\0\0r\0\0\0\0\0\0\0�Y\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0\�Y\0\0\"\0\0�o@\0\0\0\0\01\0\0\0\0\0\0\0�Y\0\0\"\0\00�@\0\0\0\0\0\0\0\0\0\0\0\0|Z\0\0\"\0\0\�}@\0\0\0\0\09\0\0\0\0\0\0\0�Z\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\�Z\0\0\"\0\0\�F@\0\0\0\0\0\0\0\0\0\0\0\0$[\0\0\"\0\06�@\0\0\0\0\0\0\0\0\0\0\0\0z[\0\0\"\0\0�@\0\0\0\0\0W\0\0\0\0\0\0\0�[\0\0\0\0\�g@\0\0\0\0\0Q\0\0\0\0\0\0\\\0\0\0\04@\0\0\0\0\0C\0\0\0\0\0\0\0%\\\0\0\"\0\02�@\0\0\0\0\0\'\0\0\0\0\0\0\0N\\\0\0\"\0\0��@\0\0\0\0\0\Z\0\0\0\0\0\0\0�\\\0\0\0\0�<@\0\0\0\0\0r\0\0\0\0\0\0\0\�,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\\\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0\�\\\0\0\0\0��@\0\0\0\0\0,\0\0\0\0\0\0\0�\\\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0\Z]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n]\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�]\0\0\"\0\0\�|@\0\0\0\0\0)\0\0\0\0\0\0\0�]\0\0\"\0\0Ą@\0\0\0\0\0]\0\0\0\0\0\0\0\0^\0\0\"\0\0�@\0\0\0\0\0[\0\0\0\0\0\0\0`^\0\0\0\0B�@\0\0\0\0\0#\0\0\0\0\0\0\0�^\0\0\"\0\0�q@\0\0\0\0\0\'\0\0\0\0\0\0\0�^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�^\0\0\"\0\0h�@\0\0\0\0\0\0\0\0\0\0\0\0�^\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0_\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0\Z_\0\0\"\0\0Z�@\0\0\0\0\0\0\0\0\0\0\0\08_\0\0\"\0\0bp@\0\0\0\0\0\0\0\0\0\0\0\0�_\0\0\0\0\�i@\0\0\0\0\0\�\0\0\0\0\0\0\0�_\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0`\0\0\"\0\0!�@\0\0\0\0\0\0\0\0\0\0\0\0H`\0\0\"\0\0�@\0\0\0\0\0W\0\0\0\0\0\0\0�`\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�`\0\0\0\0��@\0\0\0\0\0[\0\0\0\0\0\0\0\�`\0\0\"\0\0f�@\0\0\0\0\0\0\0\0\0\0\0\0\�`\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\06a\0\0!\0\0�\�@\0\0\0\0\0(\0\0\0\0\0\0\0Ra\0\0\0\0\�M@\0\0\0\0\0H\0\0\0\0\0\0\0oa\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�a\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�a\0\0\"\0\0\�q@\0\0\0\0\0\0\0\0\0\0\0\0\�a\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0@�\0\0\0\0�(@\0\0\0\0\0*\0\0\0\0\0\0\0#b\0\0\"\0\0H�@\0\0\0\0\0$\0\0\0\0\0\0\0hb\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0b\0\0\"\0\00@\0\0\0\0\0X\0\0\0\0\0\0\0\�b\0\0\0\0@\�@\0\0\0\0\0r\0\0\0\0\0\0\0\�b\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Dc\0\0\"\0\0�y@\0\0\0\0\0H\0\0\0\0\0\0\0yc\0\0\0\0(`@\0\0\0\0\0K\0\0\0\0\0\0\0�c\0\0\"\0\0�0@\0\0\0\0\0\'\0\0\0\0\0\0\0�c\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0\�c\0\0\0\0\�j@\0\0\0\0\0\0\0\0\0\0\0\0\�c\0\0\"\0\0�}@\0\0\0\0\0\0\0\0\0\0\0\0d\0\0\"\0\0J�@\0\0\0\0\0�\0\0\0\0\0\0\0xd\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\"\0\0R�@\0\0\0\0\0A\0\0\0\0\0\0\09e\0\0!\0\0H\�@\0\0\0\0\0\0\0\0\0\0\0\0Ue\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0oe\0\0\"\0\0�n@\0\0\0\0\0*\0\0\0\0\0\0\0�e\0\0\0\0M=@\0\0\0\0\0e\0\0\0\0\0\0\0�e\0\0\"\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0�e\0\0!\0\0\�@\0\0\0\0\0H\0\0\0\0\0\0\0f\0\0\"\0\0\�n@\0\0\0\0\0\0\0\0\0\0\0\0&f\0\0\0\0d[@\0\0\0\0\0\�\0\0\0\0\0\0\0Pf\0\0\"\0\0\�@\0\0\0\0\0G\0\0\0\0\0\0\0�f\0\0\0\04\�@\0\0\0\0\0\0\0\0\0\0\0\0\�f\0\0\0\06,@\0\0\0\0\0v\0\0\0\0\0\0\rg\0\0\"\0\02�@\0\0\0\0\0&\0\0\0\0\0\0\0Hg\0\0\"\0\02�@\0\0\0\0\0\'\0\0\0\0\0\0\0qg\0\0\"\0\0��@\0\0\0\0\0L\0\0\0\0\0\0\0�g\0\0!\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�g\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\�g\0\0!\0\0@\�@\0\0\0\0\0H\0\0\0\0\0\0\0�g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0mh\0\0\"\0\0Z�@\0\0\0\0\0\0\0\0\0\0\0\0�h\0\0\"\0\0n|@\0\0\0\0\0>\0\0\0\0\0\0\0\�h\0\0\"\0\0��@\0\0\0\0\01\0\0\0\0\0\0\0i\0\0\"\0\0R�@\0\0\0\0\02\0\0\0\0\0\0\0�i\0\0\"\0\0\�F@\0\0\0\0\0\0\0\0\0\0\0\0\�i\0\0\"\0\0\0�@\0\0\0\0\01\0\0\0\0\0\0\00j\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0Lj\0\0\"\0\0��@\0\0\0\0\0&\0\0\0\0\0\0\0�j\0\0!\0\0\�\�@\0\0\0\0\0H\0\0\0\0\0\0\0�j\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�j\0\0\0\0rB@\0\0\0\0\03\0\0\0\0\0\0\0\�j\0\0\0\0�6@\0\0\0\0\0�\0\0\0\0\0\0\0\�j\0\0\"\0\0Xr@\0\0\0\0\0\0\0\0\0\0\0\0k\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0)k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ck\0\0\"\0\0\�D@\0\0\0\0\0c\0\0\0\0\0\0\0]k\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0zk\0\0\0\0�T@\0\0\0\0\0:\0\0\0\0\0\0�k\0\0\"\0\0H�@\0\0\0\0\0r\0\0\0\0\0\0\0�k\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0\"\0\0��@\0\0\0\0\07\0\0\0\0\0\0\0Rl\0\0\"\0\0f6@\0\0\0\0\0\'\0\0\0\0\0\0\0gl\0\0\0\0e@\0\0\0\0\00\0\0\0\0\0\0\0�l\0\0\"\0\00�@\0\0\0\0\0]\0\0\0\0\0\0\0\�l\0\0\0\0�Z@\0\0\0\0\0r\0\0\0\0\0\0\0	m\0\0\"\0\0��@\0\0\0\0\0G\0\0\0\0\0\0\0m\0\0\"\0\0�o@\0\0\0\0\01\0\0\0\0\0\0\0�m\0\0\0\0(�@\0\0\0\0\0r\0\0\0\0\0\0\0�m\0\0\"\0\0�1@\0\0\0\0\0\'\0\0\0\0\0\0\0\nn\0\0\"\0\0�~@\0\0\0\0\0c\0\0\0\0\0\0\05n\0\0\"\0\0\\�@\0\0\0\0\0M\0\0\0\0\0\0\0dn\0\0\0\0rX@\0\0\0\0\0q\0\0\0\0\0\0\0�n\0\0\0\0V9@\0\0\0\0\0.\0\0\0\0\0\0\0�n\0\0\"\0\0\��@\0\0\0\0\0\'\0\0\0\0\0\0\0\�\0\0\0\0��@\0\0\0\0\0r\0\0\0\0\0\0\0\�n\0\0\"\0\0ҁ@\0\0\0\0\0j\0\0\0\0\0\0\0o\0\0\"\0\0֞@\0\0\0\0\0B\0\0\0\0\0\0\0Do\0\0\"\0\0�3@\0\0\0\0\0\0\0\0\0\0\0\0�o\0\0\"\0\0�0@\0\0\0\0\0\0\0\0\0\0\0\0�o\0\0\"\0\0�@\0\0\0\0\0]\0\0\0\0\0\0\0Yp\0\0\"\0\0ȃ@\0\0\0\0\0 \0\0\0\0\0\0\0wp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�p\0\0\0\0�@\0\0\0\0\0W\0\0\0\0\0\0\0�p\0\0\"\0\0\�2@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\�\"@\0\0\0\0\0\0\0\0\0\0\0\0\0\'q\0\0\"\0\0��@\0\0\0\0\0 \0\0\0\0\0\0\0Vq\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�q\0\0\"\0\0Hm@\0\0\0\0\0\0\0\0\0\0\0\0\�q\0\0\"\0\0&�@\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#r\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0vr\0\0\"\0\0l�@\0\0\0\0\0\0\0\0\0\0\0\0\�r\0\0\"\0\0��@\0\0\0\0\0)\0\0\0\0\0\0\0�r\0\0\"\0\0\�m@\0\0\0\0\0)\0\0\0\0\0\0\0s\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0As\0\0\0\0\�8@\0\0\0\0\0r\0\0\0\0\0\0\0Vs\0\0\Z\0�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0bs\0\0\"\0\0|@\0\0\0\0\0\0\0\0\0\0\0\0�s\0\0\0\0�e@\0\0\0\0\0\�\0\0\0\0\0\0\0\�s\0\0\"\0\0\n@\0\0\0\0\0&\0\0\0\0\0\0\0t\0\0\"\0\0l�@\0\0\0\0\0&\0\0\0\0\0\0\0Yt\0\0\"\0\0\�n@\0\0\0\0\0\0\0\0\0\0\0\0tt\0\0\0\0��@\0\0\0\0\0#\0\0\0\0\0\0\0�t\0\0\"\0\0�x@\0\0\0\0\0H\0\0\0\0\0\0\0�t\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\�t\0\0\"\0\0\�y@\0\0\0\0\0\"\0\0\0\0\0\0\0u\0\0\"\0\0��@\0\0\0\0\0&\0\0\0\0\0\0\0Uu\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0cu\0\0\"\0\0�~@\0\0\0\0\0c\0\0\0\0\0\0\0�u\0\0\"\0\0u@\0\0\0\0\0\\\0\0\0\0\0\0\0�u\0\0\"\0\0P�@\0\0\0\0\0&\0\0\0\0\0\0\0v\0\0\"\0\0��@\0\0\0\0\09\0\0\0\0\0\0\0�v\0\0!\0\0P\�@\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0!\0\0 \�@\0\0\0\0\0(\0\0\0\0\0\0\0\�v\0\0\"\0\0b�@\0\0\0\0\0M\0\0\0\0\0\0\0w\0\0\"\0\0hn@\0\0\0\0\0\0\0\0\0\0\0\0Pw\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0dw\0\0\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0yw\0\0!\0\0H\�@\0\0\0\0\0H\0\0\0\0\0\0\0�w\0\0\"\0\0�~@\0\0\0\0\0c\0\0\0\0\0\0\0�w\0\0\"\0\0��@\0\0\0\0\0\�\0\0\0\0\0\0\�w\0\0!\0\0@\�@\0\0\0\0\0\0\0\0\0\0\0\0�w\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\00x\0\0\"\0\0Ą@\0\0\0\0\0]\0\0\0\0\0\0\0�x\0\0\0\0��@\0\0\0\0\0r\0\0\0\0\0\0\0�x\0\0\"\0\0\�r@\0\0\0\0\0\'\0\0\0\0\0\0\0\�x\0\0\"\0\0��@\0\0\0\0\0;\0\0\0\0\0\0\0y\0\0\"\0\0��@\0\0\0\0\0\'\0\0\0\0\0\0\0#W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ey\0\0\0\0*�@\0\0\0\0\0r\0\0\0\0\0\0\0Xy\0\0\"\0\0ܨ@\0\0\0\0\0P\0\0\0\0\0\0\0\�y\0\0\"\0\0$�@\0\0\0\0\0j\0\0\0\0\0\0\0/z\0\0\"\0\0ƭ@\0\0\0\0\0\Z\0\0\0\0\0\0\0}z\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0O{\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�{\0\0\"\0\0Rx@\0\0\0\0\0K\0\0\0\0\0\0\0y\0\0\0\0\�@\0\0\0\0\0.\0\0\0\0\0\0�{\0\0\"\0\0\\�@\0\0\0\0\0M\0\0\0\0\0\0\0\�{\0\0\0\0>@\0\0\0\0\0�\0\0\0\0\0\0\0�{\0\0\"\0\0ڗ@\0\0\0\0\0#\0\0\0\0\0\0\0S|\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�|\0\0\0\0\�*@\0\0\0\0\0X\0\0\0\0\0\0\�|\0\0\0\0\�Ta\0\0\0\0\0\0\0\0\0\0\0\0\�|\0\0\"\0\0>y@\0\0\0\0\0\0\0\0\0\0\0\0�|\0\0\"\0\0}@\0\0\0\0\0]\0\0\0\0\0\0\0}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06}\0\0\"\0\0\r~@\0\0\0\0\0\0\0\0\0\0\0\0�}\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�}\0\0\"\0\0�l@\0\0\0\0\0*\0\0\0\0\0\0\0�}\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�}\0\0\0\0�`@\0\0\0\0\0]\0\0\0\0\0\0S~\0\0\0\0`Sa\0\0\0\0\0\0\0\0\0\0\0j~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�~\0\0\"\0\0��@\0\0\0\0\0G\0\0\0\0\0\0\0.\0\0\"\0\0x5@\0\0\0\0\0\'\0\0\0\0\0\0\0C\0\0\"\0\0j�@\0\0\0\0\0u\0\0\0\0\0\0\0Z\0\0\"\0\0 |@\0\0\0\0\0M\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0!\0\0pTa\0\0\0\0\0X\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06�\0\0\0\0N@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0=@\0\0\0\0\0\'\0\0\0\0\0\0\0��\0\0\0\0�k@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0~@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0)�\0\0\"\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0r�@\0\0\0\0\0M\0\0\0\0\0\0\0\�\0\0\"\0\0\�l@\0\0\0\0\0$\0\0\0\0\0\0\0�\0\0\"\0\0\�G@\0\0\0\0\0[\0\0\0\0\0\0\0A�\0\0!\0\0\0\�@\0\0\0\0\0/\0\0\0\0\0\0\0t�\0\0\"\0\0N{@\0\0\0\0\0h\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\05�\0\0\"\0\0n�@\0\0\0\0\0H\0\0\0\0\0\0\0j�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0L\0\0\0\0\0\0\0\0\0\0\0V�@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0\0\0xA@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0!\0\0 \�@\0\0\0\0\0r\0\0\0\0\0\0\0}�\0\0\"\0\00�@\0\0\0\0\0\0\0\0\0\0\0\0˄\0\0\"\0\0؆@\0\0\0\0\0\Z\0\0\0\0\0\0\0�\0\0\"\0\0Ԛ@\0\0\0\0\0\0\0\0\0\0\0\0>�\0\0\0\0\�\�@\0\0\0\0\0r\0\0\0\0\0\0\0Q�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0z�\0\0\"\0\0s@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0Ʌ\0\0\"\0\0�@\0\0\0\0\0\�\0\0\0\0\0\0\0P�\0\0\"\0\0~�@\0\0\0\0\04\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0��\0\0\"\0\0�o@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0�B@\0\0\0\0\0\�\0\0\0\0\0\0\0)�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0X�\0\0\"\0\0��@\0\0\0\0\0+\0\0\0\0\0\0\0n�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0\Z�@\0\0\0\0\0#\0\0\0\0\0\0\0<�\0\0\"\0\0y@\0\0\0\0\0\0\0\0\0\0\0\0Z�\0\0\"\0\0�@\0\0\0\0\0\Z\0\0\0\0\0\0\0��\0\0\0\0�-@\0\0\0\0\0\�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0\�~@\0\0\0\0\0&\0\0\0\0\0\0\0/�\0\0\"\0\0\�u@\0\0\0\0\0I\0\0\0\0\0\0\0m�\0\0\"\0\03@\0\0\0\0\0\0\0\0\0\0\0\0̉\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0:�\0\0\0\Z\0\�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0G�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]�\0\0\"\0\0��@\0\0\0\0\0$\0\0\0\0\0\0\0��\0\0\0\06K@\0\0\0\0\0r\0\0\0\0\0\0\0��\0\0\"\0\0D1@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0>y@\0\0\0\0\0\0\0\0\0\0\0\0P\0\0\0\0�Ta\0\0\0\0\0\0\0\0\0\0\0\0\0D�\0\0\"\0\0A�@\0\0\0\0\0\0\0\0\0\0\0\0a�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0`\�@\0\0\0\0\0\0\0\0\0\0\0\0ǋ\0\0\"\0\0hm@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0DH@\0\0\0\0\0[\0\0\0\0\0\0\0Y�\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0m�\0\0\"\0\0�r@\0\0\0\0\0\'\0\0\0\0\0\0\0��\0\0\"\0\003@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0*\0\0\0\0�5@\0\0\0\0\0r\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0|�@\0\0\0\0\0�\0\0\0\0\0\0\00�\0\0\"\0\0L3@\0\0\0\0\0.\0\0\0\0\0\0\0Q�\0\0\"\0\0�8@\0\0\0\0\0\'\0\0\0\0\0\0\0d�\0\0\"\0\0��@\0\0\0\0\0\Z\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0W\0\0\0\0\0\0\09�\0\0\0\0\�Y@\0\0\0\0\0:\0\0\0\0\0\0\0T�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0\�\�@\0\0\0\0\0H\0\0\0\0\0\0\0��\0\0\"\0\0\�0@\0\0\0\0\0\'\0\0\0\0\0\0\0��\0\0\"\0\0)~@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0b�@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0)\0\0\0\0\0\0\0��\0\0\"\0\0`1@\0\0\0\0\0\'\0\0\0\0\0\0\0�\0\0\"\0\0�@\0\0\0\0\0h\0\0\0\0\0\0\06�\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0?�\0\0\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0_�\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0s�\0\0\"\0\0H�@\0\0\0\0\0R\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0�m@\0\0\0\0\0?\0\0\0\0\0\0\0ѐ\0\0\"\0\0�2@\0\0\0\0\0\'\0\0\0\0\0\0\01�\0\0\"\0\0r@\0\0\0\0\0\'\0\0\0\0\0\0\0k�\0\0!\0\0`\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0څ@\0\0\0\0\0\"\0\0\0\0\0\0\0͑\0\0\"\0\0Ч@\0\0\0\0\0\0\0\0\0\0\0\0$�\0\0\"\0\0s}@\0\0\0\0\0\Z\0\0\0\0\0\0\0N�\0\0\0\0\0k@\0\0\0\0\0\0\0\0\0\0\0\0n�\0\0\"\0\0<�@\0\0\0\0\07\0\0\0\0\0\0\0��\0\0\"\0\0\�}@\0\0\0\0\09\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0��\0\0\"\0\0f�@\0\0\0\0\0*\0\0\0\0\0\0\0��\0\0\"\0\0D�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\01\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0R\0\0\0\0\0\0\0m�\0\0\"\0\0��@\0\0\0\0\0G\0\0\0\0\0\0\0\�\0\0!\0\0 \�@\0\0\0\0\0H\0\0\0\0\0\0\0��\0\0\"\0\0ݖ@\0\0\0\0\0m\0\0\0\0\0\0\0l�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ѕ\0\0\"\0\0\�o@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0`\�@\0\0\0\0\0H\0\0\0\0\0\0\0�\0\0\"\0\0�D@\0\0\0\0\0;\0\0\0\0\0\0\05�\0\0\0\0�Ra\0\0\0\0\0\0\0\0\0\0\0\0\0A�\0\0\"\0\0��@\0\0\0\0\0Q\0\0\0\0\0\0\0v�\0\0\"\0\0bp@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0Ж\0\0\"\0\0�@\0\0\0\0\0\�\0\0\0\0\0\0\0W�\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0|�\0\0\"\0\0��@\0\0\0\0\0K\0\0\0\0\0\0\0��\0\0\"\0\0\�@\0\0\0\0\0\Z\0\0\0\0\0\0\0�\0\0\0\0\�>@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0\"\0\0�2@\0\0\0\0\0\'\0\0\0\0\0\0\0�\0\0\0\0(�@\0\0\0\0\0r\0\0\0\0\0\0\0O�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0t�\0\0\"\0\0z3@\0\0\0\0\0#\0\0\0\0\0\0\0\�\0\0\"\0\0h�@\0\0\0\0\0K\0\0\0\0\0\0\0)�\0\0\"\0\0t�@\0\0\0\0\0:\0\0\0\0\0\0\0P�\0\0\"\0\0X�@\0\0\0\0\0\0\0\0\0\0\0\0^�\0\0\0\0\�_@\0\0\0\0\0O\0\0\0\0\0\0\0|�\0\0\"\0\0\r~@\0\0\0\0\0\0\0\0\0\0\0\0ƙ\0\0!\0\0X\�@\0\0\0\0\0H\0\0\0\0\0\0\0ؙ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0ީ@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0$�@\0\0\0\0\0\0\0\0\0\0\0\0\r�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D�\0\0\0\0<i@\0\0\0\0\0�\0\0\0\0\0\0\0c�\0\0\0\0d;@\0\0\0\0\0�\0\0\0\0\0\0\0x�\0\0!\0\0h\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��@\0\0\0\0\0,\0\0\0\0\0\0\0��\0\0\"\0\0\�l@\0\0\0\0\0$\0\0\0\0\0\0\0��\0\0\"\0\0\01@\0\0\0\0\0\'\0\0\0\0\0\0\0Ǜ\0\0\"\0\0�q@\0\0\0\0\0\0\0\0\0\0\0\0\r�\0\0\0\00\�@\0\0\0\0\0e\0\0\0\0\0\0\0�\0\0\"\0\0\�@\0\0\0\0\0=\0\0\0\0\0\0\0X�\0\0\0\0R\�@\0\0\0\0\0\0\0\0\0\0\0\0u�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0Ȝ\0\0\"\0\0�@\0\0\0\0\0K\0\0\0\0\0\0\0�\0\0!\0\0\�\�@\0\0\0\0\08\0\0\0\0\0\0\0x\0\0\0\06K@\0\0\0\0\0r\0\0\0\0\0\0\0��\0\0\"\0\03p@\0\0\0\0\0\0\0\0\0\0\0\0ĝ\0\0\"\0\0Ф@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0!\0\0 \�@\0\0\0\0\0H\0\0\0\0\0\0\0�\0\0!\0\0H\�@\0\0\0\0\0H\0\0\0\0\0\0\0�\0\0\0\0\\�@\0\0\0\0\0l\0\0\0\0\0\0\05�\0\0\"\0\0\0{@\0\0\0\0\0M\0\0\0\0\0\0\0W�\0\0!\0\0 \�@\0\0\0\0\0\0\0\0\0\0\0\0K\0\0\0\0@\�@\0\0\0\0\0r\0\0\0\0\0\0\0k�\0\0\"\0\0ԫ@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0d;@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0.\0\0\0\0\0\0\0��\0\0\"\0\0�}@\0\0\0\0\0\0\0\0\0\0\0\0П\0\0\"\0\0\�F@\0\0\0\0\0�\0\0\0\0\0\0\0X�\0\0\"\0\0\�@\0\0\0\0\0\Z\0\0\0\0\0\0\0��\0\0\"\0\0Xr@\0\0\0\0\0\0\0\0\0\0\0\0ڠ\0\0\"\0\0B�@\0\0\0\0\0#\0\0\0\0\0\0\0\r�\0\0\"\0\0\"�@\0\0\0\0\0K\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0V~@\0\0\0\0\0)\0\0\0\0\0\0\0ɡ\0\0\"\0\0�@\0\0\0\0\0*\0\0\0\0\0\0\0|\0\0\0\0�7@\0\0\0\0\0r\0\0\0\0\0\0\0��\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0v�\0\0\0\0V�@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0*z@\0\0\0\0\0!\0\0\0\0\0\0\0͢\0\0\"\0\0\�z@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0|�@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08�\0\0\0\0\�f@\0\0\0\0\0\0\0\0\0\0\0Z�\0\0\"\0\0f�@\0\0\0\0\0*\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0%�\0\0!\0\0(\�@\0\0\0\0\0H\0\0\0\0\0\0\09�\0\0\"\0\0F�@\0\0\0\0\0+\0\0\0\0\0\0\0V�\0\0!\0\0X\�@\0\0\0\0\0H\0\0\0\0\0\0\0j�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0>@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\"\0\0�n@\0\0\0\0\0*\0\0\0\0\0\0\0\�\0\0\0\0\0�\'@\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0\\�@\0\0\0\0\0;\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0u\0\0\0\0\0\05�\0\0\"\0\0^2@\0\0\0\0\07\0\0\0\0\0\0\0��\0\0\"\0\0\0�\'@\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0Ŧ\0\0\0\0\�@\0\0\0\0\0o\0\0\0\0\0\0�\0\0\0\0\�9@\0\0\0\0\0r\0\0\0\0\0\0\0�\0\0\0\0�j@\0\0\0\0\0L\0\0\0\0\0\0\0-�\0\0\0\0Dk@\0\0\0\0\09\0\0\0\0\0\0\0I�\0\0\"\0\0�0@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0ƭ@\0\0\0\0\0\Z\0\0\0\0\0\0\03�\0\0\0\0~k@\0\0\0\0\0\0\0\0\0\0\0\0Q�\0\0\"\0\00�@\0\0\0\0\0]\0\0\0\0\0\0\0��\0\0!\0\0@\�@\0\0\0\0\0\0\0\0\0\0\0\0̨\0\0\"\0\0<x@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0!\0\0H\�@\0\0\0\0\0H\0\0\0\0\0\0\0��\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0|�@\0\0\0\0\0\0\0\0\0\0\0\0O�\0\0!\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0c�\0\0\"\0\0�@\0\0\0\0\0=\0\0\0\0\0\0\0�\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0+�\0\0\"\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0H\\@\0\0\0\0\0�\0\0\0\0\0\0\0ͪ\0\0\"\0\0l�@\0\0\0\0\0M\0\0\0\0\0\0\0<\0\0\0\0z�@\0\0\0\0\0�\0\0\0\0\0\00�\0\0\"\0\0��@\0\0\0\0\0u\0\0\0\0\0\0˫\0\0!\0\0�\�@\0\0\0\0\0\Z\0\0\0\0\0\0\0\�\0\0\"\0\06�@\0\0\0\0\0\0\0\0\0\0\0\0?�\0\0\"\0\02�@\0\0\0\0\0\0\0\0\0\0\0\0}�\0\0\"\0\02E@\0\0\0\0\0�\0\0\0\0\0\0��\0\0\"\0\0(1@\0\0\0\0\0\0\0\0\0\0\0\0C�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0r�\0\0\"\0\0�n@\0\0\0\0\0+\0\0\0\0\0\0\0��\0\0\"\0\0f6@\0\0\0\0\0\'\0\0\0\0\0\0\0��\0\0\"\0\0\"s@\0\0\0\0\0I\0\0\0\0\0\0\0ͭ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0!\0\0h\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0ܒ@\0\0\0\0\0&\0\0\0\0\0\0\0;�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0x�@\0\0\0\0\0\Z\0\0\0\0\0\0\0ˮ\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0�q@\0\0\0\0\0\0\0\0\0\0\0\0d�\0\0\"\0\0�|@\0\0\0\0\01\0\0\0\0\0\0\0��\0\0!\0\0p\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ׯ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0�@\0\0\0\0\0r\0\0\0\0\0\0\0�\0\0\"\0\0\�~@\0\0\0\0\0&\0\0\0\0\0\0\0�\0\0\"\0\0`1@\0\0\0\0\0\'\0\0\0\0\0\0\0g�\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0;\0\0\0\0\0\0\0װ\0\0\"\0\0�n@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0Ч@\0\0\0\0\0\0\0\0\0\0\0\0I�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\003@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0@�\0\0\"\0\0<r@\0\0\0\0\0\0\0\0\0\0\0\0s�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0�n@\0\0\0\0\0+\0\0\0\0\0\0\0��\0\0\"\0\0?�@\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0\"�\0\0\"\0\0�1@\0\0\0\0\0\'\0\0\0\0\0\0\0s�\0\0!\0\0`\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0t`@\0\0\0\0\0K\0\0\0\0\0\0\0M�\0\0\0\0�\�@\0\0\0\0\0\0\0\0\0\0\0\0]�\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0˴\0\0\"\0\0ʊ@\0\0\0\0\0&\0\0\0\0\0\0\0�\0\0\"\0\0b�@\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0�:@\0\0\0\0\0r\0\0\0\0\0\0\0��\0\0\"\0\0�l@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0�O@\0\0\0\0\0i\0\0\0\0\0\0\0��\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0U�\0\0!\0\0 \�@\0\0\0\0\0\0\0\0\0\0\0\0i�\0\0\0\0c@\0\0\0\0\0�\0\0\0\0\0\0��\0\0!\0\0x\�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0~\0\0\0\0\0\0\0\�\0\0\0\0\�9@\0\0\0\0\0r\0\0\0\0\0\0\0\�\0\0\"\0\0*�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0R�@\0\0\0\0\0\0\0\0\0\0\0\0W�\0\0\"\0\0^�@\0\0\0\0\0i\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\06�\0\0\"\0\0J�@\0\0\0\0\03\0\0\0\0\0\0\0x�\0\0\0\0��@\0\0\0\0\0,\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0Ƹ\0\0\"\0\0�m@\0\0\0\0\0?\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0M\0\0\0\0\0\0\0D�\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0X�\0\0\"\0\0n�@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\00@\0\0\0\0\0X\0\0\0\0\0\0\0\�\0\0\"\0\0P�@\0\0\0\0\0+\0\0\0\0\0\0\01�\0\0\"\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��@\0\0\0\0\0r\0\0\0\0\0\0\0n�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0!\0\0\�\�@\0\0\0\0\0H\0\0\0\0\0\0\0��\0\0\"\0\0ڐ@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0\n�@\0\0\0\0\0�\0\0\0\0\0\0\0B�\0\0\"\0\0$�@\0\0\0\0\0\0\0\0\0\0\0\0λ\0\0!\0\0\�\�@\0\0\0\0\01\0\0\0\0\0\0\0�\0\0!\0\0 \�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0\"\0\0\0\0\0\0\0M�\0\0\0\0\�@\0\0\0\0\0.\0\0\0\0\0\0d�\0\0!\0\0\�@\0\0\0\0\0H\0\0\0\0\0\0\0x�\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0\01@\0\0\0\0\0\'\0\0\0\0\0\0\0��\0\0\"\0\0\�@\0\0\0\0\0]\0\0\0\0\0\0\0\�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0`(@\0\0\0\0\0\0\0\0\0\0\0\0\07�\0\0\"\0\0l@\0\0\0\0\0\0\0\0\0\0\0\0@�\0\0\"\0\0��@\0\0\0\0\0A\0\0\0\0\0\0\0v�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0F\0\0\0\0\0\0\0ֽ\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0!\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0!\0\0\�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0E�\0\0\"\0\0�@\0\0\0\0\0*\0\0\0\0\0\0\0\�\0\0\0\0�\�@\0\0\0\0\0r\0\0\0\0\0\0\0t�\0\0\"\0\0b�@\0\0\0\0\0�\0\0\0\0\0\0\0	�\0\0\"\0\0~�@\0\0\0\0\0\0\0\0\0\0\0\0\'�\0\0\0\0�)@\0\0\0\0\0�\0\0\0\0\0\0\0E�\0\0\"\0\0P�@\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0$M@\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\"\0\0��@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\�\�@\0\0\0\0\0\0\0\0\0\0\0\0ݿ\0\0\"\0\0�}@\0\0\0\0\0)\0\0\0\0\0\0\0�\0\0\0\0\nX@\0\0\0\0\0h\0\0\0\0\0\0\01�\0\0\"\0\0$�@\0\0\0\0\0&\0\0\0\0\0\0\0�\0\0\0\0h\�@\0\0\0\0\0r\0\0\0\0\0\0\0v�\0\0\"\0\0s}@\0\0\0\0\0\Z\0\0\0\0\0\0\0��\0\0\"\0\0\\�@\0\0\0\0\0M\0\0\0\0\0\0\0\��\0\0\0\0�5@\0\0\0\0\0r\0\0\0\0\0\0\0\��\0\0\"\0\0�}@\0\0\0\0\0)\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�\0\0\0\0�@@\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\"\0\0\�z@\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\"\0\0*�@\0\0\0\0\0\0\0\0\0\0\0\0\��\0\0\0\0�\�@\0\0\0\0\0r\0\0\0\0\0\0\0��\0\0\"\0\0~p@\0\0\0\0\0�\0\0\0\0\0\0\0\�\0\0!\0\00\�@\0\0\0\0\0\0\0\0\0\0\0\0,\�\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0@\�\0\0\"\0\0��@\0\0\0\0\0u\0\0\0\0\0\0\�\�\0\0\0\0\�O@\0\0\0\0\0\�\0\0\0\0\0\0\0�\�\0\0!\0\0�\�@\0\0\0\0\0H\0\0\0\0\0\0\0\�\0\0\"\0\0�o@\0\0\0\0\0*\0\0\0\0\0\0\0Y\�\0\0\"\0\0\�@\0\0\0\0\0�\0\0\0\0\0\0\0�\�\0\0\0\0\0�(@\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\"\0\0|q@\0\0\0\0\0\0\0\0\0\0\0\0\0crtstuff.c\0__JCR_LIST__\0deregister_tm_clones\0__do_global_dtors_aux\0completed.7585\0__do_global_dtors_aux_fini_array_entry\0frame_dummy\0__frame_dummy_init_array_entry\0brackets.cpp\0_ZStL19piecewise_construct\0_ZStL8__ioinit\0_ZStL13allocator_arg\0_ZStL6ignore\0_ZN9__gnu_cxxL21__default_lock_policyE\0_Z41__static_initialization_and_destruction_0ii\0_GLOBAL__sub_I__ZN10n_brackets9CbracketsC2Ev\0class.cpp\0_GLOBAL__sub_I__ZN7n_class6Cclass7my_initEPv\0cout.cpp\0_GLOBAL__sub_I__ZN6n_cout5CcoutC2Ev\0echo.cpp\0_GLOBAL__sub_I__ZN6n_echo5CechoC2Ev\0esc.cpp\0_GLOBAL__sub_I__ZN5n_esc4CescC2Ev\0ex_func.cpp\0_GLOBAL__sub_I__Z6runcmdPv\0exec.cpp\0_GLOBAL__sub_I__ZN6n_exec5CexecC2Ev\0exit.cpp\0_GLOBAL__sub_I__ZN6n_exit5CexitC2Ev\0file.cpp\0_GLOBAL__sub_I__ZN6n_file5CfileC2Ev\0home.cpp\0_GLOBAL__sub_I__ZN6n_home5ChomeC2Ev\0http.cpp\0_GLOBAL__sub_I__ZN6n_http5ChttpC2Ev\0iwant.cpp\0_GLOBAL__sub_I__ZN7n_iwant6CiwantC2Ev\0main.cpp\0_GLOBAL__sub_I__ZN6n_main5CmainC2Ev\0make.cpp\0_GLOBAL__sub_I__ZN6n_make5CmakeC2Ev\0math.cpp\0_GLOBAL__sub_I__ZN6n_math5CmathC2Ev\0myMemory.cpp\0_GLOBAL__sub_I__ZN11n_my_memory9CmyMemoryC2Ev\0net.cpp\0_GLOBAL__sub_I__ZN5n_net4CnetC2Ev\0new.cpp\0_GLOBAL__sub_I__ZN5n_new4CnewC2Ev\0object.cpp\0_ZL18__gthread_active_pv\0_ZZL18__gthread_active_pvE20__gthread_active_ptr\0_ZL15__gthread_equalmm\0_ZN9__gnu_cxxL18__exchange_and_addEPVii\0_ZN9__gnu_cxxL25__exchange_and_add_singleEPii\0_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii\0_GLOBAL__sub_I__ZN8n_object10CparameterC2Ev\0os.cpp\0_GLOBAL__sub_I__ZN3CosC2Ev\0path.cpp\0_GLOBAL__sub_I__ZN6n_path5CpathC2Ev\0run.cpp\0_GLOBAL__sub_I__ZN5n_run4CrunC2Ev\0socket.cpp\0_GLOBAL__sub_I__ZN8n_socket7CsocketC2Ev\0sql.cpp\0_GLOBAL__sub_I__ZN5n_sql4CsqlC2Ev\0syntax.cpp\0_GLOBAL__sub_I__ZN8n_syntax7CsyntaxC2Ev\0sys.cpp\0_GLOBAL__sub_I__ZN5n_sys4CsysC2Ev\0tag.cpp\0_GLOBAL__sub_I__ZN5n_tag4CtagC2Ev\0task.cpp\0_GLOBAL__sub_I__ZN6n_task5CtaskC2Ev\0temp.cpp\0_GLOBAL__sub_I__ZN6n_temp5CtempC2Ev\0timer.cpp\0_GLOBAL__sub_I__ZN7n_timer6CtimerC2Ev\0uri.cpp\0_GLOBAL__sub_I__ZN5n_uri4CuriC2Ev\0url.cpp\0_GLOBAL__sub_I__ZN5n_url4CurlC2Ev\0xml.cpp\0_GLOBAL__sub_I__ZN5n_xml4CxmlC2Ev\0__FRAME_END__\0__JCR_END__\0__GNU_EH_FRAME_HDR\0_DYNAMIC\0__init_array_end\0__init_array_start\0_GLOBAL_OFFSET_TABLE_\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EED1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE6removeERKS1_\0_Znam@@GLIBCXX_3.4\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE8pop_backEv\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC2EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE6removeERKS3_\0_ZTVN7n_class6CclassE\0_ZNSt7__cxx114listIPvSaIS1_EED2Ev\0_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEEONSt16remove_referenceIT_E4typeEOSD_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EEC2Ev\0_ZN6n_main5CmainD1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@@GLIBCXX_3.4.21\0_ZN8n_object6Object4isMeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZN8n_object6Object8who_am_iEv\0_ZN8n_object6Object4isMeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZNSt7__cxx114listIPvSaIS1_EE4backEv\0_ZTIN6n_temp5CtempE\0_ZNSt8__detail15_List_node_base7_M_hookEPS0_@@GLIBCXX_3.4.15\0_ZNKSt14_List_iteratorIPN8n_object6ObjectEEdeEv\0_ZTIN5n_run4CrunE\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EED2Ev\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED0Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implC1Ev\0_ZSt4moveIRPN8n_object6ObjectEEONSt16remove_referenceIT_E4typeEOS5_\0_ZN7n_timer6Ctimer10t_strftimeEPcmPKcPK2tm\0_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_\0_ZN7n_class6CclassC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTIN6n_exec5CexecE\0_ZN6n_math5CmathC1Ev\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE9constructIS4_IRKS3_EEEvPT_DpOT0_\0_ZN5n_run4CrunD1Ev\0_ZN8n_socket7CsocketC1Ev\0_ZN7n_class6CclassD1Ev\0_ZN8n_socket7Csocket7displayEv\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC1ERKS8_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9_M_insertIIRKS2_EEEvSt14_List_iteratorIS2_EDpOT_\0_ZSt12__get_helperILm1EPvIEERT0_RSt11_Tuple_implIXT_EIS1_DpT1_EE\0_ZNKSt11_Deque_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv\0_ZTSN7n_class6CclassE\0bind@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC1Ev\0_ZNSt10_List_nodeImEC2IJEEEDpOT_\0_ZNSt5dequeIPvSaIS0_EE3endEv\0_ZNSaIcED2Ev@@GLIBCXX_3.4\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_inc_sizeEm\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC1IIS7_EEES9_DpOT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEC2EPNSt8__detail15_List_node_baseE\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEED1Ev\0_ZTVN5n_sys4CsysE\0_ZNSt11_Deque_baseIPvSaIS0_EED1Ev\0_ZNSt10_Head_baseILm1EPvLb0EE7_M_headERS1_\0_ZNSt6threadC2IRPFiPvEJRS1_EEEOT_DpOT0_\0_ZNSt11_Tuple_implILm1EIPvEEC2EOS1_\0_ZN8n_syntax7CsyntaxC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE18_M_deallocate_nodeEPS0_\0_ZN8n_object6Object10are_you_okEv\0_ZTVN5n_net4CnetE\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC2Ev\0_ZNSt5dequeIPvSaIS0_EED2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC1INS0_5_ImplISt12_Bind_simpleIFPFiPvES8_EEEEvEEOS_IT_LS3_2EE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE8_M_eraseESt14_List_iteratorIS3_E\0_ZNSt11_Deque_baseIPvSaIS0_EEC2EOS2_\0_ZN3CosD2Ev\0_ZSt4moveIRPPPvEONSt16remove_referenceIT_E4typeEOS5_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IJS2_EEEDpOT_\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE8max_sizeEv\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EEC1Ev\0_ZN8n_object10CparameterC1Ev\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IJS2_EEEDpOT_\0_ZN7n_iwant6Ciwant8who_am_iEv\0_ZNSt11_Deque_baseIPvSaIS0_EE17_M_deallocate_mapEPPS0_m\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC2ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEIS7_EESt10shared_ptrIT_EDpOT0_\0_ZN9__gnu_cxx13new_allocatorIPPvEC1Ev\0_ZN6n_cout5CcoutC1Ev\0_ZNKSt6thread8joinableEv\0_edata\0_ZN6n_home5ChomeC1Ev\0socket@@GLIBC_2.2.5\0_ZN7n_class6Cclass4funcEPv\0_ZNSaIPvEC1Ev\0_ZN5n_uri4CuriD1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE8_M_clearEv\0_ZTVN8n_object6ObjectE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC1IRKS2_IRS0_EvEEOT_DpOT0_\0_ZN8n_object6Object6myNameEPS0_\0_ZSt11__addressofIKPvEPT_RS2_\0_ZSt9terminatev@@GLIBCXX_3.4\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEEC1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@@GLIBCXX_3.4.21\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EEC2ERKS9_\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC2IS2_EEOT_\0_ZNSt11_Tuple_implILm1EIPvEEC1IRS0_EEOT_\0_ZN6n_exec5CexecC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_@@GLIBCXX_3.4.21\0_ZNSt6thread2idC1Ev\0_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIIRKS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE9constructIS9_JS8_EEEvPT_DpOT0_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEED1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE15_M_create_nodesEPPS0_S4_\0_ZNSt10_List_nodeIPvEC2IJS0_EEEDpOT_\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev\0_ZTSN6n_math5CmathE\0accept@@GLIBC_2.2.5\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_\0_ZTIN5n_sys4CsysE\0_ZTSN5n_new4CnewE\0_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_EIS7_EESt10shared_ptrIT_ERKT0_DpOT1_\0recv@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_set_sizeEm\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE7destroyIS4_EEvPT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEEC2Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_IRKS4_EEEvPT_DpOT0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES9_\0_IO_stdin_used\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEED1Ev\0_ZNSaIPvEC1ERKS0_\0_ZN8n_object6ObjectD2Ev\0_ZTSN5n_sql4CsqlE\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC1ERKS2_\0_ZNSt6threadC1IRPFiPvEJRS1_EEEOT_DpOT0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv\0_ZN5n_uri4CuriD2Ev\0_ZN7n_timer6Ctimer7t_ctimeEPKl\0_ZSt17__throw_bad_allocv@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EED1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIIS1_EEEvSt14_List_iteratorIS1_EDpOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS3_IS2_EEEvPT_DpOT0_\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EED1Ev\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC2IRKS2_JRS0_EvEEOT_DpOT0_\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEED1Ev\0_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC1IIRKS1_EEEDpOT_\0_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv\0_ZNSt15aligned_storageILm40ELm8EEC1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE7destroyIS3_EEvPT_\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EE7_M_headERS3_\0_ZNSt10_List_nodeIN8n_object7CmyfuncEED1Ev\0_ZNSt16allocator_traitsISaIPPvEE10deallocateERS2_PS1_m\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EEC1EOS2_St17integral_constantIbLb1EE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE11_M_put_nodeEPSt10_List_nodeIS6_E\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag\0_ZNKSt14_List_iteratorIPvEdeEv\0_ZN8n_object7Cmyfunc4isMeEPc\0_ZNSt11_Deque_baseIPvSaIS0_EEC2Ev\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC1Ev\0__cxa_begin_catch@@CXXABI_1.3\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC1IJRKS1_EEEDpOT_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@@GLIBCXX_3.4.21\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn\0_ZNSaISt10_List_nodeIPvEEC2Ev\0_ZNSt16allocator_traitsISaIPvEE10deallocateERS1_PS0_m\0_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_\0_ZN8n_object10CparameterD2Ev\0asctime@@GLIBC_2.2.5\0_ZNSaIPPvEC1IS_EERKSaIT_E\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IJRKS2_EEEDpOT_\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC2EOS3_\0_ZNSt6threadC1IRPFiPvEIRS1_EEEOT_DpOT0_\0_ZN7n_timer6Ctimer10t_difftimeEll\0_ZN8n_object6Object5addMeEPS0_\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@@GLIBCXX_3.4.21\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEED2Ev\0memcmp@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EED1Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC2IIS7_EEES9_DpOT_\0_ZTIN6n_make5CmakeE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implC2Ev\0_ZNSt7__cxx114listIPvSaIS1_EED1Ev\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IIS2_EEEDpOT_\0_ZNSt11_Deque_baseIPvSaIS0_EE16_M_destroy_nodesEPPS0_S4_\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE6_M_ptrEv\0_ZN11n_my_memory9CmyMemoryD2Ev\0_ZNSaIPPvED1Ev\0_Z11object_funcPv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE21_M_get_Node_allocatorEv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EED2Ev\0_ZNSt5tupleIJPFiPvES0_EEC2EOS3_\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED1Ev\0_ZSt7forwardISt12_Bind_simpleIFPFiPvES1_EEEOT_RNSt16remove_referenceIS6_E4typeE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EEC1Ev\0_ZN8n_object6ObjectC2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC1Ev\0main\0_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@@GLIBCXX_3.4\0_ZTVN5n_sql4CsqlE\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC1ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt11_Tuple_implILm1EJPvEEC2EOS1_\0_ZN8n_socket7Csocket8s_socketEiii\0send@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EEC2Ev\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE7destroyIS8_EEvRS9_PT_\0_ZNSt6thread10_Impl_baseC2Ev\0_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSE_m\0difftime@@GLIBC_2.2.5\0_ZSt7forwardIRPFiPvEEOT_RNSt16remove_referenceIS4_E4typeE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev\0_ZN6n_echo5CechoC1Ev\0_ZNSt10_List_nodeImEC1IIEEEDpOT_\0_ZTSN8n_syntax7CsyntaxE\0_ZN7n_class6CclassC1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD2Ev\0_ZTSN5n_url4CurlE\0_ZN8n_socket7Csocket6s_recvEiPcii\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2EOS4_\0_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZTIN5n_esc4CescE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EE7_M_tailERS3_\0_ZN5n_tag4CtagD1Ev\0_ZNKSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5emptyEv\0_ZNSt11_Tuple_implILm1EJPvEEC2IRS0_EEOT_\0memset@@GLIBC_2.2.5\0_ZN9__gnu_cxx13new_allocatorIPvE8allocateEmPKv\0_ZN6n_path5CpathC1Ev\0__dso_handle\0_ZN8n_object7CmyfuncC1ERKS0_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info\0_ZN3CosD1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIIS3_EEEPSt10_List_nodeIS3_EDpOT_\0pthread_create@@GLIBC_2.2.5\0_ZN7n_class6Cclass6createEPv\0_ZN5n_new4Cnew4funcEPv\0_ZN6n_cout5CcoutD2Ev\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC1ERKS3_\0_ZN8n_object6Object7executeEPFiPvES1_b\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE7_M_initEv\0_ZTSN5n_tag4CtagE\0_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_\0_ZTIN6n_cout5CcoutE\0_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZN11n_my_memory9CmyMemory9delete_meEv\0_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEEONSt16remove_referenceIT_E4typeEOSD_\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE9constructIS8_JS7_EEEvRS9_PT_DpOT0_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IIRKS2_EEEDpOT_\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEED1Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_set_sizeEm\0_ZNSt5dequeIPvSaIS0_EEC2EOS2_\0_ZN5n_xml4CxmlC1Ev\0_ZTIN7n_class6CclassE\0_ZTVN6n_http5ChttpE\0rename@@GLIBC_2.2.5\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@@GLIBCXX_3.4.21\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implC1Ev\0vsnprintf@@GLIBC_2.2.5\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE4backEv\0_ZNSt5dequeIPvSaIS0_EE5beginEv\0_ZSt3getILm0EIPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeERS7_\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_impl12_M_swap_dataERS3_\0_ZNKSt5stackIPvSt5dequeIS0_SaIS0_EEE5emptyEv\0_ZNSt5tupleIIPFiPvES0_EEC1EOS3_\0_ZNSt12_Bind_simpleIFPFiPvES0_EE9_M_invokeIJLm0EEEEiSt12_Index_tupleIJXspT_EEE\0_ZSt12__get_helperILm0EPFiPvEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE\0_ZNSt7__cxx114listIPvSaIS1_EEC1Ev\0_ZTSN5n_esc4CescE\0_ZN5n_net4CnetC1Ev\0_ZNSt6thread10_Impl_baseD0Ev\0clock@@GLIBC_2.2.5\0_ZN8n_socket7Csocket7s_closeEiii\0_ZTVN7n_timer6CtimerE\0_ZN11n_my_memory9CmyMemory4isMeEPvlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTVN7n_iwant6CiwantE\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEED2Ev\0mktime@@GLIBC_2.2.5\0_ZTVN6n_file5CfileE\0_ZN7n_iwant6CiwantD2Ev\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZNSaIPvEC2ERKS0_\0_ZNKSt9type_infoeqERKS_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE21_M_get_Node_allocatorEv\0_ZTIN5n_uri4CuriE\0_ZSt4swapImEvRT_S1_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@@GLIBCXX_3.4.21\0_ZSt7forwardIPFiPvEEOT_RNSt16remove_referenceIS3_E4typeE\0_ZN8n_object7CmyfuncC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZNKSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5emptyEv\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@@GLIBCXX_3.4.21\0_ZTVN10__cxxabiv117__class_type_infoE@@CXXABI_1.3\0_ZN9__gnu_cxx13new_allocatorIPPvED1Ev\0_ZSt19__throw_logic_errorPKc@@GLIBCXX_3.4\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC1IIRKS2_EEEDpOT_\0_ZN6n_make5CmakeC1Ev\0_ZTSN8n_socket7CsocketE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev\0_ZTSN6n_task5CtaskE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE21_M_get_Node_allocatorEv\0_ZSt11__addressofIPN8n_object6ObjectEEPT_RS3_\0localtime@@GLIBC_2.2.5\0_ZN8n_socket7Csocket6s_sendEiPKcii\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEppEv\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEEC1Ev\0_ZTIN8n_socket7CsocketE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE8_M_clearEv\0_ZNSt14_List_iteratorIPvEC2Ev\0_ZTSN6n_home5ChomeE\0_ZN8n_socket7CsocketD1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2Ev\0_Z10rename_cmdPv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED2Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_put_nodeEPSt10_List_nodeIS3_E\0_ZNSt11_Deque_baseIPvSaIS0_EE16_M_allocate_nodeEv\0_ZNSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EEC1EOS2_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9push_backERKS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implD2Ev\0_ZNK9__gnu_cxx13new_allocatorIPPvE8max_sizeEv\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZTVN6n_cout5CcoutE\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEEC1Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev\0_ZN11n_my_memory9CmyMemoryC1Ei\0_ZNSolsEPKv@@GLIBCXX_3.4\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1Ev\0_ZN6n_path5CpathD2Ev\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@@GLIBCXX_3.4.21\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5beginEv\0_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag\0_ZNKSt7__cxx114listIPvSaIS1_EE5emptyEv\0_ZN7n_timer6Ctimer8t_mktimeEP2tm\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EJSB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZSt4moveIRSt11_Deque_baseIPvSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_\0_ZNSt10_List_nodeImEC1IJEEEDpOT_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_get_nodeEv\0strftime@@GLIBC_2.2.5\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE10deallocateEPSD_m\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE7destroyIS9_EEvPT_\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE5clearEv\0_ZN5n_sys4CsysC1Ev\0memcpy@@GLIBC_2.14\0_ZNSt5tupleIJPFiPvES0_EEC1IRKS2_RS0_vEEOT_OT0_\0_ZN8n_object6Object10my_ex_funcEv\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC1INS0_5_ImplISt12_Bind_simpleIFPFiPvES6_EEEEvEEOS_IT_E\0connect@@GLIBC_2.2.5\0_ZN8n_socket7Csocket8s_acceptEiP8sockaddrPj\0_ZTIN8n_syntax7CsyntaxE\0_ZN8n_object6ObjectC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@@GLIBCXX_3.4.21\0system@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC2Ev\0_ZN8n_object7Cmyfunc4isMeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZTIN6n_home5ChomeE\0_ZN8n_object6Object9my_familyEv\0_ZTSN7n_timer6CtimerE\0_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIJS1_EEEPSt10_List_nodeIS1_EDpOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE9constructIS4_JRKS3_EEEvPT_DpOT0_\0_ZTIN6n_file5CfileE\0_ZNKSt14_List_iteratorIPvEneERKS1_\0_ZSt4moveIRSaIPvEEONSt16remove_referenceIT_E4typeEOS4_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEED1Ev\0gmtime@@GLIBC_2.2.5\0_ZN8n_object6Object11add_ex_funcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZN9__gnu_cxx13new_allocatorIPPvE10deallocateEPS2_m\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED0Ev\0_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEJS7_EESt10shared_ptrIT_EDpOT0_\0_ZN8n_socket7Csocket6serverEPcS1_PiS1_S2_\0__cxa_atexit@@GLIBC_2.2.5\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEC1EOS6_\0_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@@GLIBCXX_3.4.21\0_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_\0_ZN8n_object6Object8removeMeEPv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC2EOS1_\0_ZTVN5n_xml4CxmlE\0_ZN9__gnu_cxx13new_allocatorIPvED1Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9push_backERKS2_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE10deallocateEPS3_m\0_ZN7n_timer6Ctimer4funcEPv\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEEC1EOS3_\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEED2Ev\0_ZNSt11_Tuple_implILm1EJPvEEC1EOS1_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC2IRKS2_IRS0_EvEEOT_DpOT0_\0_ZN8n_object6Object7executeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvb\0_ZN6n_cout5Ccout4funcEPv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2Ev\0_ZSt12__get_helperILm1EPvJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE\0_ZN7n_iwant6CiwantC1Ev\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC2ERKS2_\0_ZN8n_socket7Csocket9s_connectEiP8sockaddri\0_ZTVN11n_my_memory9CmyMemoryE\0_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE@@GLIBCXX_3.4.21\0_ZTSN5n_xml4CxmlE\0_ZNKSt5dequeIPvSaIS0_EE5emptyEv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIIRKS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFPFiPvES2_EEEESt10shared_ptrINS_5_ImplIT_EEEOS9_\0_ZN8n_socket7Csocket8s_listenEii\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EED2Ev\0_ZdlPv@@GLIBCXX_3.4\0_ZNSt15_Deque_iteratorIPvRS0_PS0_E14_S_buffer_sizeEv\0_ZTIN11n_my_memory9CmyMemoryE\0_ZTS3Cos\0_ZNSaISt10_List_nodeIPvEED2Ev\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEED1Ev\0_ZN8n_object6Object5allotEiPPvib\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_IS4_EEEvPT_DpOT0_\0_ZSt7forwardIPN8n_object6ObjectEEOT_RNSt16remove_referenceIS3_E4typeE\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC1IRKS2_JRS0_EvEEOT_DpOT0_\0_ZN9__gnu_cxx13new_allocatorIPvEC1ERKS2_\0_ZN8n_socket7CsocketD2Ev\0_ZN9__gnu_cxx13new_allocatorIPPvEC2Ev\0_ZSt7forwardIRKPN8n_object6ObjectEEOT_RNSt16remove_referenceIS5_E4typeE\0_ZTVNSt6thread10_Impl_baseE\0_ZN8n_object10CparameterD1Ev\0_ZN9__gnu_cxx13new_allocatorIPvE7destroyIS1_EEvPT_\0_ZTIN6n_http5ChttpE\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EEC1Ev\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1IRKS2_IRS0_EEEOT_DpOT0_\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_get_nodeEv\0_ZTIN8n_object6ObjectE\0_ZSt13__bind_simpleIRPFiPvEIRS0_EENSt19_Bind_simple_helperIT_IDpT0_EE6__typeEOS6_DpOS7_\0_ZN6n_temp5CtempC1Ev\0_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@@GLIBCXX_3.4\0_Znwm@@GLIBCXX_3.4\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE3endEv\0_ZN8n_object6Object9my_syntaxEv\0_ZN5n_tag4CtagD2Ev\0_ZN8n_object6Object7my_initEPv\0_ZN8n_object6Object5my_idEv\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EE7_M_tailERS3_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE14_M_create_nodeIJS3_EEEPSt10_List_nodeIS3_EDpOT_\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS8_EERKSaIT_E\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IJRKS2_EEEDpOT_\0_ZTINSt6thread10_Impl_baseE\0_ZNSaIPPvEC2IS_EERKSaIT_E\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev\0_Z10iwant_funcPv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EEC2Ev\0_ZTVN8n_socket7CsocketE\0_ZNSt5dequeIPvSaIS0_EEC2Ev\0_ZN8n_object6Object15clear_my_memoryEPS0_\0_ZNSt12_Bind_simpleIFPFiPvES0_EE9_M_invokeIILm0EEEEiSt12_Index_tupleIIXspT_EEE\0_ZN7n_timer6Ctimer11t_localtimeEPKl\0_ZN7n_class6CclassC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC1Ev\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC2IIRKS1_EEEDpOT_\0_ZTSN6n_exec5CexecE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEED2Ev\0_ZTV3Cos\0_ZNSolsEPFRSoS_E@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@@GLIBCXX_3.4.21\0_ZNSaISt10_List_nodeIPvEED1Ev\0_ZNSt5dequeIPvSaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_\0_ZNSt11_Tuple_implILm1EJPvEEC1IRS0_EEOT_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES9_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFPFiPvES6_EEEEvEEOS_IT_E\0_ZTSSt19_Sp_make_shared_tag\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_dec_sizeEm\0_ZTVN5n_esc4CescE\0_ZTIN5n_sql4CsqlE\0_ZN11n_my_memory9CmyMemoryD1Ev\0_Z8time_cmdPv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implD1Ev\0_ZTSN5n_run4CrunE\0_ZNSaIcED1Ev@@GLIBCXX_3.4\0_ZNSt7__cxx119to_stringEl\0_ZTVN10n_brackets9CbracketsE\0_ZN8n_object6ObjectD1Ev\0_ZN8n_object7CmyfuncC2ERKS0_\0_ZTIN5n_new4CnewE\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@@GLIBCXX_3.4.21\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE7_M_initEv\0_ZN6n_exit5CexitD2Ev\0_ZN8n_object6Object7executeEPv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIJS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZN8n_object6Object10add_memoryEPS0_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC1ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEEC2EOS3_\0_ZN3CosC1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC1Ev\0_ZNSt11_Tuple_implILm0EJPFiPvES0_EEC1EOS3_\0_ZNSt5tupleIJPFiPvES0_EEC2IRKS2_RS0_vEEOT_OT0_\0_ZN8n_object6Object4isMeEPc\0_ZN6n_exit5Cexit4funcEPv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EEC1Ev\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE8_M_clearEv\0_ZN9__gnu_cxx13new_allocatorIPPvE8allocateEmPKv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED2Ev\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_\0_ZNSt14_List_iteratorIPvEmmEv\0__stack_chk_fail@@GLIBC_2.4\0_ZN8n_socket7Csocket6serverEv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS9_EEvPT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEmmEv\0_ZNSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED1Ev\0listen@@GLIBC_2.2.5\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE7destroyIS5_EEvPT_\0_ZNSt10_Head_baseILm1EPvLb0EEC2IRS0_EEOT_\0_ZSt16__deque_buf_sizem\0_ZTINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZN6n_exit5CexitC1Ev\0__TMC_END__\0_ZNSt11_Deque_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv\0_ZN8n_object6Object7executeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvb\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1EOS4_\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_inc_sizeEm\0_ZNSt5dequeIPvSaIS0_EEC1Ev\0_ZN8n_socket7Csocket10s_shutdownEii\0_ZNSt7__cxx114listIPvSaIS1_EE3endEv\0_ZN9__gnu_cxx13new_allocatorIPvEC1Ev\0_ZNKSt14_List_iteratorIN8n_object7CmyfuncEEneERKS2_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC2ERKS8_\0_ZNSaIPvED2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC1EOS3_\0_ZNSt7__cxx114listIPvSaIS1_EE8pop_backEv\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EEC1ERKS9_\0_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEE9constructIS8_IS7_EEEvRS9_PT_DpOT0_\0_ZTSN6n_temp5CtempE\0_ZTVNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS3_JS2_EEEvPT_DpOT0_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EED2Ev\0_Jv_RegisterClasses\0_ZN6n_path5CpathD1Ev\0_ZTVN5n_run4CrunE\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EEC2EOS3_\0_ZNSt11_Deque_baseIPvSaIS0_EE17_M_initialize_mapEm\0_ZTIN6n_main5CmainE\0_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZN5n_run4CrunC1Ev\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5clearEv\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2Ev\0_ZN5n_sql4CsqlC1Ev\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE8allocateEmPKv\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE8_M_clearEv\0_ZSt3getILm1EJPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@@GLIBCXX_3.4.21\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEED2Ev\0_ZNSt7__cxx114listIPvSaIS1_EE5beginEv\0_ZNSt5tupleIIPFiPvES0_EEC2IRKS2_RS0_vEEOT_OT0_\0_ZN6n_main5CmainC1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE10deallocateEPS4_m\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EED1Ev\0_ZN7n_class6CclassC2Ev\0object_id\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC1Ev\0_ZNSt5dequeIPvSaIS0_EE8pop_backEv\0getaddrinfo@@GLIBC_2.2.5\0_ZSt4moveIRSt11_Tuple_implILm1EJPvEEEONSt16remove_referenceIT_E4typeEOS5_\0_ZNSaIPPvED2Ev\0_ZSteqNSt6thread2idES0_\0_ZSt4moveIRSt15_Deque_iteratorIPvRS1_PS1_EEONSt16remove_referenceIT_E4typeEOS7_\0_ZN8n_object6Object7executeEPS0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_Pvb\0_ZSt4cout@@GLIBCXX_3.4\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@@GLIBCXX_3.4.21\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC2ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZN6n_cout5CcoutD1Ev\0_ZSt4swapIPPPvEvRT_S4_\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC2ERKS3_\0_ZdaPv@@GLIBCXX_3.4\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@@GLIBCXX_3.4.21\0_ZTVN10__cxxabiv120__si_class_type_infoE@@CXXABI_1.3\0freeaddrinfo@@GLIBC_2.2.5\0_ZN8n_object7CmyfuncC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFiPvE\0_ZN7n_iwant6CiwantD1Ev\0_ZN8n_object6Object7my_exitEPv\0_ZNSt10_Head_baseILm0EPFiPvELb0EE7_M_headERS3_\0_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEEEC2Ev\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEC2EOS6_\0_ZNSt6threadD1Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_\0_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0_ZNSt11_Deque_baseIPvSaIS0_EED2Ev\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSD_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE3endEv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_set_sizeEm\0_ZTIN5n_xml4CxmlE\0_ZNSt10_List_nodeIN8n_object7CmyfuncEEC2IJRKS1_EEEDpOT_\0_ZN11n_my_memory9CmyMemoryC2Ei\0_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE8max_sizeEv\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEC1EPNSt8__detail15_List_node_baseE\0_ZN9__gnu_cxx13new_allocatorIPPvED2Ev\0_ZN5n_uri4CuriC1Ev\0_ZN9__gnu_cxx13new_allocatorIPvEC2ERKS2_\0_ZSt4moveIRPvEONSt16remove_referenceIT_E4typeEOS3_\0_ZTISt19_Sp_make_shared_tag\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS7_EEES9_DpOT_\0_ZNKSt11_Deque_baseIPvSaIS0_EE20_M_get_map_allocatorEv\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC1IRKS2_JRS0_EEEOT_DpOT0_\0_ZSt4moveIRSt5dequeIPvSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_\0_ZN11n_my_memory9CmyMemory5allotEii\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEED1Ev\0_ZSt3maxImERKT_S2_S2_\0_ZSt11__addressofIN8n_object7CmyfuncEEPT_RS2_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@@GLIBCXX_3.4.21\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE10deallocateEPS5_m\0_ZNSt14_List_iteratorIPvEppEv\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC1EPNSt8__detail15_List_node_baseE\0_ZN7n_class6CclassD2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@@GLIBCXX_3.4.21\0_ZNSt5tupleIJPFiPvES0_EEC1EOS3_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9push_backEOS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE11_M_set_sizeEm\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE9constructIS9_IS8_EEEvPT_DpOT0_\0__data_start\0shutdown@@GLIBC_2.2.5\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE11_M_get_nodeEv\0_ZN5n_new4CnewC1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implD1Ev\0_ZNSt14_List_iteratorIN8n_object7CmyfuncEEC2Ev\0_ZSt11__addressofIPvEPT_RS1_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@@GLIBCXX_3.4.21\0_ZTSNSt6thread10_Impl_baseE\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type\0_ZTIN6n_math5CmathE\0_ZNSt7__cxx114listIPvSaIS1_EE5clearEv\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev\0_ZNSt10_List_nodeIPvEC1IJS0_EEEDpOT_\0strcmp@@GLIBC_2.2.5\0_ZN5n_tag4CtagC1Ev\0_ZNSt10_List_nodeImEC2IIEEEDpOT_\0_ZN5n_run4CrunD2Ev\0_ZSt3getILm0EJPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_\0_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFPFiPvES8_EEEEvEEOS_IT_LS3_2EE\0_ZN8n_object6Object4isMeEi\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEEC2Ev\0_ZTIN6n_task5CtaskE\0_ZTVN6n_temp5CtempE\0_ZN6n_main5CmainD2Ev\0_ZNSt11_Tuple_implILm0EIPFiPvES0_EE7_M_headERS3_\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC1ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt10_Head_baseILm1EPvLb0EEC1IRS0_EEOT_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED2Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC1EOS1_\0_ZTI3Cos\0_ZN7n_timer6Ctimer8t_gmtimeEPKl\0_ZTSN6n_echo5CechoE\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implC2Ev\0_ZTIN5n_tag4CtagE\0_ZNSt6thread10_Impl_baseD1Ev\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implC1Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EED1Ev\0_ZTSN6n_main5CmainE\0__cxa_rethrow@@CXXABI_1.3\0_ZNKSt14_List_iteratorIPN8n_object6ObjectEEneERKS3_\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1ERKSA_\0_ZNSt11_Tuple_implILm1EIPvEE7_M_headERS1_\0_ZN8n_object6Object9i_am_hereEv\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE7_M_initEv\0_ZNSt11_Tuple_implILm1EIPvEEC1EOS1_\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2IRKS2_JRS0_EEEOT_DpOT0_\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSE_PSD_\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EE6_S_getERSA_\0_ZNSt11_Tuple_implILm1EIPvEEC2IRS0_EEOT_\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEE8allocateEmPKv\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEEC1ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZTVN8n_syntax7CsyntaxE\0_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_EJS7_EESt10shared_ptrIT_ERKT0_DpOT1_\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@@GLIBCXX_3.4.21\0opendir@@GLIBC_2.2.5\0_ZNSt5stackIPvSt5dequeIS0_SaIS0_EEE3popEv\0_ZTVN6n_main5CmainE\0_ZNSt11char_traitsIcE7compareEPKcS2_m\0__bss_start\0_ZNSt15_Deque_iteratorIPvRS0_PS0_E11_M_set_nodeEPS2_\0_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEED2Ev\0_ZTSN5n_net4CnetE\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEC1IJS7_EEES9_DpOT_\0_ZNSt10_List_nodeIPvEC2IIS0_EEEDpOT_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE5beginEv\0_ZNSt14_List_iteratorIPvEC1EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE10_List_implC2Ev\0_ZN9__gnu_cxx13new_allocatorIPvED2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS9_m\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8allocateEmPKv\0_ZNSt15_Deque_iteratorIPvRS0_PS0_EC1Ev\0_ZNSaIPvEC2Ev\0_ZN8n_object6Object7my_tempEv\0_ZSt4moveIRSt11_Tuple_implILm1EIPvEEEONSt16remove_referenceIT_E4typeEOS5_\0_ZTVN5n_uri4CuriE\0readdir@@GLIBC_2.2.5\0_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEE8max_sizeEv\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEEC2Ev\0_ZNSt8ios_base4InitC1Ev@@GLIBCXX_3.4\0puts@@GLIBC_2.2.5\0_ZN8n_object6Object5allotEiPPv\0_ZN6n_http5ChttpC1Ev\0_ZTIN5n_net4CnetE\0_ZN5n_run4Crun4funcEPv\0_ZNSt6threadD2Ev\0_ZN6n_make5CmakeD2Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implD1Ev\0__libc_csu_init\0_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev\0_ZN7n_timer6Ctimer7t_clockEv\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEED1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE8allocateEmPKv\0_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE\0_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE\0_ZNK9__gnu_cxx13new_allocatorIPvE8max_sizeEv\0_ZTVN5n_url4CurlE\0_ZTVN6n_home5ChomeE\0_ZN8n_socket7Csocket6clientEv\0_ZNSt11_Deque_baseIPvSaIS0_EEC1Ev\0_ZTSN6n_cout5CcoutE\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv\0_ZnwmPv\0_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSE_PSD_m\0_ZSt7forwardIPvEOT_RNSt16remove_referenceIS1_E4typeE\0_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_\0_ZNSt14_List_iteratorIPvEC2EPNSt8__detail15_List_node_baseE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE10_List_implD2Ev\0_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EED1Ev\0closedir@@GLIBC_2.2.5\0_ZNSt10_Head_baseILm0EPFiPvELb0EEC1IS2_EEOT_\0_ZNSt16allocator_traitsISaIPPvEE8allocateERS2_m\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev\0_ZN6n_task5CtaskC1Ev\0_ZTSN5n_sys4CsysE\0_ZNKSt14_List_iteratorIN8n_object7CmyfuncEEptEv\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implD1Ev\0_ZNSt8__detail15_List_node_base9_M_unhookEv@@GLIBCXX_3.4.15\0_ZN8n_object6Object7executeEPcPvb\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERSE_PSD_\0_ZSt4swapISt15_Deque_iteratorIPvRS1_PS1_EEvRT_S6_\0_ZTVN6n_exit5CexitE\0_ZNSt6thread10_Impl_baseC1Ev\0_ZTVN6n_task5CtaskE\0__cxa_end_catch@@CXXABI_1.3\0_ZTSN6n_http5ChttpE\0_ZTSN6n_exit5CexitE\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev\0__gxx_personality_v0@@CXXABI_1.3\0_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EISB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE7_M_initEv\0__pthread_key_create@@GLIBC_2.2.5\0_ZTVN6n_exec5CexecE\0_ZN8n_socket7Csocket6clientEPcS1_S1_PiS1_S2_\0_ZN6n_file5CfileC1Ev\0_ZN8n_object6Object12delete_allotEPPv\0_ZN8n_object6Object4funcEPv\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED1Ev\0_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv@@GLIBCXX_3.4.21\0_ZSt3getILm1EIPFiPvES0_EERNSt13tuple_elementIXT_ESt5tupleIIDpT0_EEE4typeERS7_\0_ZN8n_object6Object6createEPv\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EE9_M_insertIIS3_EEEvSt14_List_iteratorIS3_EDpOT_\0_ZTIN10n_brackets9CbracketsE\0_ZNSt14_List_iteratorIPvEC1Ev\0_ZTVN6n_echo5CechoE\0_ZTSN7n_iwant6CiwantE\0_ZSt7forwardIRKPFiPvEEOT_RNSt16remove_referenceIS5_E4typeE\0_ZTIN6n_echo5CechoE\0_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEESaIS9_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSG_\0_ZN7n_timer6Ctimer6t_timeEPl\0_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev\0_ZN8n_object6Object11clear_existEv\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_JRKS4_EEEvPT_DpOT0_\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EJSB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZTSN11n_my_memory9CmyMemoryE\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC1Ev\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv\0_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEC2Ev\0_ZNSaISt10_List_nodeIPN8n_object6ObjectEEED2Ev\0_ZN8n_object7CmyfuncD2Ev\0_ZN6n_exit5CexitD1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9push_backEOS1_\0_ZNSolsEi@@GLIBCXX_3.4\0_ZTIN5n_url4CurlE\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_dec_sizeEm\0_ZSt7forwardIRKN8n_object7CmyfuncEEOT_RNSt16remove_referenceIS4_E4typeE\0_ZSt12__get_helperILm0EPFiPvEIS0_EERT0_RSt11_Tuple_implIXT_EIS3_DpT1_EE\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEED2Ev\0_ZNSt7__cxx1110_List_baseIN8n_object7CmyfuncESaIS2_EE10_List_implD2Ev\0_ZNSt5dequeIPvSaIS0_EEC1EOS2_\0_ZTIN6n_exit5CexitE\0pthread_equal@@GLIBC_2.2.5\0_ZNSt6thread6detachEv@@GLIBCXX_3.4.11\0_ITM_deregisterTMCloneTable\0_ZNSt5tupleIIPFiPvES0_EEC2EOS3_\0_ZNSt7__cxx1110_List_baseIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EED1Ev\0_ZNSt12_Bind_simpleIFPFiPvES0_EEC2IRKS2_IRS0_EEEOT_DpOT0_\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEED2Ev\0_ZNSt5dequeIPvSaIS0_EED1Ev\0_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEEC2ERKSA_\0_Unwind_Resume@@GCC_3.0\0_ZN9__gnu_cxx13new_allocatorIPvEC2Ev\0_ZNSaIcEC1Ev@@GLIBCXX_3.4\0_ZNSaISt10_List_nodeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIIS1_EEEPSt10_List_nodeIS1_EDpOT_\0_ZNSt7__cxx114listIPN8n_object6ObjectESaIS3_EEC2Ev\0_ZNSolsEb@@GLIBCXX_3.4\0_ZTSN8n_object6ObjectE\0_ZN8n_object7CmyfuncD1Ev\0_ZSt11__addressofIKPN8n_object6ObjectEEPT_RS4_\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev\0_ZNSt7__cxx114listIPNS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE5clearEv\0_ZTSN10n_brackets9CbracketsE\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@@GLIBCXX_3.4.21\0_ZNSaIPvED1Ev\0_ZN8n_object6Object7executeEPS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Pvb\0__libc_csu_fini\0_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEEELb1EED2Ev\0_ZTIN7n_timer6CtimerE\0_ZNSt16allocator_traitsISaIPvEE7destroyIS0_EEvRS1_PT_\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS8_EIS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSt6thread2idC2Ev\0_ZN8n_object7Cmyfunc4isMeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES4_EEEEE7_M_addrEv\0_ZTSN6n_path5CpathE\0_ZN8n_object6Object7executeEPS0_PcS2_Pvb\0_ZTIN7n_iwant6CiwantE\0_ZN6n_path5Cpath4listEPc\0_ZNSt5dequeIPvSaIS0_EE15_M_pop_back_auxEv\0_ZNSt15aligned_storageILm40ELm8EEC2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEED2Ev\0_ZNSt7__cxx114listIPvSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E\0_ZNSolsEl@@GLIBCXX_3.4\0_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS8_EERKSaIT_E\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_\0_ZN8n_socket7Csocket6s_bindEiP8sockaddri\0_ZNSt10_List_nodeIPvEC1IIS0_EEEDpOT_\0_ZNSt6thread10_Impl_baseD2Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPN8n_object6ObjectEEE9constructIS5_JS4_EEEvPT_DpOT0_\0_ZTVN6n_math5CmathE\0_ZNSt26_Maybe_wrap_member_pointerIPFiPvEE9__do_wrapERKS2_\0_ZSt13__bind_simpleIRPFiPvEJRS0_EENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS6_DpOS7_\0_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E\0_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8max_sizeEv\0__libc_start_main@@GLIBC_2.2.5\0_ZTVN5n_tag4CtagE\0_ZNSt7__cxx114listIN8n_object7CmyfuncESaIS2_EE14_M_create_nodeIIRKS2_EEEPSt10_List_nodeIS2_EDpOT_\0_ZNSt11_Deque_baseIPvSaIS0_EEC2EOS2_St17integral_constantIbLb1EE\0_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES5_EEEESaISA_ELNS_12_Lock_policyE2EEEC1Ev\0_ZTSNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEEE\0_ZTSN6n_file5CfileE\0_ZSteqIPvRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_\0_ZN7n_timer6CtimerC1Ev\0_ZTVN6n_make5CmakeE\0__gmon_start__\0_ZN6n_make5CmakeD1Ev\0_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIJS1_EEEvSt14_List_iteratorIS1_EDpOT_\0_ZNSt14_List_iteratorIPN8n_object6ObjectEEppEv\0__cxa_pure_virtual@@CXXABI_1.3\0_ZdlPvS_\0_ZNSt10_List_nodeIPN8n_object6ObjectEEC2IIS2_EEEDpOT_\0_ZNSt6thread5_ImplISt12_Bind_simpleIFPFiPvES2_EEE6_M_runEv\0_ZNSt12_Bind_simpleIFPFiPvES0_EEclEv\0_ITM_registerTMCloneTable\0_ZTSN5n_uri4CuriE\0_ZTIN6n_path5CpathE\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEEC2Ev\0_ZNSt16allocator_traitsISaIPvEE8allocateERS1_m\0_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFiPvES3_EEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS8_EJS7_EEESt19_Sp_make_shared_tagRKT_DpOT0_\0_ZNSaISt10_List_nodeIPvEEC1Ev\0_ZN10n_brackets9CbracketsC1Ev\0_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIN8n_object7CmyfuncEEEC2Ev\0_ZNSaISt10_List_nodeIN8n_object7CmyfuncEEEC1Ev\0_ZN7n_timer6Ctimer9t_asctimeEPK2tm\0_ZNSt10_Head_baseILm1EPvLb0EEC1IS0_EEOT_\0_ZN8n_object6Object19remove_exist_familyEv\0_ZNSt7__cxx1110_List_baseIPN8n_object6ObjectESaIS3_EE11_M_inc_sizeEm\0_ZNSt11_Tuple_implILm1EJPvEE7_M_headERS1_\0_ZNSt5tupleIIPFiPvES0_EEC1IRKS2_RS0_vEEOT_OT0_\0_ZN5n_esc4CescC1Ev\0_ZNSt10_Head_baseILm1EPvLb0EEC2IS0_EEOT_\0_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@@GLIBCXX_3.4.21\0_ZN11n_my_memory9CmyMemoryC1Ev\0_ZNSt11_Deque_baseIPvSaIS0_EE11_Deque_implD2Ev\0_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev\0_ZN5n_url4CurlC1Ev\0_ZNSt6threadC2IRPFiPvEIRS1_EEEOT_DpOT0_\0_ZTSN6n_make5CmakeE\0_ZTVN6n_path5CpathE\0_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFiPvES7_EEEESaISC_EISB_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_\0_ZN8n_object7Cmyfunc5runMeEPvb\0_ZTVN5n_new4CnewE\0_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_\0_ZNSt11_Deque_baseIPvSaIS0_EE15_M_allocate_mapEm\0_ZNSt8ios_base4InitD1Ev@@GLIBCXX_3.4\0_ZNSt7__cxx114listIPvSaIS1_EEC2Ev\0\0.symtab\0.strtab\0.shstrtab\0.interp\0.note.ABI-tag\0.note.gnu.build-id\0.gnu.hash\0.dynsym\0.dynstr\0.gnu.version\0.gnu.version_r\0.rela.dyn\0.rela.plt\0.init\0.plt.got\0.text\0.fini\0.rodata\0.eh_frame_hdr\0.eh_frame\0.gcc_except_table\0.init_array\0.fini_array\0.jcr\0.dynamic\0.got.plt\0.data\0.bss\0.comment\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08@\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0T\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0t@\0\0\0\0\0t\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0���o\0\0\0\0\0\0\0�@\0\0\0\0\0�\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0�@\0\0\0\0\0�\0\0\0\0\0\0`	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0X@\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0^\0\0\0���o\0\0\0\0\0\0\0d@\0\0\0\0\0d\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k\0\0\0���o\0\0\0\0\0\0\00@\0\0\0\0\00\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z\0\0\0\0\0\0\0\0\0\0\0\0\0\Z@\0\0\0\0\0\Z\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0B\0\0\0\0\0\0\0p\Z@\0\0\0\0\0p\Z\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\�\"@\0\0\0\0\0\�\"\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\"@\0\0\0\0\0�\"\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�(@\0\0\0\0\0�(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�(@\0\0\0\0\0�(\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0�\�\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�@\0\0\0\0\0�\�\0\0\0\0\0\0V\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\�@\0\0\0\0\0\�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0��@\0\0\0\0\0��\0\0\0\0\0\0|I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0>A\0\0\0\0\0>\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�La\0\0\0\0\0\�L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\�Ma\0\0\0\0\0\�M\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0�M\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�Ma\0\0\0\0\0�M\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�Oa\0\0\0\0\0�O\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pa\0\0\0\0\0\0P\0\0\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\�Ra\0\0\0\0\0\�R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Sa\0\0\0\0\0�R\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�R\0\0\0\0\04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ٍ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(S\0\0\0\0\0\�v\0\0\0\0\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0\0\0\0\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','666666');
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
