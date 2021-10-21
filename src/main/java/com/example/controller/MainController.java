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

    EmployeeMapper employeeMapper=new EmployeeMapper();

    QuestionMapper questionMapper=new QuestionMapper();

    @RequestMapping("/")
    public String home() {
        System.out.println("====================================");
        System.out.println(questionMapper.getAllQuestions());
        System.out.println("====================================");
        return "index";
    }
    @GetMapping("/admin")
    public String admin(){
        return "admin/index";
    }

}