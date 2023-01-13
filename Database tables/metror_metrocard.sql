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
-- Table structure for table `metrocard`
--

DROP TABLE IF EXISTS `metrocard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metrocard` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL,
  `u_name` varchar(25) DEFAULT NULL,
  `u_address` varchar(75) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `phone_num` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `card_status` tinyint(1) DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_num` (`card_num`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrocard`
--

LOCK TABLES `metrocard` WRITE;
/*!40000 ALTER TABLE `metrocard` DISABLE KEYS */;
INSERT INTO `metrocard` VALUES (1,NULL,'Sarwar Aalam','null',32,'male','7979058151','aalamsarwar10@gmail.com','nikh',0,NULL),(2,NULL,'Sarwar Aalam','null',22,'male','07979058151','aalamsarwar10@gmail.com','mrinal',0,NULL),(3,NULL,'Sameer Ali','null',23,'male','7979058151','aalamsarwar10@gmail.com','hello',0,NULL),(4,NULL,'sam','null',25,'male','7979058151','aalamsarwar5159@gmail.com','nikh',0,NULL),(5,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','ghg',0,NULL),(6,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','ghg',0,NULL),(7,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','ghg',0,NULL),(8,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','ghg',0,NULL),(9,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','ghg',0,NULL),(10,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','gh',0,NULL),(11,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','gh',0,NULL),(12,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','gh',0,NULL),(13,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','gh',0,NULL),(14,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','gh',0,NULL),(15,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','hnkjba',0,NULL),(16,NULL,'sam','null',25,'ssd','7979058151','entertainonclick10@gmail.com','lkjhkjdas',0,NULL),(17,NULL,'sam','null',25,'male','7979058151','entertainonclick10@gmail.com','cvv',0,NULL);
/*!40000 ALTER TABLE `metrocard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 12:59:13
