package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Factura implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idfactura;
	private Integer idempelado;
	private String numero_factura;
	private Date fecha_emision;
	private String nit;
	private String razonsocial;
	private Double total;
	public Integer getIdfactura() {
		return idfactura;
	}
	public void setIdfactura(Integer idfactura) {
		this.idfactura = idfactura;
	}
	public Integer getIdempelado() {
		return idempelado;
	}
	public void setIdempelado(Integer idempelado) {
		this.idempelado = idempelado;
	}
	public String getNumero_factura() {
		return numero_factura;
	}
	public void setNumero_factura(String numero_factura) {
		this.numero_factura = numero_factura;
	}
	public Date getFecha_emision() {
		return fecha_emision;
	}
	public void setFecha_emision(Date fecha_emision) {
		this.fecha_emision = fecha_emision;
	}
	public String getNit() {
		return nit;
	}
	public void setNit(String nit) {
		this.nit = nit;
	}
	public String getRazonsocial() {
		return razonsocial;
	}
	public void setRazonsocial(String razonsocial) {
		this.razonsocial = razonsocial;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
}
