package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Servicio;
import umg.bd.proyecto.repository.ServicioRepository;

@RestController
@RequestMapping(path="/servicio")
public class ServicioController {
	 @Autowired
	 private ServicioRepository servicioRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Servicio> getAll() {
	    return servicioRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Servicio save(@RequestBody Servicio servicio) {
	    return servicioRepository.save(servicio);
	  }
}
