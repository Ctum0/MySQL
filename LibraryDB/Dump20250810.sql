CREATE DATABASE  IF NOT EXISTS `librarydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `librarydb`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `authorID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (100,'Stephen','King'),(101,'J.K','Rowling'),(102,'George','Martin'),(103,'Jane','Austen');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `authorID` int DEFAULT NULL,
  `ISBN` varchar(50) DEFAULT NULL,
  `stockcount` int DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  KEY `authorID` (`authorID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorID`) REFERENCES `authors` (`authorID`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (210,'The Shining',101,'9780385199657',2),(211,'Harry Potter',102,'9780590353403',5),(212,'A Game of Thrones',103,'9780553103540',1),(213,'IT',101,'9780670813025',3),(214,'Pride and Prejudice',101,'9780141439518',4);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowrecords`
--

DROP TABLE IF EXISTS `borrowrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowrecords` (
  `borrowID` int NOT NULL AUTO_INCREMENT,
  `bookID` int DEFAULT NULL,
  `memberID` int DEFAULT NULL,
  `borrowDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  PRIMARY KEY (`borrowID`),
  KEY `bookID` (`bookID`),
  KEY `memberID` (`memberID`),
  CONSTRAINT `borrowrecords_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  CONSTRAINT `borrowrecords_ibfk_2` FOREIGN KEY (`memberID`) REFERENCES `members` (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowrecords`
--

LOCK TABLES `borrowrecords` WRITE;
/*!40000 ALTER TABLE `borrowrecords` DISABLE KEYS */;
INSERT INTO `borrowrecords` VALUES (430,210,301,'2024-06-01','2024-06-15','2024-06-14'),(431,211,302,'2024-05-20','2024-06-03','2024-06-05'),(432,211,301,'2024-07-10','2024-07-24','2024-07-24'),(433,212,300,'2024-08-01','2024-08-15',NULL),(434,214,302,'2024-07-25','2024-08-08',NULL),(435,213,300,'2024-07-20','2024-08-03',NULL);
/*!40000 ALTER TABLE `borrowrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `memberID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `joinedDate` date DEFAULT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (300,'Alex','Johnson','alex.j@gmail.com','2023-01-15'),(301,'Brenda','Smith','bsmith@gmail.com','2022-11-20'),(302,'Chris','Evans','cevans@gmail.com','2024-03-10');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-10 16:58:38
