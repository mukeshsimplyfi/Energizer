-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: billboard
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `device_scheduler`
--

DROP TABLE IF EXISTS `device_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_scheduler` (
  `imei_no` varchar(45) NOT NULL,
  `start_time` time(6) DEFAULT NULL,
  `end_time` time(6) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  UNIQUE KEY `imei_no_UNIQUE` (`imei_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_scheduler`
--

LOCK TABLES `device_scheduler` WRITE;
/*!40000 ALTER TABLE `device_scheduler` DISABLE KEYS */;
INSERT INTO `device_scheduler` VALUES ('123456789','18:00:00.000000','22:00:00.000000','2016-09-15','2017-03-31'),('123456798','18:30:00.000000','22:30:00.000000','2017-04-01','2017-08-31'),('1234568','06:00:00.000000','10:00:00.000000','2017-03-09','2017-03-09'),('1234569','00:00:09.000000','00:00:12.000000','2017-03-14','2017-03-20'),('3515154','03:15:00.000000','10:15:00.000000','2017-03-23','2018-12-03'),('35315435','10:00:00.000000','15:00:00.000000','2017-03-17','2017-03-19'),('987654321','15:00:06.000000','22:00:12.000000','2017-03-14','2017-03-20');
/*!40000 ALTER TABLE `device_scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_status`
--

DROP TABLE IF EXISTS `device_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_status` (
  `imei_no` varchar(20) NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `update_date` datetime DEFAULT NULL,
  `Power_Phases` enum('1','2','3') NOT NULL DEFAULT '1',
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  `Lattitude` float(4,1) NOT NULL DEFAULT '0.0',
  `Logitude` float(4,1) NOT NULL DEFAULT '0.0',
  UNIQUE KEY `imei_no_UNIQUE` (`imei_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_status`
--

LOCK TABLES `device_status` WRITE;
/*!40000 ALTER TABLE `device_status` DISABLE KEYS */;
INSERT INTO `device_status` VALUES ('1','1','2017-02-06 15:09:46','1',1,0.0,0.0),('121','1','2017-02-06 11:56:13','3',1,0.0,0.0),('12345679','3','2017-03-03 16:31:24','3',1,0.0,0.0),('1234568','1','2017-02-28 11:00:22','1',1,0.0,0.0),('1234569','3','2017-03-03 16:04:41','3',NULL,0.0,0.0),('866104025481931','1','2017-02-21 15:14:56','1',1,0.0,0.0),('866104025481932','1','2017-02-24 13:59:58','1',1,0.0,0.0),('866104025481933','3','2017-02-24 14:00:02','2',1,0.0,0.0),('866104025481934','1','2017-02-24 14:00:04','1',1,0.0,0.0),('866104025481935','1','2017-02-24 14:00:05','3',1,0.0,0.0),('866104025481941','1','2017-02-28 15:01:38','1',1,0.0,0.0),('866104025481942','2','2017-02-24 14:13:40','1',1,0.0,0.0),('866104025481943','1','2017-02-24 14:13:40','2',1,0.0,0.0);
/*!40000 ALTER TABLE `device_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_status`
--

DROP TABLE IF EXISTS `engine_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_status` (
  `imei_no` varchar(100) NOT NULL,
  `KWH` varchar(50) DEFAULT NULL,
  `V1` varchar(50) DEFAULT NULL,
  `V2` varchar(50) DEFAULT NULL,
  `V3` varchar(50) DEFAULT NULL,
  `A1` varchar(50) DEFAULT NULL,
  `A2` varchar(50) DEFAULT NULL,
  `A3` varchar(50) DEFAULT NULL,
  `L1_KW` varchar(50) DEFAULT NULL,
  `L2_KW` varchar(50) DEFAULT NULL,
  `L3_KW` varchar(50) DEFAULT NULL,
  `L1L2L3_KW` varchar(50) DEFAULT NULL,
  `PF1` varchar(50) DEFAULT NULL,
  `PF2` varchar(50) DEFAULT NULL,
  `PF3` varchar(50) DEFAULT NULL,
  `Frequency` varchar(50) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `current_device_status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_status`
--

LOCK TABLES `engine_status` WRITE;
/*!40000 ALTER TABLE `engine_status` DISABLE KEYS */;
INSERT INTO `engine_status` VALUES ('866104025481933','82.69','233.54','0.0','0.0','0.57','0.0','0.0','0.53','0.0','0.0','0.0','4.39','0.0','0.0','50.07','2017-03-17 09:44:56',1),('866104025481932','54.03','13.79','240.59','236.08','0.0','0.17','0','0.0','0.32','0','0.0','0.0','8.51','0','50.06','2017-02-21 09:44:56',1),('866104025481943','54.03','13.79','240.59','236.08','9.99','0.17','9.29','17.65','0.32','0','0.0','0.0','8.3','0','50.08','2017-02-21 13:54:23',1),('866104025481931','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','2017-02-22 07:19:04',1),('866104025481933','54.03','13.79','240.59','236.08','9.99','0.17','9.29','17.65','0.32','0','0.0','0.0','8.3','0','50.08','2017-02-21 13:54:23',1),('866104025481934','54.03','13.79','240.59','236.08','9.99','0.17','9.29','17.65','0.32','0','0.0','0.0','8.3','0','50.08','2017-02-21 13:54:23',1),('866104025481935','54.03','13.79','240.59','236.08','9.99','0.17','9.29','17.65','0.32','0','0.0','0.0','8.3','0','50.08','2017-02-21 13:54:23',1),('866104025481936','54.03','13.79','240.59','236.08','9.99','0.17','9.29','17.65','0.32','0','0.0','0.0','8.3','0','50.08','2017-02-21 13:54:23',1),('866104025481941','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','2017-02-22 07:19:04',1),('866104025481942','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','2017-02-22 07:19:04',2),('866104025481943','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','2017-02-22 07:19:04',2),('1234568','1.0','1.0','1.0','1.0','1.1','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','2017-02-27 05:10:23',1),('1234468','1.0','1.0','1.0','1.0','1.1','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','2017-02-27 05:13:09',5),('1234569','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','2017-03-03 10:34:41',5),('12345679','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','1.0','2017-03-17 09:44:56',5);
/*!40000 ALTER TABLE `engine_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imei_no_status`
--

DROP TABLE IF EXISTS `imei_no_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imei_no_status` (
  `imei_no` varchar(15) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imei_no_status`
--

LOCK TABLES `imei_no_status` WRITE;
/*!40000 ALTER TABLE `imei_no_status` DISABLE KEYS */;
INSERT INTO `imei_no_status` VALUES ('1234568','ON',NULL),('1234569','OFF',NULL),('987654321','OFF','2017-03-09 18:24:12'),('35315435','ON','2017-03-17 11:57:04');
/*!40000 ALTER TABLE `imei_no_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_address`
--

DROP TABLE IF EXISTS `t_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_address` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `ADDRESS_TYPE` enum('O','B') NOT NULL DEFAULT 'O',
  `ORG_REF` int(6) DEFAULT NULL,
  `BB_REF` int(6) DEFAULT NULL,
  `ADDRESS_DESC` varchar(250) DEFAULT NULL,
  `CITYRef` int(5) NOT NULL,
  `STATERef` int(5) NOT NULL,
  `COUNTRYRef` varchar(3) NOT NULL,
  `ZIP_CODE` int(6) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORG2` (`ORG_REF`),
  KEY `FK_BillBoard1` (`BB_REF`),
  KEY `FK_City2` (`CITYRef`),
  KEY `FK_State2` (`STATERef`),
  KEY `FK_Country3` (`COUNTRYRef`),
  CONSTRAINT `FK_BillBoard1` FOREIGN KEY (`BB_REF`) REFERENCES `t_billboards` (`ID`),
  CONSTRAINT `FK_City2` FOREIGN KEY (`CITYRef`) REFERENCES `t_city` (`ID`),
  CONSTRAINT `FK_Country3` FOREIGN KEY (`COUNTRYRef`) REFERENCES `t_country` (`Code`),
  CONSTRAINT `FK_ORG2` FOREIGN KEY (`ORG_REF`) REFERENCES `t_organization` (`ID`),
  CONSTRAINT `FK_State2` FOREIGN KEY (`STATERef`) REFERENCES `t_state` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_billboards`
--

DROP TABLE IF EXISTS `t_billboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_billboards` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `STATUS` enum('1','2','3') NOT NULL DEFAULT '2',
  `LICENCE_NO` varchar(50) DEFAULT NULL,
  `Height` int(2) NOT NULL DEFAULT '0',
  `Width` int(2) NOT NULL DEFAULT '0',
  `Power_Phases` enum('1','2','3') NOT NULL DEFAULT '2',
  `Candles_Count` int(2) DEFAULT NULL,
  `Lattitude` float(4,1) NOT NULL DEFAULT '0.0',
  `Logitude` float(4,1) NOT NULL DEFAULT '0.0',
  `SITE_REF` int(6) NOT NULL,
  `ORG_REF` int(6) NOT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(255) NOT NULL,
  `UPDATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_SITE4` (`SITE_REF`),
  KEY `FK_ORG4` (`ORG_REF`),
  CONSTRAINT `FK_ORG4` FOREIGN KEY (`ORG_REF`) REFERENCES `t_organization` (`ID`),
  CONSTRAINT `FK_SITE4` FOREIGN KEY (`SITE_REF`) REFERENCES `t_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_billboards`
--

LOCK TABLES `t_billboards` WRITE;
/*!40000 ALTER TABLE `t_billboards` DISABLE KEYS */;
INSERT INTO `t_billboards` VALUES (1,'1','234',9,6,'2',5,23.4,5.4,2,2,'2017-02-03 11:54:57','mukesh','2017-02-21 08:18:46',NULL,1),(3,'2','AC234',11,9,'2',5,5.6,6.5,2,3,'2017-02-06 09:48:27','mukesh','2017-02-21 08:18:46',NULL,1);
/*!40000 ALTER TABLE `t_billboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_city`
--

DROP TABLE IF EXISTS `t_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  `CountryRef` varchar(3) NOT NULL,
  `StateRef` int(5) NOT NULL,
  `District` varchar(20) NOT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `IDX_City_State` (`Name`),
  KEY `FK_State1` (`StateRef`),
  KEY `FK_Coutry2` (`CountryRef`),
  CONSTRAINT `FK_Coutry2` FOREIGN KEY (`CountryRef`) REFERENCES `t_country` (`Code`),
  CONSTRAINT `FK_State1` FOREIGN KEY (`StateRef`) REFERENCES `t_state` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_city`
--

LOCK TABLES `t_city` WRITE;
/*!40000 ALTER TABLE `t_city` DISABLE KEYS */;
INSERT INTO `t_city` VALUES (1,'BANGALORE','IN',1,'1',1);
/*!40000 ALTER TABLE `t_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_country`
--

DROP TABLE IF EXISTS `t_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_country` (
  `Code` varchar(3) NOT NULL DEFAULT '',
  `Name` varchar(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` varchar(26) NOT NULL DEFAULT '',
  `Code2` varchar(2) NOT NULL DEFAULT '',
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_country`
--

LOCK TABLES `t_country` WRITE;
/*!40000 ALTER TABLE `t_country` DISABLE KEYS */;
INSERT INTO `t_country` VALUES ('IN','INDIA','Asia','ASIA','IN',1);
/*!40000 ALTER TABLE `t_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_device`
--

DROP TABLE IF EXISTS `t_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_device` (
  `IMEI_NO` varchar(32) NOT NULL,
  `DEVICE_DESC` varchar(50) DEFAULT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(255) NOT NULL,
  `UPDATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  `STATUS` int(2) DEFAULT NULL,
  `BILLBOARD_ID` int(6) NOT NULL,
  PRIMARY KEY (`IMEI_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_device`
--

LOCK TABLES `t_device` WRITE;
/*!40000 ALTER TABLE `t_device` DISABLE KEYS */;
INSERT INTO `t_device` VALUES ('1','1111','2017-01-30 07:16:39','mukesh','2017-03-10 05:48:39','mukesh',1,0,0),('1111','Device1111','2017-02-21 08:11:20','viswa','2017-03-16 08:59:56',NULL,1,0,0),('12345679','UPS1','2017-02-09 06:23:49','mukesh','2017-03-16 09:02:10',NULL,1,0,0),('1234568','Device','2017-01-30 07:16:39','mukesh','2017-03-16 09:02:26',NULL,1,0,0),('1234569','UPS2','2017-02-09 06:24:06','mukesh','2017-03-16 09:02:47',NULL,1,0,0),('133','UPS3','2017-02-09 06:24:23','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('134','UPS4','2017-02-09 06:24:41','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('135','UPS5','2017-02-09 06:24:57','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('21','CPU','2017-02-02 05:12:41','mukesh','2017-03-16 12:46:02',NULL,1,0,0),('22','ups','2017-02-02 05:13:21','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('2222','Device2222','2017-02-21 08:11:42','viswa','2017-03-14 06:58:29',NULL,1,0,0),('23','UPS','2017-02-02 05:13:57','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('324','TTest12','2017-02-01 12:19:54','mukesh','2017-03-10 05:48:39',NULL,1,1,0),('35315435','test','2017-03-09 11:06:39','mukesh','2017-03-17 06:27:04',NULL,1,1,3),('987654321','Test','2017-03-09 12:54:12','mukesh','2017-03-10 05:48:39',NULL,1,0,3);
/*!40000 ALTER TABLE `t_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_organization`
--

DROP TABLE IF EXISTS `t_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_organization` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `ORG_NAME` varchar(50) NOT NULL,
  `ORG_DESC` varchar(250) NOT NULL,
  `ORG_REG_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_organization`
--

LOCK TABLES `t_organization` WRITE;
/*!40000 ALTER TABLE `t_organization` DISABLE KEYS */;
INSERT INTO `t_organization` VALUES (1,'GREETUDE','GREETUDE','2016-12-28 07:36:52',1),(2,'SIMPLYFI','SIMPLYFI','2016-12-28 07:36:52',1),(3,'SIMPLYFI2','SIMPLYFI2','2016-12-28 07:36:52',1),(4,'wrw','rwrwer','2017-02-06 09:35:07',1),(6,'simplyfi1','simplyfi1','2017-02-09 06:30:19',1),(7,'simplyfi1','simplyfi1','2017-02-09 06:30:32',1),(8,'Test','Test','2017-03-03 11:59:06',0);
/*!40000 ALTER TABLE `t_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) NOT NULL,
  `ROLE_DESC` varchar(25) NOT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_NAME` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'ADMIN','ADMIN USER',1),(2,'SUPERVISOR','SUPERVISOR USER',1),(3,'MEDIA_OWNER','MEDIA_OWNER USER',1),(4,'SITE_ENGINEER','SUPERVISER USER',1);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site`
--

DROP TABLE IF EXISTS `t_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_site` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `SITE_NAME` varchar(10) NOT NULL,
  `SITE_DESC` varchar(25) NOT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SITE_NAME` (`SITE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site`
--

LOCK TABLES `t_site` WRITE;
/*!40000 ALTER TABLE `t_site` DISABLE KEYS */;
INSERT INTO `t_site` VALUES (1,'Site1','Site1',1),(2,'Site2','Site2',1),(3,'Site3','Site3',1),(4,'Site4','Site4',1),(5,'Site5','Site5',0),(6,'Bangalore','Bangalore',1),(7,'test','test',1);
/*!40000 ALTER TABLE `t_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site_user`
--

DROP TABLE IF EXISTS `t_site_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_site_user` (
  `SITE_REF` int(6) NOT NULL,
  `USER_REF` int(6) NOT NULL,
  KEY `FK_SITE3` (`SITE_REF`),
  KEY `FK_USER3` (`USER_REF`),
  CONSTRAINT `FK_SITE3` FOREIGN KEY (`SITE_REF`) REFERENCES `t_site` (`ID`),
  CONSTRAINT `FK_USER3` FOREIGN KEY (`USER_REF`) REFERENCES `t_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site_user`
--

LOCK TABLES `t_site_user` WRITE;
/*!40000 ALTER TABLE `t_site_user` DISABLE KEYS */;
INSERT INTO `t_site_user` VALUES (6,24),(3,24);
/*!40000 ALTER TABLE `t_site_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_state`
--

DROP TABLE IF EXISTS `t_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_state` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL DEFAULT '',
  `CountryCode` varchar(3) NOT NULL DEFAULT '',
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_Country1` (`CountryCode`),
  CONSTRAINT `FK_Country1` FOREIGN KEY (`CountryCode`) REFERENCES `t_country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_state`
--

LOCK TABLES `t_state` WRITE;
/*!40000 ALTER TABLE `t_state` DISABLE KEYS */;
INSERT INTO `t_state` VALUES (1,'KARNATAKA','IN',1);
/*!40000 ALTER TABLE `t_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ticket`
--

DROP TABLE IF EXISTS `t_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ticket` (
  `ticket_no` int(11) NOT NULL AUTO_INCREMENT,
  `imei_no` varchar(45) DEFAULT NULL,
  `ticket_subject` varchar(200) DEFAULT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `assign_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ticket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket`
--

LOCK TABLES `t_ticket` WRITE;
/*!40000 ALTER TABLE `t_ticket` DISABLE KEYS */;
INSERT INTO `t_ticket` VALUES (1,'987654321','test',6,2,'2017-03-17 13:19:17','1','2017-03-17 13:19:23',2,2,'2'),(2,'35315435','test1',6,2,'2017-03-17 13:21:05','2','2017-03-17 13:21:10',2,2,'2');
/*!40000 ALTER TABLE `t_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ticket_decs`
--

DROP TABLE IF EXISTS `t_ticket_decs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ticket_decs` (
  `ticket_no` int(11) NOT NULL,
  `ticket_desc` text,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  UNIQUE KEY `ticket_no_UNIQUE` (`ticket_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket_decs`
--

LOCK TABLES `t_ticket_decs` WRITE;
/*!40000 ALTER TABLE `t_ticket_decs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ticket_decs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(250) NOT NULL,
  `Last_Name` varchar(250) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `LAND_LINE` int(10) NOT NULL,
  `MOBILE` int(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `CREATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL,
  `UPDATED_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `IS_ACTIVE` tinyint(4) DEFAULT '1',
  `SSO_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SSO_ID_UNIQUE` (`SSO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (2,'Viswanath','TG','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm',0,0,'viswanath.tg@simplyfi.com','2016-12-28 11:08:41','1','2016-12-28 11:08:41',NULL,1,'viswa'),(3,'Narayanan','L','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm',0,0,'narayanan@simplyfi.tech','2016-12-28 11:08:41','1','2016-12-28 11:08:41',NULL,1,'narayan'),(6,'Mukesh','kumar','$2a$10$Ue8x54rF/GjKfdLSQl7S2eK3Dxv6U3pG26JuEG7y1InxA3z6ru3rm',0,0,'mukesh.kumar@simplyfi.tech','2017-01-23 14:01:03','viswa','2017-02-14 11:59:59',NULL,1,'mukesh'),(20,'Test','test','$2a$10$hor7EEdEJjjqFQZCY1gjM.HWrFL5xoOiwD8HNK8fw/elDryM2wX82',0,0,'test@simplyfi.tech','2017-01-25 06:22:52','mukesh','2017-02-14 12:16:43',NULL,1,'test'),(23,'testt','testt','$2a$10$MeuR5K8EbNiLdWjyjyhYKOu3b0qEjE3Wi1ryVIkpDWWqXCkRS2A3y',0,0,'testt@simplyfi.tech','2017-02-07 06:02:50','mukesh','2017-02-14 12:00:15',NULL,0,'testt'),(24,'testa','testa','$2a$10$V37rtyzjSUEA/d5Ak0xZCeodGEQANyu4EtIVjiobn7gI9NZ5qAMuC',0,0,'test@abc.com','2017-03-17 11:18:20','mukesh','2017-03-17 11:18:20',NULL,1,'testa');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_org`
--

DROP TABLE IF EXISTS `t_user_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_org` (
  `USER_REF` int(6) NOT NULL,
  `ORG_REF` int(6) NOT NULL,
  KEY `FK_ORG7` (`ORG_REF`),
  KEY `FK_USER7` (`USER_REF`),
  CONSTRAINT `FK_ORG7` FOREIGN KEY (`ORG_REF`) REFERENCES `t_organization` (`ID`),
  CONSTRAINT `FK_USER7` FOREIGN KEY (`USER_REF`) REFERENCES `t_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_org`
--

LOCK TABLES `t_user_org` WRITE;
/*!40000 ALTER TABLE `t_user_org` DISABLE KEYS */;
INSERT INTO `t_user_org` VALUES (2,1),(6,2),(20,1),(23,3),(24,3);
/*!40000 ALTER TABLE `t_user_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role` (
  `USER_REF` int(6) NOT NULL,
  `ROLE_REF` int(6) NOT NULL,
  KEY `FK_ROLE4` (`ROLE_REF`),
  KEY `FK_USER4` (`USER_REF`),
  CONSTRAINT `FK_ROLE4` FOREIGN KEY (`ROLE_REF`) REFERENCES `t_role` (`ID`),
  CONSTRAINT `FK_USER4` FOREIGN KEY (`USER_REF`) REFERENCES `t_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (2,2),(2,4),(6,2),(6,4),(20,3),(23,4),(6,1),(24,1),(24,4);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-17 17:38:58
