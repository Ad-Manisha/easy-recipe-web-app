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
	public Recipe getRecipe(Integer id) {

		Connection con = ConnectionFactory.getConnection();
		String sql = "SELECT * FROM Recipes WHERE recipe_id = ?";
		Recipe recipe = null;

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {

				Integer recipe_id = rs.getInt(1);
				String name = rs.getString(2);
				String url = rs.getString(3);
				String description = rs.getString(4);
				String time = rs.getString(5);
				String category = rs.getString(6);

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
	public List<Recipe> searchRecipes() {

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

	// update a recipe
	public int updateRecipe(Recipe recipe) {
		Connection con = ConnectionFactory.getConnection();
		String sql = "UPDATE Recipes SET recipe_name=?,recipe_imageurl=?,recipe_description=?,recipe_time =?,recipe_category=? WHERE recipe_id = ?";

		int result = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, recipe.getRecipeName());
			ps.setString(2, recipe.getImageUrl());
			ps.setString(3, recipe.getRecipeDescription());
			ps.setString(4, recipe.getRecipeTime());
			ps.setString(5, recipe.getRecipeCategory());
			ps.setInt(6, recipe.getRecipeId());

			result = ps.executeUpdate();
			ps.close();
			con.close();
			System.out.println("Database Disconnected!");
			if (result == 1) {
				System.out.println("INFO - 1 Recipe Updated Successfully!");
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("ERR - Recipe Updation Failed!");
		}
		return result;
	}

	// delete a recipe
	public int deleteRecipe(Integer id) {
		Connection con = ConnectionFactory.getConnection();
		String sql = "DELETE FROM Recipes WHERE recipe_id=?";

		int result = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			result = ps.executeUpdate();
			ps.close();
			con.close();
			System.out.println("Database Disconnected!");
			if (result == 1) {
				System.out.println("INFO - 1 Recipe Deleted Successfully!");
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("ERR - Recipe Deletion Failed!");
		}
		return result;
	}

}