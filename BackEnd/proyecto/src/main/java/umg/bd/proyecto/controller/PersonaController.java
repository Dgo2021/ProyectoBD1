package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import umg.bd.proyecto.model.Persona;
import umg.bd.proyecto.repository.PersonaRepository;

@RestController
@RequestMapping(path="/persona")
@CrossOrigin
public class PersonaController {
	 @Autowired
	 private PersonaRepository personaRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Persona> getAll() {
	    return personaRepository.findAll();
	  }
	  /*@GetMapping(path="/{idPersona}")
	  public Persona getIdEmpleado(@PathVariable Integer idPersona) {
		 return personaRepository.findByIdpersona(idPersona);
	  }*/
	  @GetMapping(path="/{identificacion}")
	  public Persona getIdentificacionEmpleado(@PathVariable("identificacion") Integer identificacion) {
		 return personaRepository.findByIdentificacion(identificacion);
	  }   
	  
	  
	  @PostMapping("/grabar")
	  Persona save(@RequestBody Persona persona) {
	    return personaRepository.save(persona);
	  }
	  

	  /*@GetMapping(path="/{id}")
	  public Persona  getById(@PathVariable Integer id) {
	    return personaRepository.findByIdpersona(id);
	  }*/
}
