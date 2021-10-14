package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Departamento;
import umg.bd.proyecto.repository.DepartamentoRepository;

@RestController
@RequestMapping(path="/departamento")
public class DepartamentoController {
	 @Autowired
	 private DepartamentoRepository departamentoRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Departamento> getAll() {
	    return departamentoRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Departamento save(@RequestBody Departamento departamento) {
	    return departamentoRepository.save(departamento);
	  }
}
