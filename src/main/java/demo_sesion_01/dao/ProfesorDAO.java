package demo_sesion_01.dao;

import java.util.ArrayList;
import java.util.List;

import demo_sesion_01.model.Profesor;
import demo_sesion_01.util.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

public class ProfesorDAO {

	EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
	
	public List<Profesor> listarProfesores(){
		List<Profesor> profesores = new ArrayList<>();
		Query q = entityManager.createQuery("Select p From Profesor p");
		profesores = q.getResultList();
		return profesores;
	}
	
}
