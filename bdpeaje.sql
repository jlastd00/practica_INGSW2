-- MySQL Script generated by MySQL Workbench
-- 04/25/18 17:54:29
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema default_schema
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bdpeaje
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bdpeaje` ;

-- -----------------------------------------------------
-- Schema bdpeaje
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdpeaje` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `bdpeaje` ;

-- -----------------------------------------------------
-- Table `bdpeaje`.`Usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdpeaje`.`Usuarios` ;

CREATE TABLE IF NOT EXISTS `bdpeaje`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `dni` VARCHAR(9) NOT NULL DEFAULT '71000111A',
  `nombre` VARCHAR(16) NOT NULL DEFAULT 'Empleado',
  `apellido1` VARCHAR(16) NOT NULL DEFAULT 'Por',
  `apellido2` VARCHAR(16) NOT NULL DEFAULT 'Defecto',
  `usuario` VARCHAR(16) NOT NULL DEFAULT 'admin',
  `password` VARCHAR(16) NOT NULL DEFAULT 'root',
  `rol` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `bdpeaje`.`Vehiculos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdpeaje`.`Vehiculos` ;

CREATE TABLE IF NOT EXISTS `bdpeaje`.`Vehiculos` (
  `idVehiculo` INT NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(8) NOT NULL DEFAULT '0000XXX',
  `tipoVehiculo` VARCHAR(12) NOT NULL DEFAULT 'Coche',
  `marca` VARCHAR(16) NOT NULL DEFAULT 'Fiat',
  `modelo` VARCHAR(16) NOT NULL DEFAULT 'Idea',
  `color` VARCHAR(16) CHARACTER SET 'latin1' NOT NULL DEFAULT 'Azul',
  `fechaRegistro` DATE NOT NULL,
  `usuarios_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idVehiculo`, `Usuarios_idUsuario`),
  INDEX `fk_Vehiculo_Usuarios_idx` (`Usuarios_idUsuario` ASC),
  CONSTRAINT `fk_Vehiculo_Usuarios`
    FOREIGN KEY (`Usuarios_idUsuario`)
    REFERENCES `bdpeaje`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO Usuarios VALUES (0, "12345678A", "Pepe", "Perez", "Perez", "admin", "superadmin1", "A");
