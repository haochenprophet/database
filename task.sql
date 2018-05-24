CREATE DATABASE  IF NOT EXISTS `task` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `task`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: task
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
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `idschedule` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  `when` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'When to complete this task?',
  `who` varchar(45) DEFAULT NULL COMMENT 'Who accomplishes this task?',
  `what` text COMMENT 'What is this task?\n',
  `where` text COMMENT 'Where to finish the task?',
  `remark` text,
  PRIMARY KEY (`idschedule`,`taskid`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `idsequence` int(11) NOT NULL COMMENT 'uuid idsequence',
  `uuid` varchar(45) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `depend` int(11) NOT NULL DEFAULT '0',
  `depend_list` text COMMENT 'depend uuid list ',
  `manpower` int(11) NOT NULL DEFAULT '1' COMMENT 'manpower cost',
  `owner` text NOT NULL COMMENT 'executor  or owner',
  `money` double NOT NULL DEFAULT '0' COMMENT 'money cost',
  `time_cost` int(11) NOT NULL DEFAULT '1',
  `delay` int(11) NOT NULL DEFAULT '0' COMMENT 'Allowed delay',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'record time ',
  `priority` int(11) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `input` varchar(45) DEFAULT NULL COMMENT 'input uuid',
  `output` varchar(45) DEFAULT NULL COMMENT 'output uuid ',
  `author` varchar(45) NOT NULL DEFAULT 'hunter' COMMENT 'author or initiator',
  `region` varchar(45) NOT NULL DEFAULT 'CN',
  `status` varchar(45) NOT NULL DEFAULT 'create' COMMENT 'create,begin,process,error,finish,',
  `remark` text COMMENT 'output: index,who[x],start,current,end,cost,money,time,status,remark',
  PRIMARY KEY (`idsequence`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='task sequence';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `idtake` int(11) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  `content` text COMMENT 'What is the task content?',
  `owner` varchar(45) DEFAULT NULL COMMENT 'Who is the owner of the task',
  `sponsor` varchar(45) DEFAULT NULL COMMENT 'Task sponsor',
  `start` datetime DEFAULT NULL COMMENT 'Task start time.',
  `end` datetime DEFAULT NULL COMMENT 'Task end time',
  `where` text COMMENT 'Where the task. ',
  `remark` text,
  PRIMARY KEY (`idtake`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-24 15:52:47
