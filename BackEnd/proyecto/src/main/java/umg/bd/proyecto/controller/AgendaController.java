package umg.bd.proyecto.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Agenda;
import umg.bd.proyecto.repository.AgendaRepository;

@RestController
@RequestMapping(path="/agenda")
@CrossOrigin
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
	  /*
	  @GetMapping(path="")
	  List<Agenda> findByFechaAndIdclinica(@RequestParam Date fecha, @RequestParam Integer idclinica, Integer idarea){
		  return agendaRepository.findByFechaAndIdclinicaAndIdarea(fecha, idclinica,idarea);
	  }
	  */
	  @GetMapping(path="")
	  List<Agenda> findByIdclinicaIdAreaFecha(@RequestParam Date fecha1, @RequestParam Date fecha2, @RequestParam Integer idclinica, Integer idarea){
		  System.out.println(fecha1);
		  System.out.println(fecha2);
		  return agendaRepository.findByIdclinicaAndIdareaAndFechaBetween(idclinica, idarea, fecha1, fecha2);
	  }
	  
}
