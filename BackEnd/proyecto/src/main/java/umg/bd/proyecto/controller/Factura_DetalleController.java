package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Factura_Detalle;
import umg.bd.proyecto.repository.Factura_DetalleRepository;

@RestController
@RequestMapping(path="/facturadetalle")
@CrossOrigin
public class Factura_DetalleController {
	 @Autowired
	 private Factura_DetalleRepository facturaDetalleRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Factura_Detalle> getAll() {
	    return facturaDetalleRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Factura_Detalle save(@RequestBody Factura_Detalle detalle) {
	    return facturaDetalleRepository.save(detalle);
	  }
}
