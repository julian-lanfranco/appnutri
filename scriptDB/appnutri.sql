-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2016 a las 17:06:52
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appnutri`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anamnesis`
--

CREATE TABLE `anamnesis` (
  `id` int(11) NOT NULL,
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
  `paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anamnesis`
--

INSERT INTO `anamnesis` (`id`, `fecha`, `obesidad`, `diabetes`, `hipertension`, `cardiacas`, `otras`, `diagnosticada`, `medicamentos`, `toma`, `acidez`, `reflujo`, `abdominal`, `constipacion`, `diarrea`, `fuma`, `dietas`, `dolor`, `pesomax`, `pesomin`, `picotea`, `preferencias`, `alimentosnogustan`, `alimentosnotolera`, `alimentosprefiere`, `cocina`, `compras`, `horarios`, `desayuna`, `almuerza`, `merienda`, `cena`, `suplementos`, `actividad`, `frecuencia`, `paciente`) VALUES
(1, '2016-11-05', 'SI', 'SI', 'SI', 'SI', 'no', 'no', 'SI', '-', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NUNCA HICE', 'SI', '100', '100', 'SI', 'SI', 'ninguno', 'ninguno', 'salados', 'SI', 'SI', '8-18', 'SI', 'SI', 'SI', 'SI', 'no', 'SI', 'DIARIAMENTE', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubes`
--

CREATE TABLE `clubes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`id`, `nombre`, `tipo`, `telefono`, `direccion`, `contacto`, `mail`) VALUES
(74, 'ROWING', 'normal', '4243056', 'AV SAN MARTIN 44', 'FONTANA CARLOS', 'FONTI@GMAIL.COM'),
(75, 'UER', 'seleccion', '154292724', 'AV LAS AMERICAS 23', 'JOSE GANDULO', 'GANDU@GMAIL.COM'),
(76, 'ESTUDIANTES', 'normal', '4859621', 'AV SAN MARTIN 44', 'LUCIANO RAMIREZ', 'LUCHI@HOTMAIL.COM'),
(77, 'APB', 'seleccion', '123478156', '25 DE MAYO 1452', 'GUILLERMO RAGONE', 'GUILLE@GUILLE.COM'),
(78, 'PARANA', 'normal', '4245646', 'JUAN JOSE PASO 89', 'MENGARELLI LUIS', 'MEGA@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id`, `nombre`) VALUES
(1, 'basquet'),
(2, 'futbol'),
(3, 'rugby'),
(4, 'jockey'),
(5, 'natacion'),
(6, 'voley');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `deporte` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `entrenador` varchar(255) DEFAULT NULL,
  `preparador` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `club` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`id`, `nombre`, `deporte`, `sexo`, `correo`, `entrenador`, `preparador`, `telefono`, `contacto`, `club`) VALUES
(17, 'M15', 'rugby', 'masculino', 'GIO@GMAIL.COM', 'PATRICIA MENDEZ', 'MARTIN FALICO', '1651515', 'FELIZ ORTIZ', 74),
(18, 'M15', 'rugby', 'masculino', 'BLAQUI@HOTMAIL.COM', 'PEDRO RIOS', 'LUCERO GABRIEL', '13432423', 'JORGE LUIS BORGES', 75),
(19, 'M21', 'rugby', 'femenino', 'TORRI@GMAIL.COM', 'FELIZA MICHELLI', 'TORIBIO ORTIZ', '424654654', 'MARTIN TORRES', 74),
(20, 'MAYORES', 'futbol', 'femenino', 'GIO@GMAIL.COM', 'PEDRO RIOS', 'MARTIN FALICO', '154292724', 'JORGE LUIS BORGES', 74),
(21, 'MAYORES', 'futbol', 'femenino', 'BLAQUI@HOTMAIL.COM', 'GUILERMO DIAZ', 'TOLEDO JUAN MANUEL', '13432423', 'LUIS SEGURO', 75),
(22, 'M21', 'rugby', 'masculino', 'JUANPI@GMAIL.COM', 'PABLO LENCINA', 'RUPERTO PEREZ', '45128622', 'JUAN PABLO AMARILLO', 75),
(23, 'MAYORES', 'rugby', 'masculino', 'VALLENITA@HOTMAIL.COM', 'MIGUEL HERNANDEZ', 'FRANCISCO RAMIREZ', '12345678', 'FELIPE VALLESE', 76),
(24, 'MAYORES', 'basquet', 'femenino', 'NAHUELITO@GMAIL.COM', 'MEGUEL VESCO', 'LETICIA SOLOGUREN', '12345678', 'RIOS NAHUEL', 77),
(25, 'M21', 'basquet', 'masculino', 'FELIZ_MONDRAGON@GMAIL.COM', 'DIEGO MARADONA', 'CASCO MAXIMILIANO', '43252523', 'MANDRAGON FELIX', 77),
(26, 'M15', 'basquet', 'masculino', 'JFIODJFOIJSDF@FDFDSIJF.COM', 'MIGUEL HERNANDEZ', 'MARTIN FALICO', '47454849', 'LUIS SEGURO', 76),
(27, 'MAYORES', 'basquet', 'femenino', 'IRIS@GMAIL.COM', 'PEDRO RIOS', 'LUCERO GABRIEL', '154292724', 'LUIS SEGURO', 76),
(28, 'PLANTEL PROFESIONAL', 'futbol', 'femenino', 'GIO@GMAIL.COM', 'PATRICIA MENDEZ', 'LUCERO GABRIEL', '47454849', 'RIOS NAHUEL', 78),
(29, 'MAYORES', 'rugby', 'masculino', 'IRIS@GMAIL.COM', 'PEDRO RIOS', 'TOLEDO JUAN MANUEL', '154292724', 'LUIS SEGURO', 75),
(32, 'MAYORES', 'basquet', 'masculino', 'MARCE@HOTMAIL.COM', 'GUILERMO DIAZ', 'LUCERO GABRIEL', '1651515', 'FELIZ ORTIZ', 74);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiolaboratorio`
--

CREATE TABLE `estudiolaboratorio` (
  `id` int(11) NOT NULL,
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
  `conclusion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingesta`
--

CREATE TABLE `ingesta` (
  `id` int(11) NOT NULL,
  `tipodeingesta` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `alimento` varchar(255) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `recordatorio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingesta`
--

INSERT INTO `ingesta` (`id`, `tipodeingesta`, `hora`, `alimento`, `cantidad`, `recordatorio`) VALUES
(1, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(2, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(3, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(4, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(5, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(6, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(7, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(8, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(9, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(10, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(11, 'desayuno', '', 'lacteosEnteros', 7, NULL),
(12, 'desayuno', '', 'lacteosEnteros', 7, NULL),
(13, 'desayuno', '', 'lacteosEnteros', 7, NULL),
(14, 'desayuno', '', 'lacteosEnteros', 222, NULL),
(15, 'desayuno', '', 'lacteosEnteros', 44, NULL),
(16, 'desayuno', '', 'lacteosEnteros', 4, NULL),
(17, 'desayuno', '', 'lacteosEnteros', 33, NULL),
(18, 'desayuno', '', 'lacteosEnteros', 33, NULL),
(19, 'desayuno', '', 'lacteosEnteros', 66, NULL),
(20, 'desayuno', '', 'lacteosEnteros', 66, NULL),
(21, 'desayuno', '', 'lacteosEnteros', 6, NULL),
(22, 'desayuno', '', 'lacteosEnteros', 0, NULL),
(23, 'desayuno', '', 'lacteosEnteros', 0, NULL),
(24, 'desayuno', '', 'lacteosEnteros', 0, NULL),
(25, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(26, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(27, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(28, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(29, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(30, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(31, 'desayuno', '', 'lacteosEnteros', 3, NULL),
(32, 'desayuno', '', 'lacteosEnteros', 2, NULL),
(33, 'desayuno', '', 'lacteosEnteros', 3, 24),
(34, 'desayuno', '', 'lacteosEnteros', 3, 24),
(35, 'desayuno', '', 'lacteosEnteros', 50, 25),
(36, 'desayuno', '', 'lacteosEnteros', 0, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingesta_planes`
--

CREATE TABLE `ingesta_planes` (
  `id` int(11) NOT NULL,
  `tipodeingesta` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `hora` date DEFAULT NULL,
  `alimento` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingesta_planes`
--

INSERT INTO `ingesta_planes` (`id`, `tipodeingesta`, `cantidad`, `hora`, `alimento`, `plan`) VALUES
(19, 'desayuno', 323, '0000-00-00', 'lacteosEnteros', 35),
(20, 'desayuno', 323, '0000-00-00', 'vegetalesA', 35),
(21, 'desayuno', 3232, '0000-00-00', 'lacteosEnteros', 35),
(22, 'desayuno', 3232, '0000-00-00', 'vegetalesC', 35),
(23, 'desayuno', 3232, '0000-00-00', 'lacteosEnteros', 35),
(24, 'desayuno', 3232, '0000-00-00', 'panSinGrasa', 35),
(25, 'desayuno', 3232, '0000-00-00', 'lacteosEnteros', 35),
(26, 'desayuno', 3, '0000-00-00', 'lacteosEnteros', 36),
(27, 'desayuno', 3, '0000-00-00', 'quesos', 36),
(28, 'desayuno', 3, '0000-00-00', 'lacteosEnteros', 37),
(29, 'desayuno', 3, '0000-00-00', 'lacteosEnteros', 37),
(30, 'desayuno', 23, '0000-00-00', 'lacteosEnteros', NULL),
(31, 'desayuno', 50, '0000-00-00', 'lacteosEnteros', 38),
(35, 'desayuno', 50, '0000-00-00', 'lacteosEnteros', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicionesantropometricas`
--

CREATE TABLE `medicionesantropometricas` (
  `id` int(11) NOT NULL,
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
  `paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medicionesantropometricas`
--

INSERT INTO `medicionesantropometricas` (`id`, `fecha`, `pesobruto`, `tallacorporal`, `tallasentado`, `biacromial`, `toraxtranverso`, `toraxantero`, `biiliocrestideo`, `humeral`, `femoral`, `cabeza`, `brazorelajado`, `brazoflexionado`, `antebrazomaximo`, `toraxmesoesternal`, `cintura`, `cadera`, `muslomax`, `muslomed`, `pantorrilla`, `triceps`, `subescapular`, `subpraespinal`, `abdominal`, `muslomed2`, `pantorrilla2`, `paciente`) VALUES
(5, '2016-10-02', 66, 66, 66, 55, 55, 55, 55, 55, 55, 55, 55, 22, 22, 22, 22, 22, 22, 22, 22, 13, 11, 11, 11, 11, 11, 5),
(6, '2016-10-06', 80, 175, 75, 50, 50, 50, 50, 50, 50, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 30, 30, 30, 30, 30, 30, 5),
(7, '2016-10-02', 75, 66, 80, 22, 22, 22, 22, 55, 22, 44, 44, 44, 44, 22, 22, 44, 44, 44, 44, 88, 88, 88, 88, 88, 11, 5),
(15, '2016-10-08', 78, 150, 80, 50, 50, 50, 50, 50, 50, 20, 30, 20, 20, 20, 30, 20, 20, 20, 20, 30, 33, 33, 33, 33, 33, 5),
(16, '2016-10-08', 76, 140, 78, 50, 50, 50, 50, 50, 50, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 33, 33, 33, 33, 33, 33, 5),
(17, '2016-11-02', 90, 180, 150, 20, 20, 20, 20, 20, 20, 30, 30, 30, 20, 20, 50, 50, 50, 50, 50, 30, 30, 30, 30, 30, 30, 5),
(18, '2016-11-05', 85, 180, 150, 20, 20, 20, 20, 20, 20, 30, 25, 30, 20, 20, 25, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_semanal`
--

CREATE TABLE `menu_semanal` (
  `id` int(11) NOT NULL,
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
  `plan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu_semanal`
--

INSERT INTO `menu_semanal` (`id`, `lunes_desayuno`, `lunes_med_maniana`, `lunes_almuerzo`, `lunes_merienda`, `lunes_cena`, `lunes_colacion`, `martes_almuerzo`, `martes_cena`, `martes_colacion`, `martes_desayuno`, `martes_med_maniana`, `martes_merienda`, `miercoles_almuerzo`, `miercoles_cena`, `miercoles_colacion`, `miercoles_desayuno`, `miercoles_med_maniana`, `miercoles_merienda`, `jueves_almuerzo`, `jueves_cena`, `jueves_colacion`, `jueves_desayuno`, `jueves_med_maniana`, `jueves_merienda`, `viernes_almuerzo`, `viernes_cena`, `viernes_colacion`, `viernes_desayuno`, `viernes_med_maniana`, `viernes_merienda`, `sabado_almuerzo`, `sabado_cena`, `sabado_colacion`, `sabado_desayuno`, `sabado_med_maniana`, `sabado_merienda`, `domingo_almuerzo`, `domingo_cena`, `domingo_colacion`, `domingo_desayuno`, `domingo_med_maniana`, `domingo_merienda`, `plan`) VALUES
(24, 'erwerwer', 'werwe', 'rwer', 'werwe', 'werwer', 'rwer', 'werwe', 'werwer', 'ewr', 'werwe', 'rwer', 'rwer', 'erwe', 'rwerwer', 'wer', 'rwerwerw', 'rwer', 'werw', 'werw', 'werwe', 'rwer', 'erwe', 'rwer', 'erwe', 'werwe', 'wer', 'ewr', 'wer', 'wer', 'rwer', 'rwe', 'rwer', 'werwe', 'werwe', 'rwer', 'rwe', 'rwer', 'wee', 'wer', 'rwe', 'rwe', 'wer', 35),
(25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 36),
(26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 37),
(27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 38),
(29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
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
  `divisionseleccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellido`, `dni`, `sexo`, `direccion`, `obra`, `telefono`, `nacimiento`, `correo`, `medico`, `motivo`, `ocupacion`, `division`, `divisionseleccion`) VALUES
(4, 'MARIA INES', 'MANGIONI', '28562487', 'masculino', 'masculino', 'IOSPER', '4243056', '05/4/1980', 'BLAQUI@HOTMAIL.COM', 'RIOS NAHUEL', '                                                                       VENGO POR UNA OPERACION.-\r\n \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     \r\n     ', 'DOCENTE', 28, NULL),
(5, 'GIOVANNI', 'PETTERIN', '123486498', 'masculino', 'AV LAS AMERICAS 23', 'IOSPER', '154292724', '05/4/1980', 'GIO@GMAIL.COM', 'RIOS NAHUEL', 'vENGO POR CONTROLA\r\n ', 'EMPLEADO', 19, NULL),
(6, 'JULIAN', 'LANFRANCO', '30558609', 'masculino', 'SAN AGUSTIN 4554', 'OSECAC', '13432423', '05/11/1983', 'JFIODJFOIJSDF@FDFDSIJF.COM', 'SWHARTZ JORGE', 'VENGO PARA SUPERAR MIS MARCAS.- \r\n ', 'ESTUDIANTE', 26, 18),
(7, 'RIOS', 'NAHUEL', '32518745', 'masculino', 'CARBO 23', 'IOSPER', '154292724', '05/7/1986', 'BLAQUI@HOTMAIL.COM', 'BOROCOTO', ' VENGO PARA LLEGAR AL VERANO.\r\n ', 'EMPLEADO', 27, 25),
(9, 'LEOPOLDO', 'BARRIOS', '28562489', 'masculino', 'AV SAN MARTIN 44', 'IOSPER', '154292724', '12/09/1970', 'IRIS@GMAIL.COM', 'RAITIERI PEDRO', ' veNGO POR LAS DUDAS.-\r\n ', 'DOCENTE', NULL, 18),
(10, 'JULIAN', 'PONS', '28562488', 'masculino', 'AV LAS AMERICAS 23', 'IOSPER', '154292724', '05/11/1983', 'GIO@GMAIL.COM', 'RIOS NAHUEL', ' VENGO POR UNA CONTROL.-\r\n ', 'DOCENTE', 23, 25),
(11, 'GIOVANNI', 'DIAZ', '205456789', 'masculino', 'COLONIA AVELLANEDA', 'IOSPER', '1651515', '05/4/1980', 'BLAQUI@HOTMAIL.COM', 'SWHARTZ JORGE', ' VENGO POR CONTROL.-\r\n ', 'EMPLEADO', 17, 29),
(25, 'GIOVANNI', 'DIAZ', '12', 'femenino', 'AV SAN MARTIN 44', 'UOSIMRA', '154292724', '05/4/1980', 'IRIS@GMAIL.COM', 'RIOS NAHUEL', ' \r\n fewfwef', 'EMPLEADO', 17, 24),
(29, 'GIOVANNI', 'MANGIONI', '127', 'femenino', 'AV LAS AMERICAS 23', 'UOSIMRA', '154292724', '05/4/1980', 'GIO@GMAIL.COM', 'RIOS NAHUEL', '      \r\n fdfsdf\r\n     ', 'EMPLEADO', 17, NULL),
(30, 'GIOVANNI', 'PONS', '123582', 'masculino', 'AV SAN MARTIN 44', 'IOSPER', '47454849', '05/4/1980', 'IRIS@GMAIL.COM', 'RIOS NAHUEL', ' \r\n ', 'DOCENTE', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `fecha`, `paciente`) VALUES
(35, '2016-10-31', 5),
(36, '2016-11-05', 5),
(37, '2016-11-05', 5),
(38, '2016-11-14', 6),
(40, '2016-11-14', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorios`
--

CREATE TABLE `recordatorios` (
  `id` int(11) NOT NULL,
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
  `paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recordatorios`
--

INSERT INTO `recordatorios` (`id`, `fecha`, `horadespertado`, `horadesayuno`, `desayuno`, `horamediamanana`, `mediamanana`, `horaalmuerzo`, `almuerzo`, `horamerienda`, `merienda`, `horacolacion`, `colacion`, `horacena`, `cena`, `horadormido`, `paciente`) VALUES
(24, '2016-11-05', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23', 5),
(25, '2016-11-14', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respaldos`
--

CREATE TABLE `respaldos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respaldos`
--

INSERT INTO `respaldos` (`id`, `nombre`, `detalle`, `fecha`) VALUES
(38, 'respaldo_06-11-2016-1478389210.sql', 'respaldo luego de una carga grande en el club echague.', '2016-11-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `ultimoacceso` date NOT NULL,
  `fechaalta` date NOT NULL,
  `fechamodificacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `estado`, `ultimoacceso`, `fechaalta`, `fechamodificacion`) VALUES
(1, 'admin', '12345678', 1, '2016-11-15', '2016-10-21', '2016-11-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anamnesis`
--
ALTER TABLE `anamnesis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club` (`club`);

--
-- Indices de la tabla `estudiolaboratorio`
--
ALTER TABLE `estudiolaboratorio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `ingesta`
--
ALTER TABLE `ingesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recordatorio` (`recordatorio`);

--
-- Indices de la tabla `ingesta_planes`
--
ALTER TABLE `ingesta_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan` (`plan`),
  ADD KEY `plan_2` (`plan`);

--
-- Indices de la tabla `medicionesantropometricas`
--
ALTER TABLE `medicionesantropometricas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente` (`paciente`),
  ADD KEY `paciente_2` (`paciente`);

--
-- Indices de la tabla `menu_semanal`
--
ALTER TABLE `menu_semanal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan` (`plan`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `division` (`division`),
  ADD KEY `divisionseleccion` (`divisionseleccion`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `recordatorios`
--
ALTER TABLE `recordatorios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `respaldos`
--
ALTER TABLE `respaldos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anamnesis`
--
ALTER TABLE `anamnesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `estudiolaboratorio`
--
ALTER TABLE `estudiolaboratorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ingesta`
--
ALTER TABLE `ingesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `ingesta_planes`
--
ALTER TABLE `ingesta_planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `medicionesantropometricas`
--
ALTER TABLE `medicionesantropometricas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `menu_semanal`
--
ALTER TABLE `menu_semanal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `recordatorios`
--
ALTER TABLE `recordatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `respaldos`
--
ALTER TABLE `respaldos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anamnesis`
--
ALTER TABLE `anamnesis`
  ADD CONSTRAINT `anam-paci` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD CONSTRAINT `division-club` FOREIGN KEY (`club`) REFERENCES `clubes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiolaboratorio`
--
ALTER TABLE `estudiolaboratorio`
  ADD CONSTRAINT `paci-lab` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingesta`
--
ALTER TABLE `ingesta`
  ADD CONSTRAINT `reco-inges` FOREIGN KEY (`recordatorio`) REFERENCES `recordatorios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingesta_planes`
--
ALTER TABLE `ingesta_planes`
  ADD CONSTRAINT `ingesta-pla` FOREIGN KEY (`plan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `medicionesantropometricas`
--
ALTER TABLE `medicionesantropometricas`
  ADD CONSTRAINT `paciente-med1` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_semanal`
--
ALTER TABLE `menu_semanal`
  ADD CONSTRAINT `plan-menu` FOREIGN KEY (`plan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `paci-div` FOREIGN KEY (`division`) REFERENCES `divisiones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `paci-divSeleccion` FOREIGN KEY (`divisionseleccion`) REFERENCES `divisiones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `paciente-plan` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recordatorios`
--
ALTER TABLE `recordatorios`
  ADD CONSTRAINT `reco-paci` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
