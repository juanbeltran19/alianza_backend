-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.46 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para alianza
CREATE DATABASE IF NOT EXISTS `alianza` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `alianza`;

-- Volcando estructura para tabla alianza.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `shared_key` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla alianza.clientes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`shared_key`, `name`, `phone`, `email`, `start_date`, `end_date`) VALUES
	('jgutierrez', 'Juliana Gutierrez', '3219876543', 'jgutierrez@gmail.com', '20/05/2019', '20/05/2019'),
	('mmartinez', 'Manuel Martinez', '3219876543', 'mmartinez@gmail.com', '20/05/2019', '20/05/2019'),
	('aruiz', 'Ana Ruiz', '3219876543', 'aruiz@gmail.com', '20/05/2019', '20/05/2019'),
	('ogarcia', 'Oscar Garcia', '3219876543', 'ogarcia@gmail.com', '20/05/2019', '20/05/2019'),
	('tramos', 'Tania Ramos', '3219876543', 'tramos@gmail.com', '20/05/2019', '20/05/2019');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
