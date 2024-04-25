package com.easy_recipe.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy_recipe.connection.ConnectionFactory;

public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String comment = request.getParameter("comment");
		String user_name = request.getParameter("userName");

		try {

			Connection con = ConnectionFactory.getConnection();

			String sql = "INSERT INTO Comments(comment_txt, user_name) VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, comment);
			ps.setString(2, user_name);
			ps.executeUpdate();

			con.close();

			response.sendRedirect("userComments.jsp?message=Comment+submitted+successfully");
		} catch (Exception e) {

			e.printStackTrace();
			response.sendRedirect("userComments.jsp?message=Error+submitting+comment");
		}
	}

}
