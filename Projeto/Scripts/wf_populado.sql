-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para wf
DROP DATABASE IF EXISTS `wf`;
CREATE DATABASE IF NOT EXISTS `wf` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `wf`;

-- Copiando estrutura para tabela wf.tab_clientes
DROP TABLE IF EXISTS `tab_clientes`;
CREATE TABLE IF NOT EXISTS `tab_clientes` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `UF` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `uf` (`UF`),
  CONSTRAINT `uf` FOREIGN KEY (`UF`) REFERENCES `tab_estados` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela wf.tab_clientes: ~21 rows (aproximadamente)
DELETE FROM `tab_clientes`;
INSERT INTO `tab_clientes` (`Codigo`, `Nome`, `Cidade`, `UF`) VALUES
	(1, 'CONSUMIDOR FINAL', 'BRASIL', 27),
	(2, 'LUNA DA MOTA', 'SÃO PAULO', 24),
	(3, 'NICOLE PIRES', 'RIO DE JANEIRO', 18),
	(4, 'DAVI ARAÚJO', 'CURITIBA', 15),
	(5, 'SARAH NUNES', 'BLUMENAU', 23),
	(6, 'LEANDRO DA MATA', 'CANELA', 20),
	(7, 'NOAH MELO', 'PASSA QUATRO', 12),
	(8, 'PEDRO DAS NEVES', 'GOIANIA', 8),
	(9, 'EMILLY SOUZA', 'MANAUS', 4),
	(10, 'GABRIELA TEIXEIRA', 'CARIACICA', 7),
	(11, 'ENRICO AZEVEDO', 'PALMAS', 26),
	(12, 'ENZO GABRIEL REZENDE', 'MARAGOGI', 19),
	(13, 'GUSTAVO HENRIQUE VIANA', 'FORTALEZA', 6),
	(14, 'LARISSA RIBEIRO', 'GUARULHOS', 24),
	(15, 'BRENDA CAMPOS', 'RESENDE', 18),
	(16, 'JUAN ROCHA', 'LAVRINHAS', 24),
	(17, 'ISABELLA RIBEIRO', 'BELO HORIZONTE', 12),
	(18, 'LUCAS DUARTE', 'CAMPINAS', 24),
	(19, 'KEVIN CASTRO', 'BLUMENAU', 23),
	(20, 'LARA DUARTE', 'OSASCO', 24),
	(21, 'PEDRO MIGUEL OLIVEIRA', 'PETROPOLIS', 18);

-- Copiando estrutura para tabela wf.tab_estados
DROP TABLE IF EXISTS `tab_estados`;
CREATE TABLE IF NOT EXISTS `tab_estados` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL DEFAULT '',
  `Sigla` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela wf.tab_estados: ~27 rows (aproximadamente)
DELETE FROM `tab_estados`;
INSERT INTO `tab_estados` (`Codigo`, `Descricao`, `Sigla`) VALUES
	(1, 'Acre', 'AC'),
	(2, 'Alagoas', 'AL'),
	(3, 'Amapá', 'AP'),
	(4, 'Amazonas', 'AM'),
	(5, 'Bahia', 'BA'),
	(6, 'Ceará', 'CE'),
	(7, 'Espírito Santo', 'ES'),
	(8, 'Goiás', 'GO'),
	(9, 'Maranhão', 'MA'),
	(10, 'Mato Grosso', 'MT'),
	(11, 'Mato Grosso do Sul', 'MS'),
	(12, 'Minas Gerais', 'MG'),
	(13, 'Pará', 'PA'),
	(14, 'Paraíba', 'PB'),
	(15, 'Paraná', 'PR'),
	(16, 'Pernambuco', 'PE'),
	(17, 'Piauí', 'PI'),
	(18, 'Rio de Janeiro', 'RJ'),
	(19, 'Rio Grande do Norte', 'RN'),
	(20, 'Rio Grande do Sul', 'RS'),
	(21, 'Rondônia', 'RO'),
	(22, 'Roraima', 'RR'),
	(23, 'Santa Catarina', 'SC'),
	(24, 'São Paulo', 'SP'),
	(25, 'Sergipe', 'SE'),
	(26, 'Tocantins', 'TO'),
	(27, 'Brasil', 'BR');

-- Copiando estrutura para tabela wf.tab_pedido
DROP TABLE IF EXISTS `tab_pedido`;
CREATE TABLE IF NOT EXISTS `tab_pedido` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo_Cliente` int(11) NOT NULL DEFAULT 0,
  `Qtde_Itens` decimal(9,2) NOT NULL DEFAULT 0.00,
  `VTotal` decimal(9,2) NOT NULL DEFAULT 0.00,
  `XStatus` char(1) NOT NULL DEFAULT 'A',
  `data_emissao` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`Codigo`),
  KEY `cliente` (`Codigo_Cliente`),
  CONSTRAINT `cliente` FOREIGN KEY (`Codigo_Cliente`) REFERENCES `tab_clientes` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela wf.tab_pedido: ~0 rows (aproximadamente)
DELETE FROM `tab_pedido`;
INSERT INTO `tab_pedido` (`Codigo`, `Codigo_Cliente`, `Qtde_Itens`, `VTotal`, `XStatus`, `data_emissao`) VALUES
	(1, 1, 2.00, 307.80, 'F', '2022-05-26 14:54:46'),
	(2, 1, 4.00, 744.85, 'A', '2022-05-26 14:55:12'),
	(3, 5, 1.00, 47.96, 'C', '2022-05-26 14:55:22');

-- Copiando estrutura para tabela wf.tab_pedido_itens
DROP TABLE IF EXISTS `tab_pedido_itens`;
CREATE TABLE IF NOT EXISTS `tab_pedido_itens` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo_Pedido` int(11) NOT NULL,
  `Produto` int(11) NOT NULL,
  `Qtde` decimal(9,2) NOT NULL DEFAULT 0.00,
  `VUnit` decimal(9,2) NOT NULL DEFAULT 0.00,
  `VTotal` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Ind_Cancelamento` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Codigo`),
  KEY `produtos` (`Produto`),
  KEY `pedido` (`Codigo_Pedido`),
  CONSTRAINT `pedido` FOREIGN KEY (`Codigo_Pedido`) REFERENCES `tab_pedido` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `produtos` FOREIGN KEY (`Produto`) REFERENCES `tab_produtos` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela wf.tab_pedido_itens: ~0 rows (aproximadamente)
DELETE FROM `tab_pedido_itens`;
INSERT INTO `tab_pedido_itens` (`Codigo`, `Codigo_Pedido`, `Produto`, `Qtde`, `VUnit`, `VTotal`, `Ind_Cancelamento`) VALUES
	(1, 1, 10, 2.00, 49.50, 99.00, 'N'),
	(2, 1, 12, 12.00, 17.40, 208.80, 'N'),
	(3, 2, 20, 15.00, 1.99, 29.85, 'N'),
	(4, 2, 2, 10.00, 4.98, 49.80, 'N'),
	(5, 2, 15, 4.00, 17.80, 71.20, 'N'),
	(6, 2, 10, 12.00, 49.50, 594.00, 'N'),
	(7, 3, 1, 2.00, 23.98, 47.96, 'N');

-- Copiando estrutura para tabela wf.tab_produtos
DROP TABLE IF EXISTS `tab_produtos`;
CREATE TABLE IF NOT EXISTS `tab_produtos` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `Valor` decimal(9,2) DEFAULT NULL,
  `Estoque` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela wf.tab_produtos: ~20 rows (aproximadamente)
DELETE FROM `tab_produtos`;
INSERT INTO `tab_produtos` (`Codigo`, `Descricao`, `Valor`, `Estoque`) VALUES
	(1, 'ESCORREDOR DE LOUÇA', 23.98, 8.00),
	(2, 'SALEIRO', 4.98, 2.00),
	(3, 'ABRIDORES DE GARRAFA', 7.99, 3.00),
	(4, 'BATEDOR DE CARNE', 5.00, 5.00),
	(5, 'COLHERES DE PAU E MEDIDORA', 19.80, 8.00),
	(6, 'CONCHA', 8.49, 10.00),
	(7, 'ESCUMADEIRA', 12.00, 4.00),
	(8, 'ESPÁTULA', 9.50, 6.00),
	(9, 'JARRA MEDIDORA', 24.90, 7.00),
	(10, 'JOGO DE TALHERES', 49.50, -12.00),
	(11, 'LUVA TÉRMICA', 4.99, 30.00),
	(12, 'RALADOR', 17.40, -9.00),
	(13, 'TÁBUAS', 33.50, 4.00),
	(14, 'PENEIRA', 1.99, 50.00),
	(15, 'CORTADOR DE PIZZA', 17.80, 4.00),
	(16, 'PORTA- CONDIMENTOS', 17.80, 7.00),
	(17, 'ROLO DE ABRIR MASSA', 42.99, 5.00),
	(18, 'TESOURA TRINCHANTE DE FRANGO', 28.49, 3.00),
	(19, 'DESCANSOS DE PANELA', 1.99, 112.00),
	(20, 'FUNIL', 1.99, 85.00);

-- Copiando estrutura para trigger wf.tab_pedido_itens_before_delete
DROP TRIGGER IF EXISTS `tab_pedido_itens_before_delete`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tab_pedido_itens_before_delete` BEFORE DELETE ON `tab_pedido_itens` FOR EACH ROW BEGIN
	UPDATE tab_Produtos SET Estoque = Estoque + OLD.Qtde
	WHERE Codigo = OLD.Produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger wf.tab_pedido_itens_before_insert
DROP TRIGGER IF EXISTS `tab_pedido_itens_before_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tab_pedido_itens_before_insert` BEFORE INSERT ON `tab_pedido_itens` FOR EACH ROW BEGIN
	UPDATE tab_Produtos SET Estoque = Estoque - NEW.Qtde
	WHERE Codigo = NEW.Produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
