package demo_sesion_01.dao;

import java.util.ArrayList;
import java.util.List;

import demo_sesion_01.model.Curso;
import demo_sesion_01.util.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

public class CursoDAO {

	EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
	
	public void guardar(Curso curso) {
		entityManager.getTransaction().begin();
		entityManager.persist(curso);
		entityManager.getTransaction().commit();
		//JPAUtil.shutdown();
	}
	
	public void editar(Curso curso) {
		entityManager.getTransaction().begin();
		entityManager.merge(curso);
		entityManager.getTransaction().commit();
		//JPAUtil.shutdown();
	}
	
	public Curso buscar(int id) {
		Curso c = entityManager.find(Curso.class, id);
		return c;
	}
	
	public List<Curso> listar(){
		
		List<Curso> cursos = new ArrayList<>();
		Query q = entityManager.createQuery("Select c from Curso c");
		cursos = q.getResultList();
		
		return cursos;
	}
	
	public void eliminar(int id) {
		Curso c = entityManager.find(Curso.class, id);
		entityManager.getTransaction().begin();
		entityManager.remove(c);
		entityManager.getTransaction().commit();
	}
	
}
