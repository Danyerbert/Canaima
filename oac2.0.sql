-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.36-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para oac_prueba
DROP DATABASE IF EXISTS `oac_prueba`;
CREATE DATABASE IF NOT EXISTS `oac_prueba` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `oac_prueba`;

-- Volcando estructura para tabla oac_prueba.area
DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_del_area` varchar(150) NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.area: ~0 rows (aproximadamente)
DELETE FROM `area`;

-- Volcando estructura para tabla oac_prueba.año
DROP TABLE IF EXISTS `año`;
CREATE TABLE IF NOT EXISTS `año` (
  `id_year_o_grado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id_year_o_grado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.año: ~0 rows (aproximadamente)
DELETE FROM `año`;

-- Volcando estructura para tabla oac_prueba.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_de_carga` varchar(60) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.cargo: ~0 rows (aproximadamente)
DELETE FROM `cargo`;

-- Volcando estructura para tabla oac_prueba.datos_del_dispotivo
DROP TABLE IF EXISTS `datos_del_dispotivo`;
CREATE TABLE IF NOT EXISTS `datos_del_dispotivo` (
  `id_datos_del_dispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_de_dispositivo` int(11) NOT NULL,
  `serial_equipo` varchar(60) NOT NULL,
  `serial_de_migracion` varchar(60) NOT NULL,
  `serial_de_cargador` varchar(60) NOT NULL,
  `serial_de_cargador_salida` varchar(60) NOT NULL,
  `pertenencia_del_equipo` varchar(60) NOT NULL,
  `institucion_educativa` varchar(60) NOT NULL,
  `id_year_o_grado` int(11) NOT NULL,
  `institucion_donde_estudia` varchar(60) NOT NULL,
  `año_o_grado_actual` varchar(60) NOT NULL,
  `fecha_de_recepcion` int(10) NOT NULL,
  `estado_recepcion_equipo` int(11) NOT NULL,
  `fecha_de_entrega` int(10) NOT NULL,
  `responsable` varchar(60) NOT NULL,
  `observaciones` varchar(150) NOT NULL,
  `equipo_reincidio` varchar(150) NOT NULL,
  `motivo_de_reincidencia` varchar(150) NOT NULL,
  `id_roles` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `id_datos_del_entregante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  PRIMARY KEY (`id_datos_del_dispositivo`),
  KEY `id_datos_del_entregante` (`id_datos_del_entregante`),
  KEY `id_origen` (`id_origen`),
  KEY `id_grado` (`id_grado`),
  KEY `id_roles` (`id_roles`),
  KEY `id_year_o_grado` (`id_year_o_grado`),
  KEY `id_tipo_de_dispositivo` (`id_tipo_de_dispositivo`),
  CONSTRAINT `datos_del_dispotivo_ibfk_1` FOREIGN KEY (`id_datos_del_entregante`) REFERENCES `datos_del_entregante` (`id__datos_del_entregante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_dispotivo_ibfk_2` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id_roles`),
  CONSTRAINT `datos_del_dispotivo_ibfk_3` FOREIGN KEY (`id_year_o_grado`) REFERENCES `año` (`id_year_o_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_dispotivo_ibfk_4` FOREIGN KEY (`id_origen`) REFERENCES `origen` (`id_origen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_dispotivo_ibfk_5` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_dispotivo_ibfk_7` FOREIGN KEY (`id_tipo_de_dispositivo`) REFERENCES `tipo_de_equipo` (`id_tipo_de_equipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.datos_del_dispotivo: ~0 rows (aproximadamente)
DELETE FROM `datos_del_dispotivo`;

-- Volcando estructura para tabla oac_prueba.datos_del_entregante
DROP TABLE IF EXISTS `datos_del_entregante`;
CREATE TABLE IF NOT EXISTS `datos_del_entregante` (
  `id__datos_del_entregante` int(11) NOT NULL AUTO_INCREMENT,
  `ic` int(60) NOT NULL,
  `nombre_del_beneficiario` varchar(60) NOT NULL,
  `cedula` int(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `Id_genero` int(11) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `unidad_de_adscripcion` varchar(60) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_carga` int(11) NOT NULL,
  `nombre_del_representante` varchar(60) NOT NULL,
  `correo` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado` varchar(60) NOT NULL,
  `municipio` varchar(60) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `nombre_del_consejo_comunal` varchar(150) NOT NULL,
  `pertenece_a_una_mesa_de_telecomunicaciones` varchar(20) NOT NULL,
  `posee_discapacidad_o_condicion` varchar(20) NOT NULL,
  `jornadas` varchar(60) NOT NULL,
  `id_datos_del_dispositivo` int(11) NOT NULL,
  `id_roles` int(11) NOT NULL,
  PRIMARY KEY (`id__datos_del_entregante`),
  KEY `Id_genero` (`Id_genero`),
  KEY `id_area` (`id_area`),
  KEY `id_carga` (`id_carga`),
  KEY `id_datos_del_dispositivo` (`id_datos_del_dispositivo`),
  KEY `id_roles` (`id_roles`),
  CONSTRAINT `datos_del_entregante_ibfk_1` FOREIGN KEY (`Id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_entregante_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_entregante_ibfk_3` FOREIGN KEY (`id_carga`) REFERENCES `cargo` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_del_entregante_ibfk_4` FOREIGN KEY (`id_datos_del_dispositivo`) REFERENCES `datos_del_dispotivo` (`id_datos_del_dispositivo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.datos_del_entregante: ~0 rows (aproximadamente)
DELETE FROM `datos_del_entregante`;

-- Volcando estructura para tabla oac_prueba.genero
DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.genero: ~2 rows (aproximadamente)
DELETE FROM `genero`;
INSERT INTO `genero` (`id_genero`, `genero`) VALUES
	(1, 'Masculino'),
	(2, 'Femenino');

-- Volcando estructura para tabla oac_prueba.grado
DROP TABLE IF EXISTS `grado`;
CREATE TABLE IF NOT EXISTS `grado` (
  `id_grado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`id_grado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.grado: ~0 rows (aproximadamente)
DELETE FROM `grado`;

-- Volcando estructura para tabla oac_prueba.origen
DROP TABLE IF EXISTS `origen`;
CREATE TABLE IF NOT EXISTS `origen` (
  `id_origen` int(11) NOT NULL AUTO_INCREMENT,
  `origen` varchar(60) NOT NULL,
  PRIMARY KEY (`id_origen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.origen: ~3 rows (aproximadamente)
DELETE FROM `origen`;
INSERT INTO `origen` (`id_origen`, `origen`) VALUES
	(1, 'Apoyo Institucional'),
	(2, 'Beneficiario'),
	(3, 'Trabajadores');

-- Volcando estructura para tabla oac_prueba.reparacion
DROP TABLE IF EXISTS `reparacion`;
CREATE TABLE IF NOT EXISTS `reparacion` (
  `id_reparacion` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(20) NOT NULL,
  `propietario` int(10) NOT NULL,
  `migracion` varchar(20) NOT NULL,
  `id_tipo_de_equipo` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  PRIMARY KEY (`id_reparacion`),
  KEY `id_origen` (`id_origen`),
  KEY `id_tipo_de_equipo` (`id_tipo_de_equipo`),
  CONSTRAINT `reparacion_ibfk_1` FOREIGN KEY (`id_origen`) REFERENCES `origen` (`id_origen`),
  CONSTRAINT `reparacion_ibfk_2` FOREIGN KEY (`id_tipo_de_equipo`) REFERENCES `tipo_de_equipo` (`id_tipo_de_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oac_prueba.reparacion: ~3 rows (aproximadamente)
DELETE FROM `reparacion`;
INSERT INTO `reparacion` (`id_reparacion`, `equipo`, `propietario`, `migracion`, `id_tipo_de_equipo`, `id_origen`) VALUES
	(1, '806JV2012H50402983', 2022262, 'JV2100176H44406276', 1, 2),
	(2, 'SZLES10II133135852', 2022522, 'SZLES10II133232707', 6, 1),
	(3, 'SZLEF10MI244302164', 2022509, '', 7, 3);

-- Volcando estructura para tabla oac_prueba.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_roles` int(11) NOT NULL AUTO_INCREMENT,
  `roles` varchar(60) NOT NULL,
  PRIMARY KEY (`id_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.roles: ~8 rows (aproximadamente)
DELETE FROM `roles`;
INSERT INTO `roles` (`id_roles`, `roles`) VALUES
	(1, 'Administrador'),
	(2, 'Presidencia'),
	(3, 'Director De Area'),
	(4, 'Gerente'),
	(5, 'Supervisor de Linea'),
	(6, 'Analista'),
	(7, 'Tecnico'),
	(8, 'Verificador');

-- Volcando estructura para tabla oac_prueba.tipo_de_equipo
DROP TABLE IF EXISTS `tipo_de_equipo`;
CREATE TABLE IF NOT EXISTS `tipo_de_equipo` (
  `id_tipo_de_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `estado` varchar(60) NOT NULL,
  `cant_act` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_de_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.tipo_de_equipo: ~8 rows (aproximadamente)
DELETE FROM `tipo_de_equipo`;
INSERT INTO `tipo_de_equipo` (`id_tipo_de_equipo`, `nombre`, `modelo`, `estado`, `cant_act`, `stock`) VALUES
	(1, 'tabla 1', 'TR10CS1', '', 100, 150),
	(2, 'tabla 2', 'TR10RS1', '', 50, 200),
	(3, 'Canaima 1', 'MGEDVZ01C', '', 20, 56),
	(4, 'Canaima 2', 'MGEDMM10TVZH01A', '', 85, 400),
	(5, 'Canaima 3', 'MGEDMG3VZ01A', '', 60, 80),
	(6, 'Canaima 4', 'ES01II1', '', 78, 700),
	(7, 'Canaima 5', 'EF10MI2', '', 20, 100),
	(8, 'Canaima Docente', 'MGEDMG3XLVZO3B', '', 30, 40);

-- Volcando estructura para tabla oac_prueba.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `cedula` int(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `id_roles` int(11) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuarios`),
  KEY `id_roles` (`id_roles`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id_roles`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla oac_prueba.usuarios: ~17 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id_usuarios`, `usuario`, `apellido`, `cedula`, `password`, `correo`, `id_roles`, `registro`) VALUES
	(1, 'Abraham', 'Quizhpi', 30825631, '123456789', '', 1, '2022-11-09 13:00:12'),
	(2, 'Melvin', 'Añez', 30145631, '123456789', '', 1, '2022-11-09 13:00:12'),
	(3, 'Danyerbert', 'Rangel', 27047631, '123456789', '', 1, '2022-11-09 13:00:12'),
	(4, 'luis', 'navarro', 25585528, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'luisnavarro@gmail.com', 6, '2022-11-09 13:00:12'),
	(5, 'javier', 'guia', 30569872, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'javierguia@gmail.com', 4, '2022-11-09 13:00:12'),
	(6, 'Danyerbert', 'Rangel', 27047631, '5b636adac1d67aa8fd1745a0f5ad63616138dcca', 'danyerbert@gmail.com', 8, '2022-11-09 13:00:12'),
	(7, 'Melvin ', 'Añez', 30485631, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'melvinaez@gmail.com', 3, '2022-11-09 13:00:12'),
	(10, 'Danyerbert', 'rangel', 27047631, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'danyerbert@gamil.com', 7, '2022-11-09 13:00:12'),
	(11, 'Danyerbert', 'rangel', 27047631, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'danyerbert@gamil.com', 7, '2022-11-09 13:00:12'),
	(35, 'yasmin', 'brito', 12916293, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'yasmin@gmail.com', 1, '2022-11-09 13:00:12'),
	(36, 'yasmin', 'brito', 12916293, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'yasmin@gmail.com', 1, '2022-11-09 13:00:12'),
	(37, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(38, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(39, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(40, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(41, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(42, 'Melvin', 'AÃ±ez', 30512676, '5976b8d8af5e988e4866ea073d4e4ec09a9ddf1c', 'daniel30512676@gmail.com', 1, '2022-11-09 13:00:12'),
	(43, 'Paula', 'Rangel', 58741236, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'paula@gmail.com', 1, '2022-11-09 13:13:53'),
	(44, 'usuario', 'usuario', 123456789, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'usuario@gmail.com', 1, '2022-11-09 13:14:18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
