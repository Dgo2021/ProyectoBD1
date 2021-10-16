package umg.bd.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import umg.bd.proyecto.model.Cliente;
import umg.bd.proyecto.repository.ClienteRepository;

@RestController
@RequestMapping(path="/cliente")
@CrossOrigin
public class ClienteController {
	 @Autowired
	 private ClienteRepository clienteRepository;
	 
	  @GetMapping(path="/all")
	  public @ResponseBody Iterable<Cliente> getAll() {
	    return clienteRepository.findAll();
	  }
	  
	  @PostMapping("/grabar")
	  Cliente save(@RequestBody Cliente cliente) {
	    return clienteRepository.save(cliente);
	  }
}
