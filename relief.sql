CREATE DATABASE  IF NOT EXISTS `relief` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `relief`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: relief
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `relief`
--

DROP TABLE IF EXISTS `relief`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relief` (
  `id_relief` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(45) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(45) NOT NULL DEFAULT '中国' COMMENT '国籍，国家',
  `province` varchar(45) DEFAULT NULL COMMENT '省，直辖市',
  `city` varchar(45) DEFAULT NULL COMMENT '市',
  `district` varchar(45) DEFAULT NULL COMMENT '区县',
  `town` varchar(45) DEFAULT NULL COMMENT '乡镇，街道',
  `village` varchar(45) DEFAULT NULL COMMENT '村',
  `address` varchar(450) DEFAULT NULL COMMENT '住址',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(45) DEFAULT NULL COMMENT 'male，男，female，女',
  `DOB` date DEFAULT NULL COMMENT 'date of birth（DOB）出生日期',
  `ID` varchar(45) DEFAULT NULL COMMENT '身份证号码，证件号码，',
  `telephone` varchar(45) DEFAULT NULL COMMENT '电话',
  `id_type` varchar(45) DEFAULT NULL COMMENT '证件类型',
  `why` varchar(450) DEFAULT NULL COMMENT '救济原因：鳏+寡+孤+独+老+弱+病+残+贫+困+学+幼',
  `how` varchar(450) DEFAULT NULL COMMENT '如何救助，救助方式，现金，物资，帮扶',
  `when_start` date DEFAULT NULL COMMENT '何时开始救助',
  `when_end` date DEFAULT NULL COMMENT '何时结束救助',
  `what` varchar(450) DEFAULT NULL COMMENT '具体救助措施，救助什么内容，资金，食物，衣物，药物，住房等',
  `who` varchar(45) DEFAULT NULL COMMENT '谁负责救助，哪个组织负责救助，乡镇，村，组织机构等',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '救助金额',
  `bank` varchar(45) DEFAULT NULL COMMENT '开户行信息',
  `bank_account` varchar(45) DEFAULT NULL COMMENT '银行账号',
  `status` varchar(45) DEFAULT NULL COMMENT '状态：待救助，已救助',
  `priority` varchar(45) DEFAULT NULL COMMENT '优先级：紧急，重要，正常',
  `remark` varchar(450) DEFAULT NULL COMMENT '备注说明',
  `feedback` varchar(450) DEFAULT NULL COMMENT '反馈信息',
  `result` varchar(450) DEFAULT NULL COMMENT '救助效果反馈，成果',
  `credentials` varchar(450) DEFAULT NULL COMMENT '证件，证明，信息',
  PRIMARY KEY (`id_relief`),
  UNIQUE KEY `idnew_relief_UNIQUE` (`id_relief`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='social relief';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relief`
--

LOCK TABLES `relief` WRITE;
/*!40000 ALTER TABLE `relief` DISABLE KEYS */;
/*!40000 ALTER TABLE `relief` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 21:47:35
