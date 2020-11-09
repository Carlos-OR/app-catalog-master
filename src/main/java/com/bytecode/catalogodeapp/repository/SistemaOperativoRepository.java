package com.bytecode.catalogodeapp.repository;

import com.bytecode.catalogodeapp.entity.SistemaOperativo;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface SistemaOperativoRepository extends PagingAndSortingRepository<SistemaOperativo, Serializable> {
}
