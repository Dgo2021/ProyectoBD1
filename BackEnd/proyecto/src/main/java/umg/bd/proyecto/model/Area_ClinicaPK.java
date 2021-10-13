package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;


@Embeddable
public class Area_ClinicaPK implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer IdArea;
	private Integer IdClinica;
	
	@Override
	public int hashCode() {
		return Objects.hash(IdArea, IdClinica);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Area_ClinicaPK other = (Area_ClinicaPK) obj;
		return Objects.equals(IdArea, other.IdArea) && Objects.equals(IdClinica, other.IdClinica);
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
}
