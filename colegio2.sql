-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2018 a las 23:12:22
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorol`
--

CREATE TABLE `accesorol` (
  `idRol` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCreador` int(11) NOT NULL,
  `fechaCreado` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesorol`
--

INSERT INTO `accesorol` (`idRol`, `idUsuario`, `idCreador`, `fechaCreado`) VALUES
(1, 1, 1, '2018-10-06 02:40:40'),
(2, 1, 1, '2018-10-06 02:40:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnodiscapacidad`
--

CREATE TABLE `alumnodiscapacidad` (
  `idAlumnoDiscapacidad` int(11) NOT NULL,
  `idDiscapacidad` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente`
--

CREATE TABLE `ambiente` (
  `id` int(11) NOT NULL,
  `ambiente` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ambiente`
--

INSERT INTO `ambiente` (`id`, `ambiente`, `descripcion`, `estado`, `creado`, `modificado`, `idUsuario`) VALUES
(1, 'Laboratorio computo', 'laboratorio de computo', 1, '2018-11-18 17:57:06', '2018-11-18 17:57:09', 1),
(2, 'Laboratorio Quimica', 'Laboratorio de Quimica', 1, '2018-11-18 17:57:49', '2018-11-18 17:57:51', 1),
(4, 'B-100', 'Ninguno', 1, '2018-11-18 18:18:59', '2018-11-18 18:19:06', 1),
(5, 'B-101', 'Ninguno', 1, '2018-11-18 18:19:38', '2018-11-18 18:19:41', 1),
(6, 'B-102', 'Ninguno', 1, '2018-11-18 18:19:53', '2018-11-18 18:19:57', 1),
(9, 'C-101', 'Ninguno', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(10, 'C-102', 'Ninguno', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(11, 'C-103', 'Ninguno', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(12, 'D-100', 'Salon de Profesores', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(13, 'D-101', 'Salon de Actos', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(14, 'D-102', 'Direccion', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(15, 'E-100', 'Comedor', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(16, 'E-101', 'Scretaria', 1, '2018-11-18 18:20:17', '2018-11-18 18:20:17', 1),
(17, 'E202', 'NO SE TIENE NINGUN SALON ', 1, '2018-11-22 07:34:49', '2018-11-22 19:15:37', 1),
(19, 'asdzv', '', 1, '2018-11-26 01:56:27', '2018-11-26 01:56:38', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `id` int(11) NOT NULL,
  `direccion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zona` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estadoCivil` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `religion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ocupacion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `centroLaboral` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` char(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gradoAcademico` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `convive` tinyint(1) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idPersona` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`id`, `direccion`, `zona`, `estadoCivil`, `religion`, `ocupacion`, `centroLaboral`, `celular`, `gradoAcademico`, `convive`, `creado`, `modificado`, `idPersona`, `idUsuario`) VALUES
(1, 'Jr Collasos', 'Abandonada', 'viudo', 'Adventista', 'doctor', 'Clinica Americana', '931326589', 'doctor', 0, '2018-11-18 18:10:45', '2018-11-18 18:10:48', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discapacidad`
--

CREATE TABLE `discapacidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comentario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `discapacidad`
--

INSERT INTO `discapacidad` (`id`, `descripcion`, `comentario`) VALUES
(1, 'Alguna', 'comentario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id` int(11) NOT NULL,
  `nombreGrado` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id`, `nombreGrado`, `descripcion`, `creado`, `modificado`, `idUsuario`) VALUES
(1, 'Primero', 'Ninguno', '2018-11-18 18:31:31', '2018-11-18 18:31:31', 1),
(2, 'Segundo', 'Segundo', '2018-11-18 18:31:47', '2018-11-18 18:31:49', 1),
(3, 'Tercero', 'Tercero', '2018-11-18 18:31:58', '2018-11-18 18:31:59', 1),
(4, 'Cuarto', 'Cuarto', '2018-11-18 18:32:10', '2018-11-18 18:32:12', 1),
(5, 'Quinto', 'Quinto', '2018-11-18 18:32:23', '2018-11-18 18:32:25', 1),
(6, 'Sexto', 'Sexto', '2018-11-18 18:32:35', '2018-11-18 18:32:37', 1),
(7, '4 años', 'Solo para Inicial', '2018-11-18 18:33:02', '2018-11-18 18:33:04', 1),
(8, '5 años', 'Solo para Inicial', '2018-11-18 18:33:22', '2018-11-18 18:33:24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `idAmbiente` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idGrado` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `descripcion`, `estado`, `idAmbiente`, `idPeriodo`, `idSeccion`, `idGrado`, `idNivel`, `creado`, `modificado`, `idUsuario`) VALUES
(1, 'Inicial - 4 años', 1, 4, 5, 1, 7, 1, '2018-11-18 19:46:37', '2018-11-18 19:46:39', 1),
(2, 'Inicial - 5 años', 1, 5, 5, 1, 8, 1, '2018-11-18 19:47:33', '2018-11-18 19:47:35', 1),
(5, 'Primaria - Primero', 1, 6, 5, 2, 1, 3, '2018-11-18 19:49:03', '2018-11-18 19:49:05', 1),
(6, 'Primaria - Segundo', 1, 9, 5, 2, 2, 3, '2018-11-18 19:54:02', '2018-11-18 19:54:05', 1),
(8, 'Primaria - Tercero', 1, 10, 5, 1, 3, 3, '2018-11-18 19:54:40', '2018-11-18 19:54:42', 1),
(10, 'Primaria - Cuarto', 1, 11, 5, 3, 4, 3, '2018-11-18 19:55:57', '2018-11-18 19:56:05', 1),
(11, 'Primaria - Quinto', 1, 12, 5, 2, 5, 3, '2018-11-18 19:57:30', '2018-11-18 19:57:28', 1),
(12, 'Primaria - Sexto', 1, 11, 5, 2, 6, 3, '2018-11-18 19:57:22', '2018-11-18 19:57:24', 1),
(13, 'Secundaria - Primero', 1, 10, 5, 3, 1, 4, '2018-11-18 19:59:16', '2018-11-18 19:59:19', 1),
(15, 'bSFb', 1, 15, 71, 4, 8, 6, '2018-11-25 12:30:30', '2018-11-25 12:30:30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupohorario`
--

CREATE TABLE `grupohorario` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idHorario` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lengua`
--

CREATE TABLE `lengua` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comentario` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lengua`
--

INSERT INTO `lengua` (`id`, `descripcion`, `comentario`) VALUES
(1, 'Español', 'Español-Peru-Castellano '),
(2, 'Ingles', 'Ingles-EEUU'),
(3, 'Quechua', 'Quechua-Puno'),
(4, 'Aymara', 'Aymara-Ramis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `codigoModular` int(11) NOT NULL,
  `religion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `distrito` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempoResidente` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `peso` double DEFAULT NULL,
  `talla` double DEFAULT NULL,
  `idApoderado` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idLengua` int(11) NOT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id`, `codigoModular`, `religion`, `direccion`, `distrito`, `tiempoResidente`, `estado`, `peso`, `talla`, `idApoderado`, `idGrupo`, `idPersona`, `idLengua`, `creado`, `modificado`, `idUsuario`) VALUES
(2, 201422114, 'Adventista', 'Jr. Los Angeles', 'San Roman', '2018-11-18', 1, 15.4, 10.2, 1, 1, 3, 1, '2018-11-18 20:03:27', '2018-11-18 20:03:30', 1),
(3, 201822115, 'Adevntista', 'Los Pacinficos', 'San Roman', '2018-09-19', 1, 45.4, 12.5, 1, 5, 3, 1, '2018-11-18 20:05:10', '2018-11-18 20:05:15', 1),
(5, 201822116, 'Adventista', 'Los Heroes del Rio', 'San Roman', '2018-07-01', 1, 60, 17, 1, 13, 3, 1, '2018-11-18 20:06:52', '2018-11-18 20:06:49', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `nombreNivel` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nombreNivel`, `descripcion`, `creado`, `modificado`, `idUsuario`) VALUES
(1, 'Inicial', 'Ninguno', '2018-11-18 18:36:07', '2018-11-18 18:36:09', 1),
(3, 'Primaria', 'Ninguno', '2018-11-18 18:36:23', '2018-11-18 18:36:24', 1),
(4, 'Secundaria', 'Ninguno', '2018-11-18 18:36:38', '2018-11-18 18:36:40', 1),
(6, 'Libre', 'Utilizado para talleres y/o cursos especiales', '2018-11-18 18:36:53', '2018-11-23 04:01:05', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `inicia` date NOT NULL,
  `termina` date NOT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id`, `descripcion`, `estado`, `inicia`, `termina`, `creado`, `modificado`, `idUsuario`) VALUES
(5, '2018 - ANUAL', 1, '2018-11-06', '2018-11-30', '2018-10-16 05:00:00', '2018-11-22 05:09:32', 1),
(70, '2018-Compositoresa', 1, '2018-01-01', '2018-12-28', '2018-11-22 05:13:14', '2018-11-22 05:23:03', 1),
(71, 'Promesasas', 1, '2018-11-14', '2018-11-10', '2018-11-23 06:02:49', '2018-11-23 06:02:55', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `dni` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apePaterno` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apeMaterno` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `tipoPersona` int(1) DEFAULT '0',
  `padre` int(11) DEFAULT NULL,
  `madre` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `sexo` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lenguaMaterna` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lugarHermanos` char(7) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipoParto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `complicacionesParto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idUbigeo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `dni`, `nombre`, `apePaterno`, `apeMaterno`, `fechaNacimiento`, `tipoPersona`, `padre`, `madre`, `estado`, `sexo`, `lenguaMaterna`, `lugarHermanos`, `tipoParto`, `complicacionesParto`, `idUbigeo`) VALUES
(1, '76964099', 'Jorge Luis ', 'Yapo', 'Vilca', '2018-11-25', 2, 1, 1, 1, 'M', 'español', '3/5', 'normal', 'ninguno', 200901),
(2, '76964089', 'Jose Perez Perez', 'Perez', 'Perez', '2018-11-13', 3, NULL, NULL, 1, 'M', 'español', '3/5', 'normal', 'ninguno', 200901),
(3, '76985632', 'Jose Jose', 'Garcia', 'Perez', '2018-11-27', 2, NULL, NULL, 1, 'M', 'español', '3/5', 'normal', 'ninguno', 200801),
(69, '16516515', 'khbkj', 'kjnkjn', 'nkjn', '2018-11-25', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 200901),
(70, '4543534', 'klm', 'kmlkm', 'mlkm', '2018-11-25', 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 200901),
(75, '61651', 'kjnkj', 'kjnkjn', 'kjnkj', '2018-11-25', 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 200901),
(77, '65651', 'lkml', 'klmlk', 'mlkm', '2018-11-25', 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, 200901),
(79, '56165', 'jnk', 'nkkjn', 'jnk', '2018-11-25', 1, 3, 2, 1, '0', '0', '0', '0', '0', 200901);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Administrador', 'Administrador del sistema', 1),
(2, 'Director', 'Direccion del colegio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombreSeccion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombreSeccion`, `descripcion`, `creado`, `modificado`, `idUsuario`) VALUES
(1, 'Unica', 'Unica', '2018-11-18 18:28:44', '2018-11-18 18:28:51', 1),
(2, 'Caleb', 'Caleb', '2018-11-18 18:29:07', '2018-11-18 18:29:09', 1),
(3, 'Daniel', 'Daniel', '2018-11-18 18:29:21', '2018-11-18 18:29:23', 1),
(4, 'Alfa', 'Alfa', '2018-11-18 18:29:40', '2018-11-18 18:29:42', 1),
(5, 'Omega', 'Omega', '2018-11-18 18:29:55', '2018-11-18 18:29:58', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL,
  `numero` char(11) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE `ubigeo` (
  `id` int(6) NOT NULL,
  `distrito` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ubigeo`
--

INSERT INTO `ubigeo` (`id`, `distrito`, `provincia`, `departamento`) VALUES
(10101, 'Chachapoyas', 'Chachapoyas', 'Amazonas'),
(10102, 'Asuncion', 'Chachapoyas', 'Amazonas'),
(10103, 'Balsas', 'Chachapoyas', 'Amazonas'),
(10104, 'Cheto', 'Chachapoyas', 'Amazonas'),
(10105, 'Chiliquin', 'Chachapoyas', 'Amazonas'),
(10106, 'Chuquibamba', 'Chachapoyas', 'Amazonas'),
(10107, 'Granada', 'Chachapoyas', 'Amazonas'),
(10108, 'Huancas', 'Chachapoyas', 'Amazonas'),
(10109, 'La Jalca', 'Chachapoyas', 'Amazonas'),
(10110, 'Leimebamba', 'Chachapoyas', 'Amazonas'),
(10111, 'Levanto', 'Chachapoyas', 'Amazonas'),
(10112, 'Magdalena', 'Chachapoyas', 'Amazonas'),
(10113, 'Mariscal Castilla', 'Chachapoyas', 'Amazonas'),
(10114, 'Molinopampa', 'Chachapoyas', 'Amazonas'),
(10115, 'Montevideo', 'Chachapoyas', 'Amazonas'),
(10116, 'Olleros', 'Chachapoyas', 'Amazonas'),
(10117, 'Quinjalca', 'Chachapoyas', 'Amazonas'),
(10118, 'San Francisco De Daguas', 'Chachapoyas', 'Amazonas'),
(10119, 'San Isidro De Maino', 'Chachapoyas', 'Amazonas'),
(10120, 'Soloco', 'Chachapoyas', 'Amazonas'),
(10121, 'Sonche', 'Chachapoyas', 'Amazonas'),
(10201, 'La Peca', 'Bagua', 'Amazonas'),
(10202, 'Aramango', 'Bagua', 'Amazonas'),
(10203, 'Copallin', 'Bagua', 'Amazonas'),
(10204, 'El Parco', 'Bagua', 'Amazonas'),
(10205, 'Bagua', 'Bagua', 'Amazonas'),
(10206, 'Imaza', 'Bagua', 'Amazonas'),
(10301, 'Jumbilla', 'Bongara', 'Amazonas'),
(10302, 'Corosha', 'Bongara', 'Amazonas'),
(10303, 'Cuispes', 'Bongara', 'Amazonas'),
(10304, 'Chisquilla', 'Bongara', 'Amazonas'),
(10305, 'Churuja', 'Bongara', 'Amazonas'),
(10306, 'Florida', 'Bongara', 'Amazonas'),
(10307, 'Recta', 'Bongara', 'Amazonas'),
(10308, 'San Carlos', 'Bongara', 'Amazonas'),
(10309, 'Shipasbamba', 'Bongara', 'Amazonas'),
(10310, 'Valera', 'Bongara', 'Amazonas'),
(10311, 'Yambrasbamba', 'Bongara', 'Amazonas'),
(10312, 'Jazan', 'Bongara', 'Amazonas'),
(10401, 'Lamud', 'Luya', 'Amazonas'),
(10402, 'Camporredondo', 'Luya', 'Amazonas'),
(10403, 'Cocabamba', 'Luya', 'Amazonas'),
(10404, 'Colcamar', 'Luya', 'Amazonas'),
(10405, 'Conila', 'Luya', 'Amazonas'),
(10406, 'Inguilpata', 'Luya', 'Amazonas'),
(10407, 'Longuita', 'Luya', 'Amazonas'),
(10408, 'Lonya Chico', 'Luya', 'Amazonas'),
(10409, 'Luya', 'Luya', 'Amazonas'),
(10410, 'Luya Viejo', 'Luya', 'Amazonas'),
(10411, 'Maria', 'Luya', 'Amazonas'),
(10412, 'Ocalli', 'Luya', 'Amazonas'),
(10413, 'Ocumal', 'Luya', 'Amazonas'),
(10414, 'Pisuquia', 'Luya', 'Amazonas'),
(10415, 'San Cristobal', 'Luya', 'Amazonas'),
(10416, 'San Francisco De Yeso', 'Luya', 'Amazonas'),
(10417, 'San Jeronimo', 'Luya', 'Amazonas'),
(10418, 'San Juan De Lopecancha', 'Luya', 'Amazonas'),
(10419, 'Santa Catalina', 'Luya', 'Amazonas'),
(10420, 'Santo Tomas', 'Luya', 'Amazonas'),
(10421, 'Tingo', 'Luya', 'Amazonas'),
(10422, 'Trita', 'Luya', 'Amazonas'),
(10423, 'Providencia', 'Luya', 'Amazonas'),
(10501, 'San Nicolas', 'Rodriguez De Mendoza', 'Amazonas'),
(10502, 'Cochamal', 'Rodriguez De Mendoza', 'Amazonas'),
(10503, 'Chirimoto', 'Rodriguez De Mendoza', 'Amazonas'),
(10504, 'Huambo', 'Rodriguez De Mendoza', 'Amazonas'),
(10505, 'Limabamba', 'Rodriguez De Mendoza', 'Amazonas'),
(10506, 'Longar', 'Rodriguez De Mendoza', 'Amazonas'),
(10507, 'Milpucc', 'Rodriguez De Mendoza', 'Amazonas'),
(10508, 'Mariscal Benavides', 'Rodriguez De Mendoza', 'Amazonas'),
(10509, 'Omia', 'Rodriguez De Mendoza', 'Amazonas'),
(10510, 'Santa Rosa', 'Rodriguez De Mendoza', 'Amazonas'),
(10511, 'Totora', 'Rodriguez De Mendoza', 'Amazonas'),
(10512, 'Vista Alegre', 'Rodriguez De Mendoza', 'Amazonas'),
(10601, 'Nieva', 'Condorcanqui', 'Amazonas'),
(10602, 'Rio Santiago', 'Condorcanqui', 'Amazonas'),
(10603, 'El Cenepa', 'Condorcanqui', 'Amazonas'),
(10701, 'Bagua Grande', 'Utcubamba', 'Amazonas'),
(10702, 'Cajaruro', 'Utcubamba', 'Amazonas'),
(10703, 'Cumba', 'Utcubamba', 'Amazonas'),
(10704, 'El Milagro', 'Utcubamba', 'Amazonas'),
(10705, 'Jamalca', 'Utcubamba', 'Amazonas'),
(10706, 'Lonya Grande', 'Utcubamba', 'Amazonas'),
(10707, 'Yamon', 'Utcubamba', 'Amazonas'),
(20101, 'Huaraz', 'Huaraz', 'Ancash'),
(20102, 'Independencia', 'Huaraz', 'Ancash'),
(20103, 'Cochabamba', 'Huaraz', 'Ancash'),
(20104, 'Colcabamba', 'Huaraz', 'Ancash'),
(20105, 'Huanchay', 'Huaraz', 'Ancash'),
(20106, 'Jangas', 'Huaraz', 'Ancash'),
(20107, 'La Libertad', 'Huaraz', 'Ancash'),
(20108, 'Olleros', 'Huaraz', 'Ancash'),
(20109, 'Pampas Grande', 'Huaraz', 'Ancash'),
(20110, 'Pariacoto', 'Huaraz', 'Ancash'),
(20111, 'Pira', 'Huaraz', 'Ancash'),
(20112, 'Tarica', 'Huaraz', 'Ancash'),
(20201, 'Aija', 'Aija', 'Ancash'),
(20203, 'Coris', 'Aija', 'Ancash'),
(20205, 'Huacllan', 'Aija', 'Ancash'),
(20206, 'La Merced', 'Aija', 'Ancash'),
(20208, 'Succha', 'Aija', 'Ancash'),
(20301, 'Chiquian', 'Bolognesi', 'Ancash'),
(20302, 'Abelardo Pardo Lezameta', 'Bolognesi', 'Ancash'),
(20304, 'Aquia', 'Bolognesi', 'Ancash'),
(20305, 'Cajacay', 'Bolognesi', 'Ancash'),
(20310, 'Huayllacayan', 'Bolognesi', 'Ancash'),
(20311, 'Huasta', 'Bolognesi', 'Ancash'),
(20313, 'Mangas', 'Bolognesi', 'Ancash'),
(20315, 'Pacllon', 'Bolognesi', 'Ancash'),
(20317, 'San Miguel De Corpanqui', 'Bolognesi', 'Ancash'),
(20320, 'Ticllos', 'Bolognesi', 'Ancash'),
(20321, 'Antonio Raimondi', 'Bolognesi', 'Ancash'),
(20322, 'Canis', 'Bolognesi', 'Ancash'),
(20323, 'Colquioc', 'Bolognesi', 'Ancash'),
(20324, 'La Primavera', 'Bolognesi', 'Ancash'),
(20325, 'Huallanca', 'Bolognesi', 'Ancash'),
(20401, 'Carhuaz', 'Carhuaz', 'Ancash'),
(20402, 'Acopampa', 'Carhuaz', 'Ancash'),
(20403, 'Amashca', 'Carhuaz', 'Ancash'),
(20404, 'Anta', 'Carhuaz', 'Ancash'),
(20405, 'Ataquero', 'Carhuaz', 'Ancash'),
(20406, 'Marcara', 'Carhuaz', 'Ancash'),
(20407, 'Pariahuanca', 'Carhuaz', 'Ancash'),
(20408, 'San Miguel De Aco', 'Carhuaz', 'Ancash'),
(20409, 'Shilla', 'Carhuaz', 'Ancash'),
(20410, 'Tinco', 'Carhuaz', 'Ancash'),
(20411, 'Yungar', 'Carhuaz', 'Ancash'),
(20501, 'Casma', 'Casma', 'Ancash'),
(20502, 'Buena Vista Alta', 'Casma', 'Ancash'),
(20503, 'Comandante Noel', 'Casma', 'Ancash'),
(20505, 'Yautan', 'Casma', 'Ancash'),
(20601, 'Corongo', 'Corongo', 'Ancash'),
(20602, 'Aco', 'Corongo', 'Ancash'),
(20603, 'Bambas', 'Corongo', 'Ancash'),
(20604, 'Cusca', 'Corongo', 'Ancash'),
(20605, 'La Pampa', 'Corongo', 'Ancash'),
(20606, 'Yanac', 'Corongo', 'Ancash'),
(20607, 'Yupan', 'Corongo', 'Ancash'),
(20701, 'Caraz', 'Huaylas', 'Ancash'),
(20702, 'Huallanca', 'Huaylas', 'Ancash'),
(20703, 'Huata', 'Huaylas', 'Ancash'),
(20704, 'Huaylas', 'Huaylas', 'Ancash'),
(20705, 'Mato', 'Huaylas', 'Ancash'),
(20706, 'Pamparomas', 'Huaylas', 'Ancash'),
(20707, 'Pueblo Libre', 'Huaylas', 'Ancash'),
(20708, 'Santa Cruz', 'Huaylas', 'Ancash'),
(20709, 'Yuracmarca', 'Huaylas', 'Ancash'),
(20710, 'Santo Toribio', 'Huaylas', 'Ancash'),
(20801, 'Huari', 'Huari', 'Ancash'),
(20802, 'Cajay', 'Huari', 'Ancash'),
(20803, 'Chavin De Huantar', 'Huari', 'Ancash'),
(20804, 'Huacachi', 'Huari', 'Ancash'),
(20805, 'Huachis', 'Huari', 'Ancash'),
(20806, 'Huacchis', 'Huari', 'Ancash'),
(20807, 'Huantar', 'Huari', 'Ancash'),
(20808, 'Masin', 'Huari', 'Ancash'),
(20809, 'Paucas', 'Huari', 'Ancash'),
(20810, 'Ponto', 'Huari', 'Ancash'),
(20811, 'Rahuapampa', 'Huari', 'Ancash'),
(20812, 'Rapayan', 'Huari', 'Ancash'),
(20813, 'San Marcos', 'Huari', 'Ancash'),
(20814, 'San Pedro De Chana', 'Huari', 'Ancash'),
(20815, 'Uco', 'Huari', 'Ancash'),
(20816, 'Anra', 'Huari', 'Ancash'),
(20901, 'Piscobamba', 'Mariscal Luzuriaga', 'Ancash'),
(20902, 'Casca', 'Mariscal Luzuriaga', 'Ancash'),
(20903, 'Lucma', 'Mariscal Luzuriaga', 'Ancash'),
(20904, 'Fidel Olivas Escudero', 'Mariscal Luzuriaga', 'Ancash'),
(20905, 'Llama', 'Mariscal Luzuriaga', 'Ancash'),
(20906, 'Llumpa', 'Mariscal Luzuriaga', 'Ancash'),
(20907, 'Musga', 'Mariscal Luzuriaga', 'Ancash'),
(20908, 'Eleazar Guzman Barron', 'Mariscal Luzuriaga', 'Ancash'),
(21001, 'Cabana', 'Pallasca', 'Ancash'),
(21002, 'Bolognesi', 'Pallasca', 'Ancash'),
(21003, 'Conchucos', 'Pallasca', 'Ancash'),
(21004, 'Huacaschuque', 'Pallasca', 'Ancash'),
(21005, 'Huandoval', 'Pallasca', 'Ancash'),
(21006, 'Lacabamba', 'Pallasca', 'Ancash'),
(21007, 'Llapo', 'Pallasca', 'Ancash'),
(21008, 'Pallasca', 'Pallasca', 'Ancash'),
(21009, 'Pampas', 'Pallasca', 'Ancash'),
(21010, 'Santa Rosa', 'Pallasca', 'Ancash'),
(21011, 'Tauca', 'Pallasca', 'Ancash'),
(21101, 'Pomabamba', 'Pomabamba', 'Ancash'),
(21102, 'Huayllan', 'Pomabamba', 'Ancash'),
(21103, 'Parobamba', 'Pomabamba', 'Ancash'),
(21104, 'Quinuabamba', 'Pomabamba', 'Ancash'),
(21201, 'Recuay', 'Recuay', 'Ancash'),
(21202, 'Cotaparaco', 'Recuay', 'Ancash'),
(21203, 'Huayllapampa', 'Recuay', 'Ancash'),
(21204, 'Marca', 'Recuay', 'Ancash'),
(21205, 'Pampas Chico', 'Recuay', 'Ancash'),
(21206, 'Pararin', 'Recuay', 'Ancash'),
(21207, 'Tapacocha', 'Recuay', 'Ancash'),
(21208, 'Ticapampa', 'Recuay', 'Ancash'),
(21209, 'Llacllin', 'Recuay', 'Ancash'),
(21210, 'Catac', 'Recuay', 'Ancash'),
(21301, 'Chimbote', 'Santa', 'Ancash'),
(21302, 'Caceres Del Peru', 'Santa', 'Ancash'),
(21303, 'Macate', 'Santa', 'Ancash'),
(21304, 'Moro', 'Santa', 'Ancash'),
(21305, 'Nepe?a', 'Santa', 'Ancash'),
(21306, 'Samanco', 'Santa', 'Ancash'),
(21307, 'Santa', 'Santa', 'Ancash'),
(21308, 'Coishco', 'Santa', 'Ancash'),
(21309, 'Nuevo Chimbote', 'Santa', 'Ancash'),
(21401, 'Sihuas', 'Sihuas', 'Ancash'),
(21402, 'Alfonso Ugarte', 'Sihuas', 'Ancash'),
(21403, 'Chingalpo', 'Sihuas', 'Ancash'),
(21404, 'Huayllabamba', 'Sihuas', 'Ancash'),
(21405, 'Quiches', 'Sihuas', 'Ancash'),
(21406, 'Sicsibamba', 'Sihuas', 'Ancash'),
(21407, 'Acobamba', 'Sihuas', 'Ancash'),
(21408, 'Cashapampa', 'Sihuas', 'Ancash'),
(21409, 'Ragash', 'Sihuas', 'Ancash'),
(21410, 'San Juan', 'Sihuas', 'Ancash'),
(21501, 'Yungay', 'Yungay', 'Ancash'),
(21502, 'Cascapara', 'Yungay', 'Ancash'),
(21503, 'Mancos', 'Yungay', 'Ancash'),
(21504, 'Matacoto', 'Yungay', 'Ancash'),
(21505, 'Quillo', 'Yungay', 'Ancash'),
(21506, 'Ranrahirca', 'Yungay', 'Ancash'),
(21507, 'Shupluy', 'Yungay', 'Ancash'),
(21508, 'Yanama', 'Yungay', 'Ancash'),
(21601, 'Llamellin', 'Antonio Raimondi', 'Ancash'),
(21602, 'Aczo', 'Antonio Raimondi', 'Ancash'),
(21603, 'Chaccho', 'Antonio Raimondi', 'Ancash'),
(21604, 'Chingas', 'Antonio Raimondi', 'Ancash'),
(21605, 'Mirgas', 'Antonio Raimondi', 'Ancash'),
(21606, 'San Juan De Rontoy', 'Antonio Raimondi', 'Ancash'),
(21701, 'San Luis', 'Carlos Fermin Fitzcarrald', 'Ancash'),
(21702, 'Yauya', 'Carlos Fermin Fitzcarrald', 'Ancash'),
(21703, 'San Nicolas', 'Carlos Fermin Fitzcarrald', 'Ancash'),
(21801, 'Chacas', 'Asuncion', 'Ancash'),
(21802, 'Acochaca', 'Asuncion', 'Ancash'),
(21901, 'Huarmey', 'Huarmey', 'Ancash'),
(21902, 'Cochapeti', 'Huarmey', 'Ancash'),
(21903, 'Huayan', 'Huarmey', 'Ancash'),
(21904, 'Malvas', 'Huarmey', 'Ancash'),
(21905, 'Culebras', 'Huarmey', 'Ancash'),
(22001, 'Acas', 'Ocros', 'Ancash'),
(22002, 'Cajamarquilla', 'Ocros', 'Ancash'),
(22003, 'Carhuapampa', 'Ocros', 'Ancash'),
(22004, 'Cochas', 'Ocros', 'Ancash'),
(22005, 'Congas', 'Ocros', 'Ancash'),
(22006, 'Llipa', 'Ocros', 'Ancash'),
(22007, 'Ocros', 'Ocros', 'Ancash'),
(22008, 'San Cristobal De Rajan', 'Ocros', 'Ancash'),
(22009, 'San Pedro', 'Ocros', 'Ancash'),
(22010, 'Santiago De Chilcas', 'Ocros', 'Ancash'),
(30101, 'Abancay', 'Abancay', 'Apurimac'),
(30102, 'Circa', 'Abancay', 'Apurimac'),
(30103, 'Curahuasi', 'Abancay', 'Apurimac'),
(30104, 'Chacoche', 'Abancay', 'Apurimac'),
(30105, 'Huanipaca', 'Abancay', 'Apurimac'),
(30106, 'Lambrama', 'Abancay', 'Apurimac'),
(30107, 'Pichirhua', 'Abancay', 'Apurimac'),
(30108, 'San Pedro De Cachora', 'Abancay', 'Apurimac'),
(30109, 'Tamburco', 'Abancay', 'Apurimac'),
(30201, 'Chalhuanca', 'Aymaraes', 'Apurimac'),
(30202, 'Capaya', 'Aymaraes', 'Apurimac'),
(30203, 'Caraybamba', 'Aymaraes', 'Apurimac'),
(30204, 'Colcabamba', 'Aymaraes', 'Apurimac'),
(30205, 'Cotaruse', 'Aymaraes', 'Apurimac'),
(30206, 'Chapimarca', 'Aymaraes', 'Apurimac'),
(30207, 'Huayllo', 'Aymaraes', 'Apurimac'),
(30208, 'Lucre', 'Aymaraes', 'Apurimac'),
(30209, 'Pocohuanca', 'Aymaraes', 'Apurimac'),
(30210, 'Sa?ayca', 'Aymaraes', 'Apurimac'),
(30211, 'Soraya', 'Aymaraes', 'Apurimac'),
(30212, 'Tapairihua', 'Aymaraes', 'Apurimac'),
(30213, 'Tintay', 'Aymaraes', 'Apurimac'),
(30214, 'Toraya', 'Aymaraes', 'Apurimac'),
(30215, 'Yanaca', 'Aymaraes', 'Apurimac'),
(30216, 'San Juan De Chac?a', 'Aymaraes', 'Apurimac'),
(30217, 'Justo Apu Sahuaraura', 'Aymaraes', 'Apurimac'),
(30301, 'Andahuaylas', 'Andahuaylas', 'Apurimac'),
(30302, 'Andarapa', 'Andahuaylas', 'Apurimac'),
(30303, 'Chiara', 'Andahuaylas', 'Apurimac'),
(30304, 'Huancarama', 'Andahuaylas', 'Apurimac'),
(30305, 'Huancaray', 'Andahuaylas', 'Apurimac'),
(30306, 'Kishuara', 'Andahuaylas', 'Apurimac'),
(30307, 'Pacobamba', 'Andahuaylas', 'Apurimac'),
(30308, 'Pampachiri', 'Andahuaylas', 'Apurimac'),
(30309, 'San Antonio De Cachi', 'Andahuaylas', 'Apurimac'),
(30310, 'San Jeronimo', 'Andahuaylas', 'Apurimac'),
(30311, 'Talavera', 'Andahuaylas', 'Apurimac'),
(30312, 'Turpo', 'Andahuaylas', 'Apurimac'),
(30313, 'Pacucha', 'Andahuaylas', 'Apurimac'),
(30314, 'Pomacocha', 'Andahuaylas', 'Apurimac'),
(30315, 'Santa Maria De Chicmo', 'Andahuaylas', 'Apurimac'),
(30316, 'Tumay Huaraca', 'Andahuaylas', 'Apurimac'),
(30317, 'Huayana', 'Andahuaylas', 'Apurimac'),
(30318, 'San Miguel De Chaccrampa', 'Andahuaylas', 'Apurimac'),
(30319, 'Kaquiabamba', 'Andahuaylas', 'Apurimac'),
(30401, 'Antabamba', 'Antabamba', 'Apurimac'),
(30402, 'El Oro', 'Antabamba', 'Apurimac'),
(30403, 'Huaquirca', 'Antabamba', 'Apurimac'),
(30404, 'Juan Espinoza Medrano', 'Antabamba', 'Apurimac'),
(30405, 'Oropesa', 'Antabamba', 'Apurimac'),
(30406, 'Pachaconas', 'Antabamba', 'Apurimac'),
(30407, 'Sabaino', 'Antabamba', 'Apurimac'),
(30501, 'Tambobamba', 'Cotabambas', 'Apurimac'),
(30502, 'Coyllurqui', 'Cotabambas', 'Apurimac'),
(30503, 'Cotabambas', 'Cotabambas', 'Apurimac'),
(30504, 'Haquira', 'Cotabambas', 'Apurimac'),
(30505, 'Mara', 'Cotabambas', 'Apurimac'),
(30506, 'Challhuahuacho', 'Cotabambas', 'Apurimac'),
(30601, 'Chuquibambilla', 'Grau', 'Apurimac'),
(30602, 'Curpahuasi', 'Grau', 'Apurimac'),
(30603, 'Huaillati', 'Grau', 'Apurimac'),
(30604, 'Mamara', 'Grau', 'Apurimac'),
(30605, 'Mariscal Gamarra', 'Grau', 'Apurimac'),
(30606, 'Micaela Bastidas', 'Grau', 'Apurimac'),
(30607, 'Progreso', 'Grau', 'Apurimac'),
(30608, 'Pataypampa', 'Grau', 'Apurimac'),
(30609, 'San Antonio', 'Grau', 'Apurimac'),
(30610, 'Turpay', 'Grau', 'Apurimac'),
(30611, 'Vilcabamba', 'Grau', 'Apurimac'),
(30612, 'Virundo', 'Grau', 'Apurimac'),
(30613, 'Santa Rosa', 'Grau', 'Apurimac'),
(30614, 'Curasco', 'Grau', 'Apurimac'),
(30701, 'Chincheros', 'Chincheros', 'Apurimac'),
(30702, 'Ongoy', 'Chincheros', 'Apurimac'),
(30703, 'Ocobamba', 'Chincheros', 'Apurimac'),
(30704, 'Cocharcas', 'Chincheros', 'Apurimac'),
(30705, 'Anco Huallo', 'Chincheros', 'Apurimac'),
(30706, 'Huaccana', 'Chincheros', 'Apurimac'),
(30707, 'Uranmarca', 'Chincheros', 'Apurimac'),
(30708, 'Ranracancha', 'Chincheros', 'Apurimac'),
(40101, 'Arequipa', 'Arequipa', 'Arequipa'),
(40102, 'Cayma', 'Arequipa', 'Arequipa'),
(40103, 'Cerro Colorado', 'Arequipa', 'Arequipa'),
(40104, 'Characato', 'Arequipa', 'Arequipa'),
(40105, 'Chiguata', 'Arequipa', 'Arequipa'),
(40106, 'La Joya', 'Arequipa', 'Arequipa'),
(40107, 'Miraflores', 'Arequipa', 'Arequipa'),
(40108, 'Mollebaya', 'Arequipa', 'Arequipa'),
(40109, 'Paucarpata', 'Arequipa', 'Arequipa'),
(40110, 'Pocsi', 'Arequipa', 'Arequipa'),
(40111, 'Polobaya', 'Arequipa', 'Arequipa'),
(40112, 'Queque?a', 'Arequipa', 'Arequipa'),
(40113, 'Sabandia', 'Arequipa', 'Arequipa'),
(40114, 'Sachaca', 'Arequipa', 'Arequipa'),
(40115, 'San Juan De Siguas', 'Arequipa', 'Arequipa'),
(40116, 'San Juan De Tarucani', 'Arequipa', 'Arequipa'),
(40117, 'Santa Isabel De Siguas', 'Arequipa', 'Arequipa'),
(40118, 'Santa Rita De Sihuas', 'Arequipa', 'Arequipa'),
(40119, 'Socabaya', 'Arequipa', 'Arequipa'),
(40120, 'Tiabaya', 'Arequipa', 'Arequipa'),
(40121, 'Uchumayo', 'Arequipa', 'Arequipa'),
(40122, 'Vitor', 'Arequipa', 'Arequipa'),
(40123, 'Yanahuara', 'Arequipa', 'Arequipa'),
(40124, 'Yarabamba', 'Arequipa', 'Arequipa'),
(40125, 'Yura', 'Arequipa', 'Arequipa'),
(40126, 'Mariano Melgar', 'Arequipa', 'Arequipa'),
(40127, 'Jacobo Hunter', 'Arequipa', 'Arequipa'),
(40128, 'Alto Selva Alegre', 'Arequipa', 'Arequipa'),
(40129, 'Jose Luis Bustamante Y Rivero', 'Arequipa', 'Arequipa'),
(40201, 'Chivay', 'Caylloma', 'Arequipa'),
(40202, 'Achoma', 'Caylloma', 'Arequipa'),
(40203, 'Cabanaconde', 'Caylloma', 'Arequipa'),
(40204, 'Caylloma', 'Caylloma', 'Arequipa'),
(40205, 'Callalli', 'Caylloma', 'Arequipa'),
(40206, 'Coporaque', 'Caylloma', 'Arequipa'),
(40207, 'Huambo', 'Caylloma', 'Arequipa'),
(40208, 'Huanca', 'Caylloma', 'Arequipa'),
(40209, 'Ichupampa', 'Caylloma', 'Arequipa'),
(40210, 'Lari', 'Caylloma', 'Arequipa'),
(40211, 'Lluta', 'Caylloma', 'Arequipa'),
(40212, 'Maca', 'Caylloma', 'Arequipa'),
(40213, 'Madrigal', 'Caylloma', 'Arequipa'),
(40214, 'San Antonio De Chuca', 'Caylloma', 'Arequipa'),
(40215, 'Sibayo', 'Caylloma', 'Arequipa'),
(40216, 'Tapay', 'Caylloma', 'Arequipa'),
(40217, 'Tisco', 'Caylloma', 'Arequipa'),
(40218, 'Tuti', 'Caylloma', 'Arequipa'),
(40219, 'Yanque', 'Caylloma', 'Arequipa'),
(40220, 'Majes', 'Caylloma', 'Arequipa'),
(40301, 'Camana', 'Camana', 'Arequipa'),
(40302, 'Jose Maria Quimper', 'Camana', 'Arequipa'),
(40303, 'Mariano Nicolas Valcarcel', 'Camana', 'Arequipa'),
(40304, 'Mariscal Caceres', 'Camana', 'Arequipa'),
(40305, 'Nicolas De Pierola', 'Camana', 'Arequipa'),
(40306, 'Oco?a', 'Camana', 'Arequipa'),
(40307, 'Quilca', 'Camana', 'Arequipa'),
(40308, 'Samuel Pastor', 'Camana', 'Arequipa'),
(40401, 'Caraveli', 'Caraveli', 'Arequipa'),
(40402, 'Acari', 'Caraveli', 'Arequipa'),
(40403, 'Atico', 'Caraveli', 'Arequipa'),
(40404, 'Atiquipa', 'Caraveli', 'Arequipa'),
(40405, 'Bella Union', 'Caraveli', 'Arequipa'),
(40406, 'Cahuacho', 'Caraveli', 'Arequipa'),
(40407, 'Chala', 'Caraveli', 'Arequipa'),
(40408, 'Chaparra', 'Caraveli', 'Arequipa'),
(40409, 'Huanuhuanu', 'Caraveli', 'Arequipa'),
(40410, 'Jaqui', 'Caraveli', 'Arequipa'),
(40411, 'Lomas', 'Caraveli', 'Arequipa'),
(40412, 'Quicacha', 'Caraveli', 'Arequipa'),
(40413, 'Yauca', 'Caraveli', 'Arequipa'),
(40501, 'Aplao', 'Castilla', 'Arequipa'),
(40502, 'Andagua', 'Castilla', 'Arequipa'),
(40503, 'Ayo', 'Castilla', 'Arequipa'),
(40504, 'Chachas', 'Castilla', 'Arequipa'),
(40505, 'Chilcaymarca', 'Castilla', 'Arequipa'),
(40506, 'Choco', 'Castilla', 'Arequipa'),
(40507, 'Huancarqui', 'Castilla', 'Arequipa'),
(40508, 'Machaguay', 'Castilla', 'Arequipa'),
(40509, 'Orcopampa', 'Castilla', 'Arequipa'),
(40510, 'Pampacolca', 'Castilla', 'Arequipa'),
(40511, 'Tipan', 'Castilla', 'Arequipa'),
(40512, 'Uraca', 'Castilla', 'Arequipa'),
(40513, 'U?on', 'Castilla', 'Arequipa'),
(40514, 'Viraco', 'Castilla', 'Arequipa'),
(40601, 'Chuquibamba', 'Condesuyos', 'Arequipa'),
(40602, 'Andaray', 'Condesuyos', 'Arequipa'),
(40603, 'Cayarani', 'Condesuyos', 'Arequipa'),
(40604, 'Chichas', 'Condesuyos', 'Arequipa'),
(40605, 'Iray', 'Condesuyos', 'Arequipa'),
(40606, 'Salamanca', 'Condesuyos', 'Arequipa'),
(40607, 'Yanaquihua', 'Condesuyos', 'Arequipa'),
(40608, 'Rio Grande', 'Condesuyos', 'Arequipa'),
(40701, 'Mollendo', 'Islay', 'Arequipa'),
(40702, 'Cocachacra', 'Islay', 'Arequipa'),
(40703, 'Dean Valdivia', 'Islay', 'Arequipa'),
(40704, 'Islay', 'Islay', 'Arequipa'),
(40705, 'Mejia', 'Islay', 'Arequipa'),
(40706, 'Punta De Bombon', 'Islay', 'Arequipa'),
(40801, 'Cotahuasi', 'La Union', 'Arequipa'),
(40802, 'Alca', 'La Union', 'Arequipa'),
(40803, 'Charcana', 'La Union', 'Arequipa'),
(40804, 'Huaynacotas', 'La Union', 'Arequipa'),
(40805, 'Pampamarca', 'La Union', 'Arequipa'),
(40806, 'Puyca', 'La Union', 'Arequipa'),
(40807, 'Quechualla', 'La Union', 'Arequipa'),
(40808, 'Sayla', 'La Union', 'Arequipa'),
(40809, 'Tauria', 'La Union', 'Arequipa'),
(40810, 'Tomepampa', 'La Union', 'Arequipa'),
(40811, 'Toro', 'La Union', 'Arequipa'),
(50101, 'Ayacucho', 'Huamanga', 'Ayacucho'),
(50102, 'Acos Vinchos', 'Huamanga', 'Ayacucho'),
(50103, 'Carmen Alto', 'Huamanga', 'Ayacucho'),
(50104, 'Chiara', 'Huamanga', 'Ayacucho'),
(50105, 'Quinua', 'Huamanga', 'Ayacucho'),
(50106, 'San Jose De Ticllas', 'Huamanga', 'Ayacucho'),
(50107, 'San Juan Bautista', 'Huamanga', 'Ayacucho'),
(50108, 'Santiago De Pischa', 'Huamanga', 'Ayacucho'),
(50109, 'Vinchos', 'Huamanga', 'Ayacucho'),
(50110, 'Tambillo', 'Huamanga', 'Ayacucho'),
(50111, 'Acocro', 'Huamanga', 'Ayacucho'),
(50112, 'Socos', 'Huamanga', 'Ayacucho'),
(50113, 'Ocros', 'Huamanga', 'Ayacucho'),
(50114, 'Pacaycasa', 'Huamanga', 'Ayacucho'),
(50115, 'Jesus Nazareno', 'Huamanga', 'Ayacucho'),
(50201, 'Cangallo', 'Cangallo', 'Ayacucho'),
(50204, 'Chuschi', 'Cangallo', 'Ayacucho'),
(50206, 'Los Morochucos', 'Cangallo', 'Ayacucho'),
(50207, 'Paras', 'Cangallo', 'Ayacucho'),
(50208, 'Totos', 'Cangallo', 'Ayacucho'),
(50211, 'Maria Parado De Bellido', 'Cangallo', 'Ayacucho'),
(50301, 'Huanta', 'Huanta', 'Ayacucho'),
(50302, 'Ayahuanco', 'Huanta', 'Ayacucho'),
(50303, 'Huamanguilla', 'Huanta', 'Ayacucho'),
(50304, 'Iguain', 'Huanta', 'Ayacucho'),
(50305, 'Luricocha', 'Huanta', 'Ayacucho'),
(50307, 'Santillana', 'Huanta', 'Ayacucho'),
(50308, 'Sivia', 'Huanta', 'Ayacucho'),
(50309, 'Llochegua', 'Huanta', 'Ayacucho'),
(50401, 'San Miguel', 'La Mar', 'Ayacucho'),
(50402, 'Anco', 'La Mar', 'Ayacucho'),
(50403, 'Ayna', 'La Mar', 'Ayacucho'),
(50404, 'Chilcas', 'La Mar', 'Ayacucho'),
(50405, 'Chungui', 'La Mar', 'Ayacucho'),
(50406, 'Tambo', 'La Mar', 'Ayacucho'),
(50407, 'Luis Carranza', 'La Mar', 'Ayacucho'),
(50408, 'Santa Rosa', 'La Mar', 'Ayacucho'),
(50409, 'Samugari', 'La Mar', 'Ayacucho'),
(50501, 'Puquio', 'Lucanas', 'Ayacucho'),
(50502, 'Aucara', 'Lucanas', 'Ayacucho'),
(50503, 'Cabana', 'Lucanas', 'Ayacucho'),
(50504, 'Carmen Salcedo', 'Lucanas', 'Ayacucho'),
(50506, 'Chavi?a', 'Lucanas', 'Ayacucho'),
(50508, 'Chipao', 'Lucanas', 'Ayacucho'),
(50510, 'Huac-Huas', 'Lucanas', 'Ayacucho'),
(50511, 'Laramate', 'Lucanas', 'Ayacucho'),
(50512, 'Leoncio Prado', 'Lucanas', 'Ayacucho'),
(50513, 'Lucanas', 'Lucanas', 'Ayacucho'),
(50514, 'Llauta', 'Lucanas', 'Ayacucho'),
(50516, 'Oca?a', 'Lucanas', 'Ayacucho'),
(50517, 'Otoca', 'Lucanas', 'Ayacucho'),
(50520, 'Sancos', 'Lucanas', 'Ayacucho'),
(50521, 'San Juan', 'Lucanas', 'Ayacucho'),
(50522, 'San Pedro', 'Lucanas', 'Ayacucho'),
(50524, 'Santa Ana De Huaycahuacho', 'Lucanas', 'Ayacucho'),
(50525, 'Santa Lucia', 'Lucanas', 'Ayacucho'),
(50529, 'Saisa', 'Lucanas', 'Ayacucho'),
(50531, 'San Pedro De Palco', 'Lucanas', 'Ayacucho'),
(50532, 'San Cristobal', 'Lucanas', 'Ayacucho'),
(50601, 'Coracora', 'Parinacochas', 'Ayacucho'),
(50604, 'Coronel Casta?eda', 'Parinacochas', 'Ayacucho'),
(50605, 'Chumpi', 'Parinacochas', 'Ayacucho'),
(50608, 'Pacapausa', 'Parinacochas', 'Ayacucho'),
(50611, 'Pullo', 'Parinacochas', 'Ayacucho'),
(50612, 'Puyusca', 'Parinacochas', 'Ayacucho'),
(50615, 'San Francisco De Ravacayco', 'Parinacochas', 'Ayacucho'),
(50616, 'Upahuacho', 'Parinacochas', 'Ayacucho'),
(50701, 'Huancapi', 'Victor Fajardo', 'Ayacucho'),
(50702, 'Alcamenca', 'Victor Fajardo', 'Ayacucho'),
(50703, 'Apongo', 'Victor Fajardo', 'Ayacucho'),
(50704, 'Canaria', 'Victor Fajardo', 'Ayacucho'),
(50706, 'Cayara', 'Victor Fajardo', 'Ayacucho'),
(50707, 'Colca', 'Victor Fajardo', 'Ayacucho'),
(50708, 'Hualla', 'Victor Fajardo', 'Ayacucho'),
(50709, 'Huamanquiquia', 'Victor Fajardo', 'Ayacucho'),
(50710, 'Huancaraylla', 'Victor Fajardo', 'Ayacucho'),
(50713, 'Sarhua', 'Victor Fajardo', 'Ayacucho'),
(50714, 'Vilcanchos', 'Victor Fajardo', 'Ayacucho'),
(50715, 'Asquipata', 'Victor Fajardo', 'Ayacucho'),
(50801, 'Sancos', 'Huanca Sancos', 'Ayacucho'),
(50802, 'Sacsamarca', 'Huanca Sancos', 'Ayacucho'),
(50803, 'Santiago De Lucanamarca', 'Huanca Sancos', 'Ayacucho'),
(50804, 'Carapo', 'Huanca Sancos', 'Ayacucho'),
(50901, 'Vilcas Huaman', 'Vilcas Huaman', 'Ayacucho'),
(50902, 'Vischongo', 'Vilcas Huaman', 'Ayacucho'),
(50903, 'Accomarca', 'Vilcas Huaman', 'Ayacucho'),
(50904, 'Carhuanca', 'Vilcas Huaman', 'Ayacucho'),
(50905, 'Concepcion', 'Vilcas Huaman', 'Ayacucho'),
(50906, 'Huambalpa', 'Vilcas Huaman', 'Ayacucho'),
(50907, 'Saurama', 'Vilcas Huaman', 'Ayacucho'),
(50908, 'Independencia', 'Vilcas Huaman', 'Ayacucho'),
(51001, 'Pausa', 'Paucar Del Sara Sara', 'Ayacucho'),
(51002, 'Colta', 'Paucar Del Sara Sara', 'Ayacucho'),
(51003, 'Corculla', 'Paucar Del Sara Sara', 'Ayacucho'),
(51004, 'Lampa', 'Paucar Del Sara Sara', 'Ayacucho'),
(51005, 'Marcabamba', 'Paucar Del Sara Sara', 'Ayacucho'),
(51006, 'Oyolo', 'Paucar Del Sara Sara', 'Ayacucho'),
(51007, 'Pararca', 'Paucar Del Sara Sara', 'Ayacucho'),
(51008, 'San Javier De Alpabamba', 'Paucar Del Sara Sara', 'Ayacucho'),
(51009, 'San Jose De Ushua', 'Paucar Del Sara Sara', 'Ayacucho'),
(51010, 'Sara Sara', 'Paucar Del Sara Sara', 'Ayacucho'),
(51101, 'Querobamba', 'Sucre', 'Ayacucho'),
(51102, 'Belen', 'Sucre', 'Ayacucho'),
(51103, 'Chalcos', 'Sucre', 'Ayacucho'),
(51104, 'San Salvador De Quije', 'Sucre', 'Ayacucho'),
(51105, 'Paico', 'Sucre', 'Ayacucho'),
(51106, 'Santiago De Paucaray', 'Sucre', 'Ayacucho'),
(51107, 'San Pedro De Larcay', 'Sucre', 'Ayacucho'),
(51108, 'Soras', 'Sucre', 'Ayacucho'),
(51109, 'Huaca?a', 'Sucre', 'Ayacucho'),
(51110, 'Chilcayoc', 'Sucre', 'Ayacucho'),
(51111, 'Morcolla', 'Sucre', 'Ayacucho'),
(60101, 'Cajamarca', 'Cajamarca', 'Cajamarca'),
(60102, 'Asuncion', 'Cajamarca', 'Cajamarca'),
(60103, 'Cospan', 'Cajamarca', 'Cajamarca'),
(60104, 'Chetilla', 'Cajamarca', 'Cajamarca'),
(60105, 'Enca?ada', 'Cajamarca', 'Cajamarca'),
(60106, 'Jesus', 'Cajamarca', 'Cajamarca'),
(60107, 'Los Ba?os Del Inca', 'Cajamarca', 'Cajamarca'),
(60108, 'Llacanora', 'Cajamarca', 'Cajamarca'),
(60109, 'Magdalena', 'Cajamarca', 'Cajamarca'),
(60110, 'Matara', 'Cajamarca', 'Cajamarca'),
(60111, 'Namora', 'Cajamarca', 'Cajamarca'),
(60112, 'San Juan', 'Cajamarca', 'Cajamarca'),
(60201, 'Cajabamba', 'Cajabamba', 'Cajamarca'),
(60202, 'Cachachi', 'Cajabamba', 'Cajamarca'),
(60203, 'Condebamba', 'Cajabamba', 'Cajamarca'),
(60205, 'Sitacocha', 'Cajabamba', 'Cajamarca'),
(60301, 'Celendin', 'Celendin', 'Cajamarca'),
(60302, 'Cortegana', 'Celendin', 'Cajamarca'),
(60303, 'Chumuch', 'Celendin', 'Cajamarca'),
(60304, 'Huasmin', 'Celendin', 'Cajamarca'),
(60305, 'Jorge Chavez', 'Celendin', 'Cajamarca'),
(60306, 'Jose Galvez', 'Celendin', 'Cajamarca'),
(60307, 'Miguel Iglesias', 'Celendin', 'Cajamarca'),
(60308, 'Oxamarca', 'Celendin', 'Cajamarca'),
(60309, 'Sorochuco', 'Celendin', 'Cajamarca'),
(60310, 'Sucre', 'Celendin', 'Cajamarca'),
(60311, 'Utco', 'Celendin', 'Cajamarca'),
(60312, 'La Libertad De Pallan', 'Celendin', 'Cajamarca'),
(60401, 'Contumaza', 'Contumaza', 'Cajamarca'),
(60403, 'Chilete', 'Contumaza', 'Cajamarca'),
(60404, 'Guzmango', 'Contumaza', 'Cajamarca'),
(60405, 'San Benito', 'Contumaza', 'Cajamarca'),
(60406, 'Cupisnique', 'Contumaza', 'Cajamarca'),
(60407, 'Tantarica', 'Contumaza', 'Cajamarca'),
(60408, 'Yonan', 'Contumaza', 'Cajamarca'),
(60409, 'Santa Cruz De Toled', 'Contumaza', 'Cajamarca'),
(60501, 'Cutervo', 'Cutervo', 'Cajamarca'),
(60502, 'Callayuc', 'Cutervo', 'Cajamarca'),
(60503, 'Cujillo', 'Cutervo', 'Cajamarca'),
(60504, 'Choros', 'Cutervo', 'Cajamarca'),
(60505, 'La Ramada', 'Cutervo', 'Cajamarca'),
(60506, 'Pimpingos', 'Cutervo', 'Cajamarca'),
(60507, 'Querocotillo', 'Cutervo', 'Cajamarca'),
(60508, 'San Andres De Cutervo', 'Cutervo', 'Cajamarca'),
(60509, 'San Juan De Cutervo', 'Cutervo', 'Cajamarca'),
(60510, 'San Luis De Lucma', 'Cutervo', 'Cajamarca'),
(60511, 'Santa Cruz', 'Cutervo', 'Cajamarca'),
(60512, 'Santo Domingo De La Capilla', 'Cutervo', 'Cajamarca'),
(60513, 'Santo Tomas', 'Cutervo', 'Cajamarca'),
(60514, 'Socota', 'Cutervo', 'Cajamarca'),
(60515, 'Toribio Casanova', 'Cutervo', 'Cajamarca'),
(60601, 'Chota', 'Chota', 'Cajamarca'),
(60602, 'Anguia', 'Chota', 'Cajamarca'),
(60603, 'Cochabamba', 'Chota', 'Cajamarca'),
(60604, 'Conchan', 'Chota', 'Cajamarca'),
(60605, 'Chadin', 'Chota', 'Cajamarca'),
(60606, 'Chiguirip', 'Chota', 'Cajamarca'),
(60607, 'Chimban', 'Chota', 'Cajamarca'),
(60608, 'Huambos', 'Chota', 'Cajamarca'),
(60609, 'Lajas', 'Chota', 'Cajamarca'),
(60610, 'Llama', 'Chota', 'Cajamarca'),
(60611, 'Miracosta', 'Chota', 'Cajamarca'),
(60612, 'Paccha', 'Chota', 'Cajamarca'),
(60613, 'Pion', 'Chota', 'Cajamarca'),
(60614, 'Querocoto', 'Chota', 'Cajamarca'),
(60615, 'Tacabamba', 'Chota', 'Cajamarca'),
(60616, 'Tocmoche', 'Chota', 'Cajamarca'),
(60617, 'San Juan De Licupis', 'Chota', 'Cajamarca'),
(60618, 'Choropampa', 'Chota', 'Cajamarca'),
(60619, 'Chalamarca', 'Chota', 'Cajamarca'),
(60701, 'Bambamarca', 'Hualgayoc', 'Cajamarca'),
(60702, 'Chugur', 'Hualgayoc', 'Cajamarca'),
(60703, 'Hualgayoc', 'Hualgayoc', 'Cajamarca'),
(60801, 'Jaen', 'Jaen', 'Cajamarca'),
(60802, 'Bellavista', 'Jaen', 'Cajamarca'),
(60803, 'Colasay', 'Jaen', 'Cajamarca'),
(60804, 'Chontali', 'Jaen', 'Cajamarca'),
(60805, 'Pomahuaca', 'Jaen', 'Cajamarca'),
(60806, 'Pucara', 'Jaen', 'Cajamarca'),
(60807, 'Sallique', 'Jaen', 'Cajamarca'),
(60808, 'San Felipe', 'Jaen', 'Cajamarca'),
(60809, 'San Jose Del Alto', 'Jaen', 'Cajamarca'),
(60810, 'Santa Rosa', 'Jaen', 'Cajamarca'),
(60811, 'Las Pirias', 'Jaen', 'Cajamarca'),
(60812, 'Huabal', 'Jaen', 'Cajamarca'),
(60901, 'Santa Cruz', 'Santa Cruz', 'Cajamarca'),
(60902, 'Catache', 'Santa Cruz', 'Cajamarca'),
(60903, 'Chancayba?os', 'Santa Cruz', 'Cajamarca'),
(60904, 'La Esperanza', 'Santa Cruz', 'Cajamarca'),
(60905, 'Ninabamba', 'Santa Cruz', 'Cajamarca'),
(60906, 'Pulan', 'Santa Cruz', 'Cajamarca'),
(60907, 'Sexi', 'Santa Cruz', 'Cajamarca'),
(60908, 'Uticyacu', 'Santa Cruz', 'Cajamarca'),
(60909, 'Yauyucan', 'Santa Cruz', 'Cajamarca'),
(60910, 'Andabamba', 'Santa Cruz', 'Cajamarca'),
(60911, 'Saucepampa', 'Santa Cruz', 'Cajamarca'),
(61001, 'San Miguel', 'San Miguel', 'Cajamarca'),
(61002, 'Calquis', 'San Miguel', 'Cajamarca'),
(61003, 'La Florida', 'San Miguel', 'Cajamarca'),
(61004, 'Llapa', 'San Miguel', 'Cajamarca'),
(61005, 'Nanchoc', 'San Miguel', 'Cajamarca'),
(61006, 'Niepos', 'San Miguel', 'Cajamarca'),
(61007, 'San Gregorio', 'San Miguel', 'Cajamarca'),
(61008, 'San Silvestre De Cochan', 'San Miguel', 'Cajamarca'),
(61009, 'El Prado', 'San Miguel', 'Cajamarca'),
(61010, 'Union Agua Blanca', 'San Miguel', 'Cajamarca'),
(61011, 'Tongod', 'San Miguel', 'Cajamarca'),
(61012, 'Catilluc', 'San Miguel', 'Cajamarca'),
(61013, 'Bolivar', 'San Miguel', 'Cajamarca'),
(61101, 'San Ignacio', 'San Ignacio', 'Cajamarca'),
(61102, 'Chirinos', 'San Ignacio', 'Cajamarca'),
(61103, 'Huarango', 'San Ignacio', 'Cajamarca'),
(61104, 'Namballe', 'San Ignacio', 'Cajamarca'),
(61105, 'La Coipa', 'San Ignacio', 'Cajamarca'),
(61106, 'San Jose De Lourdes', 'San Ignacio', 'Cajamarca'),
(61107, 'Tabaconas', 'San Ignacio', 'Cajamarca'),
(61201, 'Pedro Galvez', 'San Marcos', 'Cajamarca'),
(61202, 'Ichocan', 'San Marcos', 'Cajamarca'),
(61203, 'Gregorio Pita', 'San Marcos', 'Cajamarca'),
(61204, 'Jose Manuel Quiroz', 'San Marcos', 'Cajamarca'),
(61205, 'Eduardo Villanueva', 'San Marcos', 'Cajamarca'),
(61206, 'Jose Sabogal', 'San Marcos', 'Cajamarca'),
(61207, 'Chancay', 'San Marcos', 'Cajamarca'),
(61301, 'San Pablo', 'San Pablo', 'Cajamarca'),
(61302, 'San Bernardino', 'San Pablo', 'Cajamarca'),
(61303, 'San Luis', 'San Pablo', 'Cajamarca'),
(61304, 'Tumbaden', 'San Pablo', 'Cajamarca'),
(70101, 'Cusco', 'Cusco', 'Cusco'),
(70102, 'Ccorca', 'Cusco', 'Cusco'),
(70103, 'Poroy', 'Cusco', 'Cusco'),
(70104, 'San Jeronimo', 'Cusco', 'Cusco'),
(70105, 'San Sebastian', 'Cusco', 'Cusco'),
(70106, 'Santiago', 'Cusco', 'Cusco'),
(70107, 'Saylla', 'Cusco', 'Cusco'),
(70108, 'Wanchaq', 'Cusco', 'Cusco'),
(70201, 'Acomayo', 'Acomayo', 'Cusco'),
(70202, 'Acopia', 'Acomayo', 'Cusco'),
(70203, 'Acos', 'Acomayo', 'Cusco'),
(70204, 'Pomacanchi', 'Acomayo', 'Cusco'),
(70205, 'Rondocan', 'Acomayo', 'Cusco'),
(70206, 'Sangarara', 'Acomayo', 'Cusco'),
(70207, 'Mosoc Llacta', 'Acomayo', 'Cusco'),
(70301, 'Anta', 'Anta', 'Cusco'),
(70302, 'Chinchaypujio', 'Anta', 'Cusco'),
(70303, 'Huarocondo', 'Anta', 'Cusco'),
(70304, 'Limatambo', 'Anta', 'Cusco'),
(70305, 'Mollepata', 'Anta', 'Cusco'),
(70306, 'Pucyura', 'Anta', 'Cusco'),
(70307, 'Zurite', 'Anta', 'Cusco'),
(70308, 'Cachimayo', 'Anta', 'Cusco'),
(70309, 'Ancahuasi', 'Anta', 'Cusco'),
(70401, 'Calca', 'Calca', 'Cusco'),
(70402, 'Coya', 'Calca', 'Cusco'),
(70403, 'Lamay', 'Calca', 'Cusco'),
(70404, 'Lares', 'Calca', 'Cusco'),
(70405, 'Pisac', 'Calca', 'Cusco'),
(70406, 'San Salvador', 'Calca', 'Cusco'),
(70407, 'Taray', 'Calca', 'Cusco'),
(70408, 'Yanatile', 'Calca', 'Cusco'),
(70501, 'Yanaoca', 'Canas', 'Cusco'),
(70502, 'Checca', 'Canas', 'Cusco'),
(70503, 'Kunturkanki', 'Canas', 'Cusco'),
(70504, 'Langui', 'Canas', 'Cusco'),
(70505, 'Layo', 'Canas', 'Cusco'),
(70506, 'Pampamarca', 'Canas', 'Cusco'),
(70507, 'Quehue', 'Canas', 'Cusco'),
(70508, 'Tupac Amaru', 'Canas', 'Cusco'),
(70601, 'Sicuani', 'Canchis', 'Cusco'),
(70602, 'Combapata', 'Canchis', 'Cusco'),
(70603, 'Checacupe', 'Canchis', 'Cusco'),
(70604, 'Marangani', 'Canchis', 'Cusco'),
(70605, 'Pitumarca', 'Canchis', 'Cusco'),
(70606, 'San Pablo', 'Canchis', 'Cusco'),
(70607, 'San Pedro', 'Canchis', 'Cusco'),
(70608, 'Tinta', 'Canchis', 'Cusco'),
(70701, 'Santo Tomas', 'Chumbivilcas', 'Cusco'),
(70702, 'Capacmarca', 'Chumbivilcas', 'Cusco'),
(70703, 'Colquemarca', 'Chumbivilcas', 'Cusco'),
(70704, 'Chamaca', 'Chumbivilcas', 'Cusco'),
(70705, 'Livitaca', 'Chumbivilcas', 'Cusco'),
(70706, 'Llusco', 'Chumbivilcas', 'Cusco'),
(70707, 'Qui?ota', 'Chumbivilcas', 'Cusco'),
(70708, 'Velille', 'Chumbivilcas', 'Cusco'),
(70801, 'Espinar', 'Espinar', 'Cusco'),
(70802, 'Condoroma', 'Espinar', 'Cusco'),
(70803, 'Coporaque', 'Espinar', 'Cusco'),
(70804, 'Ocoruro', 'Espinar', 'Cusco'),
(70805, 'Pallpata', 'Espinar', 'Cusco'),
(70806, 'Pichigua', 'Espinar', 'Cusco'),
(70807, 'Suyckutambo', 'Espinar', 'Cusco'),
(70808, 'Alto Pichigua', 'Espinar', 'Cusco'),
(70901, 'Santa Ana', 'La Convencion', 'Cusco'),
(70902, 'Echarate', 'La Convencion', 'Cusco'),
(70903, 'Huayopata', 'La Convencion', 'Cusco'),
(70904, 'Maranura', 'La Convencion', 'Cusco'),
(70905, 'Ocobamba', 'La Convencion', 'Cusco'),
(70906, 'Santa Teresa', 'La Convencion', 'Cusco'),
(70907, 'Vilcabamba', 'La Convencion', 'Cusco'),
(70908, 'Quellouno', 'La Convencion', 'Cusco'),
(70909, 'Kimbiri', 'La Convencion', 'Cusco'),
(70910, 'Pichari', 'La Convencion', 'Cusco'),
(71001, 'Paruro', 'Paruro', 'Cusco'),
(71002, 'Accha', 'Paruro', 'Cusco'),
(71003, 'Ccapi', 'Paruro', 'Cusco'),
(71004, 'Colcha', 'Paruro', 'Cusco'),
(71005, 'Huanoquite', 'Paruro', 'Cusco'),
(71006, 'Omacha', 'Paruro', 'Cusco'),
(71007, 'Yaurisque', 'Paruro', 'Cusco'),
(71008, 'Paccaritambo', 'Paruro', 'Cusco'),
(71009, 'Pillpinto', 'Paruro', 'Cusco'),
(71101, 'Paucartambo', 'Paucartambo', 'Cusco'),
(71102, 'Caicay', 'Paucartambo', 'Cusco'),
(71103, 'Colquepata', 'Paucartambo', 'Cusco'),
(71104, 'Challabamba', 'Paucartambo', 'Cusco'),
(71105, 'Kos?ipata', 'Paucartambo', 'Cusco'),
(71106, 'Huancarani', 'Paucartambo', 'Cusco'),
(71201, 'Urcos', 'Quispicanchi', 'Cusco'),
(71202, 'Andahuaylillas', 'Quispicanchi', 'Cusco'),
(71203, 'Camanti', 'Quispicanchi', 'Cusco'),
(71204, 'Ccarhuayo', 'Quispicanchi', 'Cusco'),
(71205, 'Ccatca', 'Quispicanchi', 'Cusco'),
(71206, 'Cusipata', 'Quispicanchi', 'Cusco'),
(71207, 'Huaro', 'Quispicanchi', 'Cusco'),
(71208, 'Lucre', 'Quispicanchi', 'Cusco'),
(71209, 'Marcapata', 'Quispicanchi', 'Cusco'),
(71210, 'Ocongate', 'Quispicanchi', 'Cusco'),
(71211, 'Oropesa', 'Quispicanchi', 'Cusco'),
(71212, 'Quiquijana', 'Quispicanchi', 'Cusco'),
(71301, 'Urubamba', 'Urubamba', 'Cusco'),
(71302, 'Chinchero', 'Urubamba', 'Cusco'),
(71303, 'Huayllabamba', 'Urubamba', 'Cusco'),
(71304, 'Machupicchu', 'Urubamba', 'Cusco'),
(71305, 'Maras', 'Urubamba', 'Cusco'),
(71306, 'Ollantaytambo', 'Urubamba', 'Cusco'),
(71307, 'Yucay', 'Urubamba', 'Cusco'),
(80101, 'Huancavelica', 'Huancavelica', 'Huancavelica'),
(80102, 'Acobambilla', 'Huancavelica', 'Huancavelica'),
(80103, 'Acoria', 'Huancavelica', 'Huancavelica'),
(80104, 'Conayca', 'Huancavelica', 'Huancavelica'),
(80105, 'Cuenca', 'Huancavelica', 'Huancavelica'),
(80106, 'Huachocolpa', 'Huancavelica', 'Huancavelica'),
(80108, 'Huayllahuara', 'Huancavelica', 'Huancavelica'),
(80109, 'Izcuchaca', 'Huancavelica', 'Huancavelica'),
(80110, 'Laria', 'Huancavelica', 'Huancavelica'),
(80111, 'Manta', 'Huancavelica', 'Huancavelica'),
(80112, 'Mariscal Caceres', 'Huancavelica', 'Huancavelica'),
(80113, 'Moya', 'Huancavelica', 'Huancavelica'),
(80114, 'Nuevo Occoro', 'Huancavelica', 'Huancavelica'),
(80115, 'Palca', 'Huancavelica', 'Huancavelica'),
(80116, 'Pilchaca', 'Huancavelica', 'Huancavelica'),
(80117, 'Vilca', 'Huancavelica', 'Huancavelica'),
(80118, 'Yauli', 'Huancavelica', 'Huancavelica'),
(80119, 'Ascension', 'Huancavelica', 'Huancavelica'),
(80120, 'Huando', 'Huancavelica', 'Huancavelica'),
(80201, 'Acobamba', 'Acobamba', 'Huancavelica'),
(80202, 'Anta', 'Acobamba', 'Huancavelica'),
(80203, 'Andabamba', 'Acobamba', 'Huancavelica'),
(80204, 'Caja', 'Acobamba', 'Huancavelica'),
(80205, 'Marcas', 'Acobamba', 'Huancavelica'),
(80206, 'Paucara', 'Acobamba', 'Huancavelica'),
(80207, 'Pomacocha', 'Acobamba', 'Huancavelica'),
(80208, 'Rosario', 'Acobamba', 'Huancavelica'),
(80301, 'Lircay', 'Angaraes', 'Huancavelica'),
(80302, 'Anchonga', 'Angaraes', 'Huancavelica'),
(80303, 'Callanmarca', 'Angaraes', 'Huancavelica'),
(80304, 'Congalla', 'Angaraes', 'Huancavelica'),
(80305, 'Chincho', 'Angaraes', 'Huancavelica'),
(80306, 'Huallay-Grande', 'Angaraes', 'Huancavelica'),
(80307, 'Huanca-Huanca', 'Angaraes', 'Huancavelica'),
(80308, 'Julcamarca', 'Angaraes', 'Huancavelica'),
(80309, 'San Antonio De Antaparco', 'Angaraes', 'Huancavelica'),
(80310, 'Santo Tomas De Pata', 'Angaraes', 'Huancavelica'),
(80311, 'Secclla', 'Angaraes', 'Huancavelica'),
(80312, 'Ccochaccasa', 'Angaraes', 'Huancavelica'),
(80401, 'Castrovirreyna', 'Castrovirreyna', 'Huancavelica'),
(80402, 'Arma', 'Castrovirreyna', 'Huancavelica'),
(80403, 'Aurahua', 'Castrovirreyna', 'Huancavelica'),
(80405, 'Capillas', 'Castrovirreyna', 'Huancavelica'),
(80406, 'Cocas', 'Castrovirreyna', 'Huancavelica'),
(80408, 'Chupamarca', 'Castrovirreyna', 'Huancavelica'),
(80409, 'Huachos', 'Castrovirreyna', 'Huancavelica'),
(80410, 'Huamatambo', 'Castrovirreyna', 'Huancavelica'),
(80414, 'Mollepampa', 'Castrovirreyna', 'Huancavelica'),
(80422, 'San Juan', 'Castrovirreyna', 'Huancavelica'),
(80427, 'Tantara', 'Castrovirreyna', 'Huancavelica'),
(80428, 'Ticrapo', 'Castrovirreyna', 'Huancavelica'),
(80429, 'Santa Ana', 'Castrovirreyna', 'Huancavelica'),
(80501, 'Pampas', 'Tayacaja', 'Huancavelica'),
(80502, 'Acostambo', 'Tayacaja', 'Huancavelica'),
(80503, 'Acraquia', 'Tayacaja', 'Huancavelica'),
(80504, 'Ahuaycha', 'Tayacaja', 'Huancavelica'),
(80506, 'Colcabamba', 'Tayacaja', 'Huancavelica'),
(80509, 'Daniel Hernandez', 'Tayacaja', 'Huancavelica'),
(80511, 'Huachocolpa', 'Tayacaja', 'Huancavelica'),
(80512, 'Huaribamba', 'Tayacaja', 'Huancavelica'),
(80515, '?ahuimpuquio', 'Tayacaja', 'Huancavelica'),
(80517, 'Pazos', 'Tayacaja', 'Huancavelica'),
(80518, 'Quishuar', 'Tayacaja', 'Huancavelica'),
(80519, 'Salcabamba', 'Tayacaja', 'Huancavelica'),
(80520, 'San Marcos De Rocchac', 'Tayacaja', 'Huancavelica'),
(80523, 'Surcubamba', 'Tayacaja', 'Huancavelica'),
(80525, 'Tintay Puncu', 'Tayacaja', 'Huancavelica'),
(80526, 'Salcahuasi', 'Tayacaja', 'Huancavelica'),
(80601, 'Ayavi', 'Huaytara', 'Huancavelica'),
(80602, 'Cordova', 'Huaytara', 'Huancavelica'),
(80603, 'Huayacundo Arma', 'Huaytara', 'Huancavelica'),
(80604, 'Huaytara', 'Huaytara', 'Huancavelica'),
(80605, 'Laramarca', 'Huaytara', 'Huancavelica'),
(80606, 'Ocoyo', 'Huaytara', 'Huancavelica'),
(80607, 'Pilpichaca', 'Huaytara', 'Huancavelica'),
(80608, 'Querco', 'Huaytara', 'Huancavelica'),
(80609, 'Quito Arma', 'Huaytara', 'Huancavelica'),
(80610, 'San Antonio De Cusicancha', 'Huaytara', 'Huancavelica'),
(80611, 'San Francisco De Sangayaico', 'Huaytara', 'Huancavelica'),
(80612, 'San Isidro', 'Huaytara', 'Huancavelica'),
(80613, 'Santiago De Chocorvos', 'Huaytara', 'Huancavelica'),
(80614, 'Santiago De Quirahuara', 'Huaytara', 'Huancavelica'),
(80615, 'Santo Domingo De Capillas', 'Huaytara', 'Huancavelica'),
(80616, 'Tambo', 'Huaytara', 'Huancavelica'),
(80701, 'Churcampa', 'Churcampa', 'Huancavelica'),
(80702, 'Anco', 'Churcampa', 'Huancavelica'),
(80703, 'Chinchihuasi', 'Churcampa', 'Huancavelica'),
(80704, 'El Carmen', 'Churcampa', 'Huancavelica'),
(80705, 'La Merced', 'Churcampa', 'Huancavelica'),
(80706, 'Locroja', 'Churcampa', 'Huancavelica'),
(80707, 'Paucarbamba', 'Churcampa', 'Huancavelica'),
(80708, 'San Miguel De Mayocc', 'Churcampa', 'Huancavelica'),
(80709, 'San Pedro De Coris', 'Churcampa', 'Huancavelica'),
(80710, 'Pachamarca', 'Churcampa', 'Huancavelica'),
(80711, 'Cosme', 'Churcampa', 'Huancavelica'),
(90101, 'Huanuco', 'Huanuco', 'Huanuco'),
(90102, 'Chinchao', 'Huanuco', 'Huanuco'),
(90103, 'Churubamba', 'Huanuco', 'Huanuco'),
(90104, 'Margos', 'Huanuco', 'Huanuco'),
(90105, 'Quisqui', 'Huanuco', 'Huanuco'),
(90106, 'San Francisco De Cayran', 'Huanuco', 'Huanuco'),
(90107, 'San Pedro De Chaulan', 'Huanuco', 'Huanuco'),
(90108, 'Santa Maria Del Valle', 'Huanuco', 'Huanuco'),
(90109, 'Yarumayo', 'Huanuco', 'Huanuco'),
(90110, 'Amarilis', 'Huanuco', 'Huanuco'),
(90111, 'Pillco Marca', 'Huanuco', 'Huanuco'),
(90112, 'Yacus', 'Huanuco', 'Huanuco'),
(90201, 'Ambo', 'Ambo', 'Huanuco'),
(90202, 'Cayna', 'Ambo', 'Huanuco'),
(90203, 'Colpas', 'Ambo', 'Huanuco'),
(90204, 'Conchamarca', 'Ambo', 'Huanuco'),
(90205, 'Huacar', 'Ambo', 'Huanuco'),
(90206, 'San Francisco', 'Ambo', 'Huanuco'),
(90207, 'San Rafael', 'Ambo', 'Huanuco'),
(90208, 'Tomay-Kichwa', 'Ambo', 'Huanuco'),
(90301, 'La Union', 'Dos De Mayo', 'Huanuco'),
(90307, 'Chuquis', 'Dos De Mayo', 'Huanuco'),
(90312, 'Marias', 'Dos De Mayo', 'Huanuco'),
(90314, 'Pachas', 'Dos De Mayo', 'Huanuco'),
(90316, 'Quivilla', 'Dos De Mayo', 'Huanuco'),
(90317, 'Ripan', 'Dos De Mayo', 'Huanuco'),
(90321, 'Shunqui', 'Dos De Mayo', 'Huanuco'),
(90322, 'Sillapata', 'Dos De Mayo', 'Huanuco'),
(90323, 'Yanas', 'Dos De Mayo', 'Huanuco'),
(90401, 'Llata', 'Huamalies', 'Huanuco'),
(90402, 'Arancay', 'Huamalies', 'Huanuco'),
(90403, 'Chavin De Pariarca', 'Huamalies', 'Huanuco'),
(90404, 'Jacas Grande', 'Huamalies', 'Huanuco'),
(90405, 'Jircan', 'Huamalies', 'Huanuco'),
(90406, 'Miraflores', 'Huamalies', 'Huanuco'),
(90407, 'Monzon', 'Huamalies', 'Huanuco'),
(90408, 'Punchao', 'Huamalies', 'Huanuco'),
(90409, 'Pu?os', 'Huamalies', 'Huanuco'),
(90410, 'Singa', 'Huamalies', 'Huanuco'),
(90411, 'Tantamayo', 'Huamalies', 'Huanuco'),
(90501, 'Huacrachuco', 'Mara?on', 'Huanuco'),
(90502, 'Cholon', 'Mara?on', 'Huanuco'),
(90505, 'San Buenaventura', 'Mara?on', 'Huanuco'),
(90601, 'Rupa-Rupa', 'Leoncio Prado', 'Huanuco'),
(90602, 'Daniel Alomia Robles', 'Leoncio Prado', 'Huanuco'),
(90603, 'Hermilio Valdizan', 'Leoncio Prado', 'Huanuco'),
(90604, 'Luyando', 'Leoncio Prado', 'Huanuco'),
(90605, 'Mariano Damaso Beraun', 'Leoncio Prado', 'Huanuco'),
(90606, 'Jose Crespo Y Castillo', 'Leoncio Prado', 'Huanuco'),
(90701, 'Panao', 'Pachitea', 'Huanuco'),
(90702, 'Chaglla', 'Pachitea', 'Huanuco'),
(90704, 'Molino', 'Pachitea', 'Huanuco'),
(90706, 'Umari', 'Pachitea', 'Huanuco'),
(90801, 'Honoria', 'Puerto Inca', 'Huanuco'),
(90802, 'Puerto Inca', 'Puerto Inca', 'Huanuco'),
(90803, 'Codo Del Pozuzo', 'Puerto Inca', 'Huanuco'),
(90804, 'Tournavista', 'Puerto Inca', 'Huanuco'),
(90805, 'Yuyapichis', 'Puerto Inca', 'Huanuco'),
(90901, 'Huacaybamba', 'Huacaybamba', 'Huanuco'),
(90902, 'Pinra', 'Huacaybamba', 'Huanuco'),
(90903, 'Canchabamba', 'Huacaybamba', 'Huanuco'),
(90904, 'Cochabamba', 'Huacaybamba', 'Huanuco'),
(91001, 'Jesus', 'Lauricocha', 'Huanuco'),
(91002, 'Ba?os', 'Lauricocha', 'Huanuco'),
(91003, 'San Francisco De Asis', 'Lauricocha', 'Huanuco'),
(91004, 'Queropalca', 'Lauricocha', 'Huanuco'),
(91005, 'San Miguel De Cauri', 'Lauricocha', 'Huanuco'),
(91006, 'Rondos', 'Lauricocha', 'Huanuco'),
(91007, 'Jivia', 'Lauricocha', 'Huanuco'),
(91101, 'Chavinillo', 'Yarowilca', 'Huanuco'),
(91102, 'Aparicio Pomares', 'Yarowilca', 'Huanuco'),
(91103, 'Cahuac', 'Yarowilca', 'Huanuco'),
(91104, 'Chacabamba', 'Yarowilca', 'Huanuco'),
(91105, 'Jacas Chico', 'Yarowilca', 'Huanuco'),
(91106, 'Obas', 'Yarowilca', 'Huanuco'),
(91107, 'Pampamarca', 'Yarowilca', 'Huanuco'),
(91108, 'Choras', 'Yarowilca', 'Huanuco'),
(100101, 'Ica', 'Ica', 'Ica'),
(100102, 'La Tingui?a', 'Ica', 'Ica'),
(100103, 'Los Aquijes', 'Ica', 'Ica'),
(100104, 'Parcona', 'Ica', 'Ica'),
(100105, 'Pueblo Nuevo', 'Ica', 'Ica'),
(100106, 'Salas', 'Ica', 'Ica'),
(100107, 'San Jose De Los Molinos', 'Ica', 'Ica'),
(100108, 'San Juan Bautista', 'Ica', 'Ica'),
(100109, 'Santiago', 'Ica', 'Ica'),
(100110, 'Subtanjalla', 'Ica', 'Ica'),
(100111, 'Yauca Del Rosario', 'Ica', 'Ica'),
(100112, 'Tate', 'Ica', 'Ica'),
(100113, 'Pachacutec', 'Ica', 'Ica'),
(100114, 'Ocucaje', 'Ica', 'Ica'),
(100201, 'Chincha Alta', 'Chincha', 'Ica'),
(100202, 'Chavin', 'Chincha', 'Ica'),
(100203, 'Chincha Baja', 'Chincha', 'Ica'),
(100204, 'El Carmen', 'Chincha', 'Ica'),
(100205, 'Grocio Prado', 'Chincha', 'Ica'),
(100206, 'San Pedro De Huacarpana', 'Chincha', 'Ica'),
(100207, 'Sunampe', 'Chincha', 'Ica'),
(100208, 'Tambo De Mora', 'Chincha', 'Ica'),
(100209, 'Alto Laran', 'Chincha', 'Ica'),
(100210, 'Pueblo Nuevo', 'Chincha', 'Ica'),
(100211, 'San Juan De Yanac', 'Chincha', 'Ica'),
(100301, 'Nazca', 'Nazca', 'Ica'),
(100302, 'Changuillo', 'Nazca', 'Ica'),
(100303, 'El Ingenio', 'Nazca', 'Ica'),
(100304, 'Marcona', 'Nazca', 'Ica'),
(100305, 'Vista Alegre', 'Nazca', 'Ica'),
(100401, 'Pisco', 'Pisco', 'Ica'),
(100402, 'Huancano', 'Pisco', 'Ica'),
(100403, 'Humay', 'Pisco', 'Ica'),
(100404, 'Independencia', 'Pisco', 'Ica'),
(100405, 'Paracas', 'Pisco', 'Ica'),
(100406, 'San Andres', 'Pisco', 'Ica'),
(100407, 'San Clemente', 'Pisco', 'Ica'),
(100408, 'Tupac Amaru Inca', 'Pisco', 'Ica'),
(100501, 'Palpa', 'Palpa', 'Ica'),
(100502, 'Llipata', 'Palpa', 'Ica'),
(100503, 'Rio Grande', 'Palpa', 'Ica'),
(100504, 'Santa Cruz', 'Palpa', 'Ica'),
(100505, 'Tibillo', 'Palpa', 'Ica'),
(110101, 'Huancayo', 'Huancayo', 'Junin'),
(110103, 'Carhuacallanga', 'Huancayo', 'Junin'),
(110104, 'Colca', 'Huancayo', 'Junin'),
(110105, 'Cullhuas', 'Huancayo', 'Junin'),
(110106, 'Chacapampa', 'Huancayo', 'Junin'),
(110107, 'Chicche', 'Huancayo', 'Junin'),
(110108, 'Chilca', 'Huancayo', 'Junin'),
(110109, 'Chongos Alto', 'Huancayo', 'Junin'),
(110112, 'Chupuro', 'Huancayo', 'Junin'),
(110113, 'El Tambo', 'Huancayo', 'Junin'),
(110114, 'Huacrapuquio', 'Huancayo', 'Junin'),
(110116, 'Hualhuas', 'Huancayo', 'Junin'),
(110118, 'Huancan', 'Huancayo', 'Junin'),
(110119, 'Huasicancha', 'Huancayo', 'Junin'),
(110120, 'Huayucachi', 'Huancayo', 'Junin'),
(110121, 'Ingenio', 'Huancayo', 'Junin'),
(110122, 'Pariahuanca', 'Huancayo', 'Junin'),
(110123, 'Pilcomayo', 'Huancayo', 'Junin'),
(110124, 'Pucara', 'Huancayo', 'Junin'),
(110125, 'Quichuay', 'Huancayo', 'Junin'),
(110126, 'Quilcas', 'Huancayo', 'Junin'),
(110127, 'San Agustin', 'Huancayo', 'Junin'),
(110128, 'San Jeronimo De Tunan', 'Huancayo', 'Junin'),
(110131, 'Santo Domingo De Acobamba', 'Huancayo', 'Junin'),
(110132, 'Sa?o', 'Huancayo', 'Junin'),
(110133, 'Sapallanga', 'Huancayo', 'Junin'),
(110134, 'Sicaya', 'Huancayo', 'Junin'),
(110136, 'Viques', 'Huancayo', 'Junin'),
(110201, 'Concepcion', 'Concepcion', 'Junin'),
(110202, 'Aco', 'Concepcion', 'Junin'),
(110203, 'Andamarca', 'Concepcion', 'Junin'),
(110204, 'Comas', 'Concepcion', 'Junin'),
(110205, 'Cochas', 'Concepcion', 'Junin'),
(110206, 'Chambara', 'Concepcion', 'Junin'),
(110207, 'Heroinas Toledo', 'Concepcion', 'Junin'),
(110208, 'Manzanares', 'Concepcion', 'Junin'),
(110209, 'Mariscal Castilla', 'Concepcion', 'Junin'),
(110210, 'Matahuasi', 'Concepcion', 'Junin'),
(110211, 'Mito', 'Concepcion', 'Junin'),
(110212, 'Nueve De Julio', 'Concepcion', 'Junin'),
(110213, 'Orcotuna', 'Concepcion', 'Junin'),
(110214, 'Santa Rosa De Ocopa', 'Concepcion', 'Junin'),
(110215, 'San Jose De Quero', 'Concepcion', 'Junin'),
(110301, 'Jauja', 'Jauja', 'Junin'),
(110302, 'Acolla', 'Jauja', 'Junin'),
(110303, 'Apata', 'Jauja', 'Junin'),
(110304, 'Ataura', 'Jauja', 'Junin'),
(110305, 'Canchayllo', 'Jauja', 'Junin'),
(110306, 'El Mantaro', 'Jauja', 'Junin'),
(110307, 'Huamali', 'Jauja', 'Junin'),
(110308, 'Huaripampa', 'Jauja', 'Junin'),
(110309, 'Huertas', 'Jauja', 'Junin'),
(110310, 'Janjaillo', 'Jauja', 'Junin'),
(110311, 'Julcan', 'Jauja', 'Junin'),
(110312, 'Leonor Ordo?ez', 'Jauja', 'Junin'),
(110313, 'Llocllapampa', 'Jauja', 'Junin'),
(110314, 'Marco', 'Jauja', 'Junin'),
(110315, 'Masma', 'Jauja', 'Junin'),
(110316, 'Molinos', 'Jauja', 'Junin'),
(110317, 'Monobamba', 'Jauja', 'Junin'),
(110318, 'Muqui', 'Jauja', 'Junin'),
(110319, 'Muquiyauyo', 'Jauja', 'Junin'),
(110320, 'Paca', 'Jauja', 'Junin'),
(110321, 'Paccha', 'Jauja', 'Junin'),
(110322, 'Pancan', 'Jauja', 'Junin'),
(110323, 'Parco', 'Jauja', 'Junin'),
(110324, 'Pomacancha', 'Jauja', 'Junin'),
(110325, 'Ricran', 'Jauja', 'Junin'),
(110326, 'San Lorenzo', 'Jauja', 'Junin'),
(110327, 'San Pedro De Chunan', 'Jauja', 'Junin'),
(110328, 'Sincos', 'Jauja', 'Junin'),
(110329, 'Tunan Marca', 'Jauja', 'Junin'),
(110330, 'Yauli', 'Jauja', 'Junin'),
(110331, 'Curicaca', 'Jauja', 'Junin'),
(110332, 'Masma Chicche', 'Jauja', 'Junin'),
(110333, 'Sausa', 'Jauja', 'Junin'),
(110334, 'Yauyos', 'Jauja', 'Junin'),
(110401, 'Junin', 'Junin', 'Junin'),
(110402, 'Carhuamayo', 'Junin', 'Junin'),
(110403, 'Ondores', 'Junin', 'Junin'),
(110404, 'Ulcumayo', 'Junin', 'Junin'),
(110501, 'Tarma', 'Tarma', 'Junin'),
(110502, 'Acobamba', 'Tarma', 'Junin'),
(110503, 'Huaricolca', 'Tarma', 'Junin'),
(110504, 'Huasahuasi', 'Tarma', 'Junin'),
(110505, 'La Union', 'Tarma', 'Junin'),
(110506, 'Palca', 'Tarma', 'Junin'),
(110507, 'Palcamayo', 'Tarma', 'Junin'),
(110508, 'San Pedro De Cajas', 'Tarma', 'Junin'),
(110509, 'Tapo', 'Tarma', 'Junin'),
(110601, 'La Oroya', 'Yauli', 'Junin'),
(110602, 'Chacapalpa', 'Yauli', 'Junin'),
(110603, 'Huay Huay', 'Yauli', 'Junin'),
(110604, 'Marcapomacocha', 'Yauli', 'Junin'),
(110605, 'Morococha', 'Yauli', 'Junin'),
(110606, 'Paccha', 'Yauli', 'Junin'),
(110607, 'Santa Barbara De Carhuacayan', 'Yauli', 'Junin'),
(110608, 'Suitucancha', 'Yauli', 'Junin'),
(110609, 'Yauli', 'Yauli', 'Junin'),
(110610, 'Santa Rosa De Sacco', 'Yauli', 'Junin'),
(110701, 'Satipo', 'Satipo', 'Junin'),
(110702, 'Coviriali', 'Satipo', 'Junin'),
(110703, 'Llaylla', 'Satipo', 'Junin'),
(110704, 'Mazamari', 'Satipo', 'Junin'),
(110705, 'Pampa Hermosa', 'Satipo', 'Junin'),
(110706, 'Pangoa', 'Satipo', 'Junin'),
(110707, 'Rio Negro', 'Satipo', 'Junin'),
(110708, 'Rio Tambo', 'Satipo', 'Junin'),
(110801, 'Chanchamayo', 'Chanchamayo', 'Junin'),
(110802, 'San Ramon', 'Chanchamayo', 'Junin'),
(110803, 'Vitoc', 'Chanchamayo', 'Junin'),
(110804, 'San Luis De Shuaro', 'Chanchamayo', 'Junin'),
(110805, 'Pichanaqui', 'Chanchamayo', 'Junin'),
(110806, 'Perene', 'Chanchamayo', 'Junin'),
(110901, 'Chupaca', 'Chupaca', 'Junin'),
(110902, 'Ahuac', 'Chupaca', 'Junin'),
(110903, 'Chongos Bajo', 'Chupaca', 'Junin'),
(110904, 'Huachac', 'Chupaca', 'Junin'),
(110905, 'Huamancaca Chico', 'Chupaca', 'Junin'),
(110906, 'San Juan De Yscos', 'Chupaca', 'Junin'),
(110907, 'San Juan De Jarpa', 'Chupaca', 'Junin'),
(110908, 'Tres De Diciembre', 'Chupaca', 'Junin'),
(110909, 'Yanacancha', 'Chupaca', 'Junin'),
(120101, 'Trujillo', 'Trujillo', 'La Libertad'),
(120102, 'Huanchaco', 'Trujillo', 'La Libertad'),
(120103, 'Laredo', 'Trujillo', 'La Libertad'),
(120104, 'Moche', 'Trujillo', 'La Libertad'),
(120105, 'Salaverry', 'Trujillo', 'La Libertad'),
(120106, 'Simbal', 'Trujillo', 'La Libertad'),
(120107, 'Victor Larco Herrera', 'Trujillo', 'La Libertad'),
(120109, 'Poroto', 'Trujillo', 'La Libertad'),
(120110, 'El Porvenir', 'Trujillo', 'La Libertad'),
(120111, 'La Esperanza', 'Trujillo', 'La Libertad'),
(120112, 'Florencia De Mora', 'Trujillo', 'La Libertad'),
(120201, 'Bolivar', 'Bolivar', 'La Libertad'),
(120202, 'Bambamarca', 'Bolivar', 'La Libertad'),
(120203, 'Condormarca', 'Bolivar', 'La Libertad');
INSERT INTO `ubigeo` (`id`, `distrito`, `provincia`, `departamento`) VALUES
(120204, 'Longotea', 'Bolivar', 'La Libertad'),
(120205, 'Ucuncha', 'Bolivar', 'La Libertad'),
(120206, 'Uchumarca', 'Bolivar', 'La Libertad'),
(120301, 'Huamachuco', 'Sanchez Carrion', 'La Libertad'),
(120302, 'Cochorco', 'Sanchez Carrion', 'La Libertad'),
(120303, 'Curgos', 'Sanchez Carrion', 'La Libertad'),
(120304, 'Chugay', 'Sanchez Carrion', 'La Libertad'),
(120305, 'Marcabal', 'Sanchez Carrion', 'La Libertad'),
(120306, 'Sanagoran', 'Sanchez Carrion', 'La Libertad'),
(120307, 'Sarin', 'Sanchez Carrion', 'La Libertad'),
(120308, 'Sartimbamba', 'Sanchez Carrion', 'La Libertad'),
(120401, 'Otuzco', 'Otuzco', 'La Libertad'),
(120402, 'Agallpampa', 'Otuzco', 'La Libertad'),
(120403, 'Charat', 'Otuzco', 'La Libertad'),
(120404, 'Huaranchal', 'Otuzco', 'La Libertad'),
(120405, 'La Cuesta', 'Otuzco', 'La Libertad'),
(120408, 'Paranday', 'Otuzco', 'La Libertad'),
(120409, 'Salpo', 'Otuzco', 'La Libertad'),
(120410, 'Sinsicap', 'Otuzco', 'La Libertad'),
(120411, 'Usquil', 'Otuzco', 'La Libertad'),
(120413, 'Mache', 'Otuzco', 'La Libertad'),
(120501, 'San Pedro De Lloc', 'Pacasmayo', 'La Libertad'),
(120503, 'Guadalupe', 'Pacasmayo', 'La Libertad'),
(120504, 'Jequetepeque', 'Pacasmayo', 'La Libertad'),
(120506, 'Pacasmayo', 'Pacasmayo', 'La Libertad'),
(120508, 'San Jose', 'Pacasmayo', 'La Libertad'),
(120601, 'Tayabamba', 'Pataz', 'La Libertad'),
(120602, 'Buldibuyo', 'Pataz', 'La Libertad'),
(120603, 'Chillia', 'Pataz', 'La Libertad'),
(120604, 'Huaylillas', 'Pataz', 'La Libertad'),
(120605, 'Huancaspata', 'Pataz', 'La Libertad'),
(120606, 'Huayo', 'Pataz', 'La Libertad'),
(120607, 'Ongon', 'Pataz', 'La Libertad'),
(120608, 'Parcoy', 'Pataz', 'La Libertad'),
(120609, 'Pataz', 'Pataz', 'La Libertad'),
(120610, 'Pias', 'Pataz', 'La Libertad'),
(120611, 'Taurija', 'Pataz', 'La Libertad'),
(120612, 'Urpay', 'Pataz', 'La Libertad'),
(120613, 'Santiago De Challas', 'Pataz', 'La Libertad'),
(120701, 'Santiago De Chuco', 'Santiago De Chuco', 'La Libertad'),
(120702, 'Cachicadan', 'Santiago De Chuco', 'La Libertad'),
(120703, 'Mollebamba', 'Santiago De Chuco', 'La Libertad'),
(120704, 'Mollepata', 'Santiago De Chuco', 'La Libertad'),
(120705, 'Quiruvilca', 'Santiago De Chuco', 'La Libertad'),
(120706, 'Santa Cruz De Chuca', 'Santiago De Chuco', 'La Libertad'),
(120707, 'Sitabamba', 'Santiago De Chuco', 'La Libertad'),
(120708, 'Angasmarca', 'Santiago De Chuco', 'La Libertad'),
(120801, 'Ascope', 'Ascope', 'La Libertad'),
(120802, 'Chicama', 'Ascope', 'La Libertad'),
(120803, 'Chocope', 'Ascope', 'La Libertad'),
(120804, 'Santiago De Cao', 'Ascope', 'La Libertad'),
(120805, 'Magdalena De Cao', 'Ascope', 'La Libertad'),
(120806, 'Paijan', 'Ascope', 'La Libertad'),
(120807, 'Razuri', 'Ascope', 'La Libertad'),
(120808, 'Casa Grande', 'Ascope', 'La Libertad'),
(120901, 'Chepen', 'Chepen', 'La Libertad'),
(120902, 'Pacanga', 'Chepen', 'La Libertad'),
(120903, 'Pueblo Nuevo', 'Chepen', 'La Libertad'),
(121001, 'Julcan', 'Julcan', 'La Libertad'),
(121002, 'Carabamba', 'Julcan', 'La Libertad'),
(121003, 'Calamarca', 'Julcan', 'La Libertad'),
(121004, 'Huaso', 'Julcan', 'La Libertad'),
(121101, 'Cascas', 'Gran Chimu', 'La Libertad'),
(121102, 'Lucma', 'Gran Chimu', 'La Libertad'),
(121103, 'Marmot', 'Gran Chimu', 'La Libertad'),
(121104, 'Sayapullo', 'Gran Chimu', 'La Libertad'),
(121201, 'Viru', 'Viru', 'La Libertad'),
(121202, 'Chao', 'Viru', 'La Libertad'),
(121203, 'Guadalupito', 'Viru', 'La Libertad'),
(130101, 'Chiclayo', 'Chiclayo', 'Lambayeque'),
(130102, 'Chongoyape', 'Chiclayo', 'Lambayeque'),
(130103, 'Eten', 'Chiclayo', 'Lambayeque'),
(130104, 'Eten Puerto', 'Chiclayo', 'Lambayeque'),
(130105, 'Lagunas', 'Chiclayo', 'Lambayeque'),
(130106, 'Monsefu', 'Chiclayo', 'Lambayeque'),
(130107, 'Nueva Arica', 'Chiclayo', 'Lambayeque'),
(130108, 'Oyotun', 'Chiclayo', 'Lambayeque'),
(130109, 'Picsi', 'Chiclayo', 'Lambayeque'),
(130110, 'Pimentel', 'Chiclayo', 'Lambayeque'),
(130111, 'Reque', 'Chiclayo', 'Lambayeque'),
(130112, 'Jose Leonardo Ortiz', 'Chiclayo', 'Lambayeque'),
(130113, 'Santa Rosa', 'Chiclayo', 'Lambayeque'),
(130114, 'Sa?a', 'Chiclayo', 'Lambayeque'),
(130115, 'La Victoria', 'Chiclayo', 'Lambayeque'),
(130116, 'Cayalti', 'Chiclayo', 'Lambayeque'),
(130117, 'Patapo', 'Chiclayo', 'Lambayeque'),
(130118, 'Pomalca', 'Chiclayo', 'Lambayeque'),
(130119, 'Pucala', 'Chiclayo', 'Lambayeque'),
(130120, 'Tuman', 'Chiclayo', 'Lambayeque'),
(130201, 'Ferre?afe', 'Ferre?afe', 'Lambayeque'),
(130202, 'Incahuasi', 'Ferre?afe', 'Lambayeque'),
(130203, 'Ca?aris', 'Ferre?afe', 'Lambayeque'),
(130204, 'Pitipo', 'Ferre?afe', 'Lambayeque'),
(130205, 'Pueblo Nuevo', 'Ferre?afe', 'Lambayeque'),
(130206, 'Manuel Antonio Mesones Muro', 'Ferre?afe', 'Lambayeque'),
(130301, 'Lambayeque', 'Lambayeque', 'Lambayeque'),
(130302, 'Chochope', 'Lambayeque', 'Lambayeque'),
(130303, 'Illimo', 'Lambayeque', 'Lambayeque'),
(130304, 'Jayanca', 'Lambayeque', 'Lambayeque'),
(130305, 'Mochumi', 'Lambayeque', 'Lambayeque'),
(130306, 'Morrope', 'Lambayeque', 'Lambayeque'),
(130307, 'Motupe', 'Lambayeque', 'Lambayeque'),
(130308, 'Olmos', 'Lambayeque', 'Lambayeque'),
(130309, 'Pacora', 'Lambayeque', 'Lambayeque'),
(130310, 'Salas', 'Lambayeque', 'Lambayeque'),
(130311, 'San Jose', 'Lambayeque', 'Lambayeque'),
(130312, 'Tucume', 'Lambayeque', 'Lambayeque'),
(140101, 'Lima', 'Lima', 'Lima'),
(140102, 'Ancon', 'Lima', 'Lima'),
(140103, 'Ate', 'Lima', 'Lima'),
(140104, 'Bre?a', 'Lima', 'Lima'),
(140105, 'Carabayllo', 'Lima', 'Lima'),
(140106, 'Comas', 'Lima', 'Lima'),
(140107, 'Chaclacayo', 'Lima', 'Lima'),
(140108, 'Chorrillos', 'Lima', 'Lima'),
(140109, 'La Victoria', 'Lima', 'Lima'),
(140110, 'La Molina', 'Lima', 'Lima'),
(140111, 'Lince', 'Lima', 'Lima'),
(140112, 'Lurigancho', 'Lima', 'Lima'),
(140113, 'Lurin', 'Lima', 'Lima'),
(140114, 'Magdalena Del Mar', 'Lima', 'Lima'),
(140115, 'Miraflores', 'Lima', 'Lima'),
(140116, 'Pachacamac', 'Lima', 'Lima'),
(140117, 'Pueblo Libre', 'Lima', 'Lima'),
(140118, 'Pucusana', 'Lima', 'Lima'),
(140119, 'Puente Piedra', 'Lima', 'Lima'),
(140120, 'Punta Hermosa', 'Lima', 'Lima'),
(140121, 'Punta Negra', 'Lima', 'Lima'),
(140122, 'Rimac', 'Lima', 'Lima'),
(140123, 'San Bartolo', 'Lima', 'Lima'),
(140124, 'San Isidro', 'Lima', 'Lima'),
(140125, 'Barranco', 'Lima', 'Lima'),
(140126, 'San Martin De Porres', 'Lima', 'Lima'),
(140127, 'San Miguel', 'Lima', 'Lima'),
(140128, 'Santa Maria Del Mar', 'Lima', 'Lima'),
(140129, 'Santa Rosa', 'Lima', 'Lima'),
(140130, 'Santiago De Surco', 'Lima', 'Lima'),
(140131, 'Surquillo', 'Lima', 'Lima'),
(140132, 'Villa Maria Del Triunfo', 'Lima', 'Lima'),
(140133, 'Jesus Maria', 'Lima', 'Lima'),
(140134, 'Independencia', 'Lima', 'Lima'),
(140135, 'El Agustino', 'Lima', 'Lima'),
(140136, 'San Juan De Miraflores', 'Lima', 'Lima'),
(140137, 'San Juan De Lurigancho', 'Lima', 'Lima'),
(140138, 'San Luis', 'Lima', 'Lima'),
(140139, 'Cieneguilla', 'Lima', 'Lima'),
(140140, 'San Borja', 'Lima', 'Lima'),
(140141, 'Villa El Salvador', 'Lima', 'Lima'),
(140142, 'Los Olivos', 'Lima', 'Lima'),
(140143, 'Santa Anita', 'Lima', 'Lima'),
(140201, 'Cajatambo', 'Cajatambo', 'Lima'),
(140205, 'Copa', 'Cajatambo', 'Lima'),
(140206, 'Gorgor', 'Cajatambo', 'Lima'),
(140207, 'Huancapon', 'Cajatambo', 'Lima'),
(140208, 'Manas', 'Cajatambo', 'Lima'),
(140301, 'Canta', 'Canta', 'Lima'),
(140302, 'Arahuay', 'Canta', 'Lima'),
(140303, 'Huamantanga', 'Canta', 'Lima'),
(140304, 'Huaros', 'Canta', 'Lima'),
(140305, 'Lachaqui', 'Canta', 'Lima'),
(140306, 'San Buenaventura', 'Canta', 'Lima'),
(140307, 'Santa Rosa De Quives', 'Canta', 'Lima'),
(140401, 'San Vicente De Ca?ete', 'Ca?ete', 'Lima'),
(140402, 'Calango', 'Ca?ete', 'Lima'),
(140403, 'Cerro Azul', 'Ca?ete', 'Lima'),
(140404, 'Coayllo', 'Ca?ete', 'Lima'),
(140405, 'Chilca', 'Ca?ete', 'Lima'),
(140406, 'Imperial', 'Ca?ete', 'Lima'),
(140407, 'Lunahuana', 'Ca?ete', 'Lima'),
(140408, 'Mala', 'Ca?ete', 'Lima'),
(140409, 'Nuevo Imperial', 'Ca?ete', 'Lima'),
(140410, 'Pacaran', 'Ca?ete', 'Lima'),
(140411, 'Quilmana', 'Ca?ete', 'Lima'),
(140412, 'San Antonio', 'Ca?ete', 'Lima'),
(140413, 'San Luis', 'Ca?ete', 'Lima'),
(140414, 'Santa Cruz De Flores', 'Ca?ete', 'Lima'),
(140415, 'Zu?iga', 'Ca?ete', 'Lima'),
(140416, 'Asia', 'Ca?ete', 'Lima'),
(140501, 'Huacho', 'Huaura', 'Lima'),
(140502, 'Ambar', 'Huaura', 'Lima'),
(140504, 'Caleta De Carquin', 'Huaura', 'Lima'),
(140505, 'Checras', 'Huaura', 'Lima'),
(140506, 'Hualmay', 'Huaura', 'Lima'),
(140507, 'Huaura', 'Huaura', 'Lima'),
(140508, 'Leoncio Prado', 'Huaura', 'Lima'),
(140509, 'Paccho', 'Huaura', 'Lima'),
(140511, 'Santa Leonor', 'Huaura', 'Lima'),
(140512, 'Santa Maria', 'Huaura', 'Lima'),
(140513, 'Sayan', 'Huaura', 'Lima'),
(140516, 'Vegueta', 'Huaura', 'Lima'),
(140601, 'Matucana', 'Huarochiri', 'Lima'),
(140602, 'Antioquia', 'Huarochiri', 'Lima'),
(140603, 'Callahuanca', 'Huarochiri', 'Lima'),
(140604, 'Carampoma', 'Huarochiri', 'Lima'),
(140605, 'Casta', 'Huarochiri', 'Lima'),
(140606, 'San Jose De Los Chorrillos', 'Huarochiri', 'Lima'),
(140607, 'Chicla', 'Huarochiri', 'Lima'),
(140608, 'Huanza', 'Huarochiri', 'Lima'),
(140609, 'Huarochiri', 'Huarochiri', 'Lima'),
(140610, 'Lahuaytambo', 'Huarochiri', 'Lima'),
(140611, 'Langa', 'Huarochiri', 'Lima'),
(140612, 'Mariatana', 'Huarochiri', 'Lima'),
(140613, 'Ricardo Palma', 'Huarochiri', 'Lima'),
(140614, 'San Andres De Tupicocha', 'Huarochiri', 'Lima'),
(140615, 'San Antonio', 'Huarochiri', 'Lima'),
(140616, 'San Bartolome', 'Huarochiri', 'Lima'),
(140617, 'San Damian', 'Huarochiri', 'Lima'),
(140618, 'Sangallaya', 'Huarochiri', 'Lima'),
(140619, 'San Juan De Tantaranche', 'Huarochiri', 'Lima'),
(140620, 'San Lorenzo De Quinti', 'Huarochiri', 'Lima'),
(140621, 'San Mateo', 'Huarochiri', 'Lima'),
(140622, 'San Mateo De Otao', 'Huarochiri', 'Lima'),
(140623, 'San Pedro De Huancayre', 'Huarochiri', 'Lima'),
(140624, 'Santa Cruz De Cocachacra', 'Huarochiri', 'Lima'),
(140625, 'Santa Eulalia', 'Huarochiri', 'Lima'),
(140626, 'Santiago De Anchucaya', 'Huarochiri', 'Lima'),
(140627, 'Santiago De Tuna', 'Huarochiri', 'Lima'),
(140628, 'Santo Domingo De Los Olleros', 'Huarochiri', 'Lima'),
(140629, 'Surco', 'Huarochiri', 'Lima'),
(140630, 'Huachupampa', 'Huarochiri', 'Lima'),
(140631, 'Laraos', 'Huarochiri', 'Lima'),
(140632, 'San Juan De Iris', 'Huarochiri', 'Lima'),
(140701, 'Yauyos', 'Yauyos', 'Lima'),
(140702, 'Alis', 'Yauyos', 'Lima'),
(140703, 'Allauca', 'Yauyos', 'Lima'),
(140704, 'Ayaviri', 'Yauyos', 'Lima'),
(140705, 'Azangaro', 'Yauyos', 'Lima'),
(140706, 'Cacra', 'Yauyos', 'Lima'),
(140707, 'Carania', 'Yauyos', 'Lima'),
(140708, 'Cochas', 'Yauyos', 'Lima'),
(140709, 'Colonia', 'Yauyos', 'Lima'),
(140710, 'Chocos', 'Yauyos', 'Lima'),
(140711, 'Huampara', 'Yauyos', 'Lima'),
(140712, 'Huancaya', 'Yauyos', 'Lima'),
(140713, 'Huangascar', 'Yauyos', 'Lima'),
(140714, 'Huantan', 'Yauyos', 'Lima'),
(140715, 'Hua?ec', 'Yauyos', 'Lima'),
(140716, 'Laraos', 'Yauyos', 'Lima'),
(140717, 'Lincha', 'Yauyos', 'Lima'),
(140718, 'Miraflores', 'Yauyos', 'Lima'),
(140719, 'Omas', 'Yauyos', 'Lima'),
(140720, 'Quinches', 'Yauyos', 'Lima'),
(140721, 'Quinocay', 'Yauyos', 'Lima'),
(140722, 'San Joaquin', 'Yauyos', 'Lima'),
(140723, 'San Pedro De Pilas', 'Yauyos', 'Lima'),
(140724, 'Tanta', 'Yauyos', 'Lima'),
(140725, 'Tauripampa', 'Yauyos', 'Lima'),
(140726, 'Tupe', 'Yauyos', 'Lima'),
(140727, 'Tomas', 'Yauyos', 'Lima'),
(140728, 'Vi?ac', 'Yauyos', 'Lima'),
(140729, 'Vitis', 'Yauyos', 'Lima'),
(140730, 'Hongos', 'Yauyos', 'Lima'),
(140731, 'Madean', 'Yauyos', 'Lima'),
(140732, 'Putinza', 'Yauyos', 'Lima'),
(140733, 'Catahuasi', 'Yauyos', 'Lima'),
(140801, 'Huaral', 'Huaral', 'Lima'),
(140802, 'Atavillos Alto', 'Huaral', 'Lima'),
(140803, 'Atavillos Bajo', 'Huaral', 'Lima'),
(140804, 'Aucallama', 'Huaral', 'Lima'),
(140805, 'Chancay', 'Huaral', 'Lima'),
(140806, 'Ihuari', 'Huaral', 'Lima'),
(140807, 'Lampian', 'Huaral', 'Lima'),
(140808, 'Pacaraos', 'Huaral', 'Lima'),
(140809, 'San Miguel De Acos', 'Huaral', 'Lima'),
(140810, 'Veintisiete De Noviembre', 'Huaral', 'Lima'),
(140811, 'Santa Cruz De Andamarca', 'Huaral', 'Lima'),
(140812, 'Sumbilca', 'Huaral', 'Lima'),
(140901, 'Barranca', 'Barranca', 'Lima'),
(140902, 'Paramonga', 'Barranca', 'Lima'),
(140903, 'Pativilca', 'Barranca', 'Lima'),
(140904, 'Supe', 'Barranca', 'Lima'),
(140905, 'Supe Puerto', 'Barranca', 'Lima'),
(141001, 'Oyon', 'Oyon', 'Lima'),
(141002, 'Navan', 'Oyon', 'Lima'),
(141003, 'Caujul', 'Oyon', 'Lima'),
(141004, 'Andajes', 'Oyon', 'Lima'),
(141005, 'Pachangara', 'Oyon', 'Lima'),
(141006, 'Cochamarca', 'Oyon', 'Lima'),
(150101, 'Iquitos', 'Maynas', 'Loreto'),
(150102, 'Alto Nanay', 'Maynas', 'Loreto'),
(150103, 'Fernando Lores', 'Maynas', 'Loreto'),
(150104, 'Las Amazonas', 'Maynas', 'Loreto'),
(150105, 'Mazan', 'Maynas', 'Loreto'),
(150106, 'Napo', 'Maynas', 'Loreto'),
(150107, 'Putumayo', 'Maynas', 'Loreto'),
(150108, 'Torres Causana', 'Maynas', 'Loreto'),
(150110, 'Indiana', 'Maynas', 'Loreto'),
(150111, 'Punchana', 'Maynas', 'Loreto'),
(150112, 'Belen', 'Maynas', 'Loreto'),
(150113, 'San Juan Bautista', 'Maynas', 'Loreto'),
(150114, 'Teniente Manuel Clavero', 'Maynas', 'Loreto'),
(150201, 'Yurimaguas', 'Alto Amazonas', 'Loreto'),
(150202, 'Balsapuerto', 'Alto Amazonas', 'Loreto'),
(150205, 'Jeberos', 'Alto Amazonas', 'Loreto'),
(150206, 'Lagunas', 'Alto Amazonas', 'Loreto'),
(150210, 'Santa Cruz', 'Alto Amazonas', 'Loreto'),
(150211, 'Teniente Cesar Lopez Rojas', 'Alto Amazonas', 'Loreto'),
(150301, 'Nauta', 'Loreto', 'Loreto'),
(150302, 'Parinari', 'Loreto', 'Loreto'),
(150303, 'Tigre', 'Loreto', 'Loreto'),
(150304, 'Urarinas', 'Loreto', 'Loreto'),
(150305, 'Trompeteros', 'Loreto', 'Loreto'),
(150401, 'Requena', 'Requena', 'Loreto'),
(150402, 'Alto Tapiche', 'Requena', 'Loreto'),
(150403, 'Capelo', 'Requena', 'Loreto'),
(150404, 'Emilio San Martin', 'Requena', 'Loreto'),
(150405, 'Maquia', 'Requena', 'Loreto'),
(150406, 'Puinahua', 'Requena', 'Loreto'),
(150407, 'Saquena', 'Requena', 'Loreto'),
(150408, 'Soplin', 'Requena', 'Loreto'),
(150409, 'Tapiche', 'Requena', 'Loreto'),
(150410, 'Jenaro Herrera', 'Requena', 'Loreto'),
(150411, 'Yaquerana', 'Requena', 'Loreto'),
(150501, 'Contamana', 'Ucayali', 'Loreto'),
(150502, 'Vargas Guerra', 'Ucayali', 'Loreto'),
(150503, 'Padre Marquez', 'Ucayali', 'Loreto'),
(150504, 'Pampa Hermosa', 'Ucayali', 'Loreto'),
(150505, 'Sarayacu', 'Ucayali', 'Loreto'),
(150506, 'Inahuaya', 'Ucayali', 'Loreto'),
(150601, 'Ramon Castilla', 'Mariscal Ramon Castilla', 'Loreto'),
(150602, 'Pebas', 'Mariscal Ramon Castilla', 'Loreto'),
(150603, 'Yavari', 'Mariscal Ramon Castilla', 'Loreto'),
(150604, 'San Pablo', 'Mariscal Ramon Castilla', 'Loreto'),
(150701, 'Barranca', 'Datem Del Mara?on', 'Loreto'),
(150702, 'Andoas', 'Datem Del Mara?on', 'Loreto'),
(150703, 'Cahuapanas', 'Datem Del Mara?on', 'Loreto'),
(150704, 'Manseriche', 'Datem Del Mara?on', 'Loreto'),
(150705, 'Morona', 'Datem Del Mara?on', 'Loreto'),
(150706, 'Pastaza', 'Datem Del Mara?on', 'Loreto'),
(160101, 'Tambopata', 'Tambopata', 'Madre De Dios'),
(160102, 'Inambari', 'Tambopata', 'Madre De Dios'),
(160103, 'Las Piedras', 'Tambopata', 'Madre De Dios'),
(160104, 'Laberinto', 'Tambopata', 'Madre De Dios'),
(160201, 'Manu', 'Manu', 'Madre De Dios'),
(160202, 'Fitzcarrald', 'Manu', 'Madre De Dios'),
(160203, 'Madre De Dios', 'Manu', 'Madre De Dios'),
(160204, 'Huepetuhe', 'Manu', 'Madre De Dios'),
(160301, 'I?apari', 'Tahuamanu', 'Madre De Dios'),
(160302, 'Iberia', 'Tahuamanu', 'Madre De Dios'),
(160303, 'Tahuamanu', 'Tahuamanu', 'Madre De Dios'),
(170101, 'Moquegua', 'Mariscal Nieto', 'Moquegua'),
(170102, 'Carumas', 'Mariscal Nieto', 'Moquegua'),
(170103, 'Cuchumbaya', 'Mariscal Nieto', 'Moquegua'),
(170104, 'San Cristobal', 'Mariscal Nieto', 'Moquegua'),
(170105, 'Torata', 'Mariscal Nieto', 'Moquegua'),
(170106, 'Samegua', 'Mariscal Nieto', 'Moquegua'),
(170201, 'Omate', 'General Sanchez Cerro', 'Moquegua'),
(170202, 'Coalaque', 'General Sanchez Cerro', 'Moquegua'),
(170203, 'Chojata', 'General Sanchez Cerro', 'Moquegua'),
(170204, 'Ichu?a', 'General Sanchez Cerro', 'Moquegua'),
(170205, 'La Capilla', 'General Sanchez Cerro', 'Moquegua'),
(170206, 'Lloque', 'General Sanchez Cerro', 'Moquegua'),
(170207, 'Matalaque', 'General Sanchez Cerro', 'Moquegua'),
(170208, 'Puquina', 'General Sanchez Cerro', 'Moquegua'),
(170209, 'Quinistaquillas', 'General Sanchez Cerro', 'Moquegua'),
(170210, 'Ubinas', 'General Sanchez Cerro', 'Moquegua'),
(170211, 'Yunga', 'General Sanchez Cerro', 'Moquegua'),
(170301, 'Ilo', 'Ilo', 'Moquegua'),
(170302, 'El Algarrobal', 'Ilo', 'Moquegua'),
(170303, 'Pacocha', 'Ilo', 'Moquegua'),
(180101, 'Chaupimarca', 'Pasco', 'Pasco'),
(180103, 'Huachon', 'Pasco', 'Pasco'),
(180104, 'Huariaca', 'Pasco', 'Pasco'),
(180105, 'Huayllay', 'Pasco', 'Pasco'),
(180106, 'Ninacaca', 'Pasco', 'Pasco'),
(180107, 'Pallanchacra', 'Pasco', 'Pasco'),
(180108, 'Paucartambo', 'Pasco', 'Pasco'),
(180109, 'San Francisco De Asis De Yarusyacan', 'Pasco', 'Pasco'),
(180110, 'Simon Bolivar', 'Pasco', 'Pasco'),
(180111, 'Ticlacayan', 'Pasco', 'Pasco'),
(180112, 'Tinyahuarco', 'Pasco', 'Pasco'),
(180113, 'Vicco', 'Pasco', 'Pasco'),
(180114, 'Yanacancha', 'Pasco', 'Pasco'),
(180201, 'Yanahuanca', 'Daniel Alcides Carrion', 'Pasco'),
(180202, 'Chacayan', 'Daniel Alcides Carrion', 'Pasco'),
(180203, 'Goyllarisquizga', 'Daniel Alcides Carrion', 'Pasco'),
(180204, 'Paucar', 'Daniel Alcides Carrion', 'Pasco'),
(180205, 'San Pedro De Pillao', 'Daniel Alcides Carrion', 'Pasco'),
(180206, 'Santa Ana De Tusi', 'Daniel Alcides Carrion', 'Pasco'),
(180207, 'Tapuc', 'Daniel Alcides Carrion', 'Pasco'),
(180208, 'Vilcabamba', 'Daniel Alcides Carrion', 'Pasco'),
(180301, 'Oxapampa', 'Oxapampa', 'Pasco'),
(180302, 'Chontabamba', 'Oxapampa', 'Pasco'),
(180303, 'Huancabamba', 'Oxapampa', 'Pasco'),
(180304, 'Puerto Bermudez', 'Oxapampa', 'Pasco'),
(180305, 'Villa Rica', 'Oxapampa', 'Pasco'),
(180306, 'Pozuzo', 'Oxapampa', 'Pasco'),
(180307, 'Palcazu', 'Oxapampa', 'Pasco'),
(180308, 'Constitucion', 'Oxapampa', 'Pasco'),
(190101, 'Piura', 'Piura', 'Piura'),
(190103, 'Castilla', 'Piura', 'Piura'),
(190104, 'Catacaos', 'Piura', 'Piura'),
(190105, 'La Arena', 'Piura', 'Piura'),
(190106, 'La Union', 'Piura', 'Piura'),
(190107, 'Las Lomas', 'Piura', 'Piura'),
(190109, 'Tambo Grande', 'Piura', 'Piura'),
(190113, 'Cura Mori', 'Piura', 'Piura'),
(190114, 'El Tallan', 'Piura', 'Piura'),
(190201, 'Ayabaca', 'Ayabaca', 'Piura'),
(190202, 'Frias', 'Ayabaca', 'Piura'),
(190203, 'Lagunas', 'Ayabaca', 'Piura'),
(190204, 'Montero', 'Ayabaca', 'Piura'),
(190205, 'Pacaipampa', 'Ayabaca', 'Piura'),
(190206, 'Sapillica', 'Ayabaca', 'Piura'),
(190207, 'Sicchez', 'Ayabaca', 'Piura'),
(190208, 'Suyo', 'Ayabaca', 'Piura'),
(190209, 'Jilili', 'Ayabaca', 'Piura'),
(190210, 'Paimas', 'Ayabaca', 'Piura'),
(190301, 'Huancabamba', 'Huancabamba', 'Piura'),
(190302, 'Canchaque', 'Huancabamba', 'Piura'),
(190303, 'Huarmaca', 'Huancabamba', 'Piura'),
(190304, 'Sondor', 'Huancabamba', 'Piura'),
(190305, 'Sondorillo', 'Huancabamba', 'Piura'),
(190306, 'El Carmen De La Frontera', 'Huancabamba', 'Piura'),
(190307, 'San Miguel De El Faique', 'Huancabamba', 'Piura'),
(190308, 'Lalaquiz', 'Huancabamba', 'Piura'),
(190401, 'Chulucanas', 'Morropon', 'Piura'),
(190402, 'Buenos Aires', 'Morropon', 'Piura'),
(190403, 'Chalaco', 'Morropon', 'Piura'),
(190404, 'Morropon', 'Morropon', 'Piura'),
(190405, 'Salitral', 'Morropon', 'Piura'),
(190406, 'Santa Catalina De Mossa', 'Morropon', 'Piura'),
(190407, 'Santo Domingo', 'Morropon', 'Piura'),
(190408, 'La Matanza', 'Morropon', 'Piura'),
(190409, 'Yamango', 'Morropon', 'Piura'),
(190410, 'San Juan De Bigote', 'Morropon', 'Piura'),
(190501, 'Paita', 'Paita', 'Piura'),
(190502, 'Amotape', 'Paita', 'Piura'),
(190503, 'Arenal', 'Paita', 'Piura'),
(190504, 'La Huaca', 'Paita', 'Piura'),
(190505, 'Colan', 'Paita', 'Piura'),
(190506, 'Tamarindo', 'Paita', 'Piura'),
(190507, 'Vichayal', 'Paita', 'Piura'),
(190601, 'Sullana', 'Sullana', 'Piura'),
(190602, 'Bellavista', 'Sullana', 'Piura'),
(190603, 'Lancones', 'Sullana', 'Piura'),
(190604, 'Marcavelica', 'Sullana', 'Piura'),
(190605, 'Miguel Checa', 'Sullana', 'Piura'),
(190606, 'Querecotillo', 'Sullana', 'Piura'),
(190607, 'Salitral', 'Sullana', 'Piura'),
(190608, 'Ignacio Escudero', 'Sullana', 'Piura'),
(190701, 'Pari?as', 'Talara', 'Piura'),
(190702, 'El Alto', 'Talara', 'Piura'),
(190703, 'La Brea', 'Talara', 'Piura'),
(190704, 'Lobitos', 'Talara', 'Piura'),
(190705, 'Mancora', 'Talara', 'Piura'),
(190706, 'Los Organos', 'Talara', 'Piura'),
(190801, 'Sechura', 'Sechura', 'Piura'),
(190802, 'Vice', 'Sechura', 'Piura'),
(190803, 'Bernal', 'Sechura', 'Piura'),
(190804, 'Bellavista De La Union', 'Sechura', 'Piura'),
(190805, 'Cristo Nos Valga', 'Sechura', 'Piura'),
(190806, 'Rinconada-Llicuar', 'Sechura', 'Piura'),
(200101, 'Puno', 'Puno', 'Puno'),
(200102, 'Acora', 'Puno', 'Puno'),
(200103, 'Atuncolla', 'Puno', 'Puno'),
(200104, 'Capachica', 'Puno', 'Puno'),
(200105, 'Coata', 'Puno', 'Puno'),
(200106, 'Chucuito', 'Puno', 'Puno'),
(200107, 'Huata', 'Puno', 'Puno'),
(200108, 'Ma?azo', 'Puno', 'Puno'),
(200109, 'Paucarcolla', 'Puno', 'Puno'),
(200110, 'Pichacani', 'Puno', 'Puno'),
(200111, 'San Antonio', 'Puno', 'Puno'),
(200112, 'Tiquillaca', 'Puno', 'Puno'),
(200113, 'Vilque', 'Puno', 'Puno'),
(200114, 'Plateria', 'Puno', 'Puno'),
(200115, 'Amantani', 'Puno', 'Puno'),
(200201, 'Azangaro', 'Azangaro', 'Puno'),
(200202, 'Achaya', 'Azangaro', 'Puno'),
(200203, 'Arapa', 'Azangaro', 'Puno'),
(200204, 'Asillo', 'Azangaro', 'Puno'),
(200205, 'Caminaca', 'Azangaro', 'Puno'),
(200206, 'Chupa', 'Azangaro', 'Puno'),
(200207, 'Jose Domingo Choquehuanca', 'Azangaro', 'Puno'),
(200208, 'Mu?ani', 'Azangaro', 'Puno'),
(200210, 'Potoni', 'Azangaro', 'Puno'),
(200212, 'Saman', 'Azangaro', 'Puno'),
(200213, 'San Anton', 'Azangaro', 'Puno'),
(200214, 'San Jose', 'Azangaro', 'Puno'),
(200215, 'San Juan De Salinas', 'Azangaro', 'Puno'),
(200216, 'Santiago De Pupuja', 'Azangaro', 'Puno'),
(200217, 'Tirapata', 'Azangaro', 'Puno'),
(200301, 'Macusani', 'Carabaya', 'Puno'),
(200302, 'Ajoyani', 'Carabaya', 'Puno'),
(200303, 'Ayapata', 'Carabaya', 'Puno'),
(200304, 'Coasa', 'Carabaya', 'Puno'),
(200305, 'Corani', 'Carabaya', 'Puno'),
(200306, 'Crucero', 'Carabaya', 'Puno'),
(200307, 'Ituata', 'Carabaya', 'Puno'),
(200308, 'Ollachea', 'Carabaya', 'Puno'),
(200309, 'San Gaban', 'Carabaya', 'Puno'),
(200310, 'Usicayos', 'Carabaya', 'Puno'),
(200401, 'Juli', 'Chucuito', 'Puno'),
(200402, 'Desaguadero', 'Chucuito', 'Puno'),
(200403, 'Huacullani', 'Chucuito', 'Puno'),
(200406, 'Pisacoma', 'Chucuito', 'Puno'),
(200407, 'Pomata', 'Chucuito', 'Puno'),
(200410, 'Zepita', 'Chucuito', 'Puno'),
(200412, 'Kelluyo', 'Chucuito', 'Puno'),
(200501, 'Huancane', 'Huancane', 'Puno'),
(200502, 'Cojata', 'Huancane', 'Puno'),
(200504, 'Inchupalla', 'Huancane', 'Puno'),
(200506, 'Pusi', 'Huancane', 'Puno'),
(200507, 'Rosaspata', 'Huancane', 'Puno'),
(200508, 'Taraco', 'Huancane', 'Puno'),
(200509, 'Vilque Chico', 'Huancane', 'Puno'),
(200511, 'Huatasani', 'Huancane', 'Puno'),
(200601, 'Lampa', 'Lampa', 'Puno'),
(200602, 'Cabanilla', 'Lampa', 'Puno'),
(200603, 'Calapuja', 'Lampa', 'Puno'),
(200604, 'Nicasio', 'Lampa', 'Puno'),
(200605, 'Ocuviri', 'Lampa', 'Puno'),
(200606, 'Palca', 'Lampa', 'Puno'),
(200607, 'Paratia', 'Lampa', 'Puno'),
(200608, 'Pucara', 'Lampa', 'Puno'),
(200609, 'Santa Lucia', 'Lampa', 'Puno'),
(200610, 'Vilavila', 'Lampa', 'Puno'),
(200701, 'Ayaviri', 'Melgar', 'Puno'),
(200702, 'Antauta', 'Melgar', 'Puno'),
(200703, 'Cupi', 'Melgar', 'Puno'),
(200704, 'Llalli', 'Melgar', 'Puno'),
(200705, 'Macari', 'Melgar', 'Puno'),
(200706, 'Nu?oa', 'Melgar', 'Puno'),
(200707, 'Orurillo', 'Melgar', 'Puno'),
(200708, 'Santa Rosa', 'Melgar', 'Puno'),
(200709, 'Umachiri', 'Melgar', 'Puno'),
(200801, 'Sandia', 'Sandia', 'Puno'),
(200803, 'Cuyocuyo', 'Sandia', 'Puno'),
(200804, 'Limbani', 'Sandia', 'Puno'),
(200805, 'Phara', 'Sandia', 'Puno'),
(200806, 'Patambuco', 'Sandia', 'Puno'),
(200807, 'Quiaca', 'Sandia', 'Puno'),
(200808, 'San Juan Del Oro', 'Sandia', 'Puno'),
(200810, 'Yanahuaya', 'Sandia', 'Puno'),
(200811, 'Alto Inambari', 'Sandia', 'Puno'),
(200812, 'San Pedro De Putina Punco', 'Sandia', 'Puno'),
(200901, 'Juliaca', 'San Roman', 'Puno'),
(200902, 'Cabana', 'San Roman', 'Puno'),
(200903, 'Cabanillas', 'San Roman', 'Puno'),
(200904, 'Caracoto', 'San Roman', 'Puno'),
(201001, 'Yunguyo', 'Yunguyo', 'Puno'),
(201002, 'Unicachi', 'Yunguyo', 'Puno'),
(201003, 'Anapia', 'Yunguyo', 'Puno'),
(201004, 'Copani', 'Yunguyo', 'Puno'),
(201005, 'Cuturapi', 'Yunguyo', 'Puno'),
(201006, 'Ollaraya', 'Yunguyo', 'Puno'),
(201007, 'Tinicachi', 'Yunguyo', 'Puno'),
(201101, 'Putina', 'San Antonio De Putina', 'Puno'),
(201102, 'Pedro Vilca Apaza', 'San Antonio De Putina', 'Puno'),
(201103, 'Quilcapuncu', 'San Antonio De Putina', 'Puno'),
(201104, 'Ananea', 'San Antonio De Putina', 'Puno'),
(201105, 'Sina', 'San Antonio De Putina', 'Puno'),
(201201, 'Ilave', 'El Collao', 'Puno'),
(201202, 'Pilcuyo', 'El Collao', 'Puno'),
(201203, 'Santa Rosa', 'El Collao', 'Puno'),
(201204, 'Capaso', 'El Collao', 'Puno'),
(201205, 'Conduriri', 'El Collao', 'Puno'),
(201301, 'Moho', 'Moho', 'Puno'),
(201302, 'Conima', 'Moho', 'Puno'),
(201303, 'Tilali', 'Moho', 'Puno'),
(201304, 'Huayrapata', 'Moho', 'Puno'),
(210101, 'Moyobamba', 'Moyobamba', 'San Martin'),
(210102, 'Calzada', 'Moyobamba', 'San Martin'),
(210103, 'Habana', 'Moyobamba', 'San Martin'),
(210104, 'Jepelacio', 'Moyobamba', 'San Martin'),
(210105, 'Soritor', 'Moyobamba', 'San Martin'),
(210106, 'Yantalo', 'Moyobamba', 'San Martin'),
(210201, 'Saposoa', 'Huallaga', 'San Martin'),
(210202, 'Piscoyacu', 'Huallaga', 'San Martin'),
(210203, 'Sacanche', 'Huallaga', 'San Martin'),
(210204, 'Tingo De Saposoa', 'Huallaga', 'San Martin'),
(210205, 'Alto Saposoa', 'Huallaga', 'San Martin'),
(210206, 'El Eslabon', 'Huallaga', 'San Martin'),
(210301, 'Lamas', 'Lamas', 'San Martin'),
(210303, 'Barranquita', 'Lamas', 'San Martin'),
(210304, 'Caynarachi', 'Lamas', 'San Martin'),
(210305, 'Cu?umbuqui', 'Lamas', 'San Martin'),
(210306, 'Pinto Recodo', 'Lamas', 'San Martin'),
(210307, 'Rumisapa', 'Lamas', 'San Martin'),
(210311, 'Shanao', 'Lamas', 'San Martin'),
(210313, 'Tabalosos', 'Lamas', 'San Martin'),
(210314, 'Zapatero', 'Lamas', 'San Martin'),
(210315, 'Alonso De Alvarado', 'Lamas', 'San Martin'),
(210316, 'San Roque De Cumbaza', 'Lamas', 'San Martin'),
(210401, 'Juanjui', 'Mariscal Caceres', 'San Martin'),
(210402, 'Campanilla', 'Mariscal Caceres', 'San Martin'),
(210403, 'Huicungo', 'Mariscal Caceres', 'San Martin'),
(210404, 'Pachiza', 'Mariscal Caceres', 'San Martin'),
(210405, 'Pajarillo', 'Mariscal Caceres', 'San Martin'),
(210501, 'Rioja', 'Rioja', 'San Martin'),
(210502, 'Posic', 'Rioja', 'San Martin'),
(210503, 'Yorongos', 'Rioja', 'San Martin'),
(210504, 'Yuracyacu', 'Rioja', 'San Martin'),
(210505, 'Nueva Cajamarca', 'Rioja', 'San Martin'),
(210506, 'Elias Soplin Vargas', 'Rioja', 'San Martin'),
(210507, 'San Fernando', 'Rioja', 'San Martin'),
(210508, 'Pardo Miguel', 'Rioja', 'San Martin'),
(210509, 'Awajun', 'Rioja', 'San Martin'),
(210601, 'Tarapoto', 'San Martin', 'San Martin'),
(210602, 'Alberto Leveau', 'San Martin', 'San Martin'),
(210604, 'Cacatachi', 'San Martin', 'San Martin'),
(210606, 'Chazuta', 'San Martin', 'San Martin'),
(210607, 'Chipurana', 'San Martin', 'San Martin'),
(210608, 'El Porvenir', 'San Martin', 'San Martin'),
(210609, 'Huimbayoc', 'San Martin', 'San Martin'),
(210610, 'Juan Guerra', 'San Martin', 'San Martin'),
(210611, 'Morales', 'San Martin', 'San Martin'),
(210612, 'Papaplaya', 'San Martin', 'San Martin'),
(210616, 'San Antonio', 'San Martin', 'San Martin'),
(210619, 'Sauce', 'San Martin', 'San Martin'),
(210620, 'Shapaja', 'San Martin', 'San Martin'),
(210621, 'La Banda De Shilcayo', 'San Martin', 'San Martin'),
(210701, 'Bellavista', 'Bellavista', 'San Martin'),
(210702, 'San Rafael', 'Bellavista', 'San Martin'),
(210703, 'San Pablo', 'Bellavista', 'San Martin'),
(210704, 'Alto Biavo', 'Bellavista', 'San Martin'),
(210705, 'Huallaga', 'Bellavista', 'San Martin'),
(210706, 'Bajo Biavo', 'Bellavista', 'San Martin'),
(210801, 'Tocache', 'Tocache', 'San Martin'),
(210802, 'Nuevo Progreso', 'Tocache', 'San Martin'),
(210803, 'Polvora', 'Tocache', 'San Martin'),
(210804, 'Shunte', 'Tocache', 'San Martin'),
(210805, 'Uchiza', 'Tocache', 'San Martin'),
(210901, 'Picota', 'Picota', 'San Martin'),
(210902, 'Buenos Aires', 'Picota', 'San Martin'),
(210903, 'Caspizapa', 'Picota', 'San Martin'),
(210904, 'Pilluana', 'Picota', 'San Martin'),
(210905, 'Pucacaca', 'Picota', 'San Martin'),
(210906, 'San Cristobal', 'Picota', 'San Martin'),
(210907, 'San Hilarion', 'Picota', 'San Martin'),
(210908, 'Tingo De Ponasa', 'Picota', 'San Martin'),
(210909, 'Tres Unidos', 'Picota', 'San Martin'),
(210910, 'Shamboyacu', 'Picota', 'San Martin'),
(211001, 'San Jose De Sisa', 'El Dorado', 'San Martin'),
(211002, 'Agua Blanca', 'El Dorado', 'San Martin'),
(211003, 'Shatoja', 'El Dorado', 'San Martin'),
(211004, 'San Martin', 'El Dorado', 'San Martin'),
(211005, 'Santa Rosa', 'El Dorado', 'San Martin'),
(220101, 'Tacna', 'Tacna', 'Tacna'),
(220102, 'Calana', 'Tacna', 'Tacna'),
(220104, 'Inclan', 'Tacna', 'Tacna'),
(220107, 'Pachia', 'Tacna', 'Tacna'),
(220108, 'Palca', 'Tacna', 'Tacna'),
(220109, 'Pocollay', 'Tacna', 'Tacna'),
(220110, 'Sama', 'Tacna', 'Tacna'),
(220111, 'Alto De La Alianza', 'Tacna', 'Tacna'),
(220112, 'Ciudad Nueva', 'Tacna', 'Tacna'),
(220113, 'Coronel Gregorio Albarracin Lanchipa', 'Tacna', 'Tacna'),
(220201, 'Tarata', 'Tarata', 'Tacna'),
(220205, 'Heroes Albarracin', 'Tarata', 'Tacna'),
(220206, 'Estique', 'Tarata', 'Tacna'),
(220207, 'Estique Pampa', 'Tarata', 'Tacna'),
(220210, 'Sitajara', 'Tarata', 'Tacna'),
(220211, 'Susapaya', 'Tarata', 'Tacna'),
(220212, 'Tarucachi', 'Tarata', 'Tacna'),
(220213, 'Ticaco', 'Tarata', 'Tacna'),
(220301, 'Locumba', 'Jorge Basadre', 'Tacna'),
(220302, 'Ite', 'Jorge Basadre', 'Tacna'),
(220303, 'Ilabaya', 'Jorge Basadre', 'Tacna'),
(220401, 'Candarave', 'Candarave', 'Tacna'),
(220402, 'Cairani', 'Candarave', 'Tacna'),
(220403, 'Curibaya', 'Candarave', 'Tacna'),
(220404, 'Huanuara', 'Candarave', 'Tacna'),
(220405, 'Quilahuani', 'Candarave', 'Tacna'),
(220406, 'Camilaca', 'Candarave', 'Tacna'),
(230101, 'Tumbes', 'Tumbes', 'Tumbes'),
(230102, 'Corrales', 'Tumbes', 'Tumbes'),
(230103, 'La Cruz', 'Tumbes', 'Tumbes'),
(230104, 'Pampas De Hospital', 'Tumbes', 'Tumbes'),
(230105, 'San Jacinto', 'Tumbes', 'Tumbes'),
(230106, 'San Juan De La Virgen', 'Tumbes', 'Tumbes'),
(230201, 'Zorritos', 'Contralmirante Villar', 'Tumbes'),
(230202, 'Casitas', 'Contralmirante Villar', 'Tumbes'),
(230203, 'Canoas De Punta Sal', 'Contralmirante Villar', 'Tumbes'),
(230301, 'Zarumilla', 'Zarumilla', 'Tumbes'),
(230302, 'Matapalo', 'Zarumilla', 'Tumbes'),
(230303, 'Papayal', 'Zarumilla', 'Tumbes'),
(230304, 'Aguas Verdes', 'Zarumilla', 'Tumbes'),
(240101, 'Callao', 'Callao', ''),
(240102, 'Bellavista', 'Callao', ''),
(240103, 'La Punta', 'Callao', ''),
(240104, 'Carmen De La Legua-Reynoso', 'Callao', ''),
(240105, 'La Perla', 'Callao', ''),
(240106, 'Ventanilla', 'Callao', ''),
(250101, 'Calleria', 'Coronel Portillo', 'Ucayali'),
(250102, 'Yarinacocha', 'Coronel Portillo', 'Ucayali'),
(250103, 'Masisea', 'Coronel Portillo', 'Ucayali'),
(250104, 'Campoverde', 'Coronel Portillo', 'Ucayali'),
(250105, 'Iparia', 'Coronel Portillo', 'Ucayali'),
(250106, 'Nueva Requena', 'Coronel Portillo', 'Ucayali'),
(250107, 'Manantay', 'Coronel Portillo', 'Ucayali'),
(250201, 'Padre Abad', 'Padre Abad', 'Ucayali'),
(250202, 'Irazola', 'Padre Abad', 'Ucayali'),
(250203, 'Curimana', 'Padre Abad', 'Ucayali'),
(250301, 'Raimondi', 'Atalaya', 'Ucayali'),
(250302, 'Tahuania', 'Atalaya', 'Ucayali'),
(250303, 'Yurua', 'Atalaya', 'Ucayali'),
(250304, 'Sepahua', 'Atalaya', 'Ucayali'),
(250401, 'Purus', 'Purus', 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` text COLLATE utf8_spanish_ci,
  `foto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `modificado` timestamp NULL DEFAULT NULL,
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `foto`, `estado`, `creado`, `modificado`, `idPersona`) VALUES
(1, 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'vistas/img/usuarios/admin/191.jpg', 1, '2018-10-03 03:13:16', '2018-10-03 03:13:19', 1),
(2, 'director', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', '', 1, '2018-10-05 21:39:32', '2018-10-05 21:39:35', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorol`
--
ALTER TABLE `accesorol`
  ADD PRIMARY KEY (`idRol`,`idUsuario`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCreador` (`idCreador`);

--
-- Indices de la tabla `alumnodiscapacidad`
--
ALTER TABLE `alumnodiscapacidad`
  ADD PRIMARY KEY (`idAlumnoDiscapacidad`),
  ADD KEY `idDiscapacidad` (`idDiscapacidad`),
  ADD KEY `idMatricula` (`idMatricula`);

--
-- Indices de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPersona` (`idPersona`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `discapacidad`
--
ALTER TABLE `discapacidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAmbiente` (`idAmbiente`),
  ADD KEY `idPeriodo` (`idPeriodo`),
  ADD KEY `idSeccion` (`idSeccion`),
  ADD KEY `idGrado` (`idGrado`),
  ADD KEY `idNivel` (`idNivel`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `grupohorario`
--
ALTER TABLE `grupohorario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idHorario` (`idHorario`),
  ADD KEY `idGrupo` (`idGrupo`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `lengua`
--
ALTER TABLE `lengua`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idApoderado` (`idApoderado`),
  ADD KEY `idGrupo` (`idGrupo`),
  ADD KEY `idPersona` (`idPersona`),
  ADD KEY `idLengua` (`idLengua`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUbigeo` (`idUbigeo`),
  ADD KEY `padre` (`padre`),
  ADD KEY `madre` (`madre`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPersona` (`idPersona`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPersona` (`idPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnodiscapacidad`
--
ALTER TABLE `alumnodiscapacidad`
  MODIFY `idAlumnoDiscapacidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `discapacidad`
--
ALTER TABLE `discapacidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `grupohorario`
--
ALTER TABLE `grupohorario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lengua`
--
ALTER TABLE `lengua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesorol`
--
ALTER TABLE `accesorol`
  ADD CONSTRAINT `accesorol_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `accesorol_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `accesorol_ibfk_3` FOREIGN KEY (`idCreador`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `alumnodiscapacidad`
--
ALTER TABLE `alumnodiscapacidad`
  ADD CONSTRAINT `alumnodiscapacidad_ibfk_1` FOREIGN KEY (`idDiscapacidad`) REFERENCES `discapacidad` (`id`),
  ADD CONSTRAINT `alumnodiscapacidad_ibfk_2` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`id`);

--
-- Filtros para la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD CONSTRAINT `ambiente_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD CONSTRAINT `apoderado_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `apoderado_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`idAmbiente`) REFERENCES `ambiente` (`id`),
  ADD CONSTRAINT `grupo_ibfk_2` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `grupo_ibfk_3` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `grupo_ibfk_4` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`id`),
  ADD CONSTRAINT `grupo_ibfk_5` FOREIGN KEY (`idNivel`) REFERENCES `nivel` (`id`),
  ADD CONSTRAINT `grupo_ibfk_6` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `grupohorario`
--
ALTER TABLE `grupohorario`
  ADD CONSTRAINT `grupohorario_ibfk_1` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`id`),
  ADD CONSTRAINT `grupohorario_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`id`),
  ADD CONSTRAINT `grupohorario_ibfk_3` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`idApoderado`) REFERENCES `apoderado` (`id`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`id`),
  ADD CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `matricula_ibfk_4` FOREIGN KEY (`idLengua`) REFERENCES `lengua` (`id`),
  ADD CONSTRAINT `matricula_ibfk_5` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD CONSTRAINT `nivel_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `periodo_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idUbigeo`) REFERENCES `ubigeo` (`id`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`padre`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`madre`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `seccion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD CONSTRAINT `tipodocumento_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
