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
						<label>Id</label> <input class="form-control" type="text"
							name="txtId" id="txtId" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Código</label> <input class="form-control" type="number"
							name="txtCodigo" id="txtCodigo">
					</div>
					<br>
					<div class="form-group">
						<label>Nombre</label> <input class="form-control" type="text"
							name="txtNombre" id="txtNombre">
					</div>
					<br>
					<div class="form-group">
						<label>Nivel</label> <input class="form-control" type="text"
							name="txtNivel" id="txtNivel">
					</div>
					<br>
					<div class="form-group">
						<label>Profesor</label> <input class="form-control" type="text"
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
						<tr>
							<td>1</td>
							<td>2414</td>
							<td>Seguridad de Aplicaciones</td>
							<td>Intermedio</td>
							<td>Jose Gomez</td>
							<td>
								<button type="button" class="btn btn primary">Editar</button>
								<button type="button" class="btn btn-danger">Eliminar</button>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>1956</td>
							<td>Desarrollo de Aplicaciones Móviles I</td>
							<td>Avanzado</td>
							<td>Diana Vera</td>
							<td>
								<button type="button" class="btn btn-primary">Editar</button>
								<button type="button" class="btn btn-danger">Eliminar</button>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>7878</td>
							<td>Programación Orientada a Objetos I</td>
							<td>Intermedio</td>
							<td>Julio Sanchez</td>
							<td>
								<button type="button" class="btn btn-primary">Editar</button>
								<button type="button" class="btn btn-danger">Eliminar</button>
							</td>
						</tr>
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