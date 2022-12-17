-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mosqoybase
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('AMA','M','Amachay','Case (IPads)','CAI','2020-07-22 01:09:34','2022-12-17 01:17:01'),('AWA','M','Awana','Loom','LOO','2020-07-22 01:03:14','2020-07-22 01:03:14'),('CHI','M','Chipana','Bracelet','BRA','2020-07-22 01:07:32','2020-07-22 01:07:32'),('CHU','M','Chunpi','Belt','BEL','2020-07-22 01:07:04','2020-07-22 01:07:04'),('CHU','T','Chuspa','Shoulder bag / Bolsa','SHB','2020-07-21 21:26:02','2020-07-21 21:26:02'),('CLH','T','Chalina Hancu','Scarf (Undyed)','SCU','2020-07-21 21:29:08','2020-07-21 21:29:08'),('CLT','T','Chalina Tinisca','Scarf (Dyed)','SCD','2020-07-21 21:28:53','2020-07-21 21:28:53'),('CSH','T','Chusi Hancu','Table Runner / Pasadizo ( dyed)','TRD','2020-07-21 21:25:02','2020-07-21 21:25:02'),('CST','T','Chusi tinisca','Table Runner / Pasadizo (undyed)','TRU','2020-07-21 21:24:39','2020-07-21 21:24:39'),('EST','M','Estalla','Pouch','POU','2020-07-22 01:12:20','2020-07-22 01:12:20'),('HAP','M','Hap\'iy','Curtain Tieback /Sujeta Cortinas','CUT','2020-07-22 01:04:38','2020-07-22 01:04:38'),('HUA','T','Watana','Hair Wrap / Cinta para el Cabello','HAW','2020-07-21 21:30:08','2020-07-21 21:30:08'),('KIL','T','Killanku','Bedspread / Cubrecama','BES','2020-07-21 21:25:17','2020-07-21 21:25:17'),('LAM','M','Lama','Scarf (Infinity)','SCI','2020-07-22 01:06:02','2020-07-22 01:06:02'),('LLI','T','Lliklla','Blanket / Manta','BLA','2020-07-21 21:24:20','2020-07-21 21:24:20'),('MIL','M','Millma','Yarn','YAR','2020-07-22 01:13:03','2020-07-22 01:13:03'),('MIT','M','Mitachiy','Book Protector','BKP','2020-07-22 01:14:09','2020-07-22 01:14:09'),('PUN','T','Punchu','Poncho','PON','2020-07-21 21:28:30','2020-07-21 21:28:30'),('QAM','M','QamaÃ±a','Bag (Tote)','BAT','2020-07-22 01:08:25','2020-07-22 01:08:25'),('QAT','M','Qata','Shawl','SHA','2020-07-22 01:06:26','2020-07-22 01:06:26'),('QES','M','Quespe','Textile Frame / Cuadros de textiles','TEF','2020-07-22 01:11:25','2020-07-22 01:11:25'),('QOL','M','Qolque','Change purse','CHA','2020-07-22 01:09:54','2020-07-22 01:09:54'),('QON','M','Qonpi','Rug','RUG','2020-07-22 01:04:08','2020-07-22 01:04:08'),('QUE','M','Quelqay','Pencil case','PEC','2020-07-22 01:11:53','2020-07-22 01:11:53'),('SAW','M','Sawna','Pillow Case','PIC','2020-07-22 01:03:38','2020-07-22 01:03:38'),('SEN','T','Senkapa','Wrist Wrap / Pulsera','WRI','2020-07-21 21:29:46','2020-07-21 21:29:46'),('SUR','M','Suri','Wrist warmers','WRW','2020-07-22 01:06:44','2020-07-22 01:06:44'),('TAQ','M','Taqaq','Book Marker','BKM','2020-07-22 01:13:34','2020-07-22 01:13:34'),('TUS','M','Tusay','Eyeglass holder','EYH','2020-07-22 01:05:35','2020-07-22 01:05:35'),('WAC','M','Wachala','Bag (Shoulder, small)','BAS','2020-07-22 01:07:58','2020-07-22 01:07:58'),('WAR','M','Warkuy','Camera Strap','CAS','2020-07-22 01:12:44','2020-07-22 01:12:44'),('WAY','M','Wayaqa','Bag (Yoga mat)','BAY','2020-07-22 01:08:51','2020-07-22 01:08:51'),('YAN','M','Yanapay','Case (Laptop)','CAL','2020-07-22 01:09:13','2020-07-22 01:09:13');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17  1:24:25
