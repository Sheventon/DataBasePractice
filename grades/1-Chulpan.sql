-- (1) 
SELECT student.id, student.name, `group`.name FROM student
JOIN `group` ON `group`.id = student.group_id;

-- (2) 
SELECT student.id, CONCAT(student.`name`, ' ', student.lastname) as full_name, `group`.`name` FROM student 
JOIN `group` ON `group`.id = student.group_id WHERE `group`.`name` = '11704';

-- (3)
SELECT students_grade.id, students_grade.grade, students_grade.grade_date, `subject`.`name`, student.`name` FROM students_grade
JOIN student ON student.id = students_grade.student_id
JOIN `subject` ON `subject`.id = students_grade.subject_id;

-- (4) 
SELECT sub.name, s.id, grade FROM students_grade 
JOIN student AS s ON s.id = students_grade.student_id
JOIN `subject` AS sub ON sub.id = subject_id WHERE s.id = 26 AND sub.name = ' Информатика';

-- (5)
SELECT student.`name`, student.surname, student.lastname, students_grade.grade, students_grade.grade_date, `subject`.`name` FROM student 
JOIN students_grade ON student.id = students_grade.student_id 
JOIN `subject` ON students_grade.subject_id = `subject`.id WHERE student.group_id = 4;

