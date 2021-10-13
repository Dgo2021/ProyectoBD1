package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Clinica {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdClinica;
	private Integer IdDepartamento;
	private String Clinica;
	private String Direccion;
	public Integer getIdClinica() {
		return IdClinica;
	}
	public void setIdClinica(Integer idClinica) {
		IdClinica = idClinica;
	}
	public Integer getIdDepartamento() {
		return IdDepartamento;
	}
	public void setIdDepartamento(Integer idDepartamento) {
		IdDepartamento = idDepartamento;
	}
	public String getClinica() {
		return Clinica;
	}
	public void setClinica(String clinica) {
		Clinica = clinica;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	
}
