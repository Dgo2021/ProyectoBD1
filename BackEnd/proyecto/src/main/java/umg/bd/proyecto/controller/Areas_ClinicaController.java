package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Areas_Clinica;
import umg.bd.proyecto.repository.Areas_ClinicaRepository;

@RestController
@RequestMapping(path="/areasclinica")
public class Areas_ClinicaController {
	 @Autowired
	 private Areas_ClinicaRepository areasClinicaRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Areas_Clinica> getAll() {
	    return areasClinicaRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Areas_Clinica save(@RequestBody Areas_Clinica areasclinica) {
	    return areasClinicaRepository.save(areasclinica);
	  }
}
