package umg.bd.proyecto.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;


@Entity
public class Area_Clinica {

	@EmbeddedId
	private Area_ClinicaPK Id;

	public Area_ClinicaPK getId() {
		return Id;
	}

	public void setId(Area_ClinicaPK id) {
		Id = id;
	}
}
