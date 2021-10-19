package umg.bd.proyecto.repository;

import org.springframework.data.repository.CrudRepository;


import umg.bd.proyecto.model.Persona;

public interface PersonaRepository extends CrudRepository<Persona, Long> {
	public Persona findByIdpersona(Integer idpersona);
	public Persona findByIdentificacion(Integer identificacion);

}
