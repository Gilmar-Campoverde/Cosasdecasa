<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<header>
	<h1>Almacen Cosas de Casa</h1>
</header>
<head>
<title>Almacen Cosas de Casa</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<nav>
	<a class="active" href="index.jsp">Página de Inicio</a> <a
		class="active" href="verProd.jsp">Ver Productos</a> <a
		href="todos.jsp">Consultar todos los productos</a> <a
		href="nuevoProducto.jsp">Registrar Productos</a>
</nav>
<body>
	<section>
		<%
    int cod=Integer.parseInt(request.getParameter("cod"));
    Producto cp = new Producto();
    boolean f = cp.EliminarProducto(cod);
    if(f == true){
    	response.sendRedirect("categoria.jsp");
    }
    %>
	</section>
</body> 	
</html>