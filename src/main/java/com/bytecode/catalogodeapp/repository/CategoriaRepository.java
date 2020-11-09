package com.bytecode.catalogodeapp.repository;

import com.bytecode.catalogodeapp.entity.Categoria;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface CategoriaRepository extends PagingAndSortingRepository<Categoria, Serializable> {
}
