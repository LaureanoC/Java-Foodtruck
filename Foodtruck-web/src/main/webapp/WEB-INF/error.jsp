<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%String mensaje = (String) request.getAttribute("mensaje"); %>
<meta charset="UTF-8">
<title>ERROR</title>
</head>
<body>
<p><%=mensaje %></p>
</body>
</html>