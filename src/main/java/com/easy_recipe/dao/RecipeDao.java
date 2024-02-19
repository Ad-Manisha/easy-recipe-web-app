package com.easy_recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.easy_recipe.connection.ConnectionFactory;
import com.easy_recipe.models.Recipe;

public class RecipeDao {

	public List<Recipe> getAllRecipes() {

		List<Recipe> list = new ArrayList<Recipe>();

		Connection con = ConnectionFactory.getConnection();

		String sql = "SELECT * FROM Recipes";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Integer id = rs.getInt(1);
				String name = rs.getString(2);
				String image = rs.getString(3);
				String description = rs.getString(4);
				String time = rs.getString(5);
				String category = rs.getString(6);

				Recipe recipe = new Recipe(id, name, image, description, time, category);
				list.add(recipe);
			}

			ps.close();
			rs.close();
			con.close();

			System.out.println("Database Disconnected !");
		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Error - Recipe Fetching Operation Failed !");
		}

		return list;
	}
// get single recipe
	public Recipe getRecipe(int id) {

		Connection con = ConnectionFactory.getConnection();
		String sql = "select  * from Recipes where recipe_id = ?";

		Recipe recipe = null;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {

				int recipe_id = rs.getInt("recipe_id");
				String name = rs.getString("recipe_name");
				String url = rs.getString("recipe_imageurl");
				String description = rs.getString("recipe_description");
				String time = rs.getString("recipe_time");
				String category = rs.getString("recipe_category");

				recipe = new Recipe(recipe_id, name, url, description, time, category);
			}
			ps.close();
			rs.close();
			con.close();

			System.out.println("Database Disconnected !");

		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Error - Recipe Fetching Operation Failed !");
		}
		return recipe;
	}

	
	// search recipe
	public List<Recipe> searchRecipes( ) {
		
		List<Recipe> list = new ArrayList<Recipe>();
		
		Connection con = ConnectionFactory.getConnection();
		
		String sql = "SELECT * FROM Recipes WHERE recipe_name like '%recipeName%'";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {

				Integer id = rs.getInt(1);
				String name = rs.getString(2);
				String image = rs.getString(3);
				String description = rs.getString(4);
				String time = rs.getString(5);
				String category = rs.getString(6);

				Recipe recipe = new Recipe(id, name, image, description, time, category);
				list.add(recipe);
			}
			ps.close();
			rs.close();
			con.close();

			System.out.println("Database Disconnected !");

		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Error - Recipe Fetching Operation Failed !");
		}
		return list;
	}

	// add a recipe

	public static int addRecipe(Recipe recipe) {
		Connection con = ConnectionFactory.getConnection();

		String sql = "INSERT INTO Recipes VALUES (NULL,?,?,?,?,?)";

		int result = 0;

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, recipe.getRecipeName());
			ps.setString(2, recipe.getImageUrl());
			ps.setString(3, recipe.getRecipeDescription());
			ps.setString(4, recipe.getRecipeTime());
			ps.setString(5, recipe.getRecipeCategory());

			result = ps.executeUpdate(); // no.of rows affected

			ps.close();
			con.close();
			System.out.println("Database Disconnected!");

			if (result == 1) {
				System.out.println("INFO - 1 recipe Inserted Successfully!");
			}

		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("ERR - recipe Insertion Failed!");
		}
		return result;

	}

	

}