package umg.bd.proyecto.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import org.springframework.web.bind.annotation.CrossOrigin;


@Entity
@CrossOrigin
public class Areas_Clinica implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private Areas_ClinicaPK Id;

	public Areas_ClinicaPK getId() {
		return Id;
	}

	public void setId(Areas_ClinicaPK id) {
		Id = id;
	}
}
