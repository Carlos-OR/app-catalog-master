package com.bytecode.catalogodeapp.repository;

import com.bytecode.catalogodeapp.entity.Usuario;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface UsuarioRepository extends PagingAndSortingRepository<Usuario, Serializable> {
}
