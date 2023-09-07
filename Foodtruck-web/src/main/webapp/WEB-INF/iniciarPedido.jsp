<!DOCTYPE html>
<%@page import="entities.Bebida"%>
<%@page import="entities.Plato"%>
<%@page import="java.util.LinkedList"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/reset.css">
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/iniciarpedido.css">
    
<title>Foodtruck</title>

<% LinkedList<Plato> platos = (LinkedList<Plato>) request.getAttribute("listadoplatos");%>
<% LinkedList<Bebida> bebidas = (LinkedList<Bebida>) request.getAttribute("listadobebidas");%>

</head>
<body>
	 <jsp:include page="header.jsp"/>
	
	<div class="form">
        <form action="nuevopedido" method="post">
			
			<% for (Plato plato : platos){ %>
				<label><%=plato.getNombre()%></label>
				<input type="checkbox" name="checkbox" value="<%=plato.getNombre()%>" id="<%=plato.getNombre()%>">
			<%} %>
			
			<% for (Bebida bebida : bebidas){ %>
				<label><%=bebida.getNombre()%></label>
				<input type="checkbox" name="checkbox" value="<%=bebida.getNombre()%>" id="<%=bebida.getNombre()%>">
			<%} %>
            
            
                <button class="button" type="submit">Agregar</button>	
            </div>      
        </form>

        <div class="container">

            <h1>Platos</h1>
            <div class="productos">

				<%for (Plato plato : platos){ %>
				<div class ="producto">
                    <div class="producto__container" id="<%=plato.getNombre()%>">
                        <img src="<%=plato.getFoto()%>" id="<%=plato.getNombre()%>"/>
                        <p class="titulo" id="<%=plato.getNombre()%>"><%=plato.getNombre()%></p>
                        <p class="precio" id="<%=plato.getNombre()%>">$<%=plato.getPrecio()%></p>
                    </div>
                </div>
				<%} %>
                


            </div>

        </div>


    </div>

    <script src="js/iniciarpedido.js"></script>
</body>
</html>