package com.baitap.session07s.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {
    @RequestMapping("/error")
    public String error() {
        return "error";
    }
}
