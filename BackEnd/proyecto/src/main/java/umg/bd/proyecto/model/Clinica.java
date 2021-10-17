package umg.bd.proyecto.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Clinica implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idclinica;
	private Integer iddepartamento;
	private String clinica;
	private String direccion;
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	public Integer getIddepartamento() {
		return iddepartamento;
	}
	public void setIddepartamento(Integer iddepartamento) {
		this.iddepartamento = iddepartamento;
	}
	public String getClinica() {
		return clinica;
	}
	public void setClinica(String clinica) {
		this.clinica = clinica;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	}
