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
<body>

	<div class="container">

		<h1>Mantenimiento web</h1>
		<form action="" name="registration">
			<label for="email">Correo</label> <input type="email" name="email"
				id="email" placeholder="Correo" /> <label for="password">Clave</label>
			<input type="password" name="password" id="password"
				placeholder="Contraseña" />
			<button type="submit" class="btn btn-primary">Iniciar Sesión</button>
		</form>
	</div>

	<script type="text/javascript">
		$(function() {
			$("form[name='registration']")
					.validate(
							{
								rules : {
									email : {
										required : true,
										email : true
									},
									password : {
										required : true,
										minlength : 8
									}
								},
								messages : {
									password : {
										required : "Ingrese su contraseña",
										minlength : "Tu contraseña debe tener al menos 5 caracteres"
									},
									email : "Ingrese su correo"
								},
								submitHandler : function(form) {
									form.submit();
								}
							});
		});
	</script>
</body>
</html>