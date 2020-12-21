CREATE TABLE `employee` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NOT NULL,
  `surname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `birthday` DATE NOT NULL,
  `email` VARCHAR(320) NOT NULL,
  `position_id` INT NOT NULL,
  `work_place_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
