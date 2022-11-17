<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Usuarios</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<header>
	<h1>Resultado Usuarios</h1>
</header>
<nav>
	<a class="active" href="registroUsu.jsp">Registro Usuarios</a>
</nav>
<body>
	<section>
				<%
				String nombre = request.getParameter("txtNombre");
				String cedula = request.getParameter("txtCedula");
				String estadoCivil = request.getParameter("cmbCivil");
				String fechas = request.getParameter("fecha");
				String color = request.getParameter("colorFavorito");
				String contra = request.getParameter("txtContra");
				String residencia = request.getParameter("rdResidencia");

				Usuario usuario = new Usuario();
				out.print(usuario.ingresarUsuario(nombre, cedula, estadoCivil, fechas, color, contra, residencia));
				%>
				<br>
			
				<% out.print(usuario.consultarUsuarios());%>
	</section>

</body>
</html>