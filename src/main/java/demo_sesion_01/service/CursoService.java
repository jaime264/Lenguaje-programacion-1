package demo_sesion_01.service;

import java.util.List;

import demo_sesion_01.model.Curso;

public interface CursoService {

	public Curso getCurso(int id);
	public List<Curso> listCurso();
	public int createCurso(Curso curso);
	public int updateCurso(Curso curso);
	public int deleteCurso(int id);
		
}
