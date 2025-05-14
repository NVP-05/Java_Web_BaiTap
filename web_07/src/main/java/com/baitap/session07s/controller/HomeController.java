package com.baitap.session07s.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String goHome(Model model) {
        model.addAttribute("message", "Welcome to Spring MVC!");
        return "home";
    }
    @RequestMapping("/greet")
    public String greet(@RequestParam String name, Model model) {
        String message = "Hello, " + name + "!";
        model.addAttribute("message", message);
        return "home";
    }
}

