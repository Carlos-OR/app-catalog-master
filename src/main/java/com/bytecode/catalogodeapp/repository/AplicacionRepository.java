package com.bytecode.catalogodeapp.repository;

import com.bytecode.catalogodeapp.entity.Aplicacion;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public interface AplicacionRepository extends PagingAndSortingRepository<Aplicacion, Serializable> {
    @Query("select a from Aplicacion a where a.categoria.id = :idCategoria")
    public List<Aplicacion> findByCategeoria(@Param("idCategoria") int idCategoria);

    @Query("select a from Aplicacion a where a.sistemaOperativo.id = :idSistemaOperativo")
    public List<Aplicacion> findBySistemaOperativo(@Param("idSistemaOperativo") int idSistemaOperativo);

    @Query("select a from Aplicacion a where a.usuario.id = :idUsuario")
    public List<Aplicacion> findByUsuario(@Param("idUsuario") int idUsuario);
}
