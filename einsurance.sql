-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: einsurance
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `bid` int(3) NOT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `lcode` int(3) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `lcode` (`lcode`),
  CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`lcode`) REFERENCES `location` (`lcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (201,'Health Insurance',101),(202,'Home Insurance',102),(203,'Life Insurance',102);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceo`
--

DROP TABLE IF EXISTS `ceo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ceo` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceo`
--

LOCK TABLES `ceo` WRITE;
/*!40000 ALTER TABLE `ceo` DISABLE KEYS */;
INSERT INTO `ceo` VALUES ('krishna','1234'),('raventh','revanth'),('revanth','1234');
/*!40000 ALTER TABLE `ceo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gendare` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`custid`),
  UNIQUE KEY `uaername` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'krishna','krishna','1982-10-21',35,'krishna@gmail.com','8500493754','hyderabad','male','active'),(2,'REVANTH','','1997-04-14',22,'revanth@gmail.com','972340192',NULL,'male','activated'),(3,'REVANTH1','12345','1997-04-12',21,'revanthnew@gmail.com','999922219',NULL,'male','activated'),(4,'Sufi','1234','1996-06-01',23,'sufi.infotech@infotech.co.in','999922219',NULL,'male','activated');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `lcode` int(3) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (101,'Hyderabad'),(102,'Chennai');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `mgrNo` int(3) NOT NULL,
  `mgrName` varchar(30) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mgrNo`),
  KEY `bid` (`bid`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (101,'Kunal','8500493754','admin.vminfotech@valueminds.co.in',201),(102,'Revanth','972340192','revanth@gmail.com',202);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy` (
  `pid` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `termandcond` varchar(255) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `returnper` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `returnamount` double DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1020,'Home','Jeevan Saral','above age 25',5,20,10000,12000),(1021,'Life','Jeevan Anand','above age 25',5,20,30000,36000);
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyorders`
--

DROP TABLE IF EXISTS `policyorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policyorders` (
  `orderid` int(11) NOT NULL,
  `custid` int(3) DEFAULT NULL,
  `pid` int(3) DEFAULT NULL,
  `amountpaid` double DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `pid` (`pid`),
  CONSTRAINT `policyorders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
  CONSTRAINT `policyorders_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `policy` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policyorders`
--

LOCK TABLES `policyorders` WRITE;
/*!40000 ALTER TABLE `policyorders` DISABLE KEYS */;
INSERT INTO `policyorders` VALUES (1,1,1020,10000,'2019-10-09','2024-10-09','pending'),(97,1,1021,30000,'2019-10-08','2024-10-08','pending'),(101,1,1020,10000,'2019-10-08','2024-10-08','pending'),(108,1,1021,30000,'2019-10-08','2024-10-08','pending'),(109,1,1020,10000,'2019-10-08','2024-10-08','pending'),(117,1,1021,30000,'2019-10-09','2024-10-09','pending'),(1012,1,1021,30000,'2019-10-09','2024-10-09','pending');
/*!40000 ALTER TABLE `policyorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `signup` (
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin` int(255) DEFAULT NULL,
  `phoneno` int(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('fhh@gmail.com','nbvhh','456789','jvjj','hjvkbl','b,jjkkkkkbk','ggvhgvgv',157875,458952),('king@gmail.com','king','ngggj','hyd','hyd','india','india',13465475,12355222),('kunal@fma.com','dsadas','sadasd','sdadasd','sdaasd','fdsafdsa','fdsafasd',6541,654145),('kunalsingh9899119304@gmail.com','Kunal Singh','123456789','sadasdasdsad','sdafasd','asdasdas','dsadasd',4563416,654165),('raghav@gmail.com','raghav','raghav','hyde','hyderabad','telanaga','india',500016,99790890),('raghava@gmail.com','raghava','raghav','hyderabad','hyderabad','telangana','india',12546,917733808),('raghavareddy@gmail.com','raghavareddy','raghava','hyderabad','hyderabad','hyderabad','india',12654225,12354898);
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-10  8:11:12
