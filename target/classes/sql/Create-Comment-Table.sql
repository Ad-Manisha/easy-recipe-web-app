show databases;
use easy_recipe_app;

create table Comments(
	comment_id integer not null auto_increment primary key,
    comment_txt varchar(255) 
);

alter table Comments add user_name varchar(255) not null;
alter table Comments add time_stamp date ;
alter table Comments drop column time_stamp;

select  * from Comments;