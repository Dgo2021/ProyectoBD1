package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Persona implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idpersona;
	private String nombres;
	private String apellidos;
	private Date fecha_nacimiento;
	private Integer identificacion;
	private String nit;
	private String genero;
	private Integer telefono1;
	private Integer telefono2;
	public Integer getIdpersona() {
		return idpersona;
	}
	public void setIdpersona(Integer idpersona) {
		this.idpersona = idpersona;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}
	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}
	public Integer getIdentificacion() {
		return identificacion;
	}
	public void setIdentificacion(Integer identificacion) {
		this.identificacion = identificacion;
	}
	public String getNit() {
		return nit;
	}
	public void setNit(String nit) {
		this.nit = nit;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public Integer getTelefono1() {
		return telefono1;
	}
	public void setTelefono1(Integer telefono1) {
		this.telefono1 = telefono1;
	}
	public Integer getTelefono2() {
		return telefono2;
	}
	public void setTelefono2(Integer telefono2) {
		this.telefono2 = telefono2;
	}
	
}
