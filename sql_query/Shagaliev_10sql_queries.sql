SELECT * FROM db1.user;

INSERT INTO user(username, email, password, status) VALUES('Djatolitdin', 'orel.reshka.50.50@yandex.azer', 'c3po10', 0);

select * 
	from user 
		where status = 1;

select id, username 
	from user
		where length(password) < 4;

select username, length(username) as username_lenght, status  
	from user 
		where status = 0;

select username, id 
	from user 
		where (id between 2 and 7) and (length(username) >= 5) order by id desc;

select password, length(password)  + id as pasword_length_plus_id 
		from user;

select sum(length(username)) as username_lenght_sum 
	from user 
		where status = 0;
        
select count(username) 
	from user 
		where (status = 0) and (id < 5); 

select username, email as max_email 
	from user
		where length(email) = (select max(length(email)) from user);
            
select create_time 
	from user 
		where id in(1,3,5,7);

select username, email 
	from user 
		where (id > 5) or username='Chulpan' or status = 1;