-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: maternag
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `StatystykiIndywidualne`
--

DROP TABLE IF EXISTS `StatystykiIndywidualne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StatystykiIndywidualne` (
  `idStatystykiIndywidualne` int NOT NULL,
  `idZawodnika` int DEFAULT NULL,
  `MinutaBramki` varchar(45) DEFAULT NULL,
  `ZolteKartki` int DEFAULT NULL,
  `CzerwoneKartki` int DEFAULT NULL,
  `RozegranyCzas` int DEFAULT NULL,
  `LiczbaBramek` int DEFAULT NULL,
  PRIMARY KEY (`idStatystykiIndywidualne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatystykiIndywidualne`
--

LOCK TABLES `StatystykiIndywidualne` WRITE;
/*!40000 ALTER TABLE `StatystykiIndywidualne` DISABLE KEYS */;
INSERT INTO `StatystykiIndywidualne` VALUES (1,1,'48 50 ',2,2,40,2)
,(2,2,'90 40 50',5,2,50,3),(3,3,'44',4,0,90,1)
,(4,4,'93 88 60',2,0,90,3),(5,5,'4',3,1,90,1),(6,6,'46',1,1,90,1)
,(7,7,'2',1,0,90,1),(8,8,'8 55',2,0,90,2),(9,9,'9',4,2,90,1),
(10,10,'34',0,0,90,1),(11,11,'11',0,0,90,1),(12,12,'15',0,0,90,1),
(13,13,'13 40',0,0,9,2),(14,14,'14',0,0,0,1),(15,15,'90',0,0,0,1),
(16,16,NULL,0,0,0,0),(17,17,NULL,0,0,0,0),(18,18,'3',0,0,13,1),
(19,19,'44 59',0,0,15,2),(20,20,'50',0,0,20,1),(21,21,'70',3,0,20,1)
,(22,22,'78',0,0,20,1),(23,23,NULL,0,0,24,0),(24,24,NULL,0,0,26,0),
(25,25,'11 14 30',1,0,55,3),(26,26,NULL,0,0,5,0),(27,27,'1',0,0,75,1),
(28,28,NULL,0,0,66,0),(29,29,NULL,0,0,35,0),(30,30,'98',0,0,49,1)
,(31,31,'4',1,0,44,1),(32,32,NULL,0,0,11,0),(33,33,'12',0,0,96,1),
(34,34,NULL,0,0,93,0),(35,35,'34',0,0,86,1),(36,36,NULL,0,0,77,0),
(37,37,NULL,0,0,66,0),(38,38,NULL,0,0,55,0),(39,39,NULL,0,0,44,0),
(40,40,NULL,0,0,33,0),(41,41,NULL,0,0,22,0),(42,42,NULL,0,0,11,0),
(43,43,NULL,0,0,0,0),(44,44,NULL,0,0,12,0),(45,45,NULL,0,0,23,0),
(46,46,NULL,0,0,24,0),(47,47,NULL,0,0,25,0),(48,48,NULL,0,0,26,0);
/*!40000 ALTER TABLE `StatystykiIndywidualne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:17
