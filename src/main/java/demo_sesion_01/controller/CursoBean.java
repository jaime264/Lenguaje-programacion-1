package demo_sesion_01.controller;

import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

import demo_sesion_01.dao.CursoDAO;
import demo_sesion_01.dao.ProfesorDAO;
import demo_sesion_01.model.Curso;
import demo_sesion_01.model.Profesor;

@ManagedBean(name = "cursoBean")
@RequestScoped
public class CursoBean {

	CursoDAO cursoDAO = new CursoDAO();
	ProfesorDAO profesorDAO = new ProfesorDAO();
	
	public String nuevo() {
		Curso c = new Curso();
		List<Profesor> profesores = profesorDAO.listarProfesores();
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("curso", c);
		sessionMap.put("profesores", profesores);
		return "faces/nuevo.xhtml";
	}
	
	public String guardar(Curso curso) {
		cursoDAO.guardar(curso);
		return "faces/index.xhtml";
	}
	
	public List<Curso> listarCursos(){
		return cursoDAO.listar();
	}
	
	public String editar(int id) {
		Curso c = cursoDAO.buscar(id);
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("curso", c);
		return "faces/editar.xhtml";
	}
	
	public String actualizar(Curso curso) {
		cursoDAO.editar(curso);
		return "faces/index.xhtml";
	}
	
	public String eliminar(int id) {
		cursoDAO.eliminar(id);
		return "faces/index.xhtml";
	}
	
}
