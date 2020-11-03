CREATE TABLE `employee` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `patronymic` VARCHAR(50) NOT NULL,
  `employee_data` DATE NOT NULL,
  `email` VARCHAR(320) NOT NULL,
  `position_id` INT NOT NULL,
  `car_showroom_id` SMALLINT,
  `service_id` SMALLINT,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
