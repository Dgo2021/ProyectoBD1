package umg.bd.proyecto.repository;

import org.springframework.data.repository.CrudRepository;
import umg.bd.proyecto.model.Empleado;

public interface EmpleadoRepository extends CrudRepository<Empleado, Long> {
	public Empleado findByEmail(String email);
}
