package umg.bd.proyecto.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Persona {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdPersona;
	private String Nombres;
	private String Apellidos;
	private Date Fecha_Nacimiento;
	private String Identificacion;
	private String Nit;
	private String Genero;
	private Integer Telefono1;
	private Integer Telefono2;
	
	public Integer getIdPersona() {
		return IdPersona;
	}
	public void setIdPersona(Integer idPersona) {
		IdPersona = idPersona;
	}
	public String getNombres() {
		return Nombres;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public String getApellidos() {
		return Apellidos;
	}
	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}
	public Date getFecha_Nacimiento() {
		return Fecha_Nacimiento;
	}
	public void setFecha_Nacimiento(Date fecha_Nacimiento) {
		Fecha_Nacimiento = fecha_Nacimiento;
	}
	public String getIdentificacion() {
		return Identificacion;
	}
	public void setIdentificacion(String identificacion) {
		Identificacion = identificacion;
	}
	public String getNit() {
		return Nit;
	}
	public void setNit(String nit) {
		Nit = nit;
	}
	public String getGenero() {
		return Genero;
	}
	public void setGenero(String genero) {
		Genero = genero;
	}
	public Integer getTelefono1() {
		return Telefono1;
	}
	public void setTelefono1(Integer telefono1) {
		Telefono1 = telefono1;
	}
	public Integer getTelefono2() {
		return Telefono2;
	}
	public void setTelefono2(Integer telefono2) {
		Telefono2 = telefono2;
	}
}
