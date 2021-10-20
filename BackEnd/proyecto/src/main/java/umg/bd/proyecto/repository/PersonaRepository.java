package umg.bd.proyecto.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;


import umg.bd.proyecto.model.Persona;

public interface PersonaRepository extends CrudRepository<Persona, Integer> {
	public Optional<Persona> findByIdentificacion(String identificacion);
 
}
