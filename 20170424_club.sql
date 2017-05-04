-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP schema if exists `mydb`;
CREATE SCHEMA IF NOT EXISTS `image_training` DEFAULT CHARACTER SET utf8 ;
USE `image_training` ;

-- -----------------------------------------------------
-- Table `mydb`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `image_training`.`images` (
  `idimages` INT NOT NULL AUTO_INCREMENT,
  `idspecies` INT NOT NULL,
  `imagedir` VARCHAR(255) NOT NULL,
  `filename` VARCHAR(255) NOT NULL,
  `fileformat` INT NOT NULL,
  `imagesmodifications` INT NOT NULL,
  `date_taken` DATETIME NULL,
  `latitude` FLOAT NULL,
  `longitude` FLOAT NULL,
  `depth` FLOAT NULL,
  `owner` VARCHAR(255) NULL,
  `expert_ider` VARCHAR(255) NULL,
  `traning_set` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idimages`),
  UNIQUE INDEX `idimages_UNIQUE` (`idimages` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
