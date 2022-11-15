package com.productos.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Producto {
	private int id;
	private String nombre;
	private int cantidad;
	private double precio;

	public Producto() {
		setId(0);
		setNombre("");
		setPrecio(0);
		setCantidad(0);
	}
	public Producto (int cod, String desc, float pre, int can) {
		setId(cod);
		setNombre(desc);
		setPrecio(pre);
		setCantidad(can);
	}
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr"; 
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>"; ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next()) {
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td>"
						+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) +
						"><pre style=\"text-align:center\">Modificar</pre></a></td>"
						+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + 
						" \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			//TODO Auto-generated catch block e.printStackTrace(); System.out.print(e.getMessage());
		} 
		tabla+="</table>"; 
		return tabla;
	}

	public void ConsulEditarProductos(int cod)	{
		Conexion obj = new Conexion();
		String sql="SELECT id_pr, id_cat,descripcion_pr,cantidad_pr,precio_pr FROM tb_producto where id_pr = '" +cod+ "'"; 
		ResultSet rs = null;
		try {
			rs = obj.Consulta(sql);
			while (rs.next()) {
				setId(rs.getInt(1));
				setCantidad(rs.getInt(2));
				setNombre(rs.getString(3));
				setCantidad(rs.getInt(4));
				setPrecio(rs.getFloat(5));
			}
		}catch(Exception e) {
		}
	}

	public boolean ModificarProducto(Producto mp) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE tb_producto SET descripcion_pr ='" + mp.getNombre() + "', precio_pr = '" + mp.getPrecio() + "', "
				+ "cantidad_pr = '" + mp.getCantidad() + "' WHERE \"id_pr\"='" + mp.getId() + "'"; 
		try {
			obj.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr='" + cod + "'";
		try {
			con.Ejecutar(sql);
			f = true;
		} catch (Exception e) {
			f = false;
		}
		return f;
	}

	public String buscarProductoCategoria(int cat) {
		String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try	{
			rs=con.Consulta(sentencia); 
			while(rs.next()) {
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e) {
			System.out.print(e.getMessage()); 
		}
		System.out.print(resultado);
		return resultado;
	}

	public String ingresarProducto(int id, int cat,String nombre, 
			int cantidad, double precio) {
		String result="";
		Conexion con=new Conexion(); 
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pr,id_cat,"
				+ "descripcion_pr,cantidad_pr,precio_pr) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql); pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			if(pr.executeUpdate()==1){
				result="Inserción correcta"; 
			}else {
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


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


}
