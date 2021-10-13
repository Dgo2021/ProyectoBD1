package umg.bd.proyecto.repository;

import org.springframework.data.repository.CrudRepository;

import umg.bd.proyecto.model.Cliente;

public interface ClienteRepository extends CrudRepository<Cliente, Long> {

}
