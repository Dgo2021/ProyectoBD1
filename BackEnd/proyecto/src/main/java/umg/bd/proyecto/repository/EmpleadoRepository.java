package umg.bd.proyecto.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import umg.bd.proyecto.model.Empleado;

public interface EmpleadoRepository extends CrudRepository<Empleado, Long> {
	public Empleado findByEmail(String email);
	public List<Empleado> findByIdclinicaAndIdarea(Integer idclinica, Integer idarea);
}
