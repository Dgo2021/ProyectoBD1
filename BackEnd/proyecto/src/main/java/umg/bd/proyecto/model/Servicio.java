package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Servicio {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdServicio;
	private Integer IdArea;
	private String Servicio;
	private Double Precio;
	
	public Integer getIdArea() {
		return IdArea;
	}
	public void setIdArea(Integer idArea) {
		IdArea = idArea;
	}
	public Integer getIdServicio() {
		return IdServicio;
	}
	public void setIdServicio(Integer idServicio) {
		IdServicio = idServicio;
	}
	public String getServicio() {
		return Servicio;
	}
	public void setServicio(String servicio) {
		Servicio = servicio;
	}
	public Double getPrecio() {
		return Precio;
	}
	public void setPrecio(Double precio) {
		Precio = precio;
	}
	
	
}
