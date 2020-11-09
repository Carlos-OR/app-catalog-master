package com.bytecode.catalogodeapp.controller.mvc.private_module;

import com.bytecode.catalogodeapp.entity.Aplicacion;
import com.bytecode.catalogodeapp.repository.AplicacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AplicacionRepository appRepository;

    @GetMapping("/dashboard")
    public ModelAndView dashboard(@RequestParam(defaultValue = "0", required = false) int idUsuario){
        ModelAndView mav = new ModelAndView("private/admin");

        if (idUsuario == 0){
            mav.addObject("aplicaciones", appRepository.findAll());
        }else{
            mav.addObject("aplicaciones", appRepository.findByUsuario(idUsuario));
        }

        return mav;
    }

    @GetMapping("upload")
    public ModelAndView upload(){
        ModelAndView mav = new ModelAndView("private/subirApp");

        mav.addObject("app", new Aplicacion());

        return mav;
    }

    @PostMapping("/app")
    public String subirApp(@RequestParam("app") Aplicacion app, Model model){
        appRepository.save(app);

        return "redirect: private/admin";
    }

}
