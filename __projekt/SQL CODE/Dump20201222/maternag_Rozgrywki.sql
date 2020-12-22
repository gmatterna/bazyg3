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
-- Table structure for table `Rozgrywki`
--

DROP TABLE IF EXISTS `Rozgrywki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rozgrywki` (
  `idRozgrywki` int NOT NULL AUTO_INCREMENT,
  `idDruzyny1` int DEFAULT NULL,
  `idDruzyny2` int DEFAULT NULL,
  `WynikMeczu` varchar(45) DEFAULT NULL,
  `PunktyDruzyny1` int DEFAULT NULL,
  `PunktyDruzyny2` int DEFAULT NULL,
  `DataMeczu` date DEFAULT NULL,
  `idStadionu` int DEFAULT NULL,
  `TypRozgrywek_idTypRozgrywek` int NOT NULL,
  PRIMARY KEY (`idRozgrywki`),
  KEY `fk_Rozgrywki_TypRozgrywek1_idx` (`TypRozgrywek_idTypRozgrywek`),
  CONSTRAINT `fk_Rozgrywki_TypRozgrywek1` FOREIGN KEY (`TypRozgrywek_idTypRozgrywek`) REFERENCES `TypRozgrywek` (`idTypRozgrywek`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rozgrywki`
--

LOCK TABLES `Rozgrywki` WRITE;
/*!40000 ALTER TABLE `Rozgrywki` DISABLE KEYS */;
INSERT INTO `Rozgrywki` VALUES (1,1,2,'3:3',1,1,'2000-10-10',2,1),
(2,3,4,'2:1',3,0,'2020-09-07',1,1),(3,1,3,'0:0',1,1,'2019-07-07',4,1),
(4,1,4,'5:0',3,0,'2015-01-04',5,2),(5,2,4,'1:2',0,3,'2013-02-24',3,2)
,(6,2,3,'4:4',1,1,'2012-04-06',1,1),(7,1,5,'1:1',1,1,'2020-12-21',5,1)
,(8,6,3,'2:0',3,0,'2005-10-24',2,2),(9,5,2,'0:1',0,3,'2017-05-16',5,1)
,(10,6,1,'2:2',1,1,'2013-12-13',4,1),(11,4,6,'1:0',3,0,'2016-03-01',1,2);
/*!40000 ALTER TABLE `Rozgrywki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:10
