package demo_sesion_01.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo_sesion_01.model.Curso;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegistroServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("txtCode");
		String nombre = request.getParameter("txtName");
		String nivel = request.getParameter("txtLevel");
		String profesor = request.getParameter("txtTeacher");

		Curso c = new Curso();
		c.setCode(code);
		c.setNombre(nombre);
		c.setNivel(nivel);
		c.setProfesor(profesor);

		request.setAttribute("curso", c);
		request.getRequestDispatcher("datosCurso.jsp").forward(request, response);

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
