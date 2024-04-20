package com.easy_recipe.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.connection.ConnectionFactory;


public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			Connection con = ConnectionFactory.getConnection();
			String n=request.getParameter("txtName");
			String p=request.getParameter("txtPwd");
			
			PreparedStatement ps = con.prepareStatement("SELECT user_name FROM AdminLogin where user_name=? and password=?");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("adminLoginSuccess.jsp");
				rd.forward(request, response);	
			}
			else {
				out.println("<a href=\"./userLogin.jsp\">User Login</a>");	
			}
		
		}
		catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Admin Login Operation Failed !");
		}
	}	

}
