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
    int cod=Integer.parseInt(request.getParameter("editarcod"));
    String desc=request.getParameter("editardesc");
    float pre=Float.parseFloat(request.getParameter("editarprec"));
    int can=Integer.parseInt(request.getParameter("editarcant"));
    Producto mp = new Producto(cod, desc, pre, can);
    boolean actualizado = mp.ModificarProducto(mp);
    if(actualizado == true){
    	response.sendRedirect("categoria.jsp");
    }else{
        out.println("Algo salio mal");
    }
    %>
	</section>
</body>
</html>