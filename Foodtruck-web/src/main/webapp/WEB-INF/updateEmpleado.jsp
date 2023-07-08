<%@page import="entities.Empleado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foodtruck</title>
<% String e = (String) request.getAttribute("dni");%>
</head>
<body>

	<form action="empleadoeditar?dni=<%=e%>" method="post">
		<p>Empleado con DNI: <%=e%></p>
		<div>
			<label>Nombre</label>
			<input name="nombre">
		</div>
		<div>
			<label>Turno</label>
			<select name="turno">
		    	<option value="Tarde">Tarde</option>
		    	<option value="Noche">Noche</option>
  			</select>
		</div>
		<div>
			<label>Contraseña</label>
			<input name="password">
		</div>
		<button type="submit">Modificar</button>
		
	</form>

</body>
</html>