<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<header>
	<h1>Registrar Productos</h1>
</header>
<nav>
	<a class="active" href="index.jsp">Página de Inicio</a> 
	<a href="categoria.jsp">Buscar Por Categoria</a> 
	
</nav>
</head>
<body>
	<form action="resulregistro.jsp" method="post">
		<table border="0">
			<tr>
				<td>Id</td>
				<td><input type="number" name="txtid" required />*</td>
			</tr>
			<tr>
				<td>Categoria</td>
				<td>
					<%
					Categoria categoria = new Categoria();  
					String combo = categoria.mostrarCategoria();
					out.print(combo);
					%>
				</td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="txtnombre" required /> *</td>
			</tr>
			<tr>
				<td>Cantidad</td>
				<td><input type="number" name="txtcantidad" required /> *</td>
			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="number" name="txtprecio" required /> *</td>
			</tr>
			<tr>
				<td><input type="submit" value="REGISTRAR" /></td>
				<td><input type="reset" value="BORRAR" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
