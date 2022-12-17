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
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idventas` int NOT NULL AUTO_INCREMENT,
  `ruc_dni` varchar(11) DEFAULT NULL,
  `nombrecliente` varchar(45) NOT NULL,
  `tipodocumento` int NOT NULL,
  `numerodocumento` varchar(45) DEFAULT NULL,
  `confirmado` tinyint NOT NULL,
  `lugarventa` varchar(45) NOT NULL,
  `productoinventario` varchar(25) NOT NULL,
  `fecha` date NOT NULL,
  `vendedor` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `mensaje` varchar(256) DEFAULT NULL,
  `nota` int DEFAULT NULL,
  `cancelar` int DEFAULT NULL,
  `media` varchar(256) DEFAULT NULL,
  `mediopago` int DEFAULT NULL,
  PRIMARY KEY (`idventas`),
  KEY `fk_Ventas_Inventario2_idx` (`productoinventario`),
  KEY `fk_Ventas_Usuarios1_idx` (`vendedor`),
  CONSTRAINT `FK7p56c76k5lmfekv37pio5hinv` FOREIGN KEY (`vendedor`) REFERENCES `usuarios` (`dni`),
  CONSTRAINT `fk_Ventas_Inventario2` FOREIGN KEY (`productoinventario`) REFERENCES `inventario` (`codigo_inventario`),
  CONSTRAINT `fk_Ventas_Usuarios1` FOREIGN KEY (`vendedor`) REFERENCES `usuarios` (`dni`),
  CONSTRAINT `FKnhc2qoathsi10j7psa8yq9bbu` FOREIGN KEY (`productoinventario`) REFERENCES `inventario` (`codigo_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17  1:23:30
