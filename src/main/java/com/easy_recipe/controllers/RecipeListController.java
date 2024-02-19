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

public class RecipeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RecipeDao recipeDao = null;

	public RecipeListController() {
		recipeDao = new RecipeDao();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("RecipeListController called.");
		List<Recipe> recipes = recipeDao.getAllRecipes();

		for (Recipe r : recipes) {
			System.out.println(r);
		}

		request.setAttribute("recipeList", recipes);
		RequestDispatcher rd = request.getRequestDispatcher("recipe-list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
