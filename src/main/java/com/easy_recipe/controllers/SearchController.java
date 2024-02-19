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

	RecipeDao dao = null;

	public SearchController() {
		dao = new RecipeDao();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("SearchController called.");
		List<Recipe> recipes = dao.searchRecipes();
		
		for (Recipe r : recipes) {
			System.out.println(r);
		}
		
		request.setAttribute("search", recipes);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
