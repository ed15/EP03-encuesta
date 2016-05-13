-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.0.17-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para ep03encuestas
CREATE DATABASE IF NOT EXISTS `ep03encuestas` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `ep03encuestas`;


-- Volcando estructura para tabla ep03encuestas.preguntas
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `pregunta` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `total` int(5) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla ep03encuestas.preguntas: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` (`id_pregunta`, `token`, `pregunta`, `titulo`, `total`, `fecha`) VALUES
	(2, '2343', '¿Que sistema operativo prefiere en su dispositivo?', 'SO', 0, '2016-05-12'),
	(3, '2347', '¿Que color de celular prefiere?', 'colores', 0, '2016-05-12'),
	(4, '6782', '¿Cree necesario tener plan de datos en su movil?', 'plan', 0, '2016-05-12');
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;


-- Volcando estructura para tabla ep03encuestas.respuestas
CREATE TABLE IF NOT EXISTS `respuestas` (
  `id_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `id_pregunta` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `texto` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `cantidad` int(5) NOT NULL DEFAULT '0',
  `porcentaje` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_respuesta`),
  KEY `token` (`token`),
  KEY `preguntas` (`id_pregunta`),
  CONSTRAINT `preguntas` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla ep03encuestas.respuestas: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` (`id_respuesta`, `token`, `id_pregunta`, `orden`, `texto`, `cantidad`, `porcentaje`) VALUES
	(2, '7869', 2, 1, 'Android', 0, 0),
	(3, '8793', 3, 3, 'rojo', 0, 0),
	(5, '8239', 2, 2, 'IOS', 0, 0),
	(6, '8239', 3, 2, 'Dorado', 0, 0),
	(7, '7890', 2, 3, 'Mozilla', 0, 0),
	(8, '8908', 3, 1, 'blanco', 0, 0),
	(10, '8764', 4, 1, 'si', 0, 0),
	(11, '8762', 4, 2, 'no', 0, 0);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
