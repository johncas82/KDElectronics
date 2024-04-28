-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kdelectronics
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio_base` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `cantidad_disponible` int NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Televisor LED 50 pulgadas','Televisor LED de alta definición con pantalla de 50 pulgadas',600.00,799.99,'Electrónica',15),(2,'Auriculares Bluetooth','Auriculares inalámbricos con cancelación de ruido',80.00,129.99,'Accesorios',50),(3,'Cámara DSLR 24MP','Cámara réflex digital con sensor de 24 megapíxeles',700.00,999.99,'Cámaras',10),(4,'Impresora Multifunción WiFi','Impresora multifunción con conexión WiFi',150.00,199.99,'Periféricos',25),(5,'Reproductor de Blu-ray','Reproductor de discos Blu-ray con capacidad de reproducción 4K',100.00,149.99,'Electrónica',20),(6,'Altavoz Inteligente','Altavoz inteligente con asistente de voz integrado',120.00,179.99,'Electrónica',30),(7,'Monitor Gaming 27 pulgadas','Monitor de alta frecuencia de actualización y baja latencia',300.00,449.99,'Monitores',15),(8,'Teclado Mecánico RGB','Teclado mecánico para juegos con retroiluminación RGB',80.00,129.99,'Periféricos',40),(9,'Mouse Inalámbrico','Mouse ergonómico inalámbrico con sensor de alta precisión',40.00,69.99,'Periféricos',50),(10,'Disco Duro Externo 1TB','Disco duro externo portátil de 1 terabyte de capacidad',50.00,79.99,'Almacenamiento',20);
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

-- Dump completed on 2024-04-27 21:26:54
