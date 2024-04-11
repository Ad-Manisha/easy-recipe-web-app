package com.easy_recipe.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.dao.RecipeDao;
import com.easy_recipe.models.Recipe;

public class ShowEditFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RecipeDao recipeDao = null;

	public ShowEditFormController() {
		recipeDao = new RecipeDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		Recipe recipe = recipeDao.getRecipe(id);
		System.out.println("***************************");
		System.out.println(recipe);

		request.setAttribute("recipe", recipe);
		RequestDispatcher rd = request.getRequestDispatcher("editRecipe.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
