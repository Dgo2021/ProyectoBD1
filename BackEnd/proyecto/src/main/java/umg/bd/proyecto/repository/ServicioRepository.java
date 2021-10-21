package umg.bd.proyecto.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import umg.bd.proyecto.model.Servicio;

public interface ServicioRepository extends CrudRepository<Servicio, Long> {
	List<Servicio> findByIdclinicaAndIdarea(Integer idclinica, Integer idarea);
}
