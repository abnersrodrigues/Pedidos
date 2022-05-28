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
CREATE DATABASE IF NOT EXISTS `wf` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `wf`;

-- Copiando estrutura para tabela wf.tab_clientes
CREATE TABLE IF NOT EXISTS `tab_clientes` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `UF` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `uf` (`UF`),
  CONSTRAINT `uf` FOREIGN KEY (`UF`) REFERENCES `tab_estados` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wf.tab_estados
CREATE TABLE IF NOT EXISTS `tab_estados` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL DEFAULT '',
  `Sigla` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wf.tab_inventarios
CREATE TABLE IF NOT EXISTS `tab_inventarios` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo_Produto` int(11) NOT NULL,
  `Qtde_Anterior` float(9,2) NOT NULL,
  `Qtde_Lancamento` float(9,2) NOT NULL,
  `Tipo_Lancamento` char(1) NOT NULL COMMENT 'E:Entrada; S:Saida',
  `Data_Lancamento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Descricao_Lancamento` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Codigo`),
  KEY `codigo_produto` (`Codigo_Produto`),
  CONSTRAINT `codigo_produto` FOREIGN KEY (`Codigo_Produto`) REFERENCES `tab_produtos` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wf.tab_pedido
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
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wf.tab_pedido_itens
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
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wf.tab_produtos
CREATE TABLE IF NOT EXISTS `tab_produtos` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `Valor` decimal(9,2) DEFAULT NULL,
  `Estoque` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para trigger wf.tab_pedido_itens_after_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tab_pedido_itens_after_update` AFTER UPDATE ON `tab_pedido_itens` FOR EACH ROW BEGIN
	case 
	when new.Qtde > old.Qtde then
		UPDATE tab_Produtos SET Estoque = Estoque - (NEW.qtde-old.Qtde)
		WHERE Codigo = OLD.Produto;
	when new.Qtde < old.Qtde then		
		UPDATE tab_Produtos SET Estoque = Estoque + (old.Qtde-NEW.qtde)
		WHERE Codigo = OLD.Produto;
	END CASE;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger wf.tab_pedido_itens_before_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tab_pedido_itens_before_delete` BEFORE DELETE ON `tab_pedido_itens` FOR EACH ROW BEGIN
	UPDATE tab_Produtos SET Estoque = Estoque + OLD.Qtde
	WHERE Codigo = OLD.Produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger wf.tab_pedido_itens_before_insert
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
