<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Usuarios</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<header>
	<h1>Registrar Usuarios</h1>
</header>
<nav>
	<a class="active" href="index.jsp">Página de Inicio</a>
</nav>
<body>
	<section>
		<form action="resultadoUsu.jsp" method="post">
			<table border="5">
				<tr>
					<td>Nombre:<input type="text" name="txtNombre" maxlength="50"
						required />*
					</td>
				</tr>


				<tr>
					<td>Cedula<input type="text" name="txtCedula" maxlength="10" />
					</td>
				</tr>

				<tr>
					<td>Contraseña<input type="text" name="txtContra" />
					</td>
				</tr>


				<tr>
					<td>Estado Civil <select name="cmbCivil">
							<option value="Soltero">Soltero</option>
							<option value="Casado">Casado</option>
							<option value="Divorciado">Divorciado</option>
					</select>
				</tr>

				<tr>
					<td>Lugar residencia <input type="radio" name="rdResidencia"
						value="Note" />Norte <input type="radio" name="rdResidencia"
						value="Centro" />Centro <input type="radio" name="rdResidencia"
						value="Sur" />Sur
					</td>
				</tr>
				<tr>
					<td>Mes y año de nacimiento</td>
					<td><input type="date" name="fecha" /></td>
				</tr>

				<tr>
					<td>Color Favorito <input type="color" name="colorFavorito" /></td>
				</tr>
				<tr>
					<td><input type="submit" /> <input type="reset" /></td>
				</tr>
			</table>
		</form>
	</section>

</body>
</html>