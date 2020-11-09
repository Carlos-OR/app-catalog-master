package com.bytecode.catalogodeapp.controller.mvc.public_module;

import com.bytecode.catalogodeapp.entity.Categoria;
import com.bytecode.catalogodeapp.entity.SistemaOperativo;
import com.bytecode.catalogodeapp.entity.Usuario;
import com.bytecode.catalogodeapp.repository.AplicacionRepository;
import com.bytecode.catalogodeapp.repository.CategoriaRepository;
import com.bytecode.catalogodeapp.repository.SistemaOperativoRepository;
import com.bytecode.catalogodeapp.repository.UsuarioRepository;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.apache.bcel.generic.RET;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class InicioController {
    private Log logger = LogFactory.getLog(getClass());

    @Autowired
    private CategoriaRepository categoriaRepository;

    @Autowired
    private SistemaOperativoRepository sistemaOperativo;

    @Autowired
    private AplicacionRepository aplicacionRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/inicio")
    public String home(Model model,
                       @RequestParam(defaultValue = "0",  required = false) int idCategoria,
                       @RequestParam(defaultValue = "0", required = false) int idSistemaOperativo){

        if(idCategoria > 0){
            model.addAttribute("aplicaciones", aplicacionRepository.findByCategeoria(idCategoria));
        } else if (idCategoria == 0){
            model.addAttribute("aplicaciones", aplicacionRepository.findAll());
        }

        if(idSistemaOperativo > 0){
            model.addAttribute("aplicaciones", aplicacionRepository.findBySistemaOperativo(idSistemaOperativo));
        } else if (idCategoria == 0){
            model.addAttribute("aplicaciones", aplicacionRepository.findAll());
        }

        return "public/index";
    }

}
