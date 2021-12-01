package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exams")
public class StudentController {

    @GetMapping("/start")
    public String admin( ){
        return "/component/exam-start";
    }
}
