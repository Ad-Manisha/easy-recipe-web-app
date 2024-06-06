package com.easy_recipe.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/like")
public class LikesController extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        int recipe_id = Integer.parseInt(request.getParameter("recipe_id"));
        boolean is_like = Boolean.parseBoolean(request.getParameter("is_like"));

        
        response.sendRedirect("recipe.jsp?recipeId=" + recipe_id);
    }
}
