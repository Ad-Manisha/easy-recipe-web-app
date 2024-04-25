show databases;
use easy_recipe_app;

UPDATE `easy_recipe_app`.`Recipes` SET `recipe_time` = '25 Minutes' WHERE (`recipe_id` = '8');

UPDATE `easy_recipe_app`.`Recipes` SET `ingredients_name` = 'Mangoes, Milk, Yogurt, Ice cubes, Sugar, Water' WHERE (`recipe_id` = '18');