package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalTime;

@Controller
@RequestMapping("/do not enter")
public class MyController {

    @GetMapping()
    public String mainTutorial(Model model) {
        addCommonAttributes(model);
        return "layout/main-layout";
    }

    @GetMapping("/java")
    public String javaTutorial(Model model) {
        addCommonAttributes(model);
        return "body/java-tutorial";
    }

    @GetMapping("/spring")
    public String springTutorial(Model model) {
        addCommonAttributes(model);
        return "defJavaTutorial";
    }

    private void addCommonAttributes(Model model) {
        model.addAttribute("time", LocalTime.now());
    }
}