<%@page import="java.util.LinkedList"%>
<%@page import="entities.Plato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/listadoPlatos.css">
    <script src="https://kit.fontawesome.com/b95dc486b7.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Foodtruck</title>

<%LinkedList<Plato> lp = (LinkedList<Plato>)request.getAttribute("listadoPlato"); %>
</head>
<body>
<header>
        <div class="header">
            <div class="header__container">
                <nav><a>Logo</a></nav>
                <nav><a>Pedidos</a></nav>
                <nav><a>Productos</a></nav>
                <nav><a href="administracion.html">Administración</a></nav>
            </div>
        </div>
    </header>

<div>

	<div class="tabla">
		<div class="tabla_:container">
			<table>
			<thead>
			<tr>
				<th>Id</th>
				<th>Nombre</th>
				<th>Receta</th>
				<th>Precio</th>
				<th>Descripción</th>
				<th>Editar</th>
				<th>Borrar</th>
			</tr>
			</thead>
			<tbody>
			<% for (Plato p : lp){ %>
				<tr>
					<td><%=p.getId()%></td>
					<td><%=p.getNombre()%></td>
					<td><%=p.getReceta()%></td>
					<td><%=p.getPrecio()%></td>
					<td><%=p.getDescripcion()%></td>
					<td><a href="editplato?id=<%=p.getId()%>">editar</a></td>
					<td><a href="deleteplato?id=<%=p.getId()%>">borrar</a></td>
					<td class="link"><a href="#"><i class="fa-solid fa-pencil"></i></a></td>
                    <td class="link"><a href="#"><i class="fa-regular fa-circle-xmark"></i></a></td>
				</tr>
				
			<%} %>
			</tbody>
		</table>
		<a class="button" href="nuevoPlato2.html">Nuevo Plato</a>
		</div>
	</div>

		
		
	</div>

</body>
</html>