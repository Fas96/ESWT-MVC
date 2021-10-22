package com.example.controller;

import com.example.dao.*;
import com.example.entity.Answer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView admin(){

        logger.debug("User list {}",employeeMapper.getAllEmployees());

        System.out.println("=================test employees================");
        System.out.println(employeeMapper.getAllEmployees());
        System.out.println(employeeMapper.findEmployeedById(1));
        System.out.println("=================test getAllEmployees================");



        System.out.println("=================test grade================");
        System.out.println(gradeMapper.getAllGrades());
        System.out.println(gradeMapper.findGradeById(1));
        System.out.println("=================test getAllGrades================");


        System.out.println("=================test member================");
        System.out.println(memberMapper.getAllMembers());
        System.out.println(memberMapper.findMemberById(1));
        System.out.println("=================test getAllMembers================");


        System.out.println("=================test getAllQuestions================");
        System.out.println(questionMapper.getAllQuestions());
        System.out.println(questionMapper.findQuestionById(1));
        System.out.println("=================test getAllQuestions================");


        System.out.println("=================test getAllSessions================");
        System.out.println(sessionMapper.getAllSessions());
        System.out.println(sessionMapper.findSessionById(1));
        System.out.println("=================test getAllSessions================");

        return new ModelAndView( "/admin/index","user","user");
    }
}
