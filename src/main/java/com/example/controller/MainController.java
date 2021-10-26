package com.example.controller;

import com.example.dao.EmployeeMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    QuestionMapper questionMapper;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

//    @GetMapping("/admin")
//    public String admin(){
//        return "/admin/index";
//    }


}