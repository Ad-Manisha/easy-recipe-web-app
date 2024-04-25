show databases;
use easy_recipe_app;

create table Users(
	user_id integer not null auto_increment primary key,
    user_name varchar(50) not null,
    user_password varchar(50) not null,
    user_email varchar(50) not null,
    user_mobile varchar(20) not null
);