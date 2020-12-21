CREATE TABLE `car` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `serial_number` VARCHAR(50) NOT NULL,
  `model_id` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `engine_id` INT NOT NULL,
  `price` INT NOT NULL,
  `complectation_id` INT NOT NULL,
  `car_showroom_id` SMALLINT,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `serial_number_UNIQUE` (`serial_number` ASC) VISIBLE);