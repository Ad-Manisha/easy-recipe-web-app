show databases;
use easy_recipe_app;

create table Recipes(
	recipe_id integer not null auto_increment primary key,
    recipe_name varchar(25) not null,
    recipe_imageurl varchar(200) not null,
    recipe_description varchar(50) not null,
    recipe_time varchar(15) not null,
    recipe_category varchar(15) not null
)
    
select  * from Recipes;