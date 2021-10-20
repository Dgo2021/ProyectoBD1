package umg.bd.proyecto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Empleado;
import umg.bd.proyecto.repository.EmpleadoRepository;

@RestController
@RequestMapping(path="/empleado")
@CrossOrigin
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
	  
	  @GetMapping("")
	  public List<Empleado> getByIdClinicaAndIdArea(@RequestParam Integer idclinica, @RequestParam Integer idarea) {
	      return empleadoRepository.findByIdclinicaAndIdarea(idclinica, idarea);
	  }
	  
	  @PostMapping("/grabar")
	  Empleado save(@RequestBody Empleado empleado) {
	    return empleadoRepository.save(empleado);
	  }

}
