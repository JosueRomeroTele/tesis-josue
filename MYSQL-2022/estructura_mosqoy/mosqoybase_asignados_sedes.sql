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
-- Table structure for table `asignados_sedes`
--

DROP TABLE IF EXISTS `asignados_sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignados_sedes` (
  `sede` int NOT NULL,
  `producto_inventario` varchar(25) NOT NULL,
  `estadoasignacion` tinyint NOT NULL,
  `precioventa` decimal(10,2) NOT NULL,
  `encargado` int DEFAULT NULL,
  `fecha_envio` date NOT NULL,
  `stock` int NOT NULL,
  `cantidadactual` int NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `mensaje` varchar(256) DEFAULT NULL,
  `devuelto_artesano` tinyint DEFAULT NULL,
  PRIMARY KEY (`sede`,`producto_inventario`,`estadoasignacion`,`precioventa`),
  KEY `fk_Asignados_sedes_Inventario1_idx` (`producto_inventario`),
  KEY `fk_asignados_sedes_sede1_idx` (`sede`),
  KEY `fk_asignados_sedes_usuarios1_idx` (`encargado`),
  CONSTRAINT `fk_Asignados_sedes_Inventario1` FOREIGN KEY (`producto_inventario`) REFERENCES `inventario` (`codigo_inventario`),
  CONSTRAINT `fk_asignados_sedes_sede1` FOREIGN KEY (`sede`) REFERENCES `sede` (`idsede`),
  CONSTRAINT `fk_asignados_sedes_usuarios1` FOREIGN KEY (`encargado`) REFERENCES `usuarios` (`dni`),
  CONSTRAINT `FKeqo3vurmrwnob75ggdejp5adk` FOREIGN KEY (`producto_inventario`) REFERENCES `inventario` (`codigo_inventario`),
  CONSTRAINT `FKjf5jleck8atp6r423oqw625jn` FOREIGN KEY (`sede`) REFERENCES `sede` (`idsede`),
  CONSTRAINT `FKqpyy6od7o7dqlor2ggu4c0uxr` FOREIGN KEY (`encargado`) REFERENCES `usuarios` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17  1:23:31
