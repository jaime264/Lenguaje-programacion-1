package demo_sesion_01.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLEditorKit.Parser;

import demo_sesion_01.model.Curso;
import demo_sesion_01.service.CursoService;
import demo_sesion_01.service.impl.CursoServiceImpl;

@WebServlet("/CursoServlet")
public class CursoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CursoService cursoService = new CursoServiceImpl();

	public CursoServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String type = request.getParameter("type");
		switch (type) {
		case "registrar":
			crearCurso(request, response);
			break;
		case "listar":
			listarCursos(request, response);
			break;
		default:
			break;
		}

	}

	private void listarCursos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Curso> lisCursos = cursoService.listCurso();

		request.setAttribute("listCursos", lisCursos);
		request.getRequestDispatcher("curso.jsp").forward(request, response);
	}

	private void crearCurso(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer codigo = Integer.parseInt(request.getParameter("txtCodigo"));
		String nombre = request.getParameter("txtNombre");
		String nivel = request.getParameter("txtNivel");
		String profesor = request.getParameter("txtProfesor");

		Curso curso = new Curso(null, codigo, nombre, nivel, profesor);
		int value = cursoService.createCurso(curso);

		if (value == 1) {
			listarCursos(request, response);
		} else {
			request.setAttribute("mensaje", "Error al registrar curso");
			request.getRequestDispatcher("curso.jsp").forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
