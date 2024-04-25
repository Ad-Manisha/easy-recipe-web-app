package com.easy_recipe.controllers;

import java.io.IOException;
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

public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_email = request.getParameter("txtName");
		String user_password = request.getParameter("txtPwd");
		RequestDispatcher rd = null;
		Connection con = null;

		try {
			con = ConnectionFactory.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Users WHERE user_email=? and user_password=?");
			ps.setString(1, user_email);
			ps.setString(2, user_password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				rd = request.getRequestDispatcher("userComments.jsp");
			} else {
				rd = request.getRequestDispatcher("userLogin.jsp");

			}
			rd.forward(request, response);

		} catch (SQLException exception) {
			exception.printStackTrace();
			request.setAttribute("message", "User Registration failed!");
		}
	}
}
