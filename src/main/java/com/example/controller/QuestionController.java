package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @GetMapping("/list")
    public ModelAndView listQuestion(){
        return new ModelAndView( "/admin/question/question-list","user","user");
    }

    @GetMapping("/edit")
    public ModelAndView EditQuestion(){
        return new ModelAndView( "/admin/question/question-edit","user","user");
    }

    @GetMapping("/create")
    public ModelAndView createQuestion(){
        return new ModelAndView( "/admin/question/question-create","user","user");
    }
    @GetMapping("/export")
    public ModelAndView exportQuestion(){
        return new ModelAndView( "/admin/question/question-export","user","user");
    }
}
