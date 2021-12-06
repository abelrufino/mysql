-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb_pratica2_sql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb_pratica2_sql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb_pratica2_sql` ;
USE `mydb_pratica2_sql` ;

-- -----------------------------------------------------
-- Table `mydb_pratica2_sql`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb_pratica2_sql`.`professores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT NOT NULL,
  `nome` CHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb_pratica2_sql`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb_pratica2_sql`.`turmas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turmas_1_idx` (`id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_turmas_1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `mydb_pratica2_sql`.`professores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
