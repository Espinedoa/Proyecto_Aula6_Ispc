SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `PeluqueriaCanina` DEFAULT CHARACTER SET utf8 ;
USE `PeluqueriaCanina` ;

CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Duenios` (
  `DNI` VARCHAR(30) NOT NULL,
  `Nombre` VARCHAR(50) NULL,
  `Apellido` VARCHAR(50) NULL,
  `Telefono` VARCHAR(45) NULL,
  `Direccion` VARCHAR(70) NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Perros` (
  `Id_Perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Fecha_nacimiento` DATE NULL,
  `Sexo` VARCHAR(30) NULL,
  `Duenios_DNI` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Id_Perro`, `Duenios_DNI`),
  UNIQUE INDEX `Id_Perro_UNIQUE` (`Id_Perro` ASC) VISIBLE,
  INDEX `fk_Perros_Duenios_idx` (`Duenios_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Perros_Duenios`
    FOREIGN KEY (`Duenios_DNI`)
    REFERENCES `PeluqueriaCanina`.`Duenios` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Historiales` (
  `Id_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NULL,
  `Descripción` VARCHAR(200) NULL,
  `Monto` DECIMAL(9,2) NULL,
  `Perros_Id_Perro` INT NOT NULL,
  `Perros_Duenios_DNI` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Id_Historial`, `Perros_Id_Perro`, `Perros_Duenios_DNI`),
  UNIQUE INDEX `Id_Historial_UNIQUE` (`Id_Historial` ASC) VISIBLE,
  INDEX `fk_Historiales_Perros1_idx` (`Perros_Id_Perro` ASC, `Perros_Duenios_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Historiales_Perros1`
    FOREIGN KEY (`Perros_Id_Perro` , `Perros_Duenios_DNI`)
    REFERENCES `PeluqueriaCanina`.`Perros` (`Id_Perro` , `Duenios_DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO duenios
VALUES ('21054789', 'José Luis', 'Perales', '03515789745', 
'Navarro 459');

INSERT INTO duenios
VALUES ('35547451', 'Pedro', 'Arenales', '03510894045', 
'Contreras 4510');

INSERT INTO duenios
VALUES ('41564743', 'Susana', 'Ivanovich', '03514597267', 
'Vicente López y Planes 152');

INSERT INTO duenios
VALUES ('30654843', 'Pedro', 'Almeida Cari', '03514875964',
 'Azucena 1578');

INSERT INTO perros
VALUES(1, 'Chocolina', '2015-06-30', 'Macho', '35547451');

INSERT INTO perros
VALUES(2, 'Reina', '2020-07-02', 'Hembra', '30654843');

INSERT INTO perros
VALUES(3, 'Calabaza', '2021-10-24', 'Hembra', '30654843');

INSERT INTO perros
VALUES(4, 'Destructor', '2015-09-15', 'Macho', '41564743');

INSERT INTO perros
VALUES(5, 'Carlota', '2013-01-10', 'Hembra', '21054789');

INSERT INTO perros
VALUES(6, 'Carlos II', '2014-11-20', 'Hembra', '21054789');

INSERT INTO historiales
VALUES(1, '2022-06-27', 'Corte de pelo y pedicura', '2325.75', '1', '35547451');

INSERT INTO historiales
VALUES(2, '2022-06-27', 'Corte de pelo y masaje', '3000.50', '6', '21054789');

INSERT INTO historiales
VALUES(3, '2022-06-27', 'Corte de pelo', '1500.75', '4', '41564743');

INSERT INTO historiales
VALUES(4, '2022-06-27', 'Corte de pelo e hidratación', '2800.25', '5', '21054789');

INSERT INTO historiales
VALUES(5, '2022-06-27', 'Corte de pelo', '1500.75', '3', '30654843');

INSERT INTO historiales
VALUES(6,'2022-06-27', 'Corte de pelo', '1500.75', '2', '30654843');

UPDATE perros
SET Fecha_nacimiento = '2013-01-10' WHERE Id_Perro = 6;




