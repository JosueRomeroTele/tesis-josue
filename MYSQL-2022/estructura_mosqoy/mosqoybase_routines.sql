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
-- Dumping routines for database 'mosqoybase'
--
/*!50003 DROP PROCEDURE IF EXISTS `aceptar_devol_sede` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aceptar_devol_sede`(in cant_devol int, in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2))
BEGIN
	update mosqoybase.Inventario
    set mosqoybase.Inventario.cantidad_gestor = mosqoybase.Inventario.cantidad_gestor + cant_devol
    where mosqoybase.Inventario.codigo_inventario = codigo;
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.stock = mosqoybase.Asignados_sedes.stock - cant_devol
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = estado and mosqoybase.Asignados_sedes.precioventa = precio;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_password`(in token varchar(90), in pass varchar(70), in id int)
BEGIN
	update mosqoybase.Usuarios
    set mosqoybase.Usuarios.password = pass
    where mosqoybase.Usuarios.token = token;
    
    update mosqoybase.Usuarios
    set mosqoybase.Usuarios.token = null
    where mosqoybase.Usuarios.dni = id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borrar_venta_as` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_venta_as`(in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2), in cant int)
BEGIN

	update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.stock = mosqoybase.Asignados_sedes.stock + cant
    where mosqoybase.Asignados_sedes.gestor = gestor and mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = estado and mosqoybase.Asignados_sedes.precioventa = precio;
    
    
    update mosqoybase.Inventario
    set mosqoybase.Inventario.cantidad_total = mosqoybase.Inventario.cantidad_total + cant
    where mosqoybase.Inventario.codigo_inventario = codigo;
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.cantidadactual = mosqoybase.Asignados_sedes.cantidadactual + cant
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = estado and mosqoybase.Asignados_sedes.precioventa = precio;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borrar_venta_tienda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_venta_tienda`(in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2), in cant int, in aTienda int)
BEGIN
	update mosqoybase.Asignacion_tienda
    set mosqoybase.Asignacion_tienda.stock = mosqoybase.Asignacion_tienda.stock + cant
    where mosqoybase.Asignacion_tienda.idTiendas = aTienda;
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.stock = mosqoybase.Asignados_sedes.stock + cant
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = estado and mosqoybase.Asignados_sedes.precioventa = precio;
    
    update mosqoybase.Inventario
    set mosqoybase.Inventario.cantidad_total = mosqoybase.Inventario.cantidad_total + cant
    where mosqoybase.Inventario.codigo_inventario = codigo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_notifications` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_notifications`(in cod int)
BEGIN

delete from Notificaciones where usuario = cod;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_user`(in cod int)
BEGIN
delete from Notificaciones where usuario = cod;
delete from Usuarios where (dni = cod and (rol=2 or rol=3));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dev_stock_inv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dev_stock_inv`(in cant_devol int, in codigo varchar(45))
BEGIN

	update mosqoybase.Inventario
    set mosqoybase.Inventario.cantidad_gestor = mosqoybase.Inventario.cantidad_gestor + cant_devol,
		mosqoybase.Inventario.cantidad_total = mosqoybase.Inventario.cantidad_total + cant_devol
    where mosqoybase.Inventario.codigo_inventario = codigo;	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rechazar_devol_sede` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rechazar_devol_sede`(in cant_devol int, in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2))
BEGIN
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.cantidadactual = mosqoybase.Asignados_sedes.cantidadactual + cant_devol
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = estado and mosqoybase.Asignados_sedes.precioventa = precio;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tienda_devolucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tienda_devolucion`(in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2), in cant int, in aTienda int)
BEGIN

	update mosqoybase.Asignacion_tienda
    set mosqoybase.Asignacion_tienda.stock = mosqoybase.Asignacion_tienda.stock - cant
    where mosqoybase.Asignacion_tienda.idTiendas = aTienda;
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.cantidadactual = mosqoybase.Asignados_sedes.cantidadactual + cant
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = 2 and mosqoybase.Asignados_sedes.precioventa = precio;

	#delete from mosqoybase.Asignacion_tienda
    #where mosqoybase.Asignacion_tienda.idTiendas = aTienda
    #and mosqoybase.Asignacion_tienda.stock = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tienda_registra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tienda_registra`(in sede int, in codigo varchar(45),in estado int, in precio decimal(10,2), in cant int, in aTienda int)
BEGIN

	update mosqoybase.Asignacion_tienda
    set mosqoybase.Asignacion_tienda.stock = mosqoybase.Asignacion_tienda.stock - cant
    where mosqoybase.Asignacion_tienda.idTiendas = aTienda;
    
    update mosqoybase.Asignados_sedes
    set mosqoybase.Asignados_sedes.stock = mosqoybase.Asignados_sedes.stock - cant
    where mosqoybase.Asignados_sedes.sede = sede and mosqoybase.Asignados_sedes.producto_inventario = codigo and mosqoybase.Asignados_sedes.estadoasignacion = 2 and mosqoybase.Asignados_sedes.precioventa = precio;
    
    update mosqoybase.Inventario
    set mosqoybase.Inventario.cantidad_total = mosqoybase.Inventario.cantidad_total - cant
    where mosqoybase.Inventario.codigo_inventario = codigo;
    
	#delete from mosqoybase.Asignacion_tienda
    #where mosqoybase.Asignacion_tienda.idTiendas = aTienda
    #and mosqoybase.Asignacion_tienda.stock = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17  1:23:31
