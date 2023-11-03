CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `df_authors`
--

DROP TABLE IF EXISTS `df_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `df_authors` (
  `id` bigint DEFAULT NULL,
  `author_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_authors`
--

LOCK TABLES `df_authors` WRITE;
/*!40000 ALTER TABLE `df_authors` DISABLE KEYS */;
INSERT INTO `df_authors` VALUES (1,'Stephen King'),(2,'F.Scott Fitgerald'),(3,'Jack London'),(4,'Jane Austen'),(5,'Mary Shelley');
/*!40000 ALTER TABLE `df_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_books`
--

DROP TABLE IF EXISTS `df_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `df_books` (
  `id` bigint DEFAULT NULL,
  `title` text,
  `author_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_books`
--

LOCK TABLES `df_books` WRITE;
/*!40000 ALTER TABLE `df_books` DISABLE KEYS */;
INSERT INTO `df_books` VALUES (1,'The Shining',1),(2,'It',1),(3,'The Great Gatsby',2),(4,'The Call of the Wild',3),(5,'Pride and Prejudice',4),(6,'Frankenstein',5);
/*!40000 ALTER TABLE `df_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_favorites`
--

DROP TABLE IF EXISTS `df_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `df_favorites` (
  `user_id` bigint DEFAULT NULL,
  `book_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_favorites`
--

LOCK TABLES `df_favorites` WRITE;
/*!40000 ALTER TABLE `df_favorites` DISABLE KEYS */;
INSERT INTO `df_favorites` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,5),(3,6);
/*!40000 ALTER TABLE `df_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_users`
--

DROP TABLE IF EXISTS `df_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `df_users` (
  `id` bigint DEFAULT NULL,
  `first_name` text,
  `last_name` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_users`
--

LOCK TABLES `df_users` WRITE;
/*!40000 ALTER TABLE `df_users` DISABLE KEYS */;
INSERT INTO `df_users` VALUES (1,'John','Doe','JD@books.com'),(2,'Robin','Smith','Robin@books.com'),(3,'Gloria','Rodriguez','grodriquez@books.com');
/*!40000 ALTER TABLE `df_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  3:40:12
