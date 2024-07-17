CREATE DATABASE  IF NOT EXISTS `Imperial_Database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Imperial_Database`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Imperial_Database
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
INSERT INTO `Battles` VALUES (1,'Battle of Yavin','Yavin IV','1977-05-25','Victory'),(2,'Assault on Hoth','Hoth','1980-05-21','Defeat'),(3,'Rescue of Han Solo','Tatooine','1983-05-25',NULL),(4,'Battle of Endor','Endor','1983-05-25','Victory'),(5,'First Death Star Attack','Yavin IV','1977-05-25',NULL),(6,'Battle of Naboo','Naboo','1999-05-19','Victory'),(7,'Battle of Geonosis','Geonosis','2002-05-16','Victory'),(8,'Battle of Mustafar','Mustafar','2005-05-19',NULL),(9,'Battle of Kashyyyk','Kashyyyk','2005-05-19','Victory'),(10,'Battle of Coruscant','Coruscant','2005-05-19',NULL);
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
INSERT INTO `Characters` VALUES (1,'Luke Skywalker','Rebel Alliance','Tatooine','2019-01-01','Jedi Knight'),(2,'Princess Leia','Rebel Alliance','Alderaan','2019-01-01','Senator'),(3,'Darth Vader','Galactic Empire','Tatooine','2041-01-01','Sith Lord'),(4,'Han Solo','Rebel Alliance','Corellia','2029-01-01','Captain'),(5,'Boba Fett','Independent','Kamino','2032-01-01','Bounty Hunter'),(6,'Chewbacca','Rebel Alliance','Kashyyyk','0200-01-01','Co-Pilot'),(7,'Emperor Palpatine','Galactic Empire','Naboo','1982-01-01','Emperor'),(8,'Obi-Wan Kenobi','Rebel Alliance','Stewjon','2057-01-01','Jedi Master'),(9,'Yoda','Rebel Alliance','Unknown','0896-01-01','Jedi Grand Master'),(10,'Lando Calrissian','Rebel Alliance','Socorro','2031-01-01','General'),(11,'Rey','New Republic','Jakku','2015-01-01','Jedi Knight'),(13,'Iratze ','Rebel Alliance','Tatooine','2041-01-01',NULL),(15,'Sabine Wren','Rebel Alliance','Mandalore','2020-05-04','Artist'),(16,'Hera Syndulla','Rebel Alliance','Ryloth','2022-07-07','Pilot'),(17,'Kanan Jarrus','Rebel Alliance','Coruscant','2021-08-15','Jedi Knight'),(18,'Zeb Orrelios','Rebel Alliance','Lasan','2021-08-15','Warrior'),(19,'Agent Kallus','Galactic Empire','Coruscant','2019-11-11','Agent'),(20,'Thrawn','Galactic Empire','Csilla','2017-10-10','Grand Admiral'),(21,'Rex','Rebel Alliance','Kamino','2015-03-20','Captain'),(22,'Poe Dameron','Resistance','Yavin IV','2012-06-25','Pilot'),(23,'Finn','Resistance','Jakuu','2011-09-10','Soldier'),(24,'Rose Tico','Resistance','Hays Minor','2010-02-14','Mechanic'),(25,'DJ','Independent','Cantonica','2009-05-30','Hacker'),(26,'Snap Wexley','Resistance','Akiva','2008-08-25','Pilot'),(27,'Jannah','Resistance','Kef Bir','2007-11-05','Soldier'),(28,'Lando Calrissian','Rebel Alliance','Socorro','2031-01-01','General'),(29,'Qi\'ra','Crimson Dawn','Corellia','2006-02-28','Criminal'),(30,'Kyra Vandar','Galactic Empire','Jakku','1988-02-03','Captain'),(31,'Val','Independent','Unknown','2004-06-23','Outlaw'),(32,'Dryden Vos','Crimson Dawn','Dathomir','2003-09-13','Crime Lord'),(33,'Enfys Nest','Cloud-Riders','Unknown','2002-11-25','Leader'),(34,'Saw Gerrera','Partisans','Onderon','2001-01-06','Rebel Leader'),(35,'Bodhi Rook','Rebel Alliance','Jedha','2000-03-19','Pilot'),(36,'Chirrut Îmwe','Rebel Alliance','Jedha','1999-05-04','Warrior Monk'),(37,'Baze Malbus','Rebel Alliance','Jedha','1998-07-15','Mercenary'),(38,'Cassian Andor','Rebel Alliance','Fest','1997-09-21','Intelligence Officer'),(39,'K-2SO','Rebel Alliance','Unknown','1996-12-24','Security Droid'),(40,'Jyn Erso','Rebel Alliance','Vallt','1995-02-14','Fighter'),(41,'Galen Erso','Galactic Empire','Grange','1994-04-05','Scientist'),(42,'Orson Krennic','Galactic Empire','Lexrul','1993-06-12','Director'),(43,'Admiral Raddus','Rebel Alliance','Mon Cala','1991-10-10','Admiral'),(44,'General Draven','Rebel Alliance','Unknown','1990-12-14','General'),(45,'Mon Mothma','Rebel Alliance','Chandrila','1989-03-17','Leader'),(46,'Bail Organa','Rebel Alliance','Alderaan','1988-05-22','Senator'),(47,'Wedge Antilles','Rebel Alliance','Corellia','1987-07-11','Pilot'),(48,'Biggs Darklighter','Rebel Alliance','Tatooine','1986-09-24','Pilot'),(49,'Crix Madine','Rebel Alliance','Corellia','1985-11-30','General'),(50,'Jan Dodonna','Rebel Alliance','Commenor','1984-01-15','General'),(51,'Carlist Rieekan','Rebel Alliance','Alderaan','1983-02-27','General'),(52,'Ackbar','Rebel Alliance','Mon Cala','1981-06-18','Admiral'),(53,'Greedo','Independent','Rodia','1980-08-05','Bounty Hunter'),(54,'Bossk','Independent','Trandosha','1979-10-21','Bounty Hunter'),(55,'Dengar','Independent','Corellia','1978-12-28','Bounty Hunter'),(56,'Zuckuss','Independent','Gand','1977-03-08','Bounty Hunter'),(57,'4-LOM','Independent','Unknown','1976-05-15','Bounty Hunter'),(58,'IG-88','Independent','Unknown','1975-07-19','Bounty Hunter'),(59,'Embo','Independent','Phatrong','1974-09-25','Bounty Hunter'),(60,'Cad Bane','Independent','Duro','1973-11-07','Bounty Hunter'),(61,'Aurra Sing','Independent','Nar Shaddaa','1972-01-02','Bounty Hunter'),(62,'Hondo Ohnaka','Pirates','Sriluur','1971-03-05','Pirate Leader'),(63,'Lobot','Independent','Bespin','1970-05-09','Administrator'),(64,'IG-11','Independent','Meemohn','1969-07-14','Bounty Hunter'),(65,'Cobb Vanth','Independent','Tatooine','1968-09-19','Marshal'),(66,'Greef Karga','Independent','Nevarro','1967-11-23','Magistrate'),(67,'Cara Dune','Independent','Alderaan','1966-01-28','Mercenary'),(68,'The Armorer','Independent','Mandalore','1965-04-15','Armorer'),(69,'Fennec Shand','Independent','Unknown','1964-06-12','Assassin'),(70,'Bo-Katan Kryze','Mandalorian','Mandalore','1963-08-19','Warrior');
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
INSERT INTO `Missions` VALUES (1,'Battle of Yavin','1977-05-25','1977-05-25',NULL),(2,'Assault on Hoth','1980-05-21','1980-05-21','Completed'),(3,'Rescue of Han Solo','1983-05-25','1983-05-25','Completed'),(4,'Battle of Endor','1983-05-25','1983-05-25','Completed'),(5,'First Death Star Attack','1977-05-25','1977-05-25',NULL),(6,'Battle of Naboo','1999-05-19','1999-05-19',NULL),(7,'Battle of Geonosis','2002-05-16','2002-05-16','Completed'),(8,'Battle of Mustafar','2005-05-19','2005-05-19','Completed'),(9,'Battle of Kashyyyk','2005-05-19','2005-05-19',NULL),(10,'Battle of Coruscant','2005-05-19','2005-05-19','Completed'),(11,'Skirmish on Jakku','2015-12-18','2015-12-18',NULL);
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

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `children` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `FechaNacimientoHijo` date DEFAULT NULL,
  `Id_Character` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
INSERT INTO `children` VALUES (15,'Luke Skywalker','2019-01-01',1),(16,'Leia Organa',NULL,2),(17,NULL,'2020-05-04',3),(18,'Han Solo Jr.','2022-07-07',NULL),(19,'Ben Solo',NULL,4),(20,'Jaina Solo','2018-08-15',5),(21,'Jacen Solo',NULL,6),(22,NULL,'2021-09-22',7),(23,'Anakin Solo',NULL,8),(24,'Mara Jade','2023-12-25',9),(25,'Cade Skywalker',NULL,10),(26,'Kol Skywalker','2024-01-01',NULL),(27,'Nat Skywalker',NULL,11),(28,'Ania Solo','2022-03-17',NULL),(29,'Tenel Ka',NULL,12),(30,'Allana Solo','2021-11-30',NULL),(31,NULL,'2020-02-29',13),(32,'Tahiri Veila',NULL,14),(33,'Zekk','2023-10-10',NULL),(34,'Jagged Fel',NULL,15),(35,'Talon Karrde','2019-05-05',NULL),(36,'Booster Terrik',NULL,16),(37,'Corran Horn','2022-06-06',NULL),(38,NULL,'2023-07-07',17),(39,'Mirax Terrik',NULL,18),(40,'Gilad Pellaeon','2021-08-08',NULL),(41,NULL,'2020-09-09',19),(42,'Kyp Durron',NULL,20),(43,'Tionne Solusar','2024-10-10',NULL),(44,'Kam Solusar',NULL,21),(45,'Cilghal','2019-11-11',NULL),(46,NULL,'2020-12-12',22),(47,'Kenth Hamner',NULL,23),(48,'Octa Ramis','2021-01-01',NULL),(49,'Tresina Lobi',NULL,24),(50,'Kirana Ti','2023-02-02',NULL),(51,'Saba Sebatyne',NULL,25),(52,'Tesar Sebatyne','2024-03-03',NULL),(53,NULL,'2022-04-04',26),(54,'Lowbacca',NULL,27),(55,'Raynar Thul','2019-05-05',NULL),(56,NULL,'2020-06-06',28),(57,'Alema Rar',NULL,29),(58,'Numa Rar','2021-07-07',NULL),(59,NULL,'2023-08-08',30),(60,'Jysella Horn',NULL,31),(61,'Valin Horn','2024-09-09',NULL),(62,'Jaden Korr',NULL,32),(63,'Kyle Katarn','2022-10-10',NULL),(64,NULL,'2023-11-11',33),(65,'Streen',NULL,34),(66,'Dorsk 81','2019-12-12',NULL),(67,'Kirana Ti',NULL,35),(68,'Ganner Rhysode','2020-01-01',NULL),(69,NULL,'2021-02-02',36),(70,'Jacen Solo',NULL,37),(71,'Jaina Solo','2022-03-03',NULL),(72,NULL,'2023-04-04',38),(73,'Ben Skywalker',NULL,39),(74,'Anakin Solo','2024-05-05',NULL),(75,NULL,'2020-06-06',40),(76,'Tahiri Veila',NULL,41),(77,'Tenel Ka','2021-07-07',NULL),(78,NULL,'2022-08-08',42),(79,'Zekk',NULL,43),(80,'Jagged Fel','2023-09-09',NULL),(81,'Talon Karrde',NULL,44),(82,'Booster Terrik','2024-10-10',NULL),(83,NULL,'2020-11-11',45),(84,'Corran Horn',NULL,46),(85,'Mirax Terrik','2021-12-12',NULL),(86,NULL,'2022-01-01',47),(87,'Gilad Pellaeon',NULL,48),(88,'Kyp Durron','2023-02-02',NULL),(89,NULL,'2024-03-03',49),(90,'Tionne Solusar',NULL,50),(91,'Kam Solusar','2019-04-04',NULL),(92,NULL,'2020-05-05',51),(93,'Cilghal',NULL,52),(94,'Kenth Hamner','2021-06-06',NULL),(95,NULL,'2022-07-07',53),(96,'Octa Ramis',NULL,54),(97,'Tresina Lobi','2023-08-08',NULL),(98,NULL,'2024-09-09',55),(99,'Kirana Ti',NULL,56),(100,'Saba Sebatyne','2020-10-10',NULL),(101,NULL,'2021-11-11',57),(102,'Tesar Sebatyne',NULL,58),(103,NULL,'1995-09-21',30),(104,NULL,'2023-01-01',59),(105,'Raynar Thul',NULL,60),(106,'Alema Rar','2024-02-02',NULL),(107,NULL,'2020-03-03',61),(108,'Numa Rar',NULL,62),(109,'Jysella Horn','2021-04-04',NULL),(110,NULL,'2022-05-05',63),(111,'Valin Horn',NULL,64),(112,'Jaden Korr','2023-06-06',NULL),(113,NULL,'2024-07-07',65),(114,'Kyle Katarn',NULL,66),(115,'Streen','2020-08-08',NULL),(116,NULL,'2021-09-09',67),(117,'Dorsk 81',NULL,68),(118,'Kirana Ti','2022-10-10',NULL),(119,NULL,'2023-11-11',69),(120,'Ganner Rhysode',NULL,70);
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 14:45:57
