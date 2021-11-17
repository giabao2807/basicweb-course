-- MySQL Script generated by MySQL Workbench
-- Tue Nov 16 18:54:05 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dulieu
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `wife_cnw` ;

-- -----------------------------------------------------
-- Schema dulieu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wife_cnw` DEFAULT CHARACTER SET utf8 ;
USE `wife_cnw` ;

-- -----------------------------------------------------
-- Table `dulieu`.`Wife`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wife_cnw`.`Wife` ;

CREATE TABLE IF NOT EXISTS `wife_cnw`.`Wife` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `alive` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dulieu`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wife_cnw`.`admin` ;

CREATE TABLE IF NOT EXISTS `wife_cnw`.`admin` (
  `username` VARCHAR(10) NOT NULL,
  `password` VARCHAR(45) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;