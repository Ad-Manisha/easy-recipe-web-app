package com.easy_recipe.controllers;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.connection.ConnectionFactory;

public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		int result = 0;

		String user_name = request.getParameter("userName");
		String user_email = request.getParameter("userEmail");
		String user_password = request.getParameter("userPwd1");
		String user_mobile = request.getParameter("userContact");
		RequestDispatcher rd = null;
		Connection con = null;

		try {
			con = ConnectionFactory.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO Users(user_name,user_password,user_email,user_mobile) VALUES(?,?,?,?)");
			ps.setString(1, user_name);
			ps.setString(2, user_password);
			ps.setString(3, user_email);
			ps.setString(4, user_mobile);

			result = ps.executeUpdate();

			ps.close();

			if (result == 1) {
				request.setAttribute("message", "User Registered Successfully!");
				rd = request.getRequestDispatcher("registration.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
			request.setAttribute("message", "User Registration failed!");
		} finally {
			try {
				con.close();
			} catch (SQLException exception) {
				exception.printStackTrace();
			}

		}

	}

}
