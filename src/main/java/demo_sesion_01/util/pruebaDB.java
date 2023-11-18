package demo_sesion_01.util;

import java.sql.Connection;
import java.sql.SQLException;

public class pruebaDB {

	public static void main(String[] args) {
		Connection cn = MySQLConexion.getConexion();
		try {
		if(cn !=null)
			System.out.println("Conexion creada");
		else
			System.out.println("No hay conexion");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
