package com.productos.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Categoria {
	private int id_cat;
	private String descripcion;

	public Categoria() {

	}

	public int getId_cat() {
		return id_cat;
	}
	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String mostrarCategoria() {
		String combo="<select name=cmbCategoria>"; 
		String sql="SELECT * FROM tb_categoria"; 
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql); 
			while(rs.next())
			{
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo+="</select>";
		}
		catch(SQLException e) {
			System.out.print(e.getMessage()); 
		}
		return combo;
	}



}
