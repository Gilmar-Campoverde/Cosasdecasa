<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<main>
	<head>
<title>Productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
	</head>
	<header>
		<h1>Informacion de todos Productos</h1>
	</header>
	<nav>
		<a href="categoria.jsp">Buscar Por Categoria</a>

	</nav>
</main>
<br>
<%
	Producto producto=new Producto();
	out.print(producto.consultarTodo());
	%>
</body>
</html>