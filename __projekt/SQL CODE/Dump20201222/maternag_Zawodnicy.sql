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
-- Table structure for table `Zawodnicy`
--

DROP TABLE IF EXISTS `Zawodnicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zawodnicy` (
  `idZawodnicy` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) DEFAULT NULL,
  `Nazwisko` varchar(45) DEFAULT NULL,
  `PozycjaZawodnika` varchar(45) DEFAULT NULL,
  `KrajPochodzenia` varchar(45) DEFAULT NULL,
  `DruzynaNarodowa` varchar(45) DEFAULT NULL,
  `NumerStroju` varchar(45) DEFAULT NULL,
  `Statystyki_idStatystyki` int NOT NULL,
  `StatystykiIndywidualne_idStatystykiIndywidualne` int NOT NULL,
  `Druzyna_idDruzyna` int NOT NULL,
  `Pensja` int DEFAULT NULL,
  PRIMARY KEY (`idZawodnicy`),
  KEY `fk_Zawodnicy_Statystyki1_idx` (`Statystyki_idStatystyki`),
  KEY `fk_Zawodnicy_StatystykiIndywidualne1_idx` (`StatystykiIndywidualne_idStatystykiIndywidualne`),
  KEY `fk_Zawodnicy_Druzyna1_idx` (`Druzyna_idDruzyna`),
  CONSTRAINT `fk_Zawodnicy_Druzyna1` FOREIGN KEY (`Druzyna_idDruzyna`) REFERENCES `Druzyna` (`idDruzyna`),
  CONSTRAINT `fk_Zawodnicy_Statystyki1` FOREIGN KEY (`Statystyki_idStatystyki`) REFERENCES `Statystyki` (`idStatystyki`),
  CONSTRAINT `fk_Zawodnicy_StatystykiIndywidualne1` FOREIGN KEY (`StatystykiIndywidualne_idStatystykiIndywidualne`) REFERENCES `StatystykiIndywidualne` (`idStatystykiIndywidualne`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zawodnicy`
--

LOCK TABLES `Zawodnicy` WRITE;
/*!40000 ALTER TABLE `Zawodnicy` DISABLE KEYS */;
INSERT INTO `Zawodnicy` VALUES (1,'Gracjan','Materna','N','POL','POL','1',1,1,1,15)
,(2,'Mariusz','Adamski','N','POL','POL','2',2,2,2,20)
,(3,'Marian','Andrzejewski','N','POL','POL','3',3,3,3,30)
,(4,'Daniel','Nowak','N','POL','POL','4',4,4,4,450),
(5,'Dawid','Sikora','N','POL','POL','5',5,5,5,80),
(6,'Patryk','Szymczak','SP','POL','POL','66',6,6,6,12),
(7,'Pawel','Wojciechowski','SP','POL','POL','77',1,7,1,37),
(8,'Cyprian','Wozniak','SP','POL','POL','8',2,8,2,90),
(9,'Eryk','Makowski','SPO','POL','POL','9',3,9,3,91)
,(10,'Jerzy','Szulc','SO','POL','POL','10',4,10,4,100)
,(11,'Milan','Borkowski','LP','POL','POL','15',5,11,5,200),
(12,'Adam','Makowski','RP','POL','POL','11',6,12,6,300),
(13,'Mariusz','Gorski','LO','ENG','ENG','13',1,13,1,400),
(14,'Denis','Kaminski','PO','ENG','ENG','12',2,14,2,500),
(15,'Janusz','Kazmierczak','PO','ENG','ENG','14',3,15,3,600),
(16,'Alojzy','Sawicki','PO','ENG','ENG','16',4,16,4,700)
,(17,'Patryk','Kaczmarczyk','PO','ENG','ENG','17',5,17,5,800),
(18,'Roman','Mroz','LO','ENG','ENG','19',6,18,6,900),
(19,'Konrad','Andrzejewski','RP','ESP','ESP','20',1,19,1,1000)
,(20,'Florian','Wojciechowski','LO','ESP','ESP','18',2,20,2,1100),
(21,'Jozef','Duda','LP','ESP','ESP','21',3,21,3,1200),
(22,'Anastazy','Szulc','SP','ESP','ESP','26',4,22,4,1300),
(23,'Bogumil','Kucharski','SPD','ESP','ESP','29',5,23,5,1400)
,(24,'Daniel','Mroz','SPD','ESP','ESP','27',6,24,6,1500)
,(25,'Gniewomir','Jankowski','SPD','ESP','ESP','99',1,25,1,1600)
,(26,'Juliusz','Kubiak','SPO','ITA','ITA','95',2,26,2,1700)
,(27,'Jozef','Walczak','SPO','ITA','ITA','94',3,27,3,1800),
(28,'Jakub','Kozlowski','N','ITA','ITA','92',4,28,4,1900),
(29,'Maurycy','Mazurek','LN','ITA','ITA','90',5,29,5,2000)
,(30,'Henryk','Krawczyk','LN','ITA','ITA','91',6,30,6,2100)
,(31,'Janusz','Wysocki','LN','ITA','ITA','85',1,31,1,2200)
,(32,'Amir','Lewandowski','PN','ITA','ITA','83',2,32,2,2300)
,(33,'Maciej','Nowak','PN','FRA','FRA','82',3,33,3,2400)
,(34,'Jan','Jakubowski','PN','FRA','FRA','81',4,34,4,2500)
,(35,'Karol','Baran','BR','FRA','FRA','80',5,35,5,2600)
,(36,'Marian','Jasinski','BR','FRA','FRA','89',6,36,6,2700)
,(37,'Ireneusz','Krawczyk','BR','FRA','FRA','79',1,37,1,2800)
,(38,'Albert','Dabrowski','BR','POL','POL','75',2,38,2,2900)
,(39,'Karol','Rybak','SO','POL','POL','76',3,39,3,3000),
(40,'ALexander','Lis','SO','GER','GER','78',4,40,4,3100)
,(41,'Kamil','Szewczyk','SO','GER','GER','49',5,41,5,3200)
,(42,'Borys','Kaczmarczyk','LO','GER','GER','48',6,42,6,3300),
(43,'Adrian','Podolak','PO','GER','GER','34',1,43,1,3400)
,(44,'Bartosz','Halasa','LP','GER','GER','33',2,44,2,3500)
,(45,'Bartlomiej','Wawryk','RP','GER','GER','32',3,45,3,3600)
,(46,'Gerd','Muller','RP','GER','GER','117',4,46,4,3700)
,(47,'Robert','Lewandowski','LP','GER','GER','120',5,47,5,3800)
,(48,'Arjen','Robben','SO','GER','GER','130',6,48,6,3900);
/*!40000 ALTER TABLE `Zawodnicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 19:18:15
