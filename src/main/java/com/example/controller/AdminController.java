package com.example.controller;

import com.example.dao.*;
import com.example.entity.Answer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.GET)
public class AdminController {
    final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    AnswerMapper answerMapper;
    @Autowired
    EmployeeMapper employeeMapper;
    @Autowired
    GradeMapper gradeMapper;
    @Autowired
    MemberMapper  memberMapper;
    @Autowired
    QuestionMapper questionMapper;
    @Autowired
    SessionMapper sessionMapper;

    @GetMapping("")
    public String admin(Model model ){
            model.addAttribute("user","user");
            return "/admin/index";  }
}
