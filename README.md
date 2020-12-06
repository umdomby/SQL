#insert into users (name, age, email) values('Bob', 22, 'u2@g.com');

#select * from users where name = 'Stive';
#select * from users where id = 1;
#select name, age, email from users where id = 2;

#update users set name='Stive', age=55 where id = 1;

#delete from users where id=3;

#select * from post;

set global time_zone = '-3:00';

#kill_port
netstat -ano.
taskkill -pid "name_port" /f
