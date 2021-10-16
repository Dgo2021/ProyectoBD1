package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Factura;
import umg.bd.proyecto.repository.FacturaRepository;

@RestController
@RequestMapping(path="/factura")
@CrossOrigin
public class FacturaController {
	@Autowired
	private FacturaRepository facturaRepository;
	
	@GetMapping(path="/all")
	public @ResponseBody Iterable<Factura> getAll() {
		return facturaRepository.findAll();
	}
	  
	@PostMapping("/grabar")
	Factura save(@RequestBody Factura factura) {
		return facturaRepository.save(factura);
	}
}
