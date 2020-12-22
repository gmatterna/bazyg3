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
-- Table structure for table `Transfery`
--

DROP TABLE IF EXISTS `Transfery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transfery` (
  `idTransfery` int NOT NULL AUTO_INCREMENT,
  `idZawodnika` int DEFAULT NULL,
  `zJakiejDruzyny` varchar(45) DEFAULT NULL,
  `doJakiejDruzyny` varchar(45) DEFAULT NULL,
  `Cena` decimal(10,0) DEFAULT NULL,
  `Zawodnicy_idZawodnicy` int NOT NULL,
  `DataTransferu` date DEFAULT NULL,
  PRIMARY KEY (`idTransfery`),
  KEY `fk_Transfery_Zawodnicy1_idx` (`Zawodnicy_idZawodnicy`),
  CONSTRAINT `fk_Transfery_Zawodnicy1` FOREIGN KEY (`Zawodnicy_idZawodnicy`) REFERENCES `Zawodnicy` (`idZawodnicy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transfery`
--

LOCK TABLES `Transfery` WRITE;
/*!40000 ALTER TABLE `Transfery` DISABLE KEYS */;
INSERT INTO `Transfery` VALUES (1,1,'Leicester City','Liverpool',5000,1,'2000-10-10')
,(2,5,'Liverpool','Manchester City',100000,5,'2020-08-08')
,(3,8,'Manchester City','Barcelona',4455,8,'1920-01-01')
,(4,10,'Liverpol','Leicester City',15662,10,'2018-02-04')
,(5,14,'Real Madryt','Liverpool',2000,14,'2017-05-25')
,(6,18,'WKS Przewale','Barcelona',30000,18,'1999-01-08')
,(7,20,'Real Madryt','WKS Przewale',8000,20,'2001-09-28')
,(8,22,'Leicester City','Manchester City',100,22,'1995-01-21');
/*!40000 ALTER TABLE `Transfery` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`maternag`@`localhost`*/ /*!50003 TRIGGER `DataTransferu` BEFORE INSERT ON `Transfery` FOR EACH ROW BEGIN

SET NEW.DataTransferu = now();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`maternag`@`localhost`*/ /*!50003 TRIGGER `Transfery_before_insert` BEFORE INSERT ON `Transfery` FOR EACH ROW BEGIN
IF NEW.Cena < 0
THEN
SET NEW.Cena = 0;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:18
