package com.baitap.session07s.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
    @RequestMapping("contact")
    public String contact() {
        return "contact";
    }
}
