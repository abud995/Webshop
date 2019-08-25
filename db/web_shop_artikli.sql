-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: web_shop
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `artikli`
--

DROP TABLE IF EXISTS `artikli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` text NOT NULL,
  `opis` longtext,
  `slika` text,
  `cena` float NOT NULL,
  `stanje` text NOT NULL,
  `kolicina` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `kategorije_id` int(11) NOT NULL,
  `korisnici_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_artikli_kategorije_idx` (`kategorije_id`),
  KEY `fk_artikli_korisnici1_idx` (`korisnici_id`),
  CONSTRAINT `fk_artikli_kategorije` FOREIGN KEY (`kategorije_id`) REFERENCES `kategorije` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_artikli_korisnici1` FOREIGN KEY (`korisnici_id`) REFERENCES `korisnici` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikli`
--

LOCK TABLES `artikli` WRITE;
/*!40000 ALTER TABLE `artikli` DISABLE KEYS */;
INSERT INTO `artikli` VALUES (20,'Pegla','Pegla za peglanje','images/pegla.jpg',25,'Novo',4,'2019-08-16 13:14:40',2,1),(22,'HP Monitor','Monitor za racunar','images/monitor_hp.jpg',150,'Korišteno',10,'2019-08-16 13:25:08',1,1),(23,'Frizider','Frizider','images/fridge.jpg',555,'Novo',3,'2019-08-16 13:17:13',2,3),(24,'ASUS Laptop','Testiranje da nema slike','images/nema-slika-0.jpg',322,'Novo',2,'2019-08-16 13:17:48',1,3),(25,'DELL racunar','Testiranje da li je opis ogranicen na 100 karaktera test testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','images/komp-dell.jpg',32,'Novo',4,'2019-08-16 13:18:47',1,3);
/*!40000 ALTER TABLE `artikli` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25 13:02:27
