CREATE DATABASE  IF NOT EXISTS `cupcakedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cupcakedb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cupcakedb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `bottom`
--

DROP TABLE IF EXISTS `bottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottom` (
  `bottom_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`bottom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottom`
--

LOCK TABLES `bottom` WRITE;
/*!40000 ALTER TABLE `bottom` DISABLE KEYS */;
INSERT INTO `bottom` VALUES (1,'Chocolate',5),(2,'Vanilla',5),(3,'Nutmeg',5),(4,'Pistacio',6),(5,'Almond',7);
/*!40000 ALTER TABLE `bottom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `fk_user_order_idx` (`users_id`),
  CONSTRAINT `fk_user_order` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'2020-03-16 11:19:51'),(2,4,'2020-03-19 10:52:37'),(3,3,'2020-03-19 10:52:37'),(4,3,'2020-03-19 10:52:37'),(5,3,'2020-03-19 10:52:37'),(6,4,'2020-03-19 10:52:37'),(7,1,'2020-03-19 10:52:37'),(8,2,'2020-03-19 10:52:37'),(9,1,'2020-03-21 11:08:37'),(10,2,'2020-03-21 12:17:05'),(11,2,'2020-03-21 12:32:56'),(12,2,'2020-03-21 12:33:44'),(13,3,'2020-03-21 12:34:04'),(14,2,'2020-03-21 12:36:17'),(15,1,'2020-03-21 13:36:19'),(16,1,'2020-03-21 13:37:02'),(17,1,'2020-03-21 14:03:23'),(18,1,'2020-03-23 08:58:30'),(19,1,'2020-03-23 09:30:10'),(20,1,'2020-03-23 10:36:26'),(21,1,'2020-03-23 10:40:07'),(22,1,'2020-03-23 10:40:07'),(23,1,'2020-03-23 10:41:08'),(24,1,'2020-03-23 10:41:08'),(25,1,'2020-03-23 10:43:15'),(26,1,'2020-03-23 10:43:15'),(27,1,'2020-03-23 10:46:48'),(28,1,'2020-03-23 10:46:48'),(29,1,'2020-03-23 10:49:29'),(30,1,'2020-03-23 10:49:35'),(31,1,'2020-03-23 10:49:36'),(32,1,'2020-03-23 10:49:37'),(33,1,'2020-03-23 10:51:55'),(34,1,'2020-03-23 10:58:39'),(35,1,'2020-03-23 10:58:41'),(36,1,'2020-03-23 10:58:42'),(37,1,'2020-03-23 10:58:42'),(38,1,'2020-03-23 11:03:20'),(39,1,'2020-03-23 11:03:21'),(40,1,'2020-03-23 11:05:40'),(41,1,'2020-03-23 11:11:19'),(42,1,'2020-03-23 11:21:44'),(43,1,'2020-03-23 11:23:04'),(44,1,'2020-03-23 11:27:55'),(45,1,'2020-03-23 11:30:52'),(46,1,'2020-03-23 11:31:35'),(47,1,'2020-03-23 11:50:41'),(48,1,'2020-03-23 11:50:42'),(49,1,'2020-03-23 11:50:48'),(50,1,'2020-03-23 11:50:50'),(51,1,'2020-03-23 11:50:51'),(52,1,'2020-03-23 11:50:54'),(53,1,'2020-03-23 14:37:27'),(54,1,'2020-03-23 14:40:08'),(55,1,'2020-03-23 14:40:08'),(56,1,'2020-03-23 14:43:24'),(57,1,'2020-03-23 14:43:30'),(58,1,'2020-03-24 10:41:48'),(59,1,'2020-03-24 10:44:05'),(60,1,'2020-03-24 10:45:40'),(61,1,'2020-03-24 10:49:56'),(62,1,'2020-03-24 10:50:46'),(63,1,'2020-03-24 10:51:32'),(64,1,'2020-03-24 10:51:39'),(65,1,'2020-03-24 10:51:57'),(66,1,'2020-03-24 10:53:33'),(67,1,'2020-03-24 10:53:49'),(68,1,'2020-03-24 10:53:51'),(69,1,'2020-03-24 10:53:51'),(70,1,'2020-03-24 10:53:52'),(71,1,'2020-03-24 10:53:58'),(72,1,'2020-03-24 10:53:58'),(73,1,'2020-03-24 10:53:59'),(74,1,'2020-03-24 10:55:10'),(75,1,'2020-03-24 10:56:33'),(76,1,'2020-03-24 10:59:07'),(77,1,'2020-03-24 11:01:19'),(78,1,'2020-03-24 11:01:56'),(79,1,'2020-03-24 11:02:36'),(80,1,'2020-03-24 11:03:19'),(81,1,'2020-03-24 11:04:06'),(82,1,'2020-03-24 11:05:53'),(83,1,'2020-03-24 11:06:58'),(84,1,'2020-03-24 11:08:03'),(85,1,'2020-03-24 11:11:07'),(86,1,'2020-03-24 11:11:48'),(87,1,'2020-03-24 11:16:23'),(88,1,'2020-03-24 11:17:06'),(89,1,'2020-03-24 11:17:40'),(90,1,'2020-03-24 11:18:15'),(91,1,'2020-03-24 11:21:54'),(92,1,'2020-03-24 11:27:07'),(93,1,'2020-03-24 11:34:30'),(94,1,'2020-03-24 11:44:02'),(95,1,'2020-03-24 11:45:49'),(96,1,'2020-03-24 11:49:55'),(97,1,'2020-03-24 11:52:24'),(98,1,'2020-03-24 12:02:34'),(99,1,'2020-03-24 12:06:57'),(100,1,'2020-03-24 12:08:32'),(101,1,'2020-03-24 12:09:50'),(102,1,'2020-03-24 12:10:28'),(103,1,'2020-03-24 12:11:08'),(104,1,'2020-03-24 12:15:31'),(105,1,'2020-03-24 12:16:02'),(106,1,'2020-03-24 12:34:16'),(107,1,'2020-03-24 12:34:16'),(108,1,'2020-03-24 12:38:02'),(109,1,'2020-03-24 12:42:41'),(110,1,'2020-03-24 12:45:32'),(111,1,'2020-03-24 12:46:17'),(112,1,'2020-03-24 12:53:05'),(113,1,'2020-03-24 13:30:50'),(114,5,'2020-03-24 13:33:00'),(115,5,'2020-03-24 13:38:01'),(116,5,'2020-03-24 14:09:09'),(117,5,'2020-03-24 14:15:49'),(118,5,'2020-03-24 14:17:54'),(119,5,'2020-03-24 14:19:15'),(120,5,'2020-03-24 14:43:20'),(121,5,'2020-03-24 14:44:29'),(122,5,'2020-03-24 14:46:03'),(123,5,'2020-03-24 14:52:14'),(124,5,'2020-03-24 14:54:53'),(125,5,'2020-03-24 14:58:13'),(126,5,'2020-03-24 15:00:24'),(127,5,'2020-03-24 15:12:35'),(128,5,'2020-03-24 15:14:29'),(129,5,'2020-03-24 15:15:38'),(130,5,'2020-03-24 15:16:28'),(131,5,'2020-03-24 15:20:17'),(132,5,'2020-03-24 15:21:58'),(133,5,'2020-03-25 09:44:39'),(134,5,'2020-03-25 09:50:10'),(135,5,'2020-03-25 09:51:50'),(136,5,'2020-03-25 09:53:39'),(137,5,'2020-03-25 09:54:46'),(138,5,'2020-03-25 10:05:19'),(139,5,'2020-03-25 10:08:33'),(140,5,'2020-03-25 10:10:46'),(141,1,'2020-03-25 13:10:07'),(142,2,'2020-03-25 13:11:10'),(143,2,'2020-03-25 13:11:56'),(144,2,'2020-03-25 13:13:23'),(145,2,'2020-03-25 13:16:02'),(146,2,'2020-03-25 13:16:14');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderline` (
  `orderline_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `sum` int(11) NOT NULL DEFAULT '0',
  `topping_id` int(11) NOT NULL,
  `bottom_id` int(11) NOT NULL,
  PRIMARY KEY (`orderline_id`),
  KEY `fk_orderline_order_idx` (`order_id`),
  KEY `fk_orderline_topping_idx` (`topping_id`),
  KEY `fk_orderline_bottom_idx` (`bottom_id`),
  CONSTRAINT `fk_orderline_bottom` FOREIGN KEY (`bottom_id`) REFERENCES `bottom` (`bottom_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderline_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orderline_topping` FOREIGN KEY (`topping_id`) REFERENCES `topping` (`topping_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (1,10,3,0,1,2),(2,1,4,0,2,1),(3,2,5,0,2,3),(4,3,5,0,3,2),(5,4,2,0,5,5),(6,5,1,0,4,4),(7,6,3,0,5,4),(8,7,4,0,3,2),(9,8,5,0,4,2),(10,9,6,0,1,2),(12,53,2,20,1,1),(13,54,1,10,1,1),(14,54,2,20,1,3),(15,54,3,33,1,5),(16,54,1,10,3,1),(17,55,1,10,1,1),(18,55,2,20,1,3),(19,55,3,33,1,5),(20,55,1,10,3,1),(21,57,2,20,1,1),(23,58,5,55,1,5),(24,59,3,33,1,4),(25,60,1,11,1,4),(28,66,5,55,3,5),(29,74,1,10,1,1),(30,75,1,10,1,1),(31,75,1,10,1,2),(32,75,1,10,1,3),(33,76,1,10,2,1),(34,76,1,10,3,3),(36,77,1,10,1,1),(37,77,3,30,1,1),(38,78,1,10,1,2),(39,78,3,30,1,2),(40,79,1,10,1,3),(41,79,3,30,1,3),(42,80,1,11,1,4),(43,80,3,33,1,4),(44,81,1,11,1,5),(45,81,3,33,1,5),(55,91,1,10,1,1),(56,91,2,20,1,2),(57,91,3,30,2,2),(58,91,3,33,4,2),(60,93,1,10,2,2),(61,94,32,320,2,2),(62,95,3,30,1,1),(63,95,3,30,2,2),(64,95,3,30,3,3),(65,95,3,36,4,4),(66,95,3,39,5,5),(75,104,3,42,9,1),(76,105,3,39,8,1),(77,106,3,39,5,5),(78,106,2,26,8,1),(79,107,3,39,5,5),(80,107,2,26,8,1),(81,109,3,42,6,5),(82,109,2,22,4,1),(83,109,3,33,4,1),(84,110,2,20,2,1),(85,111,2,20,2,1),(86,112,3,30,3,1),(87,113,3,33,4,3),(88,114,3,30,1,1),(89,115,3,33,5,1),(90,116,3,30,1,1),(91,117,3,30,1,1),(92,118,2,22,4,1),(93,118,3,33,4,1),(94,118,2,24,4,4),(95,118,3,30,3,3),(96,118,32,384,5,4),(97,118,32,320,3,3),(98,119,32,352,5,1),(99,120,32,320,3,2),(100,121,32,416,5,5),(101,122,32,352,4,3),(102,123,22,264,5,4),(103,124,32,384,5,4),(104,125,33,330,3,3),(105,126,32,320,1,1),(106,127,32,320,1,1),(107,128,32,320,1,1),(108,129,32,320,1,1),(109,130,32,320,1,1),(110,131,32,320,1,1),(111,132,32,320,1,1),(112,133,22,220,1,1),(113,134,23,230,1,1),(114,135,11,110,1,1),(115,136,32,352,4,1),(116,137,32,384,6,1),(117,138,32,320,3,1),(118,139,32,352,4,1),(119,140,32,352,4,1),(120,141,1,10,1,1),(121,141,1,10,1,1),(122,142,1,10,1,1),(123,142,1,10,1,1),(124,142,1,10,1,1),(125,142,1,10,1,1),(126,142,1,10,1,1),(127,143,1,10,1,1),(128,143,1,10,1,1),(129,143,1,10,1,1),(130,143,1,10,1,1),(131,143,1,10,1,1),(132,143,1,10,1,1),(133,143,1,10,1,1),(134,144,1,10,1,1),(135,144,1,10,1,1),(136,146,1,10,1,1),(137,146,1,10,1,1);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topping` (
  `topping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`topping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'Chocolate',5),(2,'Bluebarry',5),(3,'Rasberry',5),(4,'Crispy',6),(5,'Strawberry',6),(6,'Rum/Raisin',7),(7,'Orange',8),(8,'Lemon',8),(9,'Blue cheese',9);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `credit` double NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`users_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jon@cph.dk','1234',5000,'customer','jon','bertelsen'),(2,'jp@cph.dk','1234',4890,'admin','j','p'),(3,'nico@cph.dk','1122',5000,'admin','ni','co'),(4,'mark@cph.dk','2211',500,'admin','mark','o'),(5,'HP@cph.dk','123',9648,'customer','H','P'),(16,'admin@cph.dk','1234',0,'customer','Fornavn','Efternavn');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 17:58:56
