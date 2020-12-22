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
-- Table structure for table `Druzyna`
--

DROP TABLE IF EXISTS `Druzyna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Druzyna` (
  `idDruzyna` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(45) DEFAULT NULL,
  `Stadion` varchar(45) DEFAULT NULL,
  `AdresKlubu` varchar(45) DEFAULT NULL,
  `KrajRozgrywkowy` varchar(45) DEFAULT NULL,
  `Liga` varchar(45) DEFAULT NULL,
  `Stadion_idStadion` int NOT NULL,
  `Rozgrywki_idRozgrywki` int NOT NULL,
  PRIMARY KEY (`idDruzyna`),
  UNIQUE KEY `Nazwa_UNIQUE` (`Nazwa`),
  KEY `fk_Druzyna_Stadion1_idx` (`Stadion_idStadion`),
  KEY `fk_Druzyna_Rozgrywki1_idx` (`Rozgrywki_idRozgrywki`),
  CONSTRAINT `fk_Druzyna_Rozgrywki1` FOREIGN KEY (`Rozgrywki_idRozgrywki`) REFERENCES `Rozgrywki` (`idRozgrywki`),
  CONSTRAINT `fk_Druzyna_Stadion1` FOREIGN KEY (`Stadion_idStadion`) REFERENCES `Stadion` (`idStadion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Druzyna`
--

LOCK TABLES `Druzyna` WRITE;
/*!40000 ALTER TABLE `Druzyna` DISABLE KEYS */;
INSERT INTO `Druzyna` VALUES (1,'WKS Przewale','WKS stadion','Przewale 63','POL','B Klasa',1,1)
,(2,'Real Madryt','Santiago Bernabeu','Madryt 13','ESP','Primera Division',5,1),
(3,'Barcelona','Camp Nou','Barcelona 10','ESP','Primera Divison',4,1),
(4,'Leicester City','King Power Stadium','Leicester 99','ENG','Premier League',6,1),
(5,'Liverpool','Anfield Road','Liverpool 63 square','ENG','Premier League',3,1),
(6,'Manchester City','Etihad Stadium','Manchester 83','ENG','Prermier League',2,1);
/*!40000 ALTER TABLE `Druzyna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:11
