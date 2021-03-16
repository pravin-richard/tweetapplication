package com.tweetapp.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbHandler {
	public static Connection getConnection() {
		Connection connection = null;

		try {
			FileInputStream inputStream = new FileInputStream(
					"C:\\Users\\User\\Downloads\\tweetapplication-main\\tweetapplication\\tweetapp\\src\\main\\java\\com\\tweetapp\\util\\db.properties");
			Properties properties = new Properties();
			properties.load(inputStream);
			String driver = properties.getProperty("driver");
			String url = properties.getProperty("connection-url");
			String username = properties.getProperty("user");
			String password = properties.getProperty("password");
			Class.forName(driver);
			connection = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException | IOException | SQLException exception) {
			System.out.println(exception.getMessage());
		}
		return connection;

	}

}