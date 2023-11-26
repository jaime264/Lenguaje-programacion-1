<%@page import="demo_sesion_01.model.Curso"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% Curso  c = (Curso)request.getAttribute("curso");%>
	
	<h2>
		Codigo curso: <%=c.getCodigo()%> <br>
		Nombre curso: <%=c.getNombre() %> <br>
		Nivel curso: <%=c.getNivel()%> <br>
		Profesor curso: <%=c.getProfesor()%> <br>
	</h2>

</body>
</html>