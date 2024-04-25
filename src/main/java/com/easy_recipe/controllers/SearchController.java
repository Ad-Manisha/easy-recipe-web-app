package com.easy_recipe.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.easy_recipe.dao.RecipeDao;
import com.easy_recipe.models.Recipe;

public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("SearchController called.");

		String[] ingredients_name = request.getParameterValues("ingredient");

		try {
			

			List<Recipe> recipes = RecipeDao.searchRecipesByIngredients(ingredients_name);

			request.setAttribute("recipes", recipes);
			RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
			rd.forward(request, response);

		} catch (Exception e) {

			e.printStackTrace();

			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}

	}

}
