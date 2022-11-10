<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "resultado.jsp" method = "post">
Escoje una categoria: 
<%
Categoria categoria = new Categoria();  
String combo = categoria.mostrarCategoria();
out.print(combo);
%>

</form>

</body>
</html>