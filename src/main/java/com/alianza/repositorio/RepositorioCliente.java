package com.alianza.repositorio;

import com.alianza.modelo.Cliente;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface RepositorioCliente extends JpaRepository<Cliente, String> {

}
