package com.easy_recipe.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.dao.RecipeDao;

public class DeleteRecipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RecipeDao recipeDao = null;

	public DeleteRecipeController() {
		recipeDao = new RecipeDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Delete Request Received!");

		Integer id = Integer.parseInt(request.getParameter("id"));

		int result = recipeDao.deleteRecipe(id);

		if (result == 1) {
			response.sendRedirect("http://localhost:8080/easy-recipe-application//RecipeList");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
