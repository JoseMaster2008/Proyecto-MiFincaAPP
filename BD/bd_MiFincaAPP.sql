-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_mifincapp
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `IdAnimal` int NOT NULL AUTO_INCREMENT,
  `Especie` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Sexo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Raza` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `FuncionAnimal` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Peso` float DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Padre` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Madre` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `CodigoAnimal` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `EstadoAnimal` tinyint(1) DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdVacunas` int DEFAULT NULL,
  `IdFinca` int DEFAULT NULL,
  `IdPotrero` int DEFAULT NULL,
  `IdSize` int DEFAULT NULL,
  PRIMARY KEY (`IdAnimal`),
  KEY `IdFinca` (`IdFinca`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdVacunas` (`IdVacunas`),
  KEY `IdPotrero` (`IdPotrero`),
  KEY `IdSize` (`IdSize`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`IdFinca`) REFERENCES `finca` (`IdFinca`),
  CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `animal_ibfk_3` FOREIGN KEY (`IdVacunas`) REFERENCES `vacunas` (`IdVacunas`),
  CONSTRAINT `animal_ibfk_4` FOREIGN KEY (`IdPotrero`) REFERENCES `potrero` (`IdPotrero`),
  CONSTRAINT `animal_ibfk_5` FOREIGN KEY (`IdSize`) REFERENCES `medidas` (`IdSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `IdCalendario` int NOT NULL AUTO_INCREMENT,
  `Dia` int NOT NULL,
  `Semana` int NOT NULL,
  `Mes` int NOT NULL,
  `Year` int NOT NULL,
  `FechaCalendario` datetime NOT NULL,
  `NotaFecha` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdVacunas` int DEFAULT NULL,
  `IdAnimal` int DEFAULT NULL,
  `IdPotrero` int DEFAULT NULL,
  PRIMARY KEY (`IdCalendario`),
  KEY `IdAnimal` (`IdAnimal`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdVacunas` (`IdVacunas`),
  KEY `IdPotrero` (`IdPotrero`),
  CONSTRAINT `calendario_ibfk_1` FOREIGN KEY (`IdAnimal`) REFERENCES `animal` (`IdAnimal`),
  CONSTRAINT `calendario_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `calendario_ibfk_3` FOREIGN KEY (`IdVacunas`) REFERENCES `vacunas` (`IdVacunas`),
  CONSTRAINT `calendario_ibfk_4` FOREIGN KEY (`IdPotrero`) REFERENCES `potrero` (`IdPotrero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `IdDepartamento` int NOT NULL AUTO_INCREMENT,
  `IdPais` int DEFAULT NULL,
  `Departamento` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `CodDepartamento` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdDepartamento`),
  KEY `IdPais` (`IdPais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `pais` (`IdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egreso`
--

DROP TABLE IF EXISTS `egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egreso` (
  `IdEgreso` int NOT NULL AUTO_INCREMENT,
  `IdTipoEgreso` int DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `CantidadEgreso` decimal(10,0) NOT NULL,
  `FechaEgreso` datetime NOT NULL,
  PRIMARY KEY (`IdEgreso`),
  KEY `IdTipoEgreso` (`IdTipoEgreso`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `egreso_ibfk_1` FOREIGN KEY (`IdTipoEgreso`) REFERENCES `tipoegreso` (`IdTipoEgreso`),
  CONSTRAINT `egreso_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egreso`
--

LOCK TABLES `egreso` WRITE;
/*!40000 ALTER TABLE `egreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finca`
--

DROP TABLE IF EXISTS `finca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finca` (
  `IdFinca` int NOT NULL AUTO_INCREMENT,
  `NombreFinca` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdMunicipio` int DEFAULT NULL,
  PRIMARY KEY (`IdFinca`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdMunicipio` (`IdMunicipio`),
  CONSTRAINT `finca_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `finca_ibfk_2` FOREIGN KEY (`IdMunicipio`) REFERENCES `municipio` (`IdMunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finca`
--

LOCK TABLES `finca` WRITE;
/*!40000 ALTER TABLE `finca` DISABLE KEYS */;
/*!40000 ALTER TABLE `finca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso` (
  `IdIngreso` int NOT NULL AUTO_INCREMENT,
  `IdTipoIngreso` int DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `CantidadEgreso` decimal(10,0) NOT NULL,
  `FechaEgreso` datetime NOT NULL,
  PRIMARY KEY (`IdIngreso`),
  KEY `IdTipoIngreso` (`IdTipoIngreso`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`IdTipoIngreso`) REFERENCES `tipoingreso` (`IdTipoIngreso`),
  CONSTRAINT `ingreso_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas`
--

DROP TABLE IF EXISTS `medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medidas` (
  `IdSize` int NOT NULL AUTO_INCREMENT,
  `Perimetro_Toracico` decimal(10,0) DEFAULT NULL,
  `Longitud_Corporal` decimal(10,0) DEFAULT NULL,
  `Altura_Cruz` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`IdSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas`
--

LOCK TABLES `medidas` WRITE;
/*!40000 ALTER TABLE `medidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `IdMunicipio` int NOT NULL AUTO_INCREMENT,
  `IdDepartamento` int DEFAULT NULL,
  `Municipio` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `CodMunicipio` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdMunicipio`),
  KEY `IdDepartamento` (`IdDepartamento`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `departamento` (`IdDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `IdPais` int NOT NULL AUTO_INCREMENT,
  `CodPais` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Pais` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potrero`
--

DROP TABLE IF EXISTS `potrero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potrero` (
  `IdPotrero` int NOT NULL AUTO_INCREMENT,
  `FuncionPotrero` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `FechaCreacion` datetime NOT NULL,
  `RegistroCambios` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Area` float DEFAULT NULL,
  `Perimetro` float DEFAULT NULL,
  `CodigoPotrero` int DEFAULT NULL,
  `EstadoPotrero` tinyint(1) DEFAULT NULL,
  `CantidadAnimales` int DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdMunicipio` int DEFAULT NULL,
  `IdFinca` int DEFAULT NULL,
  PRIMARY KEY (`IdPotrero`),
  KEY `IdFinca` (`IdFinca`),
  CONSTRAINT `potrero_ibfk_1` FOREIGN KEY (`IdFinca`) REFERENCES `finca` (`IdFinca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potrero`
--

LOCK TABLES `potrero` WRITE;
/*!40000 ALTER TABLE `potrero` DISABLE KEYS */;
/*!40000 ALTER TABLE `potrero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `IdRol` int NOT NULL AUTO_INCREMENT,
  `Rol` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `IdServicio` int NOT NULL AUTO_INCREMENT,
  `IdTipoPlan` int DEFAULT NULL,
  `IdTipoServicio` int DEFAULT NULL,
  PRIMARY KEY (`IdServicio`),
  KEY `IdTipoPlan` (`IdTipoPlan`),
  KEY `IdTipoServicio` (`IdTipoServicio`),
  CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`IdTipoPlan`) REFERENCES `tipoplan` (`IdTipoPlan`),
  CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`IdTipoServicio`) REFERENCES `tiposervicio` (`IdTipoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoegreso`
--

DROP TABLE IF EXISTS `tipoegreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoegreso` (
  `IdTipoEgreso` int NOT NULL AUTO_INCREMENT,
  `TipoEgreso` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DescripcionEgreso` text COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdTipoEgreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoegreso`
--

LOCK TABLES `tipoegreso` WRITE;
/*!40000 ALTER TABLE `tipoegreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoegreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoingreso`
--

DROP TABLE IF EXISTS `tipoingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoingreso` (
  `IdTipoIngreso` int NOT NULL AUTO_INCREMENT,
  `TipoIngreso` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DescripcionIngreso` text COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdTipoIngreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoingreso`
--

LOCK TABLES `tipoingreso` WRITE;
/*!40000 ALTER TABLE `tipoingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoplan`
--

DROP TABLE IF EXISTS `tipoplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoplan` (
  `IdTipoPlan` int NOT NULL AUTO_INCREMENT,
  `TipoPlan` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Costo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPlan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoplan`
--

LOCK TABLES `tipoplan` WRITE;
/*!40000 ALTER TABLE `tipoplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposervicio`
--

DROP TABLE IF EXISTS `tiposervicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiposervicio` (
  `IdTipoServicio` int NOT NULL AUTO_INCREMENT,
  `TipoServicio` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Descripcion` text COLLATE utf8mb4_spanish_ci,
  PRIMARY KEY (`IdTipoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposervicio`
--

LOCK TABLES `tiposervicio` WRITE;
/*!40000 ALTER TABLE `tiposervicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposervicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `IdUsuario` int NOT NULL AUTO_INCREMENT,
  `NumeroDocumento` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `NombreUsuario` varchar(120) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Password` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Email` varchar(130) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `EstadoUsuario` tinyint(1) DEFAULT NULL,
  `IdRol` int DEFAULT NULL,
  `IdServicio` int DEFAULT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `NumeroTelefono` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `IdRol` (`IdRol`),
  KEY `IdServicio` (`IdServicio`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IdRol`) REFERENCES `rol` (`IdRol`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`IdServicio`) REFERENCES `servicio` (`IdServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacuna` (
  `IdVacuna` int NOT NULL AUTO_INCREMENT,
  `FechaVacuna` datetime NOT NULL,
  `RegistroAplicacion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Motivo` varchar(225) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NombreVacuna` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cantidad` decimal(10,0) NOT NULL,
  `Observaciones` text COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`IdVacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacuna`
--

LOCK TABLES `vacuna` WRITE;
/*!40000 ALTER TABLE `vacuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_mifincapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-13 21:25:36
