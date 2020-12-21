CREATE TABLE `work_place` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `work_place_name` ENUM('service', 'car_showroom') DEFAULT 'service',
  `address_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
