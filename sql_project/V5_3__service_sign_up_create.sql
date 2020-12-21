CREATE TABLE `service_sign_up` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `service_id` SMALLINT NOT NULL,
  `date` DATE NOT NULL,
  `total_cost` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`)
 );
