package com.baitap.session07s.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("main")
    public String main() {
        return "main";
    }
}
