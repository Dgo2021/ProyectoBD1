package umg.bd.proyecto.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.web.bind.annotation.CrossOrigin;

@Entity
@CrossOrigin
public class Empleado implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idempleado;
	//private Integer idpersona;
	private Integer idclinica;
	private Integer idarea;
	private Integer idrol;
	private String contrasenia;
	private String email;
	
	@OneToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "idpersona", referencedColumnName = "idpersona")
	private Persona persona;
	
	public Integer getIdarea() {
		return idarea;
	}
	public void setIdarea(Integer idarea) {
		this.idarea = idarea;
	}
	public Persona getPersona() {
		return persona;
	}
	public void setPersona(Persona persona) {
		this.persona = persona;
	}
	public Integer getIdempleado() {
		return idempleado;
	}
	public void setIdempleado(Integer idempleado) {
		this.idempleado = idempleado;
	}
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	public Integer getIdrol() {
		return idrol;
	}
	public void setIdrol(Integer idrol) {
		this.idrol = idrol;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
