package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.bind.annotation.CrossOrigin;

@Entity
@CrossOrigin
public class Agenda implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idagenda;
	private Integer idempelado;
	private Integer idarea;
	private Integer idclinica;
	private Integer idcliente;
	private Integer idservicio;
	private Integer idestado;
	private Integer hora_ingreso;
	private Integer hora_salida;
	private Date fecha;
	
	public Integer getIdagenda() {
		return idagenda;
	}
	public void setIdagenda(Integer idagenda) {
		this.idagenda = idagenda;
	}
	public Integer getIdempelado() {
		return idempelado;
	}
	public void setIdempelado(Integer idempelado) {
		this.idempelado = idempelado;
	}
	public Integer getIdarea() {
		return idarea;
	}
	public void setIdarea(Integer idarea) {
		this.idarea = idarea;
	}
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	public Integer getIdcliente() {
		return idcliente;
	}
	public void setIdcliente(Integer idcliente) {
		this.idcliente = idcliente;
	}
	public Integer getIdservicio() {
		return idservicio;
	}
	public void setIdservicio(Integer idservicio) {
		this.idservicio = idservicio;
	}
	public Integer getIdestado() {
		return idestado;
	}
	public void setIdestado(Integer idestado) {
		this.idestado = idestado;
	}
	public Integer getHora_ingreso() {
		return hora_ingreso;
	}
	public void setHora_ingreso(Integer hora_ingreso) {
		this.hora_ingreso = hora_ingreso;
	}
	public Integer getHora_salida() {
		return hora_salida;
	}
	public void setHora_salida(Integer hora_salida) {
		this.hora_salida = hora_salida;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
}
