package umg.bd.proyecto.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Departamento;
import umg.bd.proyecto.repository.DepartamentoRepository;

@RestController
@RequestMapping(path="/departamento")
@CrossOrigin
public class DepartamentoController {
	 @Autowired
	 private DepartamentoRepository departamentoRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Departamento> getAll() {
	    return departamentoRepository.findAll();
	  }
	  @GetMapping(path="/{id}")
	  public Optional<Departamento> getById(@PathVariable("id") Integer id) {
	    return departamentoRepository.findById(id);
	  }
	  
	  @PostMapping("/grabar")
	  Departamento save(@RequestBody Departamento departamento) {
	    return departamentoRepository.save(departamento);
	  }
}
