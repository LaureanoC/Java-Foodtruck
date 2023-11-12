<%try{ %>

<%@page import="entities.Empleado"%>
<%Empleado e = (Empleado) session.getAttribute("empleado"); %>



<!DOCTYPE html>
<%@page import="entities.Bebida"%>
<%@page import="java.util.Objects"%>
<%@page import="entities.Plato"%>
<%@page import="entities.Cliente"%>
<%@page import="entities.LineaPedido"%>
<%@page import="entities.Pedido"%>
<%@page import="java.util.LinkedList"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/listadoEmpleados.css">
    <script src="https://kit.fontawesome.com/b95dc486b7.js" crossorigin="anonymous"></script>
    
    
<%LinkedList<Pedido> pedidos = (LinkedList<Pedido>)request.getAttribute("pedidos"); %>


    <title>Foodtruck</title>
</head>

<body>
  <jsp:include page="header.jsp"/>

    
<main>
       <div class="tabla">
		<div class="tabla__container">
            <h1>Listado de Pedidos por Fecha</h1>
            <table>
                <thead>
                <tr>
                    <th>Numero</th>
                    <th>Estado</th>
                    <th>Fecha</th>
                    <th>Total</th>
                </tr>
                </thead>
                <tbody>
                <% for (Pedido p : pedidos){ %>
                    <tr>
                        <td><%=p.getId()%></td>
                        <td><%=p.getEstado()%></td>
                        <td><%=p.getFechaHora()%></td>
                        <td><%=p.getTotal() %></td>  
                    </tr>
            
               <%} %>
                </tbody>
           
            </table>
            <a href="listadopedido" class="button">Volver</a>
         
        </div>

	</div>

	

		      
            
	
  </main>
  
  
          
         
		
    
		
		


</body>
</html>

<% }catch (Exception e){

	response.sendRedirect("login");
}%>