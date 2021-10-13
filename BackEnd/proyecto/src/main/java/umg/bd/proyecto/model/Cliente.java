package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdCliente;
	private Integer IdPersona;
	
	public Integer getIdCliente() {
		return IdCliente;
	}
	public void setIdCliente(Integer idCliente) {
		IdCliente = idCliente;
	}
	public Integer getIdPersona() {
		return IdPersona;
	}
	public void setIdPersona(Integer idPersona) {
		IdPersona = idPersona;
	}
	

}
