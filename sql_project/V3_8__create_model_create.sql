CREATE TABLE `model` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `weight` SMALLINT NOT NULL,
  `height` SMALLINT NOT NULL,
  `length` SMALLINT NOT NULL,
  `width` SMALLINT NOT NULL,
  `fuel_capacity` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));