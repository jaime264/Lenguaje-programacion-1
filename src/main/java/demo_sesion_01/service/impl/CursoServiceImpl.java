package demo_sesion_01.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import demo_sesion_01.model.Curso;
import demo_sesion_01.service.CursoService;
import demo_sesion_01.util.MySQLConexion;

public class CursoServiceImpl implements CursoService {

	@Override
	public Curso getCurso(int id) {
		Curso curso = null;
		Connection cn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String query = "Select * from curso where id = ?";
			psmt = cn.prepareStatement(query);
			psmt.setInt(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				curso = new Curso();
				curso.setId(rs.getInt("id"));
				curso.setCodigo(rs.getInt("codigo"));
				curso.setNombre(rs.getString("nombre"));
				curso.setProfesor(rs.getString("profesor"));
				curso.setNivel(rs.getString("nivel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(cn != null) cn.close();
				if(psmt != null) psmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return curso;
	}

	@Override
	public List<Curso> listCurso() {
		List<Curso> listCurso = new ArrayList<>();
		Connection cn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String query = "Select * from cursos";
			psmt = cn.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				Curso curso = new Curso();
				curso.setId(rs.getInt("id"));
				curso.setCodigo(rs.getInt("codigo"));
				curso.setNombre(rs.getString("nombre"));
				curso.setProfesor(rs.getString("profesor"));
				curso.setNivel(rs.getString("nivel"));
				listCurso.add(curso);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(cn != null) cn.close();
				if(psmt != null) psmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return listCurso;
	}

	@Override
	public int createCurso(Curso curso) {
		int value = 0;
		Connection cn = null;
		PreparedStatement psmt = null;
		try {
			cn = MySQLConexion.getConexion();
			String query = "INSERT INTO instituto.curso "
					+ "(codigo, nombre, nivel, profesor) VALUES(?, ?, ?, ?)";
			psmt = cn.prepareStatement(query);
			psmt.setInt(1, curso.getCodigo());
			psmt.setString(2, curso.getNombre());
			psmt.setString(3, curso.getNivel());
			psmt.setString(4, curso.getProfesor());
			value = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return value;
	}

	@Override
	public int updateCurso() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public int deleteCurso() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}

}
