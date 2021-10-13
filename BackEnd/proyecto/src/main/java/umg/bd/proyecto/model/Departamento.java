package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Departamento {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdDepartamento;
	private String Departamento;
	public Integer getIdDepartamento() {
		return IdDepartamento;
	}
	public void setIdDepartamento(Integer idDepartamento) {
		IdDepartamento = idDepartamento;
	}
	public String getDepartamento() {
		return Departamento;
	}
	public void setDepartamento(String departamento) {
		Departamento = departamento;
	}
	
}
