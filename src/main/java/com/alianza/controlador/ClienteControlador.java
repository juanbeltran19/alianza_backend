package com.alianza.controlador;

import com.alianza.modelo.Cliente;

import com.alianza.repositorio.RepositorioCliente;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class ClienteControlador {

	@Autowired
	RepositorioCliente repositorioCliente;
	
	@GetMapping(path="/clientes")
	public @ResponseBody Iterable<Cliente> listarClientes(){
		return repositorioCliente.findAll();
	}
	
	@PostMapping("/clientes/crear")
	public String crearCliente(@RequestBody Cliente clientes) {
		Cliente cliente = new Cliente();
		cliente.setSharedKey(clientes.getSharedKey());
		cliente.setName(clientes.getName());
		cliente.setPhone(clientes.getPhone());
		cliente.setEmail(clientes.getEmail());
		cliente.setStartDate(clientes.getStartDate());
		cliente.setEndDate(clientes.getEndDate());
		repositorioCliente.save(cliente);
		return "Cliente Creado Correctamente";
	}
	
	@GetMapping("/clientes/consultar/{id}")
	@ResponseBody
	public Optional<Cliente> consultarCliente(@PathVariable("id") String id) {
		System.out.println("consultarCliente:"+repositorioCliente.findById(id));
		return repositorioCliente.findById(id);
	}
	
}
