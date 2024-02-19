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
		String rec_name = request.getParameter("recipeName");
		String rec_url = request.getParameter("imageUrl");
		String rec_desc = request.getParameter("recipeDescription");
		String rec_time = request.getParameter("recipeTime");
		String rec_cat = request.getParameter("recipeCategory");

		Recipe recipe = new Recipe(rec_name, rec_url, rec_desc, rec_time, rec_cat);
		int result = RecipeDao.addRecipe(recipe);

		if (result == 1) {
			request.setAttribute("message", "New Recipe Inserted Successfully!");
			RequestDispatcher rd = request.getRequestDispatcher("addRecipe.jsp");
			rd.forward(request, response);
		}
	}
}
