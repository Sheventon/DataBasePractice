CREATE TABLE `position` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` VARCHAR(100) NOT NULL UNIQUE,
  `salary` DECIMAL(8,2) NOT NULL, 
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
