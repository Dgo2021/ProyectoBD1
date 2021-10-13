package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import umg.bd.proyecto.model.Empleado;
import umg.bd.proyecto.repository.EmpleadoRepository;

@RestController
@RequestMapping(path="/empleado")
public class EmpleadoController {
	 @Autowired
	 private EmpleadoRepository empleadoRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Empleado> getAll() {
	    return empleadoRepository.findAll();
	  }
	  
	  @GetMapping("/email/{email}")
	  public Empleado getByEmail(@PathVariable String email) {
	      return empleadoRepository.findByEmail(email);
	  }
}
