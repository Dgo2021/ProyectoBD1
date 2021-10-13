package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;


@Embeddable
public class Rol_ComponentesPK implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer IdComponente;
	private Integer IdRol;
	
	public Integer getIdComponente() {
		return IdComponente;
	}
	@Override
	public int hashCode() {
		return Objects.hash(IdComponente, IdRol);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Rol_ComponentesPK other = (Rol_ComponentesPK) obj;
		return Objects.equals(IdComponente, other.IdComponente) && Objects.equals(IdRol, other.IdRol);
	}
	public void setIdComponente(Integer idComponente) {
		IdComponente = idComponente;
	}
	public Integer getIdRol() {
		return IdRol;
	}
	public void setIdRol(Integer idRol) {
		IdRol = idRol;
	}
}	
