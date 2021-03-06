-- MySQL Script generated by MySQL Workbench
-- Sun Nov 21 20:06:13 2021
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
DROP SCHEMA IF EXISTS `dulieu` ;

-- -----------------------------------------------------
-- Schema dulieu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dulieu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dulieu` ;

-- -----------------------------------------------------
-- Table `dulieu`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulieu`.`admin` ;

CREATE TABLE IF NOT EXISTS `dulieu`.`admin` (
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dulieu`.`phongban`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulieu`.`phongban` ;

CREATE TABLE IF NOT EXISTS `dulieu`.`phongban` (
  `IDPB` VARCHAR(45) NOT NULL,
  `tenpb` VARCHAR(45) NOT NULL,
  `Mota` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDPB`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dulieu`.`nhanvien`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulieu`.`nhanvien` ;

CREATE TABLE IF NOT EXISTS `dulieu`.`nhanvien` (
  `IDNV` INT NOT NULL AUTO_INCREMENT,
  `hoten` VARCHAR(45) NOT NULL,
  `IDPB` VARCHAR(45) NOT NULL,
  `diachi` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDNV`),
  INDEX `fk_idx` (`IDPB` ASC) VISIBLE,
  CONSTRAINT `fk`
    FOREIGN KEY (`IDPB`)
    REFERENCES `dulieu`.`phongban` (`IDPB`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
