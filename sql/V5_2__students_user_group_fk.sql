ALTER TABLE `students` 
ADD CONSTRAINT `fk_student_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `user` (`id`),
ADD CONSTRAINT `fk_student_2`
  FOREIGN KEY (`groups_id`)
  REFERENCES `groups` (`id`);