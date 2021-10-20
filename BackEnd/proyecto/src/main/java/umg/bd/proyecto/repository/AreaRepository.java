package umg.bd.proyecto.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import umg.bd.proyecto.model.Area;

public interface AreaRepository extends CrudRepository<Area, Long>{
	public List<Area> findByIdclinica(Integer idclinica);
}
