-- MySQL Script generated by MySQL Workbench
-- Mon Sep 25 11:42:41 2023
-- Model: New Model    Version: 1.0
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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`PROVEEDOR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PROVEEDOR` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PROVEEDOR` (
  `idPROVEEDOR` INT NOT NULL AUTO_INCREMENT,
  `CodProveedor` VARCHAR(45) NULL,
  `NombreProveedor` VARCHAR(100) NULL,
  `DireccionProveedor` TEXT NULL,
  `NumeroProveedor` BIGINT NULL,
  `WebProveedor` VARCHAR(45) NULL,
  PRIMARY KEY (`idPROVEEDOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SUCURSAL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`SUCURSAL` ;

CREATE TABLE IF NOT EXISTS `mydb`.`SUCURSAL` (
  `idSUCURSAL` INT NOT NULL AUTO_INCREMENT,
  `SodSuSursal` VARCHAR(45) NULL,
  `NombreSucursal` VARCHAR(45) NULL,
  `DireccionSucursal` TEXT NULL,
  `Region` VARCHAR(100) NULL,
  `Departamento` VARCHAR(100) NULL,
  PRIMARY KEY (`idSUCURSAL`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PRODUCTO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PRODUCTO` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PRODUCTO` (
  `idPRODUCTO` INT NOT NULL AUTO_INCREMENT,
  `CodProducto` VARCHAR(50) NULL,
  `NombreProducto` VARCHAR(100) NULL,
  `MarcaProducto` VARCHAR(50) NULL,
  PRIMARY KEY (`idPRODUCTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CATEGORIA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CATEGORIA` ;

CREATE TABLE IF NOT EXISTS `mydb`.`CATEGORIA` (
  `idCATEGORIA` INT NOT NULL AUTO_INCREMENT,
  `Categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`idCATEGORIA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FECHA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`FECHA` ;

CREATE TABLE IF NOT EXISTS `mydb`.`FECHA` (
  `idFECHA` INT NOT NULL AUTO_INCREMENT,
  `Fecha` VARCHAR(45) NULL,
  PRIMARY KEY (`idFECHA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`COMPRA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`COMPRA` ;

CREATE TABLE IF NOT EXISTS `mydb`.`COMPRA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Unidades` INT NULL,
  `CostoU` DECIMAL NULL,
  `total` INT NULL,
  `fecha` VARCHAR(45) NULL,
  `idPROVEEDOR` INT NOT NULL,
  `idSUCURSAL` INT NOT NULL,
  `idPRODUCTO` INT NOT NULL,
  `idCATEGORIA` INT NOT NULL,
  `idFECHA` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_COMPRA_PROVEEDOR1_idx` (`idPROVEEDOR` ASC) VISIBLE,
  INDEX `fk_COMPRA_SUCURSAL1_idx` (`idSUCURSAL` ASC) VISIBLE,
  INDEX `fk_COMPRA_PRODUCTO1_idx` (`idPRODUCTO` ASC) VISIBLE,
  INDEX `fk_COMPRA_CATEGORIA1_idx` (`idCATEGORIA` ASC) VISIBLE,
  INDEX `fk_COMPRA_FECHA1_idx` (`idFECHA` ASC) VISIBLE,
  CONSTRAINT `fk_COMPRA_PROVEEDOR1`
    FOREIGN KEY (`idPROVEEDOR`)
    REFERENCES `mydb`.`PROVEEDOR` (`idPROVEEDOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_COMPRA_SUCURSAL1`
    FOREIGN KEY (`idSUCURSAL`)
    REFERENCES `mydb`.`SUCURSAL` (`idSUCURSAL`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_COMPRA_PRODUCTO1`
    FOREIGN KEY (`idPRODUCTO`)
    REFERENCES `mydb`.`PRODUCTO` (`idPRODUCTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_COMPRA_CATEGORIA1`
    FOREIGN KEY (`idCATEGORIA`)
    REFERENCES `mydb`.`CATEGORIA` (`idCATEGORIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_COMPRA_FECHA1`
    FOREIGN KEY (`idFECHA`)
    REFERENCES `mydb`.`FECHA` (`idFECHA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CLIENTE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CLIENTE` ;

CREATE TABLE IF NOT EXISTS `mydb`.`CLIENTE` (
  `idCLIENTE` INT NOT NULL AUTO_INCREMENT,
  `CodigoCliente` VARCHAR(45) NULL,
  `NombreCliente` VARCHAR(100) NULL,
  `TipoCliente` VARCHAR(100) NULL,
  `DireccionCliente` TEXT NULL,
  `NumeroCliente` BIGINT NULL,
  PRIMARY KEY (`idCLIENTE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VENDEDOR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`VENDEDOR` ;

CREATE TABLE IF NOT EXISTS `mydb`.`VENDEDOR` (
  `idVENDEDOR` INT NOT NULL AUTO_INCREMENT,
  `CodVendedor` VARCHAR(45) NULL,
  `NombreVendedor` VARCHAR(45) NULL,
  `Vacacionista` VARCHAR(45) NULL,
  PRIMARY KEY (`idVENDEDOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VENTA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`VENTA` ;

CREATE TABLE IF NOT EXISTS `mydb`.`VENTA` (
  `idVENTA` INT UNSIGNED NOT NULL,
  `Unidades` INT NULL,
  `PrecioUnitario` DECIMAL NULL,
  `Fecha` VARCHAR(45) NULL,
  `total` DECIMAL NULL,
  `idVENDEDOR` INT NOT NULL,
  `idCLIENTE` INT NOT NULL,
  `idSUCURSAL` INT NOT NULL,
  `idFECHA` INT NOT NULL,
  `idCATEGORIA` INT NOT NULL,
  `idPRODUCTO` INT NOT NULL,
  PRIMARY KEY (`idVENTA`),
  INDEX `fk_VENTA_VENDEDOR_idx` (`idVENDEDOR` ASC) VISIBLE,
  INDEX `fk_VENTA_CLIENTE1_idx` (`idCLIENTE` ASC) VISIBLE,
  INDEX `fk_VENTA_SUCURSAL1_idx` (`idSUCURSAL` ASC) VISIBLE,
  INDEX `fk_VENTA_FECHA1_idx` (`idFECHA` ASC) VISIBLE,
  INDEX `fk_VENTA_CATEGORIA1_idx` (`idCATEGORIA` ASC) VISIBLE,
  INDEX `fk_VENTA_PRODUCTO1_idx` (`idPRODUCTO` ASC) VISIBLE,
  CONSTRAINT `fk_VENTA_VENDEDOR`
    FOREIGN KEY (`idVENDEDOR`)
    REFERENCES `mydb`.`VENDEDOR` (`idVENDEDOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_CLIENTE1`
    FOREIGN KEY (`idCLIENTE`)
    REFERENCES `mydb`.`CLIENTE` (`idCLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_SUCURSAL1`
    FOREIGN KEY (`idSUCURSAL`)
    REFERENCES `mydb`.`SUCURSAL` (`idSUCURSAL`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_FECHA1`
    FOREIGN KEY (`idFECHA`)
    REFERENCES `mydb`.`FECHA` (`idFECHA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_CATEGORIA1`
    FOREIGN KEY (`idCATEGORIA`)
    REFERENCES `mydb`.`CATEGORIA` (`idCATEGORIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENTA_PRODUCTO1`
    FOREIGN KEY (`idPRODUCTO`)
    REFERENCES `mydb`.`PRODUCTO` (`idPRODUCTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
