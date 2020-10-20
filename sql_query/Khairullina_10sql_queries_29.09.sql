select username from user where id > 2 and status = 0;

select id, username, email from user where status = 0 or id between 1 and 3 order by username desc;

select email from user where username = 'Chulpan';

select email, length(email) as email_length from user where status = 1;
select * from teachers where id = 3 and user_id > 9;

select count(user_id) as count_of_users from teachers;

select * from students where user_id = groups_id;

select sum(id + user_id) as sum_of_id_and_user_id from students;

select * from students where user_id = groups_id order by groups_id desc;
 
select * from dbpractice.groups where (teacher_id >= 5 and teacher_id < 11) or teacher_id = 14;
 
select name from dbpractice.groups where length(name) = (select max(length(name)) from dbpractice.groups);