package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Empleado_Servicios;
import umg.bd.proyecto.repository.Empleado_ServiciosRepository;

@RestController
@RequestMapping(path="/empleadoservicios")
@CrossOrigin
public class Empelado_ServiciosController {
	 @Autowired
	 private Empleado_ServiciosRepository empeladoServiciosRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Empleado_Servicios> getAll() {
	    return empeladoServiciosRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Empleado_Servicios save(@RequestBody Empleado_Servicios agenda) {
	    return empeladoServiciosRepository.save(agenda);
	  }
}
