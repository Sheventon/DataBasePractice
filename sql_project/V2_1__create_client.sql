CREATE TABLE `client` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NOT NULL,
  `surname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `passport_series` INT NOT NULL,
  `passport_number` INT NOT NULL,
  `birthday_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
