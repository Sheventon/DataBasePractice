select st.id, CONCAT(st.`name`, ' ', st.surname, ' ', st.lastname) as StudentName, gr.`name` as GroupName 
from student as st
left join `group` as gr on st.group_id = gr.id;

select gr.id as GroupId, gr.`name` as GroupName, st.id as StudentId, CONCAT(st.`name`, ' ', st.surname, ' ', st.lastname) as StudentName
from `group` as gr 
left join student as st on gr.id = st.group_id where gr.id = 1;

select stg.id as GradeId, stg.grade as Grade, stg.grade_date as GradeDate, 
CONCAT(st.`name`, ' ', st.surname, ' ', st.lastname) as StudentName, sb.`name` as SubjectName 
from students_grade as stg
join student as st on stg.student_id = st.id 
join `subject` as sb on stg.subject_id = sb.id;

select st.id as StudentId, CONCAT(st.`name`, ' ', st.surname, ' ', st.lastname) as StudentName, 
sb.`name` as SubjectName, stg.grade as Grade , stg.grade_date as GradeDate
from student as st
join students_grade as stg on st.id = stg.student_id
join `subject` as sb on stg.subject_id = sb.id where sb.`name` = ' Информатика' and st.id = 26;

select gr.`name` as GroupName, CONCAT(st.`name`, ' ', st.surname, ' ', st.lastname) as StudentName, 
sb.`name` as SubjectName, stg.grade as Grade, stg.grade_date as GradeDate
from `group` as gr
join student as st on st.group_id = gr.id
join students_grade as stg on stg.student_id = st.id
join `subject` as sb on sb.id = stg.subject_id where gr.id = 4;