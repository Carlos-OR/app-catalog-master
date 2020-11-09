package com.bytecode.catalogodeapp.controller.mvc.public_module;

import com.bytecode.catalogodeapp.repository.AplicacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/aplicacion")
public class AplicacionController {
    @Autowired
    private AplicacionRepository aplicacionRepository;

    @GetMapping
    public ModelAndView getHome(@RequestParam int idAplicacion){
        ModelAndView modelAndView = new ModelAndView("public/aplicacion");
        modelAndView.addObject("aplicacion",  aplicacionRepository.findById(idAplicacion).get());
        return modelAndView;
    }
}
