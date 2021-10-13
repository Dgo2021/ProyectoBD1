package umg.bd.proyecto.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Factura_Detalle {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer IdFactura_Detalle;
	private Integer	IdFactura;
	private Integer IdAgenda;
	public Integer getIdFactura_Detalle() {
		return IdFactura_Detalle;
	}
	public void setIdFactura_Detalle(Integer idFactura_Detalle) {
		IdFactura_Detalle = idFactura_Detalle;
	}
	public Integer getIdFactura() {
		return IdFactura;
	}
	public void setIdFactura(Integer idFactura) {
		IdFactura = idFactura;
	}
	public Integer getIdAgenda() {
		return IdAgenda;
	}
	public void setIdAgenda(Integer idAgenda) {
		IdAgenda = idAgenda;
	}
	
	
}
