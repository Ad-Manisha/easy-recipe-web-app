package com.easy_recipe.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.dao.RecipeDao;
import com.easy_recipe.models.Recipe;

public class UpdateRecipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RecipeDao recipeDao = null;

	public UpdateRecipeController() {
		recipeDao = new RecipeDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer recipeId = Integer.parseInt(request.getParameter("recipeId"));
		String recipeName = request.getParameter("recipeName");
		String imageUrl = request.getParameter("imageUrl");
		String recipeDescription = request.getParameter("recipeDescription");
		String recipeTime = request.getParameter("recipeTime");
		String recipeCategory = request.getParameter("recipeCategory");
		String ingredientsName = request.getParameter("ingredientsName");
		String instructions = request.getParameter("instructions");
		String youtubeLink = request.getParameter("youtubeLink");

		Recipe recipe = new Recipe(recipeId, recipeName, imageUrl, recipeDescription, recipeTime, recipeCategory, ingredientsName, instructions, youtubeLink);
		int result = recipeDao.updateRecipe(recipe);

		if (result == 1) {
			request.setAttribute("message", " Recipe Updated Successfully!");
			RequestDispatcher rd = request.getRequestDispatcher("editRecipe.jsp");
			rd.forward(request, response);
		}
	}

}
