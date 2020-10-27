CREATE TABLE `service_sign_up` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `service_id` SMALLINT NOT NULL,
  `usluga_id` SMALLINT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`));
