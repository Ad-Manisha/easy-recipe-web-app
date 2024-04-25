show databases;
use easy_recipe_app;

create table AdminLogin(
	user_name varchar(20) primary key,
    password varchar(20) 
);

select  * from AdminLogin ;