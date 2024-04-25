package com.easy_recipe.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.dao.RecipeDao;
import com.easy_recipe.models.Recipe;

public class AddRecipeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	RecipeDao dao = null;

	public AddRecipeController() {

		dao = new RecipeDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String recipeName = request.getParameter("recipeName");
		String imageUrl = request.getParameter("imageUrl");
		String recipeDescription = request.getParameter("recipeDescription");
		String recipeTime = request.getParameter("recipeTime");
		String recipeCategory = request.getParameter("recipeCategory");
		String ingredientsName = request.getParameter("ingredientsName");
		String instructions = request.getParameter("instructions");
		String youtubeLink = request.getParameter("youtubeLink");

		Recipe recipe = new Recipe(recipeName, imageUrl, recipeDescription, recipeTime, recipeCategory, ingredientsName,
				instructions, youtubeLink);
		int result = RecipeDao.addRecipe(recipe);

		if (result == 1) {
			request.setAttribute("message", "New Recipe Inserted Successfully!");
			RequestDispatcher rd = request.getRequestDispatcher("addRecipe.jsp");
			rd.forward(request, response);
		}
	}
}
