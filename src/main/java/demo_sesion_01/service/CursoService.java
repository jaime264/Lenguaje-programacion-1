package demo_sesion_01.service;

import java.util.List;

import demo_sesion_01.model.Curso;

public interface CursoService {

	public Curso getCurso();
	public List<Curso> listCurso();
	public int createCurso();
	public int updateCurso();
	public int deleteCurso();
		
}
