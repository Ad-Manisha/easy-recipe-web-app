package com.easy_recipe.connection;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class ConnectionFactory {

	public static Connection getConnection() {
		Connection con = null;
		try {

			// 1. Load Properties File
			Properties props = new Properties();
			props.load(new FileInputStream(
					"C:\\Users\\asusm\\eclipse-workspace\\web-apps\\easy-recipe-application\\application.properties"));

			// 2. Read Properties from the file
			String URL = props.getProperty("url");
			String USERNAME = props.getProperty("username");
			String PASSWORD = props.getProperty("password");
			String dbName = props.getProperty("database-host");

			// 3. Connect to the DB
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("Connected to the Database --" + dbName + " --Successfully!");

		} catch (Exception exception) {
			System.out.println("Error Connecting to the Database!");
		}
		return con;
	}
}