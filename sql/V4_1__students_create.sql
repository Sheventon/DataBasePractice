CREATE TABLE `students` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `groups_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);