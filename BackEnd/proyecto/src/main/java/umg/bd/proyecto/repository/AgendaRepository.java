package umg.bd.proyecto.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import umg.bd.proyecto.model.Agenda;

public interface AgendaRepository extends CrudRepository<Agenda, Long> {
	List<Agenda> findByFechaAndIdclinicaAndIdarea(Date fecha, Integer clinica, Integer Area);
}

