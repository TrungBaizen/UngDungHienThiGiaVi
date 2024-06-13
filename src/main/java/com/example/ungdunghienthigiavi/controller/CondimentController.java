package com.example.ungdunghienthigiavi.controller;

import com.example.ungdunghienthigiavi.model.CondimentModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CondimentController {
    @GetMapping("/home")
    public ModelAndView home(Model model) {
        CondimentModel condimentModel = new CondimentModel();
        model.addAttribute("condimentModel",condimentModel);
        return new ModelAndView("index");
    }

    @PostMapping("/home")
    public ModelAndView showCondiment(@ModelAttribute("condimentModel") CondimentModel condimentModel) {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("condimentModel",condimentModel);
        return modelAndView;
    }

}
