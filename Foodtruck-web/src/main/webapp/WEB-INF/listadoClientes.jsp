<%@page import="java.util.LinkedList"%>
<%@page import="entities.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style/header.css">
<link rel="stylesheet" href="style\listadoClientes.css">
<script src="https://kit.fontawesome.com/b95dc486b7.js" crossorigin="anonymous"></script>

<title>Foodtruck</title>

<%LinkedList<Cliente> lc = (LinkedList<Cliente>)request.getAttribute("listaclientes"); %>
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

<div class="tabla">
		<div class="tabla__container">
            <h1>Listado de Clientes</h1>
            <table>
                <thead>
                <tr>
                    <th>DNI</th>
                    <th>Nombre</th>
                    <th>Dirección</th>
                    <th>Editar</th>
                    <th>Borrar</th>
                </tr>
                </thead>
                <tbody>
                <% for (Cliente c : lc){ %>
                    <tr>
                        <td><%=c.getDni() %></td>
                        <td><%=c.getNombre() %></td>
                        <td><%=c.getDireccion()%></td>
                        <td class="link"><a href="clienteditar?dni=<%=c.getDni()%>"><i class="fa-solid fa-pencil"></i></a></td>
                        <td class="link"><a href="clienteborrar?dni=<%=c.getDni()%>"><i class="fa-regular fa-circle-xmark"></i></a></td>
                    </tr>
                   <%} %>
                
                </tbody>
            </table>
            <a class="button" href="altaCliente.html">Nuevo Cliente</a>
        </div>
	</div>

</html>