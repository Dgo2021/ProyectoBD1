package umg.bd.proyecto.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Factura {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdFactura;
	private Integer IdEmpleado;
	private Integer Numero_Factura;
	private Date Fecha_Emision;
	private String Nit;
	private String RazonSocial;
	private Double Total;
	
	public Integer getIdFactura() {
		return IdFactura;
	}
	public void setIdFactura(Integer idFactura) {
		IdFactura = idFactura;
	}
	public Integer getIdEmpleado() {
		return IdEmpleado;
	}
	public void setIdEmpleado(Integer idEmpleado) {
		IdEmpleado = idEmpleado;
	}
	public Integer getNumero_Factura() {
		return Numero_Factura;
	}
	public void setNumero_Factura(Integer numero_Factura) {
		Numero_Factura = numero_Factura;
	}
	public Date getFecha_Emision() {
		return Fecha_Emision;
	}
	public void setFecha_Emision(Date fecha_Emision) {
		Fecha_Emision = fecha_Emision;
	}
	public String getNit() {
		return Nit;
	}
	public void setNit(String nit) {
		Nit = nit;
	}
	public String getRazonSocial() {
		return RazonSocial;
	}
	public void setRazonSocial(String razonSocial) {
		RazonSocial = razonSocial;
	}
	public Double getTotal() {
		return Total;
	}
	public void setTotal(Double total) {
		Total = total;
	}
	
	
}
