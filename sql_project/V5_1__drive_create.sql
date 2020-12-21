CREATE TABLE `drive_sign_up` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` BIGINT UNSIGNED NOT NULL,
  `emploee_id` INT NOT NULL,
  `car_showroom_id` SMALLINT NOT NULL,
  `car_id` INT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`));