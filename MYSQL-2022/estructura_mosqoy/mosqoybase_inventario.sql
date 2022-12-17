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
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `codigo_inventario` varchar(25) NOT NULL,
  `numpedido` int NOT NULL,
  `categoria` varchar(1) NOT NULL,
  `producto` varchar(3) NOT NULL,
  `linea` varchar(1) NOT NULL,
  `tamanho` varchar(10) NOT NULL,
  `comunidad` varchar(2) NOT NULL,
  `artesano` varchar(4) DEFAULT NULL,
  `cantidad_total` int NOT NULL,
  `cantidad_gestor` int NOT NULL,
  `tipoadquisicion` int NOT NULL,
  `dia` tinyint DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `mes` int NOT NULL,
  `anho` int NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  `foto` varchar(200) NOT NULL,
  `costotejedor` decimal(10,2) NOT NULL,
  `costomosqoy` decimal(10,2) NOT NULL,
  `facilitador` varchar(45) NOT NULL,
  `fecha_vencimiento_consignacion` date DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `devuelto_artesano` tinyint NOT NULL,
  PRIMARY KEY (`codigo_inventario`),
  KEY `fk_Inventario_Categorias2_idx` (`categoria`),
  KEY `fk_Inventario_Productos2_idx` (`producto`,`linea`),
  KEY `fk_Inventario_Comunidades2_idx` (`comunidad`),
  KEY `FK555nks8hqfxt0krixoufodh91` (`artesano`),
  CONSTRAINT `FK555nks8hqfxt0krixoufodh91` FOREIGN KEY (`artesano`) REFERENCES `artesanos` (`codigo`),
  CONSTRAINT `fk_Inventario_Categorias2` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`codigo`),
  CONSTRAINT `fk_Inventario_Comunidades2` FOREIGN KEY (`comunidad`) REFERENCES `comunidades` (`codigo`),
  CONSTRAINT `fk_Inventario_Productos2` FOREIGN KEY (`producto`, `linea`) REFERENCES `productos` (`codigonom`, `linea`),
  CONSTRAINT `FKec1wsowp27t2jd8bgqbef01n9` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`codigo`),
  CONSTRAINT `FKey3kefvc06wooyg071ni4a2w2` FOREIGN KEY (`comunidad`) REFERENCES `comunidades` (`codigo`)
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

-- Dump completed on 2022-12-17  1:23:30
