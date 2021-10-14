package umg.bd.proyecto.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
import org.springframework.web.bind.annotation.CrossOrigin;


@Embeddable
@CrossOrigin
public class Areas_ClinicaPK implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Integer iddrea;
	private Integer idclinica;
	
	public Integer getIddrea() {
		return iddrea;
	}
	public void setIddrea(Integer iddrea) {
		this.iddrea = iddrea;
	}
	public Integer getIdclinica() {
		return idclinica;
	}
	public void setIdclinica(Integer idclinica) {
		this.idclinica = idclinica;
	}
	@Override
	public int hashCode() {
		return Objects.hash(idclinica, iddrea);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Areas_ClinicaPK other = (Areas_ClinicaPK) obj;
		return Objects.equals(idclinica, other.idclinica) && Objects.equals(iddrea, other.iddrea);
	}
	

}
