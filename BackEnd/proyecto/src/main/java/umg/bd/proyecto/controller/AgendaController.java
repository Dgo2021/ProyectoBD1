package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Agenda;
import umg.bd.proyecto.repository.AgendaRepository;

@RestController
@RequestMapping(path="/agenda")
public class AgendaController {
	 @Autowired
	 private AgendaRepository agendaRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Agenda> getAll() {
	    return agendaRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Agenda save(@RequestBody Agenda agenda) {
	    return agendaRepository.save(agenda);
	  }
	  
}
