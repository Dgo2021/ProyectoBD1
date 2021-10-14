package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Clinica;
import umg.bd.proyecto.repository.ClinicaRepository;

@RestController
@RequestMapping("/clinica")
@CrossOrigin
public class ClinicaController {
	@Autowired
	private ClinicaRepository clinicaRepository;
	
	@GetMapping(path="/all")
	  public @ResponseBody Iterable<Clinica> getAll() {
	    return clinicaRepository.findAll();
	  }
	
	  @PostMapping("/grabar")
	  Clinica save(@RequestBody Clinica clinica) {
	    return clinicaRepository.save(clinica);
	  }
}
	