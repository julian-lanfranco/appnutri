-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: appnutri
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
-- Table structure for table `anamnesis`
--

DROP TABLE IF EXISTS `anamnesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anamnesis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `obesidad` varchar(255) DEFAULT NULL,
  `diabetes` varchar(255) DEFAULT NULL,
  `hipertension` varchar(255) DEFAULT NULL,
  `cardiacas` varchar(255) DEFAULT NULL,
  `otras` varchar(255) DEFAULT NULL,
  `diagnosticada` varchar(255) DEFAULT NULL,
  `medicamentos` varchar(255) DEFAULT NULL,
  `toma` varchar(255) DEFAULT NULL,
  `acidez` varchar(255) DEFAULT NULL,
  `reflujo` varchar(255) DEFAULT NULL,
  `abdominal` varchar(255) DEFAULT NULL,
  `constipacion` varchar(255) DEFAULT NULL,
  `diarrea` varchar(255) DEFAULT NULL,
  `fuma` varchar(255) DEFAULT NULL,
  `dietas` varchar(255) DEFAULT NULL,
  `dolor` varchar(255) DEFAULT NULL,
  `pesomax` varchar(255) DEFAULT NULL,
  `pesomin` varchar(255) DEFAULT NULL,
  `picotea` varchar(255) DEFAULT NULL,
  `preferencias` varchar(255) DEFAULT NULL,
  `alimentosnogustan` varchar(255) DEFAULT NULL,
  `alimentosnotolera` varchar(255) DEFAULT NULL,
  `alimentosprefiere` varchar(255) DEFAULT NULL,
  `cocina` varchar(255) DEFAULT NULL,
  `compras` varchar(255) DEFAULT NULL,
  `horarios` varchar(255) DEFAULT NULL,
  `desayuna` varchar(255) DEFAULT NULL,
  `almuerza` varchar(255) DEFAULT NULL,
  `merienda` varchar(255) DEFAULT NULL,
  `cena` varchar(255) DEFAULT NULL,
  `suplementos` varchar(255) DEFAULT NULL,
  `actividad` varchar(255) DEFAULT NULL,
  `frecuencia` varchar(255) DEFAULT NULL,
  `paciente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  CONSTRAINT `anam-paci` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anamnesis`
--

LOCK TABLES `anamnesis` WRITE;
/*!40000 ALTER TABLE `anamnesis` DISABLE KEYS */;
INSERT INTO `anamnesis` VALUES (1,'2016-11-05','SI','SI','SI','SI','no','no','SI','-','SI','SI','SI','SI','SI','SI','NUNCA HICE','SI','100','100','SI','SI','ninguno','ninguno','salados','SI','SI','8-18','SI','SI','SI','SI','no','SI','DIARIAMENTE',4),(2,'2016-11-18','SI','SI','SI','SI','no','no','SI','no','SI','SI','SI','SI','SI','SI','NUNCA HICE','SI','85','90','SI','SI','no','no','no','SI','SI','no','SI','SI','SI','SI','no','SI','DIARIAMENTE',30),(3,'2016-11-18','NO','NO','NO','NO','dfsdf','fdfsdf','NO','fdfs','NO','NO','NO','NO','SI','NO','NUNCA HICE','SI','78','45','SI','SI','-','-','-','SI','SI','-','SI','SI','SI','SI','-','SI','DIARIAMENTE',30),(4,'2016-11-18','SI','SI','SI','SI','y','y','SI','y','SI','SI','SI','SI','SI','SI','NUNCA HICE','SI','y','y','SI','SI','y','y','y','SI','SI','y','SI','SI','SI','SI','y','SI','DIARIAMENTE',6),(5,'2016-11-18','SI','SI','SI','SI','r','r','SI','r','SI','SI','SI','SI','SI','SI','NUNCA HICE','SI','r','r','SI','SI','r','r','r','SI','SI','r','SI','SI','SI','SI','r','SI','DIARIAMENTE',6);
/*!40000 ALTER TABLE `anamnesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubes`
--

DROP TABLE IF EXISTS `clubes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubes`
--

LOCK TABLES `clubes` WRITE;
/*!40000 ALTER TABLE `clubes` DISABLE KEYS */;
INSERT INTO `clubes` VALUES (74,'ROWING','normal','4243056','AV SAN MARTIN 44','FONTANA CARLOS','FONTI@GMAIL.COM'),(75,'UER','seleccion','154292724','AV LAS AMERICAS 23','JOSE GANDULO','GANDU@GMAIL.COM'),(76,'ESTUDIANTES','normal','4859621','AV SAN MARTIN 44','LUCIANO RAMIREZ','LUCHI@HOTMAIL.COM'),(77,'APB','seleccion','123478156','25 DE MAYO 1452','GUILLERMO RAGONE','GUILLE@GUILLE.COM'),(78,'PARANA','normal','4245646','JUAN JOSE PASO 89','MENGARELLI LUIS','MEGA@GMAIL.COM');
/*!40000 ALTER TABLE `clubes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deportes`
--

DROP TABLE IF EXISTS `deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deportes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deportes`
--

LOCK TABLES `deportes` WRITE;
/*!40000 ALTER TABLE `deportes` DISABLE KEYS */;
INSERT INTO `deportes` VALUES (1,'basquet'),(2,'futbol'),(3,'rugby'),(4,'jockey'),(5,'natacion'),(6,'voley');
/*!40000 ALTER TABLE `deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisiones`
--

DROP TABLE IF EXISTS `divisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `deporte` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `entrenador` varchar(255) DEFAULT NULL,
  `preparador` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `club` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `club` (`club`),
  CONSTRAINT `division-club` FOREIGN KEY (`club`) REFERENCES `clubes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisiones`
--

LOCK TABLES `divisiones` WRITE;
/*!40000 ALTER TABLE `divisiones` DISABLE KEYS */;
INSERT INTO `divisiones` VALUES (17,'M15','rugby','masculino','GIO@GMAIL.COM','PATRICIA MENDEZ','MARTIN FALICO','1651515','FELIZ ORTIZ',74),(18,'M15','rugby','masculino','BLAQUI@HOTMAIL.COM','PEDRO RIOS','LUCERO GABRIEL','13432423','JORGE LUIS BORGES',75),(19,'M21','rugby','femenino','TORRI@GMAIL.COM','FELIZA MICHELLI','TORIBIO ORTIZ','424654654','MARTIN TORRES',74),(20,'MAYORES','futbol','femenino','GIO@GMAIL.COM','PEDRO RIOS','MARTIN FALICO','154292724','JORGE LUIS BORGES',74),(21,'MAYORES','futbol','femenino','BLAQUI@HOTMAIL.COM','GUILERMO DIAZ','TOLEDO JUAN MANUEL','13432423','LUIS SEGURO',75),(22,'M21','rugby','masculino','JUANPI@GMAIL.COM','PABLO LENCINA','RUPERTO PEREZ','45128622','JUAN PABLO AMARILLO',75),(23,'MAYORES','rugby','masculino','VALLENITA@HOTMAIL.COM','MIGUEL HERNANDEZ','FRANCISCO RAMIREZ','12345678','FELIPE VALLESE',76),(24,'MAYORES','basquet','femenino','NAHUELITO@GMAIL.COM','MEGUEL VESCO','LETICIA SOLOGUREN','12345678','RIOS NAHUEL',77),(25,'M21','basquet','masculino','FELIZ_MONDRAGON@GMAIL.COM','DIEGO MARADONA','CASCO MAXIMILIANO','43252523','MANDRAGON FELIX',77),(26,'M15','basquet','masculino','JFIODJFOIJSDF@FDFDSIJF.COM','MIGUEL HERNANDEZ','MARTIN FALICO','47454849','LUIS SEGURO',76),(27,'MAYORES','basquet','femenino','IRIS@GMAIL.COM','PEDRO RIOS','LUCERO GABRIEL','154292724','LUIS SEGURO',76),(28,'PLANTEL PROFESIONAL','futbol','femenino','GIO@GMAIL.COM','PATRICIA MENDEZ','LUCERO GABRIEL','47454849','RIOS NAHUEL',78),(29,'MAYORES','rugby','masculino','IRIS@GMAIL.COM','PEDRO RIOS','TOLEDO JUAN MANUEL','154292724','LUIS SEGURO',75),(32,'MAYORES','basquet','masculino','MARCE@HOTMAIL.COM','GUILERMO DIAZ','LUCERO GABRIEL','1651515','FELIZ ORTIZ',74);
/*!40000 ALTER TABLE `divisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiolaboratorio`
--

DROP TABLE IF EXISTS `estudiolaboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiolaboratorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `paciente` int(11) NOT NULL,
  `globulosrojos` float DEFAULT NULL,
  `globulosblancos` float DEFAULT NULL,
  `plaquetas` float DEFAULT NULL,
  `hemoglobina` float DEFAULT NULL,
  `hematocrito` float DEFAULT NULL,
  `corpuscularmedio` float DEFAULT NULL,
  `hbcorpuscularmedio` float DEFAULT NULL,
  `hbcm` float DEFAULT NULL,
  `neutrofilosenca` float DEFAULT NULL,
  `neutrofilosseg` float DEFAULT NULL,
  `eocinifilos` float DEFAULT NULL,
  `basofilos` float DEFAULT NULL,
  `linfocitos` float DEFAULT NULL,
  `monocitos` float DEFAULT NULL,
  `glucemia` float DEFAULT NULL,
  `uremia` float DEFAULT NULL,
  `uricemia` float DEFAULT NULL,
  `acidourico` float DEFAULT NULL,
  `creatininemia` float DEFAULT NULL,
  `proteinastotales` float DEFAULT NULL,
  `albuminas` float DEFAULT NULL,
  `colesteroltotal` float DEFAULT NULL,
  `ldl` float DEFAULT NULL,
  `hdl` float DEFAULT NULL,
  `colesterolhdl` float DEFAULT NULL,
  `trigliceridos` float DEFAULT NULL,
  `presionarterial` float DEFAULT NULL,
  `hergometria` float DEFAULT NULL,
  `frecuenciacardiaca` float DEFAULT NULL,
  `frecuenciacardiacamaxima` float DEFAULT NULL,
  `presionarterialmaxima` float DEFAULT NULL,
  `vo2basal` float DEFAULT NULL,
  `vo2maximo` float DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL,
  `frecuenciacardiomax` float DEFAULT NULL,
  `minutos` float DEFAULT NULL,
  `testdetenido` varchar(255) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  CONSTRAINT `paci-lab` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiolaboratorio`
--

LOCK TABLES `estudiolaboratorio` WRITE;
/*!40000 ALTER TABLE `estudiolaboratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiolaboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingesta`
--

DROP TABLE IF EXISTS `ingesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodeingesta` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `alimento` varchar(255) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `recordatorio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recordatorio` (`recordatorio`),
  CONSTRAINT `reco-inges` FOREIGN KEY (`recordatorio`) REFERENCES `recordatorios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingesta`
--

LOCK TABLES `ingesta` WRITE;
/*!40000 ALTER TABLE `ingesta` DISABLE KEYS */;
INSERT INTO `ingesta` VALUES (1,'desayuno','','lacteosEnteros',3,NULL),(2,'desayuno','','lacteosEnteros',222,NULL),(3,'desayuno','','lacteosEnteros',222,NULL),(4,'desayuno','','lacteosEnteros',222,NULL),(5,'desayuno','','lacteosEnteros',222,NULL),(6,'desayuno','','lacteosEnteros',222,NULL),(7,'desayuno','','lacteosEnteros',222,NULL),(8,'desayuno','','lacteosEnteros',222,NULL),(9,'desayuno','','lacteosEnteros',222,NULL),(10,'desayuno','','lacteosEnteros',222,NULL),(11,'desayuno','','lacteosEnteros',7,NULL),(12,'desayuno','','lacteosEnteros',7,NULL),(13,'desayuno','','lacteosEnteros',7,NULL),(14,'desayuno','','lacteosEnteros',222,NULL),(15,'desayuno','','lacteosEnteros',44,NULL),(16,'desayuno','','lacteosEnteros',4,NULL),(17,'desayuno','','lacteosEnteros',33,NULL),(18,'desayuno','','lacteosEnteros',33,NULL),(19,'desayuno','','lacteosEnteros',66,NULL),(20,'desayuno','','lacteosEnteros',66,NULL),(21,'desayuno','','lacteosEnteros',6,NULL),(22,'desayuno','','lacteosEnteros',0,NULL),(23,'desayuno','','lacteosEnteros',0,NULL),(24,'desayuno','','lacteosEnteros',0,NULL),(25,'desayuno','','lacteosEnteros',3,NULL),(26,'desayuno','','lacteosEnteros',3,NULL),(27,'desayuno','','lacteosEnteros',3,NULL),(28,'desayuno','','lacteosEnteros',3,NULL),(29,'desayuno','','lacteosEnteros',3,NULL),(30,'desayuno','','lacteosEnteros',3,NULL),(31,'desayuno','','lacteosEnteros',3,NULL),(32,'desayuno','','lacteosEnteros',2,NULL),(35,'desayuno','','lacteosEnteros',50,25),(36,'desayuno','','lacteosEnteros',0,25);
/*!40000 ALTER TABLE `ingesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingesta_planes`
--

DROP TABLE IF EXISTS `ingesta_planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingesta_planes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodeingesta` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `hora` date DEFAULT NULL,
  `alimento` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan` (`plan`),
  KEY `plan_2` (`plan`),
  CONSTRAINT `ingesta-pla` FOREIGN KEY (`plan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingesta_planes`
--

LOCK TABLES `ingesta_planes` WRITE;
/*!40000 ALTER TABLE `ingesta_planes` DISABLE KEYS */;
INSERT INTO `ingesta_planes` VALUES (30,'desayuno',23,'0000-00-00','lacteosEnteros',NULL),(31,'desayuno',50,'0000-00-00','lacteosEnteros',38),(35,'desayuno',50,'0000-00-00','lacteosEnteros',40);
/*!40000 ALTER TABLE `ingesta_planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicionesantropometricas`
--

DROP TABLE IF EXISTS `medicionesantropometricas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicionesantropometricas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `pesobruto` float DEFAULT NULL,
  `tallacorporal` float DEFAULT NULL,
  `tallasentado` float DEFAULT NULL,
  `biacromial` float DEFAULT NULL,
  `toraxtranverso` float DEFAULT NULL,
  `toraxantero` float DEFAULT NULL,
  `biiliocrestideo` float DEFAULT NULL,
  `humeral` float DEFAULT NULL,
  `femoral` float DEFAULT NULL,
  `cabeza` float DEFAULT NULL,
  `brazorelajado` float DEFAULT NULL,
  `brazoflexionado` float DEFAULT NULL,
  `antebrazomaximo` float DEFAULT NULL,
  `toraxmesoesternal` float DEFAULT NULL,
  `cintura` float DEFAULT NULL,
  `cadera` float DEFAULT NULL,
  `muslomax` float DEFAULT NULL,
  `muslomed` float DEFAULT NULL,
  `pantorrilla` float DEFAULT NULL,
  `triceps` float DEFAULT NULL,
  `subescapular` float DEFAULT NULL,
  `subpraespinal` float DEFAULT NULL,
  `abdominal` float DEFAULT NULL,
  `muslomed2` float DEFAULT NULL,
  `pantorrilla2` float DEFAULT NULL,
  `paciente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  KEY `paciente_2` (`paciente`),
  CONSTRAINT `paciente-med1` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicionesantropometricas`
--

LOCK TABLES `medicionesantropometricas` WRITE;
/*!40000 ALTER TABLE `medicionesantropometricas` DISABLE KEYS */;
INSERT INTO `medicionesantropometricas` VALUES (1,'2016-11-19',76.5,167.6,89.9,39.2,27.5,21.5,26,7.5,10,55.6,34.3,36.2,29.4,102.5,80.9,95.3,60.2,56.3,35.2,6,10,8,17,6,5,11),(2,'2016-11-17',90,170,98,38.7,28,19.2,29,7.7,10.5,57.6,32.5,35.5,28.5,90.5,80.6,99.5,57,52.1,36.4,6.5,9,7.5,2,14.5,6,11);
/*!40000 ALTER TABLE `medicionesantropometricas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_semanal`
--

DROP TABLE IF EXISTS `menu_semanal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_semanal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lunes_desayuno` varchar(255) DEFAULT NULL,
  `lunes_med_maniana` varchar(255) DEFAULT NULL,
  `lunes_almuerzo` varchar(255) DEFAULT NULL,
  `lunes_merienda` varchar(255) DEFAULT NULL,
  `lunes_cena` varchar(255) DEFAULT NULL,
  `lunes_colacion` varchar(255) DEFAULT NULL,
  `martes_almuerzo` varchar(255) DEFAULT NULL,
  `martes_cena` varchar(255) DEFAULT NULL,
  `martes_colacion` varchar(255) DEFAULT NULL,
  `martes_desayuno` varchar(255) DEFAULT NULL,
  `martes_med_maniana` varchar(255) DEFAULT NULL,
  `martes_merienda` varchar(255) DEFAULT NULL,
  `miercoles_almuerzo` varchar(255) DEFAULT NULL,
  `miercoles_cena` varchar(255) DEFAULT NULL,
  `miercoles_colacion` varchar(255) DEFAULT NULL,
  `miercoles_desayuno` varchar(255) DEFAULT NULL,
  `miercoles_med_maniana` varchar(255) DEFAULT NULL,
  `miercoles_merienda` varchar(255) DEFAULT NULL,
  `jueves_almuerzo` varchar(255) DEFAULT NULL,
  `jueves_cena` varchar(255) DEFAULT NULL,
  `jueves_colacion` varchar(255) DEFAULT NULL,
  `jueves_desayuno` varchar(255) DEFAULT NULL,
  `jueves_med_maniana` varchar(255) DEFAULT NULL,
  `jueves_merienda` varchar(255) DEFAULT NULL,
  `viernes_almuerzo` varchar(255) DEFAULT NULL,
  `viernes_cena` varchar(255) DEFAULT NULL,
  `viernes_colacion` varchar(255) DEFAULT NULL,
  `viernes_desayuno` varchar(255) DEFAULT NULL,
  `viernes_med_maniana` varchar(255) DEFAULT NULL,
  `viernes_merienda` varchar(255) DEFAULT NULL,
  `sabado_almuerzo` varchar(255) DEFAULT NULL,
  `sabado_cena` varchar(255) DEFAULT NULL,
  `sabado_colacion` varchar(255) DEFAULT NULL,
  `sabado_desayuno` varchar(255) DEFAULT NULL,
  `sabado_med_maniana` varchar(255) DEFAULT NULL,
  `sabado_merienda` varchar(255) DEFAULT NULL,
  `domingo_almuerzo` varchar(255) DEFAULT NULL,
  `domingo_cena` varchar(255) DEFAULT NULL,
  `domingo_colacion` varchar(255) DEFAULT NULL,
  `domingo_desayuno` varchar(255) DEFAULT NULL,
  `domingo_med_maniana` varchar(255) DEFAULT NULL,
  `domingo_merienda` varchar(255) DEFAULT NULL,
  `plan` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plan` (`plan`),
  CONSTRAINT `plan-menu` FOREIGN KEY (`plan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_semanal`
--

LOCK TABLES `menu_semanal` WRITE;
/*!40000 ALTER TABLE `menu_semanal` DISABLE KEYS */;
INSERT INTO `menu_semanal` VALUES (27,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',38),(29,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',40);
/*!40000 ALTER TABLE `menu_semanal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `obra` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `nacimiento` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `medico` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `ocupacion` varchar(255) NOT NULL,
  `division` int(11) DEFAULT NULL,
  `divisionseleccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `division` (`division`),
  KEY `divisionseleccion` (`divisionseleccion`),
  CONSTRAINT `paci-div` FOREIGN KEY (`division`) REFERENCES `divisiones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `paci-divSeleccion` FOREIGN KEY (`divisionseleccion`) REFERENCES `divisiones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (4,'MARIA INES','MANGIONI','28562487','masculino','masculino','IOSPER','4243056','05/4/1980','BLAQUI@HOTMAIL.COM','RIOS NAHUEL','                                                                       VENGO POR UNA OPERACION.-\r\n \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     ','DOCENTE',28,NULL),(6,'JULIAN','LANFRANCO','30558609','femenino','SAN AGUSTIN 4554','OSECAC','13432423','05/11/1983','JFIODJFOIJSDF@FDFDSIJF.COM','SWHARTZ JORGE','                         VENGO PARA SUPERAR MIS MARCAS.- \r\n \r\n     \r\n     \r\n     \r\n     \r\n     ','ESTUDIANTE',20,24),(7,'RIOS','NAHUEL','32518745','masculino','CARBO 23','IOSPER','154292724','05/7/1986','BLAQUI@HOTMAIL.COM','BOROCOTO',' VENGO PARA LLEGAR AL VERANO.\r\n ','EMPLEADO',27,25),(9,'LEOPOLDO','BARRIOS','28562489','masculino','AV SAN MARTIN 44','IOSPER','154292724','12/09/1970','IRIS@GMAIL.COM','RAITIERI PEDRO',' veNGO POR LAS DUDAS.-\r\n ','DOCENTE',NULL,18),(10,'JULIAN','PONS','28562488','masculino','AV LAS AMERICAS 23','IOSPER','154292724','05/11/1983','GIO@GMAIL.COM','RIOS NAHUEL','      VENGO POR UNA CONTROL.-\r\n \r\n     ','DOCENTE',23,25),(11,'GIOVANNI','DIAZ','205456789','masculino','COLONIA AVELLANEDA','IOSPER','1651515','05/4/1980','BLAQUI@HOTMAIL.COM','SWHARTZ JORGE',' VENGO POR CONTROL.-\r\n ','EMPLEADO',17,29),(25,'GIOVANNI','DIAZ','12','femenino','AV SAN MARTIN 44','UOSIMRA','154292724','05/4/1980','IRIS@GMAIL.COM','RIOS NAHUEL',' \r\n fewfwef','EMPLEADO',17,24),(29,'GIOVANNI','MANGIONI','127','femenino','AV LAS AMERICAS 23','UOSIMRA','154292724','05/4/1980','GIO@GMAIL.COM','RIOS NAHUEL','      \r\n fdfsdf\r\n     ','EMPLEADO',23,NULL),(30,'GIOVANNI','PONS','123582','masculino','AV SAN MARTIN 44','IOSPER','47454849','05/4/1980','IRIS@GMAIL.COM','RIOS NAHUEL',' \r\n ','DOCENTE',NULL,NULL),(31,'ismael','gomez','2456189','masculino','alameda 10','isoper','154272948','2001-01-01','ismaperez@gmail.com','miguel juan','      vengo por chequeo general.-\r\n \r\n     ','empleado',26,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `paciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  CONSTRAINT `paciente-plan` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (38,'2016-11-14',6),(40,'2016-11-14',6);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordatorios`
--

DROP TABLE IF EXISTS `recordatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `horadespertado` varchar(255) DEFAULT NULL,
  `horadesayuno` varchar(255) DEFAULT NULL,
  `desayuno` varchar(255) DEFAULT NULL,
  `horamediamanana` varchar(255) DEFAULT NULL,
  `mediamanana` varchar(255) DEFAULT NULL,
  `horaalmuerzo` varchar(255) DEFAULT NULL,
  `almuerzo` varchar(255) DEFAULT NULL,
  `horamerienda` varchar(255) DEFAULT NULL,
  `merienda` varchar(255) DEFAULT NULL,
  `horacolacion` varchar(255) DEFAULT NULL,
  `colacion` varchar(255) DEFAULT NULL,
  `horacena` varchar(255) DEFAULT NULL,
  `cena` varchar(255) DEFAULT NULL,
  `horadormido` varchar(255) DEFAULT NULL,
  `paciente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  CONSTRAINT `reco-paci` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordatorios`
--

LOCK TABLES `recordatorios` WRITE;
/*!40000 ALTER TABLE `recordatorios` DISABLE KEYS */;
INSERT INTO `recordatorios` VALUES (25,'2016-11-14','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',6);
/*!40000 ALTER TABLE `recordatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respaldos`
--

DROP TABLE IF EXISTS `respaldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respaldos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respaldos`
--

LOCK TABLES `respaldos` WRITE;
/*!40000 ALTER TABLE `respaldos` DISABLE KEYS */;
INSERT INTO `respaldos` VALUES (38,'respaldo_06-11-2016-1478389210.sql','respaldo luego de una carga grande en el club echague.','2016-11-06'),(39,'respaldo_15-11-2016-1479226112.sql','probando crear respaldo-','2016-11-15'),(40,'respaldo_15-11-2016-1479226112.sql','probando subir un respaldo.-\r\n','2016-11-15'),(41,'respaldo_15-11-2016-1479241668.sql','repaldo realiado por sonia','2016-11-15'),(42,'respaldo_15-11-2016-1479241668.sql','subiendi rewspaldo de sonia\r\n','2016-11-15'),(43,'respaldo_19-11-2016-1479572219.sql','yeryerye','2016-11-19');
/*!40000 ALTER TABLE `respaldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `ultimoacceso` date NOT NULL,
  `fechaalta` date NOT NULL,
  `fechamodificacion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','12345678',1,'2016-11-19','2016-10-21','2016-11-05');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-19 13:17:10