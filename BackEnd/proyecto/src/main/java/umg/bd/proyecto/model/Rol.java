package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rol {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdRol;
	private String Rol;
	
	public Integer getIdRol() {
		return IdRol;
	}
	public void setIdRol(Integer idRol) {
		IdRol = idRol;
	}
	public String getRol() {
		return Rol;
	}
	public void setRol(String rol) {
		Rol = rol;
	}
	
}
