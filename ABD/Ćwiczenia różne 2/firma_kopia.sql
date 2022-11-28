-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: firma
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `pesel_p` char(11) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `data_urodzenia` date DEFAULT '0000-00-00',
  `adres_ul` varchar(30) NOT NULL,
  `adres_nr` varchar(5) NOT NULL,
  `miejscowosc` varchar(30) NOT NULL,
  `zespol` char(5) NOT NULL,
  PRIMARY KEY (`pesel_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES ('59111102012','Kowalski','Maciej','1959-11-11','Polna','13c','Warszawa','QC'),('67091104012','Abacki','Jan','1967-09-11','D┼éuga','23','Olsztyn','IT'),('68111102012','Kowalski','Jan','1968-11-11','Polna','13b','Warszawa','QC'),('68111202042','Nowak','Andrzej','1968-11-11','Kwiatowa','15','Bydgoszcz','EESH'),('69101102052','Kownacki','Maciej','1969-10-11','Polna','23','Warszawa','EESH');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy_sam`
--

DROP TABLE IF EXISTS `pracownicy_sam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy_sam` (
  `wlasciciel` char(11) DEFAULT NULL,
  `nr_rej` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy_sam`
--

LOCK TABLES `pracownicy_sam` WRITE;
/*!40000 ALTER TABLE `pracownicy_sam` DISABLE KEYS */;
INSERT INTO `pracownicy_sam` VALUES ('68111102012','REW 3242'),('68111202042','REW 3352');
/*!40000 ALTER TABLE `pracownicy_sam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samochody_sl`
--

DROP TABLE IF EXISTS `samochody_sl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `samochody_sl` (
  `nr_rej` varchar(10) NOT NULL,
  `marka` varchar(25) NOT NULL,
  `model` varchar(35) NOT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  PRIMARY KEY (`nr_rej`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samochody_sl`
--

LOCK TABLES `samochody_sl` WRITE;
/*!40000 ALTER TABLE `samochody_sl` DISABLE KEYS */;
INSERT INTO `samochody_sl` VALUES ('REW 3242','FORD','Escort',1995),('REW 3352','OPEL','Corsa',1990),('REW 4456','Opel','Astra',2006);
/*!40000 ALTER TABLE `samochody_sl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefony`
--

DROP TABLE IF EXISTS `telefony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefony` (
  `nr_telefonu` varchar(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `wlasciciel` char(11) DEFAULT NULL,
  PRIMARY KEY (`nr_telefonu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefony`
--

LOCK TABLES `telefony` WRITE;
/*!40000 ALTER TABLE `telefony` DISABLE KEYS */;
INSERT INTO `telefony` VALUES ('1234567','stacjonarny','68111202042'),('608741050','komorka','68111102012');
/*!40000 ALTER TABLE `telefony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zespoly`
--

DROP TABLE IF EXISTS `zespoly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zespoly` (
  `Id_zespoly` char(5) NOT NULL,
  `Nazwa_zespolu` char(100) NOT NULL,
  `Liczba_pracownikow` int(11) NOT NULL,
  `Team_lider` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_zespoly`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zespoly`
--

LOCK TABLES `zespoly` WRITE;
/*!40000 ALTER TABLE `zespoly` DISABLE KEYS */;
INSERT INTO `zespoly` VALUES ('EESH','Energy Environment Safety Health',15,'Dawid Żółtowski'),('IT','Information Technology',12,'Leszek Dobrosielski'),('QC','Quality Control',10,'Tobiasz Rybczyński');
/*!40000 ALTER TABLE `zespoly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 13:07:16
