package umg.bd.proyecto.repository;

import org.springframework.data.repository.CrudRepository;


import umg.bd.proyecto.model.Persona;

public interface PersonaRepository extends CrudRepository<Persona, Long> {
<<<<<<< Updated upstream
	public Persona findByIdpersona(Integer idpersona);
=======
	public Persona findByIdpersona(Integer idPersona);
>>>>>>> Stashed changes
}
