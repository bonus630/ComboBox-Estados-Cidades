-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.1.0.4883
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para estados
CREATE DATABASE IF NOT EXISTS `estados` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `estados`;


-- Copiando estrutura para tabela estados.cidades
CREATE TABLE IF NOT EXISTS `cidades` (
  `cidade_id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `estado_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela estados.cidades: ~0 rows (aproximadamente)
DELETE FROM `cidades`;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` (`cidade_id`, `cidade_nome`, `estado_id`) VALUES
	(1, 'Goiânia', 1),
	(2, 'Trindade', 1),
	(3, 'São Paulo', 2),
	(4, 'Guarulhos', 2),
	(5, 'Palmas', 3),
	(6, 'Araguaína', 3),
	(7, 'Gurupi', 3),
	(8, 'Guapo', 1),
	(9, 'Palmeiras', 1);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;


-- Copiando estrutura para tabela estados.estados
CREATE TABLE IF NOT EXISTS `estados` (
  `estado_id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela estados.estados: ~0 rows (aproximadamente)
DELETE FROM `estados`;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` (`estado_id`, `estado_nome`) VALUES
	(1, 'Goiás'),
	(2, 'São Paulo'),
	(3, 'Tocantins');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
