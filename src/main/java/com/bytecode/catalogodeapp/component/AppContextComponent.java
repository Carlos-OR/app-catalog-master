package com.bytecode.catalogodeapp.component;

import com.bytecode.catalogodeapp.entity.Categoria;
import com.bytecode.catalogodeapp.entity.SistemaOperativo;
import com.bytecode.catalogodeapp.repository.CategoriaRepository;
import com.bytecode.catalogodeapp.repository.SistemaOperativoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("appContextComponent")
public class AppContextComponent {
    @Autowired
    private SistemaOperativoRepository sistemaOperativoRepository;

    @Autowired
    private CategoriaRepository categoriaRepository;

    public Iterable<Categoria> findAllCategoria(){
        return categoriaRepository.findAll();
    }

    public Iterable<SistemaOperativo> findAllSistemaOperativo(){
        return sistemaOperativoRepository.findAll();
    }
}
