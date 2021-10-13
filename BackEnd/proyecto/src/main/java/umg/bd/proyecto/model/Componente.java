package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Componente {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdComponentes;
	private String Componentes;
	public Integer getIdComponentes() {
		return IdComponentes;
	}
	public void setIdComponentes(Integer idComponentes) {
		IdComponentes = idComponentes;
	}
	public String getComponentes() {
		return Componentes;
	}
	public void setComponentes(String componentes) {
		Componentes = componentes;
	}
}
