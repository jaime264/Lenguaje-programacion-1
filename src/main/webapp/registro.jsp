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

<style type="text/css">
.my-error-class {
	color: #FF0000; /* red */
}

.my-valid-class {
	color: #00CC00; /* green */
}
</style>
</head>
<body>

	<div class="container">
		<h3>Registrar Cursos</h3>

		<br />
		<form action="RegistroServlet" method="post" name="registroCurso">
			<div class="form-group">
				<label>Codigo</label> <input class="form-control" type="text"
					name="txtCode" id="txtCode" />
			</div>
			<div class="form-group">
				<label>Nombre</label> <input class="form-control" type="text"
					name="txtName" id="txtName" />
			</div>
			<div class="form-group">
				<label>Nivel</label> <input class="form-control" type="text"
					name="txtLevel" id="txtLevel" />
			</div>
			<div class="form-group">
				<label>Profesor</label> <input class="form-control" type="text"
					name="txtTeacher" id="txtTeacher" />
			</div>
			<br /> <input class="btn btn-primary" type="submit"
				value="Enviar Datos" />
		</form>
	</div>

	<script type="text/javascript">
		$(function() {
			$("form[name='registroCurso']").validate({
				errorClass : "my-error-class",
				validClass : "my-valid-class",
				rules : {
					txtCode : {
						required : true
					},
					txtName : {
						required : true
					},
					txtLevel : {
						required : true
					},
					txtTeacher : {
						required : true
					}
				},
				messages : {
					txtCode : {
						required : "Ingrese el codigo",
					},
					txtName : {
						required : "Ingrese el nombre ",
					},
					txtLevel : {
						required : "Ingrese el level",
					},
					txtTeacher : {
						required : "Ingrese el profesor",
					},

				},
				submitHandler : function(form) {
					form.submit();
				}
			});
		});
	</script>


</body>
</html>