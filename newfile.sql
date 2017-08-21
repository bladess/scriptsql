-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: jeuxvideos
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblJeux`
--

DROP TABLE IF EXISTS `tblJeux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblJeux` (
  `idJeux` int(11) NOT NULL AUTO_INCREMENT,
  `nomJeu` varchar(255) DEFAULT NULL,
  `plateforme` int(11) NOT NULL,
  `nombreExemplaire` int(11) NOT NULL,
  PRIMARY KEY (`idJeux`),
  KEY `plateforme` (`plateforme`),
  CONSTRAINT `tblJeux_ibfk_1` FOREIGN KEY (`plateforme`) REFERENCES `tbl_plateforme` (`idPlateform`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblJeux`
--

LOCK TABLES `tblJeux` WRITE;
/*!40000 ALTER TABLE `tblJeux` DISABLE KEYS */;
INSERT INTO `tblJeux` VALUES (1,'Minecraft',1,1),(2,'Minecraft',2,2),(3,'Diablo 3',1,6),(4,'League of legends',1,4),(5,'Tekken 3',3,3),(6,'Lego SW',2,1),(7,'Overwatch',1,5),(8,'Dame de pique',5,2),(9,'WoW',1,6),(10,'Donjon ',1,1),(11,'cs:go',1,6),(12,'GOW 4',4,2),(13,'Zelda BOTW',7,2),(14,'Hearthstone',1,7);
/*!40000 ALTER TABLE `tblJeux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plateforme`
--

DROP TABLE IF EXISTS `tbl_plateforme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_plateforme` (
  `idPlateform` int(11) NOT NULL AUTO_INCREMENT,
  `nomPlateforme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPlateform`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plateforme`
--

LOCK TABLES `tbl_plateforme` WRITE;
/*!40000 ALTER TABLE `tbl_plateforme` DISABLE KEYS */;
INSERT INTO `tbl_plateforme` VALUES (1,'PC'),(2,'PS4'),(3,'PS1'),(4,'ONE'),(5,'MOBILE'),(6,'WII U'),(7,'SwITCH');
/*!40000 ALTER TABLE `tbl_plateforme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-11 10:20:32
