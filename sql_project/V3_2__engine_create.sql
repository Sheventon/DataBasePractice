CREATE TABLE `engine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `serial_number` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) NOT NULL,
  `fuel_consumption` DOUBLE NOT NULL,
  `engine_volume` DOUBLE NOT NULL,
  `date` DATE NOT NULL,
  `power` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `serial_number_UNIQUE` (`serial_number` ASC) VISIBLE);