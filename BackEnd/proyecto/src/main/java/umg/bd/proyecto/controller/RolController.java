package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Rol;
import umg.bd.proyecto.repository.RolRepository;

@RestController
@RequestMapping(path="/rol")
public class RolController {
	 @Autowired
	 private RolRepository rolRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Rol> getAll() {
	    return rolRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Rol save(@RequestBody Rol rol) {
	    return rolRepository.save(rol);
	  }
}
