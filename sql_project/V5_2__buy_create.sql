CREATE TABLE `buy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `car_showroom_id` SMALLINT NOT NULL,
  `car_id` INT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`));