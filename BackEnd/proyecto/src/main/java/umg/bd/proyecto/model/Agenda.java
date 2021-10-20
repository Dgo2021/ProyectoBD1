package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Agenda implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idagenda;
	private Integer idclinica;
	private Integer idarea;
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	public Integer getIdarea() {
		return idarea;
	}
	public void setIdarea(Integer idarea) {
		this.idarea = idarea;
	}
	private Integer hora_ingreso;
	private Date fecha;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idempleado", referencedColumnName = "idempleado")
	private Empleado empleado;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idcliente", referencedColumnName = "idcliente")
	private Cliente cliente;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idservicio", referencedColumnName = "idservicio")
	private Servicio servicio;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idestado", referencedColumnName = "idestado")
	private Agenda_Estado estado;
	
	public Agenda_Estado getEstado() {
		return estado;
	}
	public void setEstado(Agenda_Estado estado) {
		this.estado = estado;
	}
	public Servicio getServicio() {
		return servicio;
	}
	public void setServicio(Servicio servicio) {
		this.servicio = servicio;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Empleado getEmpleado() {
		return empleado;
	}
	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	public Integer getIdagenda() {
		return idagenda;
	}
	public void setIdagenda(Integer idagenda) {
		this.idagenda = idagenda;
	}
	public Integer getHora_ingreso() {
		return hora_ingreso;
	}
	public void setHora_ingreso(Integer hora_ingreso) {
		this.hora_ingreso = hora_ingreso;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
}
