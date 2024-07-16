CREATE DATABASE  IF NOT EXISTS `Imperial_Database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Imperial_Database`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: star_wars
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.23.04.1

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
-- Table structure for table `Alliances`
--

DROP TABLE IF EXISTS `Alliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alliances` (
  `alliance_id` int NOT NULL,
  `alliance_name` varchar(50) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `formed_date` date DEFAULT NULL,
  PRIMARY KEY (`alliance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alliances`
--

LOCK TABLES `Alliances` WRITE;
/*!40000 ALTER TABLE `Alliances` DISABLE KEYS */;
INSERT INTO `Alliances` VALUES (1,'Rebel Alliance','Mon Mothma','2002-01-01'),(2,'Galactic Empire','Emperor Palpatine','2019-01-01'),(3,'Confederacy of Independent Systems','Count Dooku','2024-01-01'),(4,'Galactic Republic','Supreme Chancellor Valorum','1032-01-01'),(5,'New Republic','Leia Organa','2004-01-01'),(6,'First Order','Supreme Leader Snoke','1021-01-01');
/*!40000 ALTER TABLE `Alliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Battles`
--

DROP TABLE IF EXISTS `Battles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Battles` (
  `battle_id` int NOT NULL,
  `battle_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `outcome` enum('Victory','Defeat','Stalemate') DEFAULT NULL,
  PRIMARY KEY (`battle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Battles`
--

LOCK TABLES `Battles` WRITE;
/*!40000 ALTER TABLE `Battles` DISABLE KEYS */;
INSERT INTO `Battles` VALUES (1,'Battle of Yavin','Yavin IV','1977-05-25','Victory'),(2,'Assault on Hoth','Hoth','1980-05-21','Defeat'),(3,'Rescue of Han Solo','Tatooine','1983-05-25','Victory'),(4,'Battle of Endor','Endor','1983-05-25','Victory'),(5,'First Death Star Attack','Yavin IV','1977-05-25','Victory'),(6,'Battle of Naboo','Naboo','1999-05-19','Victory'),(7,'Battle of Geonosis','Geonosis','2002-05-16','Victory'),(8,'Battle of Mustafar','Mustafar','2005-05-19','Victory'),(9,'Battle of Kashyyyk','Kashyyyk','2005-05-19','Victory'),(10,'Battle of Coruscant','Coruscant','2005-05-19','Victory');
/*!40000 ALTER TABLE `Battles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Characters`
--

DROP TABLE IF EXISTS `Characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Characters` (
  `character_id` int NOT NULL,
  `character_name` varchar(50) DEFAULT NULL,
  `affiliation` varchar(50) DEFAULT NULL,
  `home_planet` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Characters`
--

LOCK TABLES `Characters` WRITE;
/*!40000 ALTER TABLE `Characters` DISABLE KEYS */;
INSERT INTO `Characters` VALUES (1,'Luke Skywalker','Rebel Alliance','Tatooine','2019-01-01','Jedi Knight'),(2,'Princess Leia','Rebel Alliance','Alderaan','2019-01-01','Senator'),(3,'Darth Vader','Galactic Empire','Tatooine','2041-01-01','Sith Lord'),(4,'Han Solo','Rebel Alliance','Corellia','2029-01-01','Captain'),(5,'Boba Fett','Independent','Kamino','2032-01-01','Bounty Hunter'),(6,'Chewbacca','Rebel Alliance','Kashyyyk','0200-01-01','Co-Pilot'),(7,'Emperor Palpatine','Galactic Empire','Naboo','1982-01-01','Emperor'),(8,'Obi-Wan Kenobi','Rebel Alliance','Stewjon','2057-01-01','Jedi Master'),(9,'Yoda','Rebel Alliance','Unknown','0896-01-01','Jedi Grand Master'),(10,'Lando Calrissian','Rebel Alliance','Socorro','2031-01-01','General'),(11,'Rey','New Republic','Jakku','2015-01-01','Jedi Knight');
/*!40000 ALTER TABLE `Characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Missions`
--

DROP TABLE IF EXISTS `Missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Missions` (
  `mission_id` int NOT NULL,
  `mission_name` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('Planned','Ongoing','Completed','Failed') DEFAULT NULL,
  PRIMARY KEY (`mission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Missions`
--

LOCK TABLES `Missions` WRITE;
/*!40000 ALTER TABLE `Missions` DISABLE KEYS */;
INSERT INTO `Missions` VALUES (1,'Battle of Yavin','1977-05-25','1977-05-25','Completed'),(2,'Assault on Hoth','1980-05-21','1980-05-21','Completed'),(3,'Rescue of Han Solo','1983-05-25','1983-05-25','Completed'),(4,'Battle of Endor','1983-05-25','1983-05-25','Completed'),(5,'First Death Star Attack','1977-05-25','1977-05-25','Completed'),(6,'Battle of Naboo','1999-05-19','1999-05-19','Completed'),(7,'Battle of Geonosis','2002-05-16','2002-05-16','Completed'),(8,'Battle of Mustafar','2005-05-19','2005-05-19','Completed'),(9,'Battle of Kashyyyk','2005-05-19','2005-05-19','Completed'),(10,'Battle of Coruscant','2005-05-19','2005-05-19','Completed'),(11,'Skirmish on Jakku','2015-12-18','2015-12-18',NULL);
/*!40000 ALTER TABLE `Missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Planets`
--

DROP TABLE IF EXISTS `Planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Planets` (
  `planet_id` int NOT NULL,
  `planet_name` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  `discovered_date` date DEFAULT NULL,
  PRIMARY KEY (`planet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Planets`
--

LOCK TABLES `Planets` WRITE;
/*!40000 ALTER TABLE `Planets` DISABLE KEYS */;
INSERT INTO `Planets` VALUES (1,'Tatooine','Outer Rim',200000,'1977-05-25'),(2,'Alderaan','Core Worlds',2000000000,'1977-05-25'),(3,'Hoth','Outer Rim',0,'1980-05-21'),(4,'Endor','Outer Rim',30000,'1983-05-25'),(5,'Coruscant','Core Worlds',1000000000,'1999-05-19'),(6,'Naboo','Mid Rim',4500000000,'1999-05-19'),(7,'Kashyyyk','Mid Rim',4500000,'2005-05-19'),(8,'Geonosis','Outer Rim',100000000,'2002-05-16'),(9,'Kamino','Outer Rim',1000000,'2002-05-16'),(10,'Mustafar','Outer Rim',0,'2005-05-19');
/*!40000 ALTER TABLE `Planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ships`
--

DROP TABLE IF EXISTS `Ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ships` (
  `ship_id` int NOT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_type` enum('Freighter','Starfighter','Capital Ship','Transport') DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `in_service` set('Rebel Alliance','Galactic Empire','Independent','Pirate') DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ships`
--

LOCK TABLES `Ships` WRITE;
/*!40000 ALTER TABLE `Ships` DISABLE KEYS */;
INSERT INTO `Ships` VALUES (1,'Millennium Falcon','Freighter',6,'Independent'),(2,'X-Wing','Starfighter',1,'Rebel Alliance'),(3,'TIE Fighter','Starfighter',1,'Galactic Empire'),(4,'Star Destroyer','Capital Ship',47000,'Galactic Empire'),(5,'Slave I','Starfighter',1,'Independent'),(6,'Y-Wing','Starfighter',1,'Rebel Alliance'),(7,'Imperial Shuttle','Transport',20,'Galactic Empire'),(8,'Nebulon-B Frigate','Capital Ship',850,'Rebel Alliance'),(9,'A-Wing','Starfighter',1,'Rebel Alliance'),(10,'B-Wing','Starfighter',1,'Rebel Alliance'),(11,'Ebon Hawk','Freighter',10,NULL);
/*!40000 ALTER TABLE `Ships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 10:28:06
