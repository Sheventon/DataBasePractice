ALTER TABLE `groups` 
ADD CONSTRAINT `fk_groups_1`
  FOREIGN KEY (`teacher_id`)
  REFERENCES `teachers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;