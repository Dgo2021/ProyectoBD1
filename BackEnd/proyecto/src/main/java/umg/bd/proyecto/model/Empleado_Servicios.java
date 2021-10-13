package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Empleado_Servicios {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdEmpleado;
	private Integer IdServicio;
	public Integer getIdEmpleado() {
		return IdEmpleado;
	}
	public void setIdEmpleado(Integer idEmpleado) {
		IdEmpleado = idEmpleado;
	}
	public Integer getIdServicio() {
		return IdServicio;
	}
	public void setIdServicio(Integer idServicio) {
		IdServicio = idServicio;
	}
	
}
