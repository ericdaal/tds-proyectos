-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idBitacora` int NOT NULL AUTO_INCREMENT,
  `clientes_idClientes` int DEFAULT NULL,
  `registroventas_idRegistroVentas` int DEFAULT NULL,
  `fecha_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ingresos_idIngresos` int DEFAULT NULL,
  `productos_idProductos` int DEFAULT NULL,
  `detalleregistroventas_idDetalleRegistroVentas` int DEFAULT NULL,
  `Ganancias_idGanancias` int DEFAULT NULL,
  PRIMARY KEY (`idBitacora`),
  KEY `fk_Bitacora_clientes_idx` (`clientes_idClientes`),
  KEY `fk_Bitacora_registroventas1_idx` (`registroventas_idRegistroVentas`),
  KEY `fk_Bitacora_ingresos1_idx` (`ingresos_idIngresos`),
  KEY `fk_Bitacora_productos1_idx` (`productos_idProductos`),
  KEY `fk_Bitacora_detalleregistroventas1_idx` (`detalleregistroventas_idDetalleRegistroVentas`),
  KEY `fk_Bitacora_Ganancias1_idx` (`Ganancias_idGanancias`),
  CONSTRAINT `fk_Bitacora_clientes` FOREIGN KEY (`clientes_idClientes`) REFERENCES `clientes` (`idClientes`),
  CONSTRAINT `fk_Bitacora_detalleregistroventas1` FOREIGN KEY (`detalleregistroventas_idDetalleRegistroVentas`) REFERENCES `detalleregistroventas` (`idDetalleRegistroVentas`),
  CONSTRAINT `fk_Bitacora_Ganancias1` FOREIGN KEY (`Ganancias_idGanancias`) REFERENCES `ganancias` (`idGanancias`),
  CONSTRAINT `fk_Bitacora_ingresos1` FOREIGN KEY (`ingresos_idIngresos`) REFERENCES `ingresos` (`idIngresos`),
  CONSTRAINT `fk_Bitacora_productos1` FOREIGN KEY (`productos_idProductos`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `fk_Bitacora_registroventas1` FOREIGN KEY (`registroventas_idRegistroVentas`) REFERENCES `registroventas` (`idRegistroVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,8,NULL,'2023-03-28 16:23:11',NULL,NULL,NULL,NULL),(2,9,NULL,'2023-03-28 16:23:27',NULL,NULL,NULL,NULL),(3,10,NULL,'2023-03-28 16:23:42',NULL,NULL,NULL,NULL),(4,11,NULL,'2023-03-28 16:33:34',NULL,NULL,NULL,NULL),(5,12,NULL,'2023-03-28 16:33:45',NULL,NULL,NULL,NULL),(7,13,NULL,'2023-04-02 15:33:21',NULL,NULL,NULL,NULL),(8,NULL,NULL,'2023-04-03 00:16:10',NULL,12,NULL,NULL),(9,NULL,NULL,'2023-04-03 00:16:10',NULL,13,NULL,NULL),(10,NULL,NULL,'2023-04-03 00:16:10',NULL,14,NULL,NULL),(11,NULL,NULL,'2023-04-03 00:16:10',NULL,15,NULL,NULL),(12,NULL,NULL,'2023-04-03 00:16:10',NULL,16,NULL,NULL),(13,NULL,NULL,'2023-04-03 00:16:44',NULL,17,NULL,NULL),(14,NULL,NULL,'2023-04-03 00:16:44',NULL,18,NULL,NULL),(15,NULL,NULL,'2023-04-03 00:16:44',NULL,19,NULL,NULL),(16,NULL,NULL,'2023-04-03 00:16:44',NULL,20,NULL,NULL),(17,NULL,NULL,'2023-04-03 00:16:44',NULL,21,NULL,NULL);
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `nit` varchar(10) DEFAULT NULL,
  `direccione` varchar(45) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (8,'Erick','34424148','Ciudad','57120993'),(9,'Erick','34424148','Ciudad','57120993'),(10,'Erick','34424148','Ciudad','57120993'),(11,'Erick','34424148','Ciudad','57120993'),(12,'Erick','34424148','Ciudad','57120993'),(13,'Ingreso de prueba','3112456','Ciudad','98765432');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleregistroventas`
--

DROP TABLE IF EXISTS `detalleregistroventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleregistroventas` (
  `idDetalleRegistroVentas` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `Productos_idProductos` int NOT NULL,
  `RegistroVentas_idRegistroVentas` int NOT NULL,
  PRIMARY KEY (`idDetalleRegistroVentas`),
  KEY `fk_DetalleRegistroVentas_Productos1_idx` (`Productos_idProductos`),
  KEY `fk_DetalleRegistroVentas_RegistroVentas1_idx` (`RegistroVentas_idRegistroVentas`),
  CONSTRAINT `fk_DetalleRegistroVentas_Productos1` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `fk_DetalleRegistroVentas_RegistroVentas1` FOREIGN KEY (`RegistroVentas_idRegistroVentas`) REFERENCES `registroventas` (`idRegistroVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleregistroventas`
--

LOCK TABLES `detalleregistroventas` WRITE;
/*!40000 ALTER TABLE `detalleregistroventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleregistroventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganancias`
--

DROP TABLE IF EXISTS `ganancias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ganancias` (
  `idGanancias` int NOT NULL,
  `fecha_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ganancia` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`idGanancias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganancias`
--

LOCK TABLES `ganancias` WRITE;
/*!40000 ALTER TABLE `ganancias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ganancias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresos` (
  `idIngresos` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `ganancias` decimal(7,2) DEFAULT NULL,
  `total` decimal(7,2) NOT NULL,
  PRIMARY KEY (`idIngresos`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
INSERT INTO `ingresos` VALUES (2,'2023-04-02',0.00,1100.00);
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `presentacion` varchar(45) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (12,'lacus.',0,'dictum','felis','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(13,'ultricies',0,'in','nibh.','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(14,'dapibus',0,'enim.','urna','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(15,'neque.',0,'diam.','neque','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(16,'nibh.',0,'mauris','rutrum','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(17,'purus',0,'Proin','rhoncus.','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(18,'dapibus',0,'aliquet,','est.','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(19,'Ut',0,'Suspendisse','Quisque','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(20,'enim',0,'Vestibulum','at','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),(21,'ac',0,'leo.','sem.','rhoncus.','porttitor interdum. Sed auctor odio a purus. Duis elementum, dui');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroventas`
--

DROP TABLE IF EXISTS `registroventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registroventas` (
  `idRegistroVentas` int NOT NULL AUTO_INCREMENT,
  `Clientes_idClientes` int NOT NULL,
  PRIMARY KEY (`idRegistroVentas`),
  KEY `fk_RegistroVentas_Clientes_idx` (`Clientes_idClientes`),
  CONSTRAINT `fk_RegistroVentas_Clientes` FOREIGN KEY (`Clientes_idClientes`) REFERENCES `clientes` (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroventas`
--

LOCK TABLES `registroventas` WRITE;
/*!40000 ALTER TABLE `registroventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ericdaal','Gato1234@');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistaverventas`
--

DROP TABLE IF EXISTS `vistaverventas`;
/*!50001 DROP VIEW IF EXISTS `vistaverventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaverventas` AS SELECT 
 1 AS `nombre`,
 1 AS `nit`,
 1 AS `direccione`,
 1 AS `telefono`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistaverventas`
--

/*!50001 DROP VIEW IF EXISTS `vistaverventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaverventas` AS select `b`.`nombre` AS `nombre`,`b`.`nit` AS `nit`,`b`.`direccione` AS `direccione`,`b`.`telefono` AS `telefono`,sum((`c`.`cantidad` * `d`.`precio`)) AS `total` from (((`registroventas` `a` join `clientes` `b` on((`b`.`idClientes` = `a`.`Clientes_idClientes`))) join `detalleregistroventas` `c` on((`c`.`RegistroVentas_idRegistroVentas` = `a`.`idRegistroVentas`))) join `productos` `d` on((`d`.`idProductos` = `c`.`Productos_idProductos`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 19:24:58
