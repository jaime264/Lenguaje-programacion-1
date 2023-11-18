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
</head>
<body>

	<div class="container">

		<div>
			<ul class="nav nav-tabs">
				<li class="nav-item"><a href="#" class="nav-link active"
					aria-current="page">Principal</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
					role="button" aria-expanded="false">Mantenedores</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Productos</a></li>
						<li><a class="dropdown-item" href="#">Ventas</a></li>
						<li><a class="dropdown-item" href="#">Almacen</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Ayuda</a></li>

					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#">Reportes</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Soporte</a></li>
			</ul>
		</div>

		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingOne">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
						ariacontrols="panelsStayOpen-collapseOne">Principales
						Noticias</button>
				</h2>
				<div id="panelsStayOpen-collapseOne"
					class="accordion-collapse collapse-show"
					aria-labelledby="panelsStayOpen-headingOne">
					<div class="accordion-body">Lorem Ipsum is simply dummy text
						of the printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown printer took a galley of type and scrambled it to make a
						type specimen book. It has survived not only five centuries,</div>
				</div>
			</div>
			
			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true"
						ariacontrols="panelsStayOpen-collapseTwo">Ultimas 
						Noticias</button>
				</h2>
				<div id="panelsStayOpen-collapseTwo"
					class="accordion-collapse collapse-show"
					aria-labelledby="panelsStayOpen-headingTwo">
					<div class="accordion-body">Lorem Ipsum is simply dummy text
						of the printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown printer took a galley of type and scrambled it to make a
						type specimen book. It has survived not only five centuries,</div>
				</div>
			</div>
			
		</div>
		
		<br>

		<div class="card text-center">
			<div class="card-header">Footer</div>
			<div class="card-body">
				<h5 class="card-title">Cibertec</h5>
				<p class="card-text">Creado y soportado por cibertec</p>
				<a href="#" class="btn btn-primary">Contactanos</a>
			</div>
			<div class="card-footer text-muted">2023</div>
		</div>


	</div>


</body>
</html>