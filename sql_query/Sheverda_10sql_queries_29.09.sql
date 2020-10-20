select * 
	from groups 
		where teacher_id < 7;

select name 	
	from groups 
		where length(name) = 6 order by teacher_id;

select sum(teacher_id) as teacher_id_sum 
	from groups;

select * 
	from teachers 
		where id = 3 and user_id > 9;

select count(user_id) as count_of_users 
	from teachers;

select create_time 
	from user 
		where username = 'Shevanton' or username = 'Alba'; 

select avg(length(password)) as average_password_length
	from user;

select sum(status) 
	from user 
		where id > 3 and id < 9;

select * 
	from user 
		where (length(username) = 5 or length(email) > 15) and status = 1 order by id desc;

select sum(length(email)) + sum(status) as length_of_email_plus_status_sum 
	from user;