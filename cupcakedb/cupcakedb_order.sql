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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'2020-03-16 11:19:51'),(2,4,'2020-03-19 10:52:37'),(3,3,'2020-03-19 10:52:37'),(4,3,'2020-03-19 10:52:37'),(5,3,'2020-03-19 10:52:37'),(6,4,'2020-03-19 10:52:37'),(7,1,'2020-03-19 10:52:37'),(8,2,'2020-03-19 10:52:37'),(9,1,'2020-03-21 11:08:37'),(10,2,'2020-03-21 12:17:05'),(11,2,'2020-03-21 12:32:56'),(12,2,'2020-03-21 12:33:44'),(13,3,'2020-03-21 12:34:04'),(14,2,'2020-03-21 12:36:17'),(15,1,'2020-03-21 13:36:19'),(16,1,'2020-03-21 13:37:02'),(17,1,'2020-03-21 14:03:23'),(18,1,'2020-03-23 08:58:30'),(19,1,'2020-03-23 09:30:10'),(20,1,'2020-03-23 10:36:26'),(21,1,'2020-03-23 10:40:07'),(22,1,'2020-03-23 10:40:07'),(23,1,'2020-03-23 10:41:08'),(24,1,'2020-03-23 10:41:08'),(25,1,'2020-03-23 10:43:15'),(26,1,'2020-03-23 10:43:15'),(27,1,'2020-03-23 10:46:48'),(28,1,'2020-03-23 10:46:48'),(29,1,'2020-03-23 10:49:29'),(30,1,'2020-03-23 10:49:35'),(31,1,'2020-03-23 10:49:36'),(32,1,'2020-03-23 10:49:37'),(33,1,'2020-03-23 10:51:55'),(34,1,'2020-03-23 10:58:39'),(35,1,'2020-03-23 10:58:41'),(36,1,'2020-03-23 10:58:42'),(37,1,'2020-03-23 10:58:42'),(38,1,'2020-03-23 11:03:20'),(39,1,'2020-03-23 11:03:21'),(40,1,'2020-03-23 11:05:40'),(41,1,'2020-03-23 11:11:19'),(42,1,'2020-03-23 11:21:44'),(43,1,'2020-03-23 11:23:04'),(44,1,'2020-03-23 11:27:55'),(45,1,'2020-03-23 11:30:52'),(46,1,'2020-03-23 11:31:35'),(47,1,'2020-03-23 11:50:41'),(48,1,'2020-03-23 11:50:42'),(49,1,'2020-03-23 11:50:48'),(50,1,'2020-03-23 11:50:50'),(51,1,'2020-03-23 11:50:51'),(52,1,'2020-03-23 11:50:54'),(53,1,'2020-03-23 14:37:27'),(54,1,'2020-03-23 14:40:08'),(55,1,'2020-03-23 14:40:08'),(56,1,'2020-03-23 14:43:24'),(57,1,'2020-03-23 14:43:30'),(58,1,'2020-03-24 10:41:48'),(59,1,'2020-03-24 10:44:05'),(60,1,'2020-03-24 10:45:40'),(61,1,'2020-03-24 10:49:56'),(62,1,'2020-03-24 10:50:46'),(63,1,'2020-03-24 10:51:32'),(64,1,'2020-03-24 10:51:39'),(65,1,'2020-03-24 10:51:57'),(66,1,'2020-03-24 10:53:33'),(67,1,'2020-03-24 10:53:49'),(68,1,'2020-03-24 10:53:51'),(69,1,'2020-03-24 10:53:51'),(70,1,'2020-03-24 10:53:52'),(71,1,'2020-03-24 10:53:58'),(72,1,'2020-03-24 10:53:58'),(73,1,'2020-03-24 10:53:59'),(74,1,'2020-03-24 10:55:10'),(75,1,'2020-03-24 10:56:33'),(76,1,'2020-03-24 10:59:07'),(77,1,'2020-03-24 11:01:19'),(78,1,'2020-03-24 11:01:56'),(79,1,'2020-03-24 11:02:36'),(80,1,'2020-03-24 11:03:19'),(81,1,'2020-03-24 11:04:06'),(82,1,'2020-03-24 11:05:53'),(83,1,'2020-03-24 11:06:58'),(84,1,'2020-03-24 11:08:03'),(85,1,'2020-03-24 11:11:07'),(86,1,'2020-03-24 11:11:48'),(87,1,'2020-03-24 11:16:23'),(88,1,'2020-03-24 11:17:06'),(89,1,'2020-03-24 11:17:40'),(90,1,'2020-03-24 11:18:15'),(91,1,'2020-03-24 11:21:54'),(92,1,'2020-03-24 11:27:07'),(93,1,'2020-03-24 11:34:30'),(94,1,'2020-03-24 11:44:02'),(95,1,'2020-03-24 11:45:49'),(96,1,'2020-03-24 11:49:55'),(97,1,'2020-03-24 11:52:24'),(98,1,'2020-03-24 12:02:34'),(99,1,'2020-03-24 12:06:57'),(100,1,'2020-03-24 12:08:32'),(101,1,'2020-03-24 12:09:50'),(102,1,'2020-03-24 12:10:28'),(103,1,'2020-03-24 12:11:08'),(104,1,'2020-03-24 12:15:31'),(105,1,'2020-03-24 12:16:02'),(106,1,'2020-03-24 12:34:16'),(107,1,'2020-03-24 12:34:16'),(108,1,'2020-03-24 12:38:02'),(109,1,'2020-03-24 12:42:41'),(110,1,'2020-03-24 12:45:32'),(111,1,'2020-03-24 12:46:17'),(112,1,'2020-03-24 12:53:05'),(113,1,'2020-03-24 13:30:50'),(114,5,'2020-03-24 13:33:00'),(115,5,'2020-03-24 13:38:01'),(116,5,'2020-03-24 14:09:09'),(117,5,'2020-03-24 14:15:49'),(118,5,'2020-03-24 14:17:54'),(119,5,'2020-03-24 14:19:15'),(120,5,'2020-03-24 14:43:20'),(121,5,'2020-03-24 14:44:29'),(122,5,'2020-03-24 14:46:03'),(123,5,'2020-03-24 14:52:14'),(124,5,'2020-03-24 14:54:53'),(125,5,'2020-03-24 14:58:13'),(126,5,'2020-03-24 15:00:24'),(127,5,'2020-03-24 15:12:35'),(128,5,'2020-03-24 15:14:29'),(129,5,'2020-03-24 15:15:38'),(130,5,'2020-03-24 15:16:28'),(131,5,'2020-03-24 15:20:17'),(132,5,'2020-03-24 15:21:58'),(133,5,'2020-03-25 09:44:39'),(134,5,'2020-03-25 09:50:10'),(135,5,'2020-03-25 09:51:50'),(136,5,'2020-03-25 09:53:39'),(137,5,'2020-03-25 09:54:46'),(138,5,'2020-03-25 10:05:19'),(139,5,'2020-03-25 10:08:33'),(140,5,'2020-03-25 10:10:46');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 11:14:29