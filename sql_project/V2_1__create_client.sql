CREATE TABLE `client` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `patronymic` VARCHAR(50) NOT NULL,
  `passport_series` INT NOT NULL,
  `passport_number` INT NOT NULL,
  `birthday_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
