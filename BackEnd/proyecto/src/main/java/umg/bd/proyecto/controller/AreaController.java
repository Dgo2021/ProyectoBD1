package umg.bd.proyecto.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Area;
import umg.bd.proyecto.repository.AreaRepository;

@RestController
@RequestMapping(path="/area")
@CrossOrigin
public class AreaController {
	 @Autowired
	 private AreaRepository areaRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Area> getAll() {
	    return areaRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Area save(@RequestBody Area area) {
	    return areaRepository.save(area);
	  }
	  
	  @GetMapping(path="/clinica/{id}")
	  public List<Area> getByIdclinica(@PathVariable("id") Integer id) {
	    return areaRepository.findByIdclinica(id);
	  }
}
