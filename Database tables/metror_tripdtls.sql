-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: metror
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `tripdtls`
--

DROP TABLE IF EXISTS `tripdtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripdtls` (
  `td_id` int NOT NULL AUTO_INCREMENT,
  `trip_num` int DEFAULT NULL,
  `stations_id` int DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  PRIMARY KEY (`td_id`),
  KEY `stations_id` (`stations_id`),
  KEY `trip_num` (`trip_num`),
  CONSTRAINT `tripdtls_ibfk_1` FOREIGN KEY (`stations_id`) REFERENCES `stations` (`stations_id`) ON DELETE CASCADE,
  CONSTRAINT `tripdtls_ibfk_2` FOREIGN KEY (`trip_num`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripdtls`
--

LOCK TABLES `tripdtls` WRITE;
/*!40000 ALTER TABLE `tripdtls` DISABLE KEYS */;
INSERT INTO `tripdtls` VALUES (601,501,101,'10:00:00','10:02:00'),(602,501,102,'10:10:00','10:12:00'),(603,501,103,'10:20:00','10:22:00'),(604,501,104,'10:30:00','10:32:00'),(605,501,105,'10:40:00','10:42:00'),(606,501,111,'09:10:00','09:12:00'),(607,501,112,'09:19:00','09:21:00'),(608,501,113,'09:29:00','09:33:00'),(609,501,114,'09:40:00','09:42:00'),(610,501,115,'09:55:00','10:00:00');
/*!40000 ALTER TABLE `tripdtls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 12:59:14
