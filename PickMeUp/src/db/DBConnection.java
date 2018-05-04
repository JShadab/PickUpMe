package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	static private Connection con;

	static public Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pickupme", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}

}
