CREATE DATABASE  IF NOT EXISTS `motorvehiclecollisions` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `motorvehiclecollisions`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: motorvehiclecollisions
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `collision`
--

DROP TABLE IF EXISTS `collision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collision` (
  `collision_id` int NOT NULL AUTO_INCREMENT,
  `travel_direction` varchar(10) DEFAULT NULL,
  `vehicle_occupants` int DEFAULT NULL,
  `pre_crash` varchar(25) DEFAULT NULL,
  `point_of_impact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`collision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collision`
--

LOCK TABLES `collision` WRITE;
/*!40000 ALTER TABLE `collision` DISABLE KEYS */;
INSERT INTO `collision` VALUES (1,'North',1,'Going Straight Ahead','Left Front Bumper'),(2,'East',2,'Merging','Right Front Bumper'),(3,'East',13,'Parked','Left Front Quarter Panel'),(4,'Southwest',2,'Going Straight Ahead','Center Front End'),(5,'South',1,'Stopped in Traffic','Right Rear Bumper'),(6,'West',2,'Going Straight Ahead','Left Side Doors'),(7,'North',2,'Going Straight Ahead','Center Front End'),(8,'South',1,'Going Straight Ahead','Center Front End'),(9,'North',1,'Going Straight Ahead','Center Front End'),(10,'West',1,'Making Right Turn','Left Front Bumper'),(11,'South',1,'Changing Lanes','Left Front Bumper'),(12,'East',1,'Stopped in Traffic','Center Back End'),(13,'Southeast',3,'Going Straight Ahead','Right Side Doors'),(14,'East',3,'Going Straight Ahead','Center Front End'),(15,'Southwest',2,'Making Left Turn','Right Front Bumper'),(16,'North',1,'Backing','Center Back End'),(17,'Northeast',0,'Going Straight Ahead','Right Front Bumper'),(18,'North',1,'Backing','Trailer'),(19,'East',2,'Parked','Right Side Doors'),(20,'North',1,'Going Straight Ahead','Right Front Quarter Panel'),(21,'North',1,'Parked','Left Side Doors'),(22,'South',0,'Parked','Centr Front End'),(23,'North',3,'Going Straight Ahead','Left Rear Quarter Panel'),(24,'East',1,'Going Straight Ahead','Left Rear Quarter Panel'),(25,'West',1,'Slowing or Stopping','Center Back End'),(26,'East',1,'Changing Lanes','Left Rear Bumper'),(27,'North',2,'Merging','Right Front Bumper'),(28,'Southeast',2,'Entered Parked Position','Left Front Bumper'),(29,'East',1,'Going Straight Ahead','Right Front Bumper'),(30,'North',2,'Going Straight Ahead','Right Side Doors'),(31,'East',1,'Going Straight Ahead','No Damage'),(32,'Unknown',0,'Parked','Right Rear Quarter Panel'),(33,'Unknown',1,'Parked','Left Rear Bumper'),(34,'North',1,'Going Straight Ahead','Left Front Bumper'),(35,'West',1,'Making U Turn','Left Front Bumper'),(36,'West',5,'Going Straight Ahead','Center Front End'),(37,'East',1,'Stopped in Traffic','Center Back End'),(38,'East',1,'Going Straight Ahead','Left Rear Quarter Panel'),(39,'North',2,'Going Straight Ahead','Right Rear Bumper'),(40,'South',1,'Going Straight Ahead','Center Front End');
/*!40000 ALTER TABLE `collision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collision_occurance`
--

DROP TABLE IF EXISTS `collision_occurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collision_occurance` (
  `occurance_id` int NOT NULL AUTO_INCREMENT,
  `collision_id` int DEFAULT NULL,
  `crash_date` date DEFAULT NULL,
  `crash_time` time DEFAULT NULL,
  PRIMARY KEY (`occurance_id`),
  KEY `collision_id` (`collision_id`),
  CONSTRAINT `collision_occurance_ibfk_1` FOREIGN KEY (`collision_id`) REFERENCES `collision` (`collision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collision_occurance`
--

LOCK TABLES `collision_occurance` WRITE;
/*!40000 ALTER TABLE `collision_occurance` DISABLE KEYS */;
INSERT INTO `collision_occurance` VALUES (1,1,'2019-09-23','08:15:00'),(2,2,'2016-05-02','17:35:00'),(3,3,'2019-10-24','13:15:00'),(4,4,'2016-08-18','12:39:00'),(5,5,'2016-07-22','15:40:00'),(6,6,'2016-08-13','21:05:00'),(7,7,'2019-10-21','17:55:00'),(8,8,'2020-06-06','18:30:00'),(9,9,'2016-05-20','23:30:00'),(10,10,'2019-10-24','16:47:00'),(11,11,'2019-10-24','17:36:00'),(12,12,'2019-10-24','01:30:00'),(13,13,'2016-06-10','20:00:00'),(14,14,'2019-10-24','14:15:00'),(15,15,'2019-10-24','15:00:00');
/*!40000 ALTER TABLE `collision_occurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collision_reason_link`
--

DROP TABLE IF EXISTS `collision_reason_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collision_reason_link` (
  `collision_reason_link_id` int NOT NULL AUTO_INCREMENT,
  `collision_id` int DEFAULT NULL,
  `factor_id` int DEFAULT NULL,
  PRIMARY KEY (`collision_reason_link_id`),
  KEY `collision_id` (`collision_id`),
  KEY `factor_id` (`factor_id`),
  CONSTRAINT `collision_reason_link_ibfk_1` FOREIGN KEY (`collision_id`) REFERENCES `collision` (`collision_id`),
  CONSTRAINT `collision_reason_link_ibfk_2` FOREIGN KEY (`factor_id`) REFERENCES `reason_for_collision` (`factor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collision_reason_link`
--

LOCK TABLES `collision_reason_link` WRITE;
/*!40000 ALTER TABLE `collision_reason_link` DISABLE KEYS */;
INSERT INTO `collision_reason_link` VALUES (1,1,2),(2,2,2),(3,2,4),(4,3,1),(5,4,2),(6,5,1),(7,6,1),(8,7,1),(9,8,6),(10,9,16),(11,10,1),(12,11,2),(13,11,4),(14,12,3),(15,13,7),(16,15,9),(17,16,12),(18,16,4),(19,17,1),(20,18,7),(21,19,1),(22,20,1),(23,21,1),(24,22,1),(25,24,4),(26,25,1),(27,26,4),(28,26,9),(29,27,2),(30,27,9);
/*!40000 ALTER TABLE `collision_reason_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_description`
--

DROP TABLE IF EXISTS `driver_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_description` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `driver_sex` varchar(5) DEFAULT NULL,
  `driver_license_status` varchar(10) DEFAULT NULL,
  `driver_license_state` varchar(3) DEFAULT NULL,
  `collision_id` int DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `collision_id` (`collision_id`),
  CONSTRAINT `driver_description_ibfk_1` FOREIGN KEY (`collision_id`) REFERENCES `collision` (`collision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_description`
--

LOCK TABLES `driver_description` WRITE;
/*!40000 ALTER TABLE `driver_description` DISABLE KEYS */;
INSERT INTO `driver_description` VALUES (1,'M','Licensed','NY',1),(2,'M','Licensed','FL',2),(3,'M','Licensed','NY',3),(4,'F','Licensed','NY',4),(5,'M','Licensed','NY',5),(6,'F','Licensed','NY',6),(7,'F','Licensed','PA',7),(8,'M','Licensed','NY',8),(9,'M','Licensed','CA',9),(10,'M','Licensed','NY',10),(11,'M','Licensed','NJ',11),(12,'M','Licensed','NY',12),(13,'M','Licensed','OR',28),(14,'M','Unlicensed','NY',29),(15,'M','Unlicensed','NY',30),(16,'M','Licensed','CT',31),(17,'M','Licensed','OH',32),(18,'F','Licensed','NJ',33),(19,'M','Licensed','MD',34),(20,'M','Permit','NY',35),(21,'M','Licensed','MD',36),(22,'F','Licensed','NY',37),(23,'F','Licensed','NY',38),(24,'M','Licensed','TN',39),(25,'F','Permit','NY',40);
/*!40000 ALTER TABLE `driver_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `license_status_based_on_gender`
--

DROP TABLE IF EXISTS `license_status_based_on_gender`;
/*!50001 DROP VIEW IF EXISTS `license_status_based_on_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `license_status_based_on_gender` AS SELECT 
 1 AS `driver_license_status`,
 1 AS `driver_sex`,
 1 AS `gender_license_status_link`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pre_collision_going_straight_ahead`
--

DROP TABLE IF EXISTS `pre_collision_going_straight_ahead`;
/*!50001 DROP VIEW IF EXISTS `pre_collision_going_straight_ahead`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pre_collision_going_straight_ahead` AS SELECT 
 1 AS `collision_id`,
 1 AS `travel_direction`,
 1 AS `vehicle_occupants`,
 1 AS `pre_crash`,
 1 AS `point_of_impact`,
 1 AS `state_registration`,
 1 AS `vehicle_type`,
 1 AS `vehicle_make`,
 1 AS `vehicle_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reason_for_collision`
--

DROP TABLE IF EXISTS `reason_for_collision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reason_for_collision` (
  `factor_id` int NOT NULL AUTO_INCREMENT,
  `contributing_factor` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`factor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason_for_collision`
--

LOCK TABLES `reason_for_collision` WRITE;
/*!40000 ALTER TABLE `reason_for_collision` DISABLE KEYS */;
INSERT INTO `reason_for_collision` VALUES (1,'Unspecified'),(2,'Driver Inattention/Distraction'),(3,'Other Vehicular'),(4,'Unsafe Lane Changing'),(5,'Passenger Distraction'),(6,'Traffic Control Disregarded '),(7,'Backing Unsafely'),(8,'Lost Consciousness'),(9,'Failure to Yield Right-of-Way'),(10,'Oversized Vehicle'),(11,'Turning Improperly'),(12,'Physical Disability'),(13,'Fatigued/Drowsy'),(14,'Following Too Closely'),(15,'Presecription Medication'),(16,'Obstruction/Debris'),(17,'Driver Inexperience');
/*!40000 ALTER TABLE `reason_for_collision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `unspecified_collision_reason`
--

DROP TABLE IF EXISTS `unspecified_collision_reason`;
/*!50001 DROP VIEW IF EXISTS `unspecified_collision_reason`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unspecified_collision_reason` AS SELECT 
 1 AS `collision_id`,
 1 AS `travel_direction`,
 1 AS `vehicle_occupants`,
 1 AS `pre_crash`,
 1 AS `point_of_impact`,
 1 AS `contributing_factor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `database_vehicle_id` int NOT NULL AUTO_INCREMENT,
  `original_csv_file_id` varchar(50) DEFAULT NULL,
  `state_registration` varchar(3) DEFAULT NULL,
  `vehicle_type` varchar(45) DEFAULT NULL,
  `vehicle_make` varchar(20) DEFAULT NULL,
  `vehicle_year` int DEFAULT NULL,
  PRIMARY KEY (`database_vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'0553ab4d-9500-4cba-8d98-f4d7f89d5856','NY','Station Wagon/Sport Utility Vehicle','TOYT -CAR/SUV',2002),(2,'219456','NY','4 dr sedan','MERZ -CAR/SUV',2015),(3,'86a294b4-6672-4a7e-8357-39d6d2eff9f7','PA','Sedan','BMW -CAR/SUV',2006),(4,'5bb0b59a-ce74-4a04-9f92-1446ebfe4f46','NC','Sedan','TOYT -CAR/SUV',1990),(5,'764668','NY','Station Wagon/Sport Utility Vehicle','LINC -CAR/SUV',2015),(6,'87497','NY','Station Wagon/Sport Utility Vehicle','TOYT -CAR/SUV',2015),(7,'993368','NY','Pick-up Truck','freig',2006),(8,'1193510','NY','Station Wagon/Sport Utility Vehicle','HYUN -CAR/SUV',2007),(9,'613344','NJ','Sedan','MERZ -CAR/SUV',2013),(10,'8e406c38-a35f-4a06-bd29-fb196b3adec0','NY','Station Wagon/Sport Utility Vehicle','NISS -CAR/SUV',2011),(11,'8ada1656-bb64-4bba-91b5-f8872d9de368','NY','Sedan','TOYT -CAR/SUV',2008),(12,'009f5608-f1c8-4747-91be-6b707a1fda3d','NY','Station Wagon/Sport Utility Vehicle','INFI -CAR/SUV',2019),(13,'c1353cd0-388f-4e93-887d-6743b7599d2b','NY','Station Wagon/Sport Utility Vehicle','HOND -CAR/SUV',2017),(14,'ca744068-6013-47f0-a661-a0fbb579eb47','NM','Station Wagon/Sport Utility Vehicle','HOND -CAR/SUV',2003),(15,'1ea64cbc-399d-43fb-8127-130bc2005d1d','NY','Flat Bed','MACK -TRUCK/BUS',2019),(16,'99e8cf54-c1a1-495f-adaf-d6e2941c680f','NY','Sedan','HYUN -CAR/SUV',2017),(17,'d92e1aad-7e7b-4437-9f06-6e1258c252c0','FL','Sedan','AUDI -CAR/SUV',2018),(18,'794caf6c-ea79-41c2-9694-a2d6e46493f3','IL','Bus','MCIN - TRUCK/BUS',2017),(19,'7675ccbe-68b6-4842-8998-ebe005cc0d5d','NY','Van','TOYT -TRUCK/BUS',2016),(20,'19940c03-c719-4cbb-945d-bb41b8fbef8b','IL','Station Wagon/Sport Utility Vehicle','TOYT -CARSUV',2004);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_damage`
--

DROP TABLE IF EXISTS `vehicle_damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_damage` (
  `vehicle_damage_id` int NOT NULL AUTO_INCREMENT,
  `damage` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`vehicle_damage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_damage`
--

LOCK TABLES `vehicle_damage` WRITE;
/*!40000 ALTER TABLE `vehicle_damage` DISABLE KEYS */;
INSERT INTO `vehicle_damage` VALUES (1,'Left Front Quarter Panel'),(2,'Right Front Bumper'),(3,'Right Front Quarter Panel'),(4,'Right Side Doors'),(5,'Right Rear Quarter Panel'),(6,'Right Rear Bumper'),(7,'Left Front Bumper'),(8,'Center Front End'),(9,'No Damage'),(10,'Left Rear Bumper'),(11,'Left Side Doors'),(12,'Center Back End'),(13,'Left Rear Quarter Panel'),(14,'Trailer'),(15,'Other');
/*!40000 ALTER TABLE `vehicle_damage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vehicle_damage_after_2010`
--

DROP TABLE IF EXISTS `vehicle_damage_after_2010`;
/*!50001 DROP VIEW IF EXISTS `vehicle_damage_after_2010`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_damage_after_2010` AS SELECT 
 1 AS `state_registration`,
 1 AS `vehicle_type`,
 1 AS `vehicle_make`,
 1 AS `vehicle_year`,
 1 AS `damage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_damage_link`
--

DROP TABLE IF EXISTS `vehicle_damage_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_damage_link` (
  `vehicle_damage_link_id` int NOT NULL AUTO_INCREMENT,
  `database_vehicle_id` int DEFAULT NULL,
  `vehicle_damage_id` int DEFAULT NULL,
  PRIMARY KEY (`vehicle_damage_link_id`),
  KEY `vehicle_damage_id` (`vehicle_damage_id`),
  KEY `database_vehicle_id` (`database_vehicle_id`),
  CONSTRAINT `vehicle_damage_link_ibfk_1` FOREIGN KEY (`vehicle_damage_id`) REFERENCES `vehicle_damage` (`vehicle_damage_id`),
  CONSTRAINT `vehicle_damage_link_ibfk_2` FOREIGN KEY (`database_vehicle_id`) REFERENCES `vehicle` (`database_vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_damage_link`
--

LOCK TABLES `vehicle_damage_link` WRITE;
/*!40000 ALTER TABLE `vehicle_damage_link` DISABLE KEYS */;
INSERT INTO `vehicle_damage_link` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,3),(5,3,2),(6,4,4),(7,5,5),(8,5,6),(9,8,7),(10,8,8),(11,8,2),(12,10,11),(13,10,1),(14,13,8),(15,13,7),(16,13,2),(17,17,8),(18,17,2),(19,17,7),(20,11,9),(21,12,2),(22,12,3),(23,14,8),(24,14,7),(25,15,2),(26,18,11),(27,18,9),(28,19,4),(29,20,2),(30,20,3);
/*!40000 ALTER TABLE `vehicle_damage_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vehicle_damage_per_state_outside_ny`
--

DROP TABLE IF EXISTS `vehicle_damage_per_state_outside_ny`;
/*!50001 DROP VIEW IF EXISTS `vehicle_damage_per_state_outside_ny`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_damage_per_state_outside_ny` AS SELECT 
 1 AS `state_registration`,
 1 AS `amount_of_damage`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `license_status_based_on_gender`
--

/*!50001 DROP VIEW IF EXISTS `license_status_based_on_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `license_status_based_on_gender` AS select `driver_description`.`driver_license_status` AS `driver_license_status`,`driver_description`.`driver_sex` AS `driver_sex`,count(`driver_description`.`driver_sex`) AS `gender_license_status_link` from `driver_description` group by `driver_description`.`driver_license_status`,`driver_description`.`driver_sex` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pre_collision_going_straight_ahead`
--

/*!50001 DROP VIEW IF EXISTS `pre_collision_going_straight_ahead`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pre_collision_going_straight_ahead` AS select `collision`.`collision_id` AS `collision_id`,`collision`.`travel_direction` AS `travel_direction`,`collision`.`vehicle_occupants` AS `vehicle_occupants`,`collision`.`pre_crash` AS `pre_crash`,`collision`.`point_of_impact` AS `point_of_impact`,`vehicle`.`state_registration` AS `state_registration`,`vehicle`.`vehicle_type` AS `vehicle_type`,`vehicle`.`vehicle_make` AS `vehicle_make`,`vehicle`.`vehicle_year` AS `vehicle_year` from (`collision` join `vehicle` on((`collision`.`collision_id` = `vehicle`.`database_vehicle_id`))) where (`collision`.`pre_crash` = 'Going Straight Ahead') order by `collision`.`point_of_impact`,`vehicle`.`state_registration` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unspecified_collision_reason`
--

/*!50001 DROP VIEW IF EXISTS `unspecified_collision_reason`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unspecified_collision_reason` AS select `collision`.`collision_id` AS `collision_id`,`collision`.`travel_direction` AS `travel_direction`,`collision`.`vehicle_occupants` AS `vehicle_occupants`,`collision`.`pre_crash` AS `pre_crash`,`collision`.`point_of_impact` AS `point_of_impact`,`reason_for_collision`.`contributing_factor` AS `contributing_factor` from ((`collision` join `collision_reason_link` on((`collision`.`collision_id` = `collision_reason_link`.`collision_id`))) join `reason_for_collision` on((`collision_reason_link`.`factor_id` = `reason_for_collision`.`factor_id`))) where (`reason_for_collision`.`contributing_factor` = 'Unspecified') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_damage_after_2010`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_damage_after_2010`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_damage_after_2010` AS select `vehicle`.`state_registration` AS `state_registration`,`vehicle`.`vehicle_type` AS `vehicle_type`,`vehicle`.`vehicle_make` AS `vehicle_make`,`vehicle`.`vehicle_year` AS `vehicle_year`,`vehicle_damage`.`damage` AS `damage` from ((`vehicle` join `vehicle_damage_link` on((`vehicle`.`database_vehicle_id` = `vehicle_damage_link`.`database_vehicle_id`))) join `vehicle_damage` on((`vehicle_damage_link`.`vehicle_damage_id` = `vehicle_damage`.`vehicle_damage_id`))) where (`vehicle`.`vehicle_year` > (select `vehicle`.`vehicle_year` from `vehicle` where (`vehicle`.`vehicle_year` = 2008))) order by `vehicle`.`vehicle_year` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_damage_per_state_outside_ny`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_damage_per_state_outside_ny`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_damage_per_state_outside_ny` AS select `vehicle`.`state_registration` AS `state_registration`,count(`vehicle_damage`.`damage`) AS `amount_of_damage` from ((`vehicle` join `vehicle_damage_link` on((`vehicle`.`database_vehicle_id` = `vehicle_damage_link`.`database_vehicle_id`))) join `vehicle_damage` on((`vehicle_damage_link`.`vehicle_damage_id` = `vehicle_damage`.`vehicle_damage_id`))) group by `vehicle`.`state_registration` having (`vehicle`.`state_registration` <> 'NY') order by `amount_of_damage` */;
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

-- Dump completed on 2024-05-13  2:53:06
