CREATE TABLE `car` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `serial_number` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) NOT NULL,
  `date` DATETIME NOT NULL,
  `weight` SMALLINT NOT NULL,
  `height` SMALLINT NOT NULL,
  `length` SMALLINT NOT NULL,
  `width` SMALLINT NOT NULL,
  `engine_id` INT NOT NULL,
  `price` INT NOT NULL,
  `complectation_id` INT NOT NULL,
  `fuel_capacity` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `serial_number_UNIQUE` (`serial_number` ASC) VISIBLE);