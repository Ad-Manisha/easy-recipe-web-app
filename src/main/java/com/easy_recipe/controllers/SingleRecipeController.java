package com.easy_recipe.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.dao.RecipeDao;
import com.easy_recipe.models.Recipe;


public class SingleRecipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     RecipeDao dao = null;
    
    public SingleRecipeController() {
      dao = new RecipeDao(); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Recipe r = dao.getRecipe(Integer.parseInt(id));
		
		request.setAttribute("recipe", r);
		RequestDispatcher rd = request.getRequestDispatcher("recipe.jsp");
		rd.forward(request, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
