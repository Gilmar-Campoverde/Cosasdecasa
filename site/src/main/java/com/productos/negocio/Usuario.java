package com.productos.negocio;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Usuario {


	private String nombre;
	private String cedula;
	private String color;
	private String contra;
	private String residencia;
	private String estado;
	private String edad;


	private InputStream foto;

	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getCedula() {
		return cedula;
	}


	public void setCedula(String cedula) {
		this.cedula = cedula;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public String getContra() {
		return contra;
	}


	public void setContra(String contra) {
		this.contra = contra;
	}


	public String getResidencia() {
		return residencia;
	}


	public void setResidencia(String residencia) {
		this.residencia = residencia;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	public InputStream getFoto() {
		return foto;
	}


	public void setFoto(InputStream foto) {
		this.foto = foto;
	}

	public String consultarUsuarios()
	{
		String sql="SELECT * FROM tb_usuario ORDER BY cedula_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Cedula</th><th>Nombre</th><th>Edad</th><th>Residencia</th><th>Estado</th><th>Color</th><th>Contraseña</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getString(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getString(4)+"</td>"
						+ "<td>"+rs.getString(5)+"</td>"
						+ "<td>"+rs.getString(6)+"</td>"
						+ "<td>"+rs.getString(7)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	public String ingresarUsuario(String nombre, String cedula,String estado, String edad, String color,String contra,String lugar)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (cedula_pr,nombre_pr,edad_pr,"
				+ "residencia_pr,estado_pr,color_pr,contra_pr) "
				+ "VALUES(?,?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1,cedula);
			pr.setString(2, nombre);
			pr.setString(3, edad);
			pr.setString(4,lugar);	
			pr.setString(5, estado);
			pr.setString(6, color);
			pr.setString(7, contra);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		} catch(Exception ex) {
			result=ex.getMessage();
		}  finally {
			try {
				pr.close();
				con.getConexion().close();
			}catch(Exception ex) {
				System.out.print(ex.getMessage());
			}
		}return result;
	}


	public String getEdad() {
		return edad;
	}


	public void setEdad(String edad) {
		this.edad = edad;
	}

}