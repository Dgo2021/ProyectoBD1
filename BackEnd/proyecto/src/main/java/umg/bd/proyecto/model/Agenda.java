package umg.bd.proyecto.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Agenda {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdAgenda;
	private Integer IdEmpleado;
	private Integer IdArea;
	private Integer IdClinica;
	private Integer IdCliente;
	private Integer IdServicio;
	private Integer IdEstados;
	private Integer Hora_Ingreso;
	private Integer Hora_Salida;
	private Date Fecha;
	
	public Integer getIdAgenda() {
		return IdAgenda;
	}
	public void setIdAgenda(Integer idAgenda) {
		IdAgenda = idAgenda;
	}
	public Integer getIdEmpleado() {
		return IdEmpleado;
	}
	public void setIdEmpleado(Integer idEmpleado) {
		IdEmpleado = idEmpleado;
	}
	public Integer getIdArea() {
		return IdArea;
	}
	public void setIdArea(Integer idArea) {
		IdArea = idArea;
	}
	public Integer getIdClinica() {
		return IdClinica;
	}
	public void setIdClinica(Integer idClinica) {
		IdClinica = idClinica;
	}
	public Integer getIdCliente() {
		return IdCliente;
	}
	public void setIdCliente(Integer idCliente) {
		IdCliente = idCliente;
	}
	public Integer getIdServicio() {
		return IdServicio;
	}
	public void setIdServicio(Integer idServicio) {
		IdServicio = idServicio;
	}
	public Integer getIdEstados() {
		return IdEstados;
	}
	public void setIdEstados(Integer idEstados) {
		IdEstados = idEstados;
	}
	public Integer getHora_Ingreso() {
		return Hora_Ingreso;
	}
	public void setHora_Ingreso(Integer hora_Ingreso) {
		Hora_Ingreso = hora_Ingreso;
	}
	public Integer getHora_Salida() {
		return Hora_Salida;
	}
	public void setHora_Salida(Integer hora_Salida) {
		Hora_Salida = hora_Salida;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	}
