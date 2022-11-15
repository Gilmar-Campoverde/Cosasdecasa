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

</nav>
</head>
<body>
	<br>
	<section>
		<%
		int cod = Integer.parseInt(request.getParameter("cod"));
		Producto mp = new Producto();
		mp.ConsulEditarProductos(cod);
		%>
		<form action="EditarProductos.jsp" method="post">
			<table>
				<tr>
					<td>Codigo Producto: </td>
					<td><input type="text" name="editarcod" value="<%=cod%>" /></td>
				</tr>
				<tr>
					<td>Categoria: </td>
					<td><output><%=mp.getCantidad()%></output></td>
				</tr>
				<tr>
					<td>Descripcion: </td>
					<td><input type="text" name="editardesc"
						value="<%=mp.getNombre()%>" /></td>
				</tr>
				<tr>
					<td>Precio: </td>
					<td><input type="number" name="editarprec"
						value="<%=mp.getPrecio()%>" /></td>
				</tr>
				<tr>
					<td>Cantidad: </td>
					<td><input type="number" name="editarcant"
						value="<%=mp.getCantidad()%>" /></td>
				</tr>
			</table>
					<br><br><input type="submit" value="ACTUALIZAR" />
		</form>
	</section>
	
</body>
</html>