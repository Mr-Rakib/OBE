-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: obe
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `academicevaluation`
--

DROP TABLE IF EXISTS `academicevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicevaluation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `assesment_id` int NOT NULL,
  `marks` float NOT NULL,
  `EntrBy_Id` int NOT NULL,
  `EntryDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicevaluation`
--

LOCK TABLES `academicevaluation` WRITE;
/*!40000 ALTER TABLE `academicevaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `academicevaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicevaluationttoclomapping`
--

DROP TABLE IF EXISTS `academicevaluationttoclomapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicevaluationttoclomapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `academicevaluation_id` int NOT NULL,
  `clo_id` int NOT NULL,
  `points` float NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicevaluationttoclomapping`
--

LOCK TABLES `academicevaluationttoclomapping` WRITE;
/*!40000 ALTER TABLE `academicevaluationttoclomapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `academicevaluationttoclomapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicgrading`
--

DROP TABLE IF EXISTS `academicgrading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academicgrading` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gradingSystem_id` int NOT NULL,
  `gradeName` varchar(10) NOT NULL DEFAULT '',
  `percentageFrom` float NOT NULL,
  `percentageTo` float NOT NULL,
  `gpa` float NOT NULL,
  `EntryBy_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_AcademicGradingtoGradingSystem_idx` (`gradingSystem_id`),
  CONSTRAINT `FK_AcademicGradingtoGradingSystem` FOREIGN KEY (`gradingSystem_id`) REFERENCES `gradingsystem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicgrading`
--

LOCK TABLES `academicgrading` WRITE;
/*!40000 ALTER TABLE `academicgrading` DISABLE KEYS */;
INSERT INTO `academicgrading` VALUES (1,1,'A+',80,100,5,2),(2,1,'A',70,79,4,2),(3,1,'A-',60,69,3.5,2),(4,1,'B',50,59,3,2),(5,1,'B-',40,49,2.5,2),(6,1,'F',0,39,0,2);
/*!40000 ALTER TABLE `academicgrading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assesments`
--

DROP TABLE IF EXISTS `assesments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assesments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assesments`
--

LOCK TABLES `assesments` WRITE;
/*!40000 ALTER TABLE `assesments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assesments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clo`
--

DROP TABLE IF EXISTS `clo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clo`
--

LOCK TABLES `clo` WRITE;
/*!40000 ALTER TABLE `clo` DISABLE KEYS */;
/*!40000 ALTER TABLE `clo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloresult`
--

DROP TABLE IF EXISTS `cloresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gradinfSystem_id` int NOT NULL,
  `academicevaluation_id` int NOT NULL,
  `student_id` int NOT NULL,
  `Marks` float NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloresult`
--

LOCK TABLES `cloresult` WRITE;
/*!40000 ALTER TABLE `cloresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clotoplomappling`
--

DROP TABLE IF EXISTS `clotoplomappling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clotoplomappling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clo_id` int NOT NULL,
  `plo_id` int NOT NULL,
  `points` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clotoplomappling`
--

LOCK TABLES `clotoplomappling` WRITE;
/*!40000 ALTER TABLE `clotoplomappling` DISABLE KEYS */;
/*!40000 ALTER TABLE `clotoplomappling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursecontent`
--

DROP TABLE IF EXISTS `coursecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursecontent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `clo_id` int NOT NULL,
  `contentDescriptions` varchar(500) NOT NULL,
  `hours` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursecontent`
--

LOCK TABLES `coursecontent` WRITE;
/*!40000 ALTER TABLE `coursecontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseregistration`
--

DROP TABLE IF EXISTS `courseregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseregistration` (
  `id` int NOT NULL,
  `registrationinformation_id` int NOT NULL,
  `student_id` int NOT NULL,
  `registertime` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseregistration`
--

LOCK TABLES `courseregistration` WRITE;
/*!40000 ALTER TABLE `courseregistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `courseregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `descriptions` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `descriptions` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Engineering','All Engineering Subject');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradingsystem`
--

DROP TABLE IF EXISTS `gradingsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradingsystem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `systemName` varchar(45) NOT NULL,
  `IsActive` int NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradingsystem`
--

LOCK TABLES `gradingsystem` WRITE;
/*!40000 ALTER TABLE `gradingsystem` DISABLE KEYS */;
INSERT INTO `gradingsystem` VALUES (1,'Gpa Based Grading',2,2,'0000-00-00 00:00:00'),(3,'Gpa-4 Based Grading',2,2,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `gradingsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(13) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL,
  `isActive` int NOT NULL,
  `lastLoginDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('2016000000009','123456','Student',1,'2020-06-13 03:05:10.000000'),('2016000000015','123456','Student',1,'2020-05-20 10:00:00.000000'),('kmh','123456','Faculty',1,'2020-05-20 10:05:00.000000'),('sm','11111','Admin',1,'2020-05-20 10:10:02.000000');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missions`
--

DROP TABLE IF EXISTS `missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `descriptions` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missions`
--

LOCK TABLES `missions` WRITE;
/*!40000 ALTER TABLE `missions` DISABLE KEYS */;
INSERT INTO `missions` VALUES (13,'Mission 1','Achieve successful learning management in academic career .'),(14,'Mission 2','Mission 2 Descriptions');
/*!40000 ALTER TABLE `missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missiontopeomapping`
--

DROP TABLE IF EXISTS `missiontopeomapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missiontopeomapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mission_id` int NOT NULL,
  `peo_id` int NOT NULL,
  `points` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missiontopeomapping`
--

LOCK TABLES `missiontopeomapping` WRITE;
/*!40000 ALTER TABLE `missiontopeomapping` DISABLE KEYS */;
INSERT INTO `missiontopeomapping` VALUES (2,13,3,1);
/*!40000 ALTER TABLE `missiontopeomapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peo`
--

DROP TABLE IF EXISTS `peo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `descriptions` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peo`
--

LOCK TABLES `peo` WRITE;
/*!40000 ALTER TABLE `peo` DISABLE KEYS */;
INSERT INTO `peo` VALUES (1,1,'Engineering knowledge:','Apply knowledge of mathematics, natural science, engineering fundamentals and Computer Science and Engineering to the solution of complex engineering problems.\r\n'),(3,1,'PLO 2','PLO 2 Descriptions');
/*!40000 ALTER TABLE `peo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalinformation`
--

DROP TABLE IF EXISTS `personalinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personalinformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(60) NOT NULL,
  `fathersName` varchar(60) NOT NULL,
  `mothersName` varchar(60) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `presentAddress` varchar(300) NOT NULL,
  `permanentAddress` varchar(300) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalinformation`
--

LOCK TABLES `personalinformation` WRITE;
/*!40000 ALTER TABLE `personalinformation` DISABLE KEYS */;
INSERT INTO `personalinformation` VALUES (1,'Md Rakibul Hasan','Md Anwer Hossain','Mst Ronjona Khatun','1998-05-22','male','01642090363','mrhasan.334@gmail.com','Dhaka, Bangladesh','Jamalpur, Bangladesh','rakib.jpg'),(2,'Jafry Monfol Deep','Md JFR Father','Mst JFR Mother','1997-03-05','male','01122090363','jafry.334@gmail.com','Dhaka, Bangladesh','Gazipur, Bangladesh','jfr.jpg'),(3,'Monirul Hasan Tomal','Md KMH Father','Mst KMH Mother','1990-12-23','male','01236698432','kmh.334@gmail.com','Dhaka, Bangladesh','Dhaka, Bangladesh','kmh.jpg'),(4,'Shahariar Monzoor ','Md SM Father','Mst SM Mother','1988-02-02','male','1236953214','sm.334@gmail.com','Dhaka, Bangladesh','Dhaka, Bangladesh','sm.jpg');
/*!40000 ALTER TABLE `personalinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plo`
--

DROP TABLE IF EXISTS `plo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plo`
--

LOCK TABLES `plo` WRITE;
/*!40000 ALTER TABLE `plo` DISABLE KEYS */;
INSERT INTO `plo` VALUES (1,1,'Engineering knowledge','Apply knowledge of mathematics, natural science, engineering fundamentals and Computer Science and Engineering to the solution of complex engineering problems.'),(3,1,'PLO 2','saddddddddd');
/*!40000 ALTER TABLE `plo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plotopeomapping`
--

DROP TABLE IF EXISTS `plotopeomapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plotopeomapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plo_id` int NOT NULL,
  `peo_id` int NOT NULL,
  `points` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plotopeomapping`
--

LOCK TABLES `plotopeomapping` WRITE;
/*!40000 ALTER TABLE `plotopeomapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `plotopeomapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerequisitecoursesinformations`
--

DROP TABLE IF EXISTS `prerequisitecoursesinformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerequisitecoursesinformations` (
  `course_id` int NOT NULL,
  `prerequisiteCourseId` int NOT NULL,
  KEY `FK_PrerequisiteCoursesInformations_Courses` (`course_id`),
  KEY `FK_PrerequisiteCoursesInformations_Courses1` (`prerequisiteCourseId`),
  CONSTRAINT `FK_PrerequisiteCoursesInformations_Courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_PrerequisiteCoursesInformations_Courses1` FOREIGN KEY (`prerequisiteCourseId`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisitecoursesinformations`
--

LOCK TABLES `prerequisitecoursesinformations` WRITE;
/*!40000 ALTER TABLE `prerequisitecoursesinformations` DISABLE KEYS */;
/*!40000 ALTER TABLE `prerequisitecoursesinformations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `creditHour` float NOT NULL,
  `duration` varchar(10) NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,'BSC in CSE',144,'4 Yeaers',1),(2,'BSC in EEE',144,'4 Years',1);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationinformation`
--

DROP TABLE IF EXISTS `registrationinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrationinformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `semster_id` int NOT NULL,
  `course_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `Classday` varchar(12) NOT NULL,
  `classTimeStart` time NOT NULL,
  `classTimeEnd` time NOT NULL,
  `roomnumber` varchar(50) NOT NULL,
  `iseatLimit` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationinformation`
--

LOCK TABLES `registrationinformation` WRITE;
/*!40000 ALTER TABLE `registrationinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrationinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` int NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesterschema`
--

DROP TABLE IF EXISTS `semesterschema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesterschema` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `program_id` int NOT NULL,
  `course_id` int NOT NULL,
  `CIE` float NOT NULL,
  `SEE` float NOT NULL,
  `Total` float NOT NULL,
  `EntryBy_id` int NOT NULL,
  `EntryDate` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesterschema`
--

LOCK TABLES `semesterschema` WRITE;
/*!40000 ALTER TABLE `semesterschema` DISABLE KEYS */;
/*!40000 ALTER TABLE `semesterschema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(13) NOT NULL,
  `department_id` int NOT NULL,
  `personalInformation_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ__Staffs__1963DD9DC2BF8AD1` (`staff_id`),
  KEY `FK_Staffs_PersonalInformation_idx` (`personalInformation_id`),
  CONSTRAINT `FK_Staffs_Login` FOREIGN KEY (`staff_id`) REFERENCES `login` (`username`),
  CONSTRAINT `FK_Staffs_PersonalInformation` FOREIGN KEY (`personalInformation_id`) REFERENCES `personalinformation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(13) NOT NULL,
  `program_id` int NOT NULL,
  `personalinformation_id` int NOT NULL,
  `guardianName` varchar(60) NOT NULL,
  `guardianContact` varchar(13) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ__Students__2A33069BED79EE82` (`student_id`),
  KEY `FK_Students_PersonalInformation_idx` (`personalinformation_id`),
  CONSTRAINT `FK_Students_Login` FOREIGN KEY (`student_id`) REFERENCES `login` (`username`),
  CONSTRAINT `FK_Students_PersonalInformation` FOREIGN KEY (`personalinformation_id`) REFERENCES `personalinformation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'2016000000009',1,1,'Md Anwer Hossain ','01721383577'),(4,'2016000000015',1,2,'Md Kibria ','01723121212');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdiagrams`
--

LOCK TABLES `sysdiagrams` WRITE;
/*!40000 ALTER TABLE `sysdiagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_alldepartments`
--

DROP TABLE IF EXISTS `vw_alldepartments`;
/*!50001 DROP VIEW IF EXISTS `vw_alldepartments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alldepartments` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `descriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alllogin`
--

DROP TABLE IF EXISTS `vw_alllogin`;
/*!50001 DROP VIEW IF EXISTS `vw_alllogin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alllogin` AS SELECT 
 1 AS `username`,
 1 AS `password`,
 1 AS `role`,
 1 AS `isActive`,
 1 AS `lastLoginDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_allmission`
--

DROP TABLE IF EXISTS `vw_allmission`;
/*!50001 DROP VIEW IF EXISTS `vw_allmission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allmission` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `descriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_allmissiontopeomapping`
--

DROP TABLE IF EXISTS `vw_allmissiontopeomapping`;
/*!50001 DROP VIEW IF EXISTS `vw_allmissiontopeomapping`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allmissiontopeomapping` AS SELECT 
 1 AS `id`,
 1 AS `mission_id`,
 1 AS `peo_id`,
 1 AS `points`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_allpeo`
--

DROP TABLE IF EXISTS `vw_allpeo`;
/*!50001 DROP VIEW IF EXISTS `vw_allpeo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allpeo` AS SELECT 
 1 AS `id`,
 1 AS `program_id`,
 1 AS `name`,
 1 AS `descriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_allplo`
--

DROP TABLE IF EXISTS `vw_allplo`;
/*!50001 DROP VIEW IF EXISTS `vw_allplo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allplo` AS SELECT 
 1 AS `id`,
 1 AS `program_id`,
 1 AS `name`,
 1 AS `Descriptions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_allprograms`
--

DROP TABLE IF EXISTS `vw_allprograms`;
/*!50001 DROP VIEW IF EXISTS `vw_allprograms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allprograms` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `creditHour`,
 1 AS `duration`,
 1 AS `department_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'obe'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteAcademicGrading` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteAcademicGrading`(
	IN id INT
)
BEGIN
	DELETE FROM academicgrading
    WHERE academicgrading.id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteDepartments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteDepartments`(
	IN Id INT
)
BEGIN
	DELETE FROM departments
    WHERE departments.Id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteGradingSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteGradingSystem`(
	IN Id INT
)
BEGIN
	DELETE FROM academicgrading
    WHERE academicgrading.gradingSystem_id = Id;
    
    DELETE FROM gradingsystem
    WHERE gradingsystem.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteMission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteMission`(
	IN Id INT
)
BEGIN
	DELETE FROM missions
    WHERE missions.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteMissionToPEOMapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteMissionToPEOMapping`(	
	IN Id INT
)
BEGIN
	DELETE FROM MissionTOPEOMapping
    WHERE MissionTOPEOMapping.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deletePEO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletePEO`(
	IN Id INT
)
BEGIN
	DELETE FROM peo
    WHERE peo.Id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deletePLO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletePLO`(
	IN Id INT 
)
BEGIN
	DELETE FROM plo
    WHERE plo.Id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deletePrograms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletePrograms`(
	IN Id INT
)
BEGIN
	DELETE FROM programs 
    WHERE programs.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveAcademicGrading` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveAcademicGrading`(
    IN GradingSystemId 		INT,
    IN GradeName 			VARCHAR(10),
    IN PercentageFrom		FLOAT,
    IN PercentageTo			FLOAT,
    IN Gpa					FLOAT,
    IN EntryBy_id		INT 
)
BEGIN
	INSERT INTO academicgrading
    (
		academicgrading.gradingSystem_id	,
        academicgrading.gradeName 			,
        academicgrading.percentageFrom		,
        academicgrading.percentageto		,
        academicgrading.gpa					,
        academicgrading.EntryBy_id
    )
    VALUES
    (
		GradingSystemId	,
        GradeName 			,
        PercentageFrom		,
        PercentageTo		,
        Gpa					,
        EntryBy_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveDepartments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveDepartments`(
	IN Name VARCHAR(60),
    IN Descriptions VARCHAR(200)
)
BEGIN
	INSERT INTO departments
    (
		departments.Name,
        departments.descriptions
    )VALUES
    (	
		Name,
        Descriptions
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveExamInformation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveExamInformation`(
	IN ExamName 		VARCHAR(60),
	IN InstitutionId 	INT,
	IN EntryBy_id 		INT
)
BEGIN
	INSERT INTO examinformation
    (
        examinformation.ExamName, 	
        examinformation.Institution_Id,
		examinformation.EntryBy_id 	
    )
    VALUES
    (
		ExamName, 	
        InstitutionId,
		EntryBy_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveGradingSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveGradingSystem`(
	IN SystemName 		VARCHAR(45),
    IN InstitutionId 	INT,
    IN EntryBy_id 		INT
)
BEGIN
	INSERT INTO gradingSystem
    (
		gradingSystem.SystemName,
		gradingSystem.Institution_id,
        gradingSystem.EntryBy_id 
    )VALUES
    (
		SystemName,
        InstitutionId,
        EntryBy_id
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveMission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveMission`(
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
)
BEGIN
	INSERT INTO missions 
    (
        missions.name,
		missions.descriptions
    )
    VALUES
    (
        Name,
        Description
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveMissionToPEOMapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveMissionToPEOMapping`(	
	IN MissionId INT,
    IN PEOId INT,
    IN Points FLOAT
)
BEGIN
	INSERT INTO MissionToPEOMapping
    (	
		MissionToPEOMapping.mission_id,
        MissionToPEOMapping.peo_id,
        MissionToPEOMapping.points
    )VALUES
    (	
		MissionId,
        PEOId,
        Points
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_savePEO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savePEO`(
	IN ProgramId INT,
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
	
)
BEGIN
	INSERT INTO peo
    (
		peo.program_id 	,
        peo.name 		,
        peo.descriptions 
    )
    VALUES
    (	
		ProgramId,
        Name ,
        Description
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_savePLO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savePLO`(
	IN ProgramId INT,
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
)
BEGIN
	INSERT INTO plo
    (
		plo.program_id 	,
        plo.name 		,
        plo.descriptions 
    )
    VALUES
    (	
		ProgramId,
        Name ,
        Description
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_savePrograms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savePrograms`(
	IN Name 		VARCHAR(60),
    IN CreditHour 	FLOAT,
    IN Durations 	VARCHAR(10),
    IN DepartmentId INT
)
BEGIN
	INSERT INTO programs
    (
		programs.name,
        programs.creditHour,
        programs.durations,
        programs.department_id
    )
    VALUES
    (
		 Name, 		
         CreditHour, 	
         Durations 	,
         DepartmentId 
    );
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateAcademicGrading` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateAcademicGrading`(
	IN id 					INT,
    IN GradingSystemId 	VARCHAR(45),
    IN GradeName 			VARCHAR(10),
    IN PercentageFrom		FLOAT,
    IN PercentageTo			FLOAT,
    IN Gpa					FLOAT,
    IN EntryBy_id			INT 
)
BEGIN
	UPDATE academicgrading 
    SET 
    academicgrading.gradingSystem_id	= GradingSystemId,
    academicgrading.gradeName 			= GradeName,
    academicgrading.percentageFrom		= PercentageFrom,
    academicgrading.percentageTo		= PercentageTo,
    academicgrading.gpa					= Gpa,
    academicgrading.EntryBy_id			= EntryBy_id
    WHERE academicgrading.id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateDepartments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateDepartments`(
	IN Id 			INT,
	IN Name 		VARCHAR(60),
    IN Descriptions VARCHAR(200)
)
BEGIN
	UPDATE departments
    SET
    departments.Name		 = Name, 		
    departments.Descriptions = Descriptions
    WHERE 
    departments.Id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateGradingSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateGradingSystem`(
	IN Id 				INT,
	IN SystemName 		VARCHAR(45),
    IN InstitutionId 	INT,
    IN EntryBy_id 		INT
)
BEGIN
	UPDATE gradingsystem
    SET
    gradingsystem.systemName 		= SystemName,
    gradingsystem.institution_id 	= InstitutionId,
    gradingsystem.EntryBy_id 		= EntryBy_id
    WHERE gradingsystem.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateLogin`(	
	IN Username VARCHAR(13),
    IN Password VARCHAR(200),
    IN Role VARCHAR(50),
    IN IsActive INT,
    IN LastLoginDate DATETIME
)
BEGIN
	UPDATE login 
    SET 
    login.username 		= Username,
    Login.password 		= Password,
    login.role 			= Role,
    login.isActive 		= IsActive,
    login.lastLoginDate = LastLoginDate
    WHERE 
    login.Username = Username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateMission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateMission`(
	IN Id INT,
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
)
BEGIN
	UPDATE missions 
    SET
    missions.name = Name,
    missions.descriptions = Description
    WHERE 
    missions.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateMissionToPEOMapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateMissionToPEOMapping`(
	IN Id INT,
	IN MissionId INT,
    IN PEOId INT,
    IN Points FLOAT
)
BEGIN
	UPDATE MissionToPEOMapping 
    SET 
		MissionToPEOMapping.mission_id = MissionId,
        MissionToPEOMapping.peo_id = PEOId,
        MissionToPEOMapping.points = Points
	WHERE 
    MissionToPEOMapping.Id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updatePEO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updatePEO`(
	IN Id INT,
	IN ProgramId INT,
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
)
BEGIN
	UPDATE peo
    SET
		peo.program_id 		= ProgramId,
        peo.name 			= Name ,
        peo.descriptions 	= Description
    WHERE 
    peo.id = Id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updatePLO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updatePLO`(
	IN Id INT,
	IN ProgramId INT,
    IN Name VARCHAR(100),
    IN Description VARCHAR(200)
)
BEGIN
	UPDATE plo
    SET
		plo.program_id 		= ProgramId,
        plo.name 			= Name ,
        plo.descriptions 	= Description
    WHERE 
    plo.id = Id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updatePrograms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updatePrograms`(
	IN Id 			INT,
	IN Name 		VARCHAR(60),
    IN CreditHour 	FLOAT,
    IN Durations 	VARCHAR(10),
    IN DepartmentId INT
)
BEGIN
	UPDATE programs
    SET 
		programs.name = Name,
        programs.creditHour = CreditHour,
        programs.durations = Durations,
        programs.department_id = DepartmentId
	WHERE programs.id = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_alldepartments`
--

/*!50001 DROP VIEW IF EXISTS `vw_alldepartments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alldepartments` AS select `departments`.`id` AS `id`,`departments`.`name` AS `name`,`departments`.`descriptions` AS `descriptions` from `departments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alllogin`
--

/*!50001 DROP VIEW IF EXISTS `vw_alllogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alllogin` AS select `login`.`username` AS `username`,`login`.`password` AS `password`,`login`.`role` AS `role`,`login`.`isActive` AS `isActive`,`login`.`lastLoginDate` AS `lastLoginDate` from `login` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_allmission`
--

/*!50001 DROP VIEW IF EXISTS `vw_allmission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allmission` AS select `missions`.`id` AS `id`,`missions`.`name` AS `name`,`missions`.`descriptions` AS `descriptions` from `missions` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_allmissiontopeomapping`
--

/*!50001 DROP VIEW IF EXISTS `vw_allmissiontopeomapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allmissiontopeomapping` AS select `missiontopeomapping`.`id` AS `id`,`missiontopeomapping`.`mission_id` AS `mission_id`,`missiontopeomapping`.`peo_id` AS `peo_id`,`missiontopeomapping`.`points` AS `points` from `missiontopeomapping` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_allpeo`
--

/*!50001 DROP VIEW IF EXISTS `vw_allpeo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allpeo` AS select `peo`.`id` AS `id`,`peo`.`program_id` AS `program_id`,`peo`.`name` AS `name`,`peo`.`descriptions` AS `descriptions` from `peo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_allplo`
--

/*!50001 DROP VIEW IF EXISTS `vw_allplo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allplo` AS select `plo`.`id` AS `id`,`plo`.`program_id` AS `program_id`,`plo`.`name` AS `name`,`plo`.`Descriptions` AS `Descriptions` from `plo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_allprograms`
--

/*!50001 DROP VIEW IF EXISTS `vw_allprograms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allprograms` AS select `programs`.`id` AS `id`,`programs`.`name` AS `name`,`programs`.`creditHour` AS `creditHour`,`programs`.`duration` AS `duration`,`programs`.`department_id` AS `department_id` from `programs` */;
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

-- Dump completed on 2020-06-16 18:48:17
