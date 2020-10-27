SELECT std.id, std.`name`, grp.`name` FROM student AS std
LEFT JOIN `group` AS grp ON grp.id = std.group_id;

SELECT std.id, CONCAT(std.lastname, ' ', std.`name`, ' ', std.surname) AS fullname, grp.`name` FROM student AS std
JOIN `group` AS grp ON grp.id = std.group_id WHERE grp.`name` = '11701'; 

SELECT sg.id, sg.grade, sg.grade_date, std.`name`, sb.`name` FROM students_grade AS sg
JOIN student AS std ON std.id = sg.student_id
JOIN `subject` AS sb ON sb.id = sg.subject_id;

SELECT std.id, std.`name`, sb.`name`, sg.grade FROM students_grade AS sg
JOIN `subject` AS sb ON sb.id = sg.subject_id
JOIN student AS std ON std.id = sg.student_id
WHERE sb.`name` = ' Информатика';

SELECT gr.name, CONCAT(st.name, ' ', st.surname, ' ', st.lastname) AS fullname, 
sb.name, stg.grade, stg.grade_date
FROM group AS gr
JOIN student AS st ON st.group_id = gr.id
JOIN students_grade AS stg ON stg.student_id = st.id
JOIN subject AS sb ON sb.id = stg.subject_id WHERE gr.id = 4;