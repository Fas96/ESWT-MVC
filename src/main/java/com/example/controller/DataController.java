package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/data")
public class DataController {

    @GetMapping("/list")
    public ModelAndView listScore(){
        return new ModelAndView( "/admin/data/score-list","user","user");
    }

    @GetMapping("/edit")
    public ModelAndView EditScore(){
        return new ModelAndView( "/admin/data/score-edit","user","user");
    }

    @GetMapping("/export")
    public ModelAndView exportScore(){
        return new ModelAndView( "/admin/data/score-export","user","user");
    }

}
