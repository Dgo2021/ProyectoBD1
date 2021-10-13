package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import umg.bd.proyecto.model.Persona;
import umg.bd.proyecto.repository.PersonaRepository;

@RestController
@RequestMapping(path="/persona")
public class PersonaController {
	 @Autowired
	 private PersonaRepository personaRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Persona> getAll() {
	    return personaRepository.findAll();
	  }
}
