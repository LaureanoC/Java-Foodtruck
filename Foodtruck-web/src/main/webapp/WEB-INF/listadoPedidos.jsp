<!DOCTYPE html>
<%@page import="entities.Bebida"%>
<%@page import="entities.Plato"%>
<%@page import="entities.LineaPedido"%>
<%@page import="entities.Pedido"%>
<%@page import="java.util.LinkedList"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/reset.css">
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/listadopedidos.css">
    
<%LinkedList<Pedido> pedidos = (LinkedList<Pedido>)request.getAttribute("pedidos"); %>
    <title>Foodtruck</title>
</head>
<body>
  <jsp:include page="header.jsp"/>
    <h1>Pedidos</h1>
<main>
        <div class = "pedidos">
            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>

            <div class="pedido">
                <div class="pedido__header">
                    <div class="nro">24</div>
                    
                </div>
        
                <div class="pedido__content">
                   
                    <div class="lineas">
                        <div class="linea">
                            
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Milanesa con lechuga, tomate, morrón y cebolla caramelizada</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
    
                        <div class="linea">
                        
                            <div class="linea__content">
                                <p class="linea__titulo">Doble completa</p>
                                <p class="linea__desc">Jamón, queso cheddar, tomate</p>
                
                            </div>
                            <p class="cantidad">x1</p>
                        </div>
                        <a class="button">Entregar</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    
</body>
</html>