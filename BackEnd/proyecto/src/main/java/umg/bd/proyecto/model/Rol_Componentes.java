package umg.bd.proyecto.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class Rol_Componentes  {
	
	 @EmbeddedId
	 private Rol_ComponentesPK Id;

	public Rol_ComponentesPK getId() {
		return Id;
	}

	public void setId(Rol_ComponentesPK id) {
		Id = id;
	}
}
