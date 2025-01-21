-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fabricante` (
  `idfabricante` INT NOT NULL AUTO_INCREMENT,
  `nomefab` VARCHAR(30) NOT NULL,
  `ano_fundacao` INT NOT NULL,
  PRIMARY KEY (`idfabricante`),
  UNIQUE INDEX `nomefab_UNIQUE` (`nomefab` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`plataforma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`plataforma` (
  `idplataforma` INT NOT NULL AUTO_INCREMENT,
  `nomeplat` VARCHAR(30) NOT NULL,
  `ano_lancamento` INT NOT NULL,
  `memoria` INT NOT NULL,
  `idfabricante` INT NOT NULL,
  PRIMARY KEY (`idplataforma`, `idfabricante`),
  UNIQUE INDEX `nomeplat_UNIQUE` (`nomeplat` ASC) VISIBLE,
  INDEX `fk_plataforma_fabricante_idx` (`idfabricante` ASC) VISIBLE,
  CONSTRAINT `fk_plataforma_fabricante`
    FOREIGN KEY (`idfabricante`)
    REFERENCES `mydb`.`fabricante` (`idfabricante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`midia` (
  `idmidia` INT NOT NULL AUTO_INCREMENT,
  `nomemid` VARCHAR(30) NOT NULL,
  `velocidade_leitura` INT NOT NULL,
  PRIMARY KEY (`idmidia`),
  UNIQUE INDEX `nomemid_UNIQUE` (`nomemid` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`jogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`jogo` (
  `idjogo` INT NOT NULL AUTO_INCREMENT,
  `nomejogo` VARCHAR(30) NOT NULL,
  `descricao` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idjogo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compativel_midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compativel_midia` (
  `idplataforma` INT NOT NULL,
  `idmidia` INT NOT NULL,
  PRIMARY KEY (`idplataforma`, `idmidia`),
  INDEX `fk_compativel_midia_plataforma1_idx` (`idplataforma` ASC) VISIBLE,
  INDEX `fk_compativel_midia_midia1_idx` (`idmidia` ASC) VISIBLE,
  CONSTRAINT `fk_compativel_midia_plataforma1`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `mydb`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compativel_midia_midia1`
    FOREIGN KEY (`idmidia`)
    REFERENCES `mydb`.`midia` (`idmidia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compativel_jogo_plataforma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compativel_jogo_plataforma` (
  `idplataforma` INT NOT NULL,
  `idjogo` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `ano_lancamento_jogo` INT NOT NULL,
  PRIMARY KEY (`idplataforma`, `idjogo`),
  INDEX `fk_compativel_jogo_plataforma_jogo1_idx` (`idjogo` ASC) VISIBLE,
  CONSTRAINT `fk_compativel_jogo_plataforma_plataforma1`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `mydb`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compativel_jogo_plataforma_jogo1`
    FOREIGN KEY (`idjogo`)
    REFERENCES `mydb`.`jogo` (`idjogo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
