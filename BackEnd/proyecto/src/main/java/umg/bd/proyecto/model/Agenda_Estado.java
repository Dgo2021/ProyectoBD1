package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Agenda_Estado {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdEstado;
	private String Estado;
	public Integer getIdEstado() {
		return IdEstado;
	}
	public void setIdEstado(Integer idEstado) {
		IdEstado = idEstado;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}

}
