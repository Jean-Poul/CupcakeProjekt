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
-- Temporary view structure for view `users_view`
--

DROP TABLE IF EXISTS `users_view`;
/*!50001 DROP VIEW IF EXISTS `users_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_view` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `users_id`,
 1 AS `email`,
 1 AS `password`,
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `orderline_id`,
 1 AS `quantity`,
 1 AS `sum`,
 1 AS `topping_id`,
 1 AS `topping_name`,
 1 AS `topping_price`,
 1 AS `bottom_id`,
 1 AS `bottom_name`,
 1 AS `bottom_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `us-4`
--

DROP TABLE IF EXISTS `us-4`;
/*!50001 DROP VIEW IF EXISTS `us-4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `us-4` AS SELECT 
 1 AS `order_id`,
 1 AS `orderline_id`,
 1 AS `quantity`,
 1 AS `sum`,
 1 AS `topping_name`,
 1 AS `topping_price`,
 1 AS `bottom_name`,
 1 AS `bottom_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `users_view`
--

/*!50001 DROP VIEW IF EXISTS `users_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Cupcake`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_view` AS select `u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`users_id` AS `users_id`,`u`.`email` AS `email`,`u`.`password` AS `password`,`o`.`order_id` AS `order_id`,`o`.`order_date` AS `order_date`,`ol`.`orderline_id` AS `orderline_id`,`ol`.`quantity` AS `quantity`,`ol`.`sum` AS `sum`,`t`.`topping_id` AS `topping_id`,`t`.`name` AS `topping_name`,`t`.`price` AS `topping_price`,`b`.`bottom_id` AS `bottom_id`,`b`.`name` AS `bottom_name`,`b`.`price` AS `bottom_price` from ((((`users` `u` join `order` `o` on((`u`.`users_id` = `o`.`users_id`))) join `orderline` `ol` on((`o`.`order_id` = `ol`.`order_id`))) join `topping` `t` on((`ol`.`topping_id` = `t`.`topping_id`))) join `bottom` `b` on((`ol`.`bottom_id` = `b`.`bottom_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `us-4`
--

/*!50001 DROP VIEW IF EXISTS `us-4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Cupcake`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `us-4` AS select `o`.`order_id` AS `order_id`,`ol`.`orderline_id` AS `orderline_id`,`ol`.`quantity` AS `quantity`,`ol`.`sum` AS `sum`,`t`.`name` AS `topping_name`,`t`.`price` AS `topping_price`,`b`.`name` AS `bottom_name`,`b`.`price` AS `bottom_price` from ((((`users` `u` join `order` `o` on((`u`.`users_id` = `o`.`users_id`))) join `orderline` `ol` on((`o`.`order_id` = `ol`.`order_id`))) join `topping` `t` on((`ol`.`topping_id` = `t`.`topping_id`))) join `bottom` `b` on((`ol`.`bottom_id` = `b`.`bottom_id`))) where (`u`.`email` = 'jon@cph.dk') */;
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

-- Dump completed on 2020-03-25 11:14:29
