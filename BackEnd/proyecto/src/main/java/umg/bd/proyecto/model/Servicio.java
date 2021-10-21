package umg.bd.proyecto.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Servicio implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private Integer idservicio;
	private Integer idarea;
	private Integer idclinica;
	private String servicio;
	private Double precio;
	
	public Integer getIdservicio() {
		return idservicio;
	}
	public void setIdservicio(Integer idservicio) {
		this.idservicio = idservicio;
	}
	public Integer getIdarea() {
		return idarea;
	}
	public void setIdarea(Integer idarea) {
		this.idarea = idarea;
	}
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	public String getServicio() {
		return servicio;
	}
	public void setServicio(String servicio) {
		this.servicio = servicio;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	
}
