package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name= "Clinica")
public class Clinica implements Serializable {
	
	private static final long serialVersionUID = 2L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Basic(optional = false)
	
	@Column(name= "idclinica")
	private Integer IdClinica;
	
	@OneToMany(mappedBy = "iddepartamento")
	private List<Departamento> iddepartamentoList;
	
	//private Integer IdDepartamento;
	@Column(name= "clinica")
	private String Clinica;
	
	@Column(name= "direccion")
	private String Direccion;
	
	public List<Departamento> getIddepartamentoList() {
		return iddepartamentoList;
	}
	public void setIddepartamentoList(List<Departamento> iddepartamentoList) {
		this.iddepartamentoList = iddepartamentoList;
	}
	public Integer getIdClinica() {
		return IdClinica;
	}
	public void setIdClinica(Integer idClinica) {
		IdClinica = idClinica;
	}
	/*public Integer getIdDepartamento() {
		return IdDepartamento;
	}
	public void setIdDepartamento(Integer idDepartamento) {
		IdDepartamento = idDepartamento;
	}*/
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
