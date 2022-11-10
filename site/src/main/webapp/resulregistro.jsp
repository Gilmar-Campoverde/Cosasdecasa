<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<header>
		<h1>Almacen Cosas de Casa</h1>
	</header>
	<head>
		<title>Almacen Cosas de Casa</title>
		<link href="css/estilos.css" rel="stylesheet" type="text/css">
	</head>
	<nav>

		<a href="categoria.jsp">Buscar Por Categoria</a>
		<a href="nuevoProducto.jsp">Buscar Por Categoria</a>

	</nav>
</head>
<body>
	<section>
        <%
    int id=Integer.parseInt(request.getParameter("txtid"));
    int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
    String desc=request.getParameter("txtnombre");
    int cant=Integer.parseInt(request.getParameter("txtcantidad"));
    Double precio=Double.parseDouble(request.getParameter("txtprecio"));
    Producto producto=new Producto();
    out.print(producto.ingresarProducto(id,cat,desc,cant,precio));
    %>
       </section>

</body>
</html>