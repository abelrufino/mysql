-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb_farmacia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb_farmacia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb_farmacia` ;
USE `mydb_farmacia` ;

-- -----------------------------------------------------
-- Table `mydb_farmacia`.`tipos_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`tipos_produtos` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`tipos_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`fabricantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`fabricantes` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`fabricantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`produtos` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `designacao` VARCHAR(200) NOT NULL,
  `composicao` VARCHAR(200) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  `id_fabricante` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC),
  INDEX `fk_produtos_2_idx` (`id_fabricante` ASC),
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `mydb_farmacia`.`tipos_produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_2`
    FOREIGN KEY (`id_fabricante`)
    REFERENCES `mydb_farmacia`.`fabricantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`clientes` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `cep` VARCHAR(15) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `localidade` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`compras` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `data` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_compras_1_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_compras_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `mydb_farmacia`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`produtos_compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`produtos_compras` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`produtos_compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_produto` INT NOT NULL,
  `id_compra` INT NOT NULL,
  `quantidade` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_compras_1_idx` (`id_produto` ASC),
  INDEX `fk_produtos_compras_2_idx` (`id_compra` ASC),
  CONSTRAINT `fk_produtos_compras_1`
    FOREIGN KEY (`id_produto`)
    REFERENCES `mydb_farmacia`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_compras_2`
    FOREIGN KEY (`id_compra`)
    REFERENCES `mydb_farmacia`.`compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`medico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`medico` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`medico` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_farmacia`.`receitas_medicas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb_farmacia`.`receitas_medicas` ;

CREATE TABLE IF NOT EXISTS `mydb_farmacia`.`receitas_medicas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_medico` INT NOT NULL,
  `id_produto_compra` INT NOT NULL,
  `receita` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_receitas_medicas_1_idx` (`id_produto_compra` ASC),
  INDEX `fk_receitas_medicas_2_idx` (`id_medico` ASC),
  CONSTRAINT `fk_receitas_medicas_1`
    FOREIGN KEY (`id_produto_compra`)
    REFERENCES `mydb_farmacia`.`produtos_compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receitas_medicas_2`
    FOREIGN KEY (`id_medico`)
    REFERENCES `mydb_farmacia`.`medico` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
