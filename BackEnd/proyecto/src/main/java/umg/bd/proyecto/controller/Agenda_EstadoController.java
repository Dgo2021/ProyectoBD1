package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Agenda_Estado;
import umg.bd.proyecto.repository.Agenda_EstadoRepository;

@RestController
@RequestMapping(path="/agendaestado")
@CrossOrigin
public class Agenda_EstadoController {
	@Autowired
	private Agenda_EstadoRepository agendaEstadoRepository;

	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Agenda_Estado> getAll() {
	    return agendaEstadoRepository.findAll();
	  }
	
}
