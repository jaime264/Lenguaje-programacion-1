<%@page import="demo_sesion_01.model.Curso"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
</head>
</head>
<style type="text/css">
.my-error-class {
	color: #FF0000; /* red */
}

.my-valid-class {
	color: #00CC00; /* green */
}
</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<br> <br>
				<h3>Registrar Cursos</h3>
				<form action="CursoServlet?type=registrar" method="post" name="cursoRegistration">
					<div class="form-group">
						<label>Id</label> <input class="form-control" type="text" value="${curso.id}"
							name="txtId" id="txtId" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Código</label> <input class="form-control" type="number"  value="${curso.codigo}"
							name="txtCodigo" id="txtCodigo">
					</div>
					<br>
					<div class="form-group">
						<label>Nombre</label> <input class="form-control" type="text"  value="${curso.nombre}"
							name="txtNombre" id="txtNombre">
					</div>
					<br>
					<div class="form-group">
						<label>Nivel</label> <input class="form-control" type="text"  value="${curso.nivel}"
							name="txtNivel" id="txtNivel">
					</div>
					<br>
					<div class="form-group">
						<label>Profesor</label> <input class="form-control" type="text"  value="${curso.profesor}"
							name="txtProfesor" id="txtProfesor">
					</div>
					<br> <input type="submit" class="btn btn-primary"
						value="Enviar Datos">
				</form>
			</div>

			<div class="col-9" style="padding-top: 4em">
				<table class="table table-success table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Código</th>
							<th>Nombre</th>
							<th>Nivel</th>
							<th>Profesor</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>	
					<%
						List<Curso> listCursos = (List<Curso>) request.getAttribute("listCursos");
						if(listCursos != null){
							for(Curso c : listCursos){
					%>					
						<tr>
							<td><%=c.getId() %></td>
							<td><%=c.getCodigo() %></td>
							<td><%=c.getNombre() %></td>
							<td><%=c.getNivel() %></td>
							<td><%=c.getProfesor() %></td>
							<td>
								<a href="CursoServlet?type=obtener&id=<%=c.getId() %>" class="btn btn-primary">Editar</a>
								<a href="CursoServlet?type=eliminar&id=<%=c.getId() %>" class="btn btn-danger">Eliminar</a>
							</td>
						</tr>
						<%	}
						} %>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$("form[name='cursoRegistration']")
					.validate(
							{
								errorClass : "my-error-class",
								validClass : "my-valid-class",
								rules : {
									txtCodigo : {
										required : true,
										minlength : 6
									},
									txtNombre : {
										required : true,
										minlength : 2
									},
									txtNivel : {
										required : true,
										minlength : 3
									},
									txtProfesor : {
										required : true,
										minlength : 2
									}
								},
								messages : {
									txtCodigo : {
										required : "Ingrese el codigo",
										minlength : "El codigo debe tener minimo 6 caracteres"
									},
									txtNombre : {
										required : "Ingrese el nombre del curso",
										minlength : "El curso debe tener minimo 2 caracteres"
									},
									txtNivel : {
										required : "Ingrese el nivel",
										minlength : "El nivel debe tener minimo 3 caracteres"
									},
									txtProfesor : {
										required : "Ingrese el profesor",
										minlength : "El profesor debe tener minimo 2 caracteres"
									}
								},
								submitHandler : function(form) {
									form.submit();
								}
							});
		});
	</script>
</body>


</body>
</html>