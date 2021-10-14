package umg.bd.proyecto.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "Departamento")
public class Departamento implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Basic(optional = false)
	
	//private Integer IdDepartamento;
	@Column(name="departamento")
	private String Departamento;
	
	@Column(name = "iddepartamento")
	private Integer iddepartamento;
	
	/*public Integer getIdDepartamento() {
		return IdDepartamento;
	}
	public void setIdDepartamento(Integer idDepartamento) {
		IdDepartamento = idDepartamento;
	}*/
	public String getDepartamento() {
		return Departamento;
	}
	public void setDepartamento(String departamento) {
		Departamento = departamento;
	}
	public Integer getIddepartamento() {
		return iddepartamento;
	}
	public void setIddepartamento(Integer iddepartamento) {
		this.iddepartamento = iddepartamento;
	}
	
}
