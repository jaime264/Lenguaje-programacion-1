package demo_sesion_01.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {

	public static Connection getConexion() {
		
		Connection cn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
			String url = "jdbc:mysql://localhost:3306/instituto?useSSL=false&useTimezone=true&serverTimezone=UTC";
			String usr = "root";
			String pws = "Mysql123!";
			cn = DriverManager.getConnection(url, usr, pws);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return cn;
	}
	
}
