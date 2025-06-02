package com.chandu.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClickController {

    @GetMapping("/")
    public String index(Model model) {
        return "index";
    }
}