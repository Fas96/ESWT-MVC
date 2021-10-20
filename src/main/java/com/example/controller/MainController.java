package com.example.controller;

import com.example.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

    EmployeeMapper employeeMapper=new EmployeeMapper();

    @RequestMapping("/")
    public String home() {
        System.out.println(employeeMapper.getAllEmployees());
        return "index";
    }

}