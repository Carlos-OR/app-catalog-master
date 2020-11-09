package com.bytecode.catalogodeapp.controller.mvc.public_module;

import com.bytecode.catalogodeapp.entity.Usuario;
import com.bytecode.catalogodeapp.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/registrar")
    public ModelAndView getForm(Model model){
        ModelAndView modelAndView = new ModelAndView("public/register");
        modelAndView.addObject("usuario", new Usuario());
        return modelAndView;
    }

    @PostMapping("/guardar")
    public String save(@ModelAttribute(name = "usuario") Usuario usuario){
        usuarioRepository.save(usuario);
        return "redirect:/inicio";
    }
}
