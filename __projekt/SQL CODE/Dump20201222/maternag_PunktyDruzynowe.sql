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
-- Table structure for table `PunktyDruzynowe`
--

DROP TABLE IF EXISTS `PunktyDruzynowe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PunktyDruzynowe` (
  `idPunktyDruzynowe` int NOT NULL AUTO_INCREMENT,
  `idDruzyny` int DEFAULT NULL,
  `SumaPkt` int DEFAULT NULL,
  `Rozgrywki_idRozgrywki` int NOT NULL,
  PRIMARY KEY (`idPunktyDruzynowe`),
  KEY `fk_PunktyDruzynowe_Rozgrywki1_idx` (`Rozgrywki_idRozgrywki`),
  CONSTRAINT `fk_PunktyDruzynowe_Rozgrywki1` FOREIGN KEY (`Rozgrywki_idRozgrywki`) REFERENCES `Rozgrywki` (`idRozgrywki`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PunktyDruzynowe`
--

LOCK TABLES `PunktyDruzynowe` WRITE;
/*!40000 ALTER TABLE `PunktyDruzynowe` DISABLE KEYS */;
INSERT INTO `PunktyDruzynowe` VALUES (1,1,4,1),(2,2,5,1),(3,3,5,1)
,(4,4,0,1),(5,5,1,1),(6,6,3,1),(7,1,3,2),(8,2,0,2),(9,3,0,2)
,(10,4,6,2),(11,5,0,2),(12,6,1,2);
/*!40000 ALTER TABLE `PunktyDruzynowe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:19
