package com.example.controller;

import com.example.dao.EmployeeMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Member;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
@SessionAttributes("CommandName")
public class    MainController {

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    QuestionMapper questionMapper;

    @RequestMapping("/home")
    public String home() {
        return "index";
    }


    @GetMapping("/")
    public String login(@ModelAttribute("member")Member member){
        return "component/login-component";
    }

    @PostMapping("/processRegister")
    String processRegister(Member member){

        System.out.println(member);
        System.out.println("================processRegister received Member===========");
        return "redirect: /home";
    }
    @PostMapping("/processLogin")
    String processLogin(Member member){
        System.out.println(member);
        System.out.println("================received Member===========");
        return "redirect: /home";
    }


}