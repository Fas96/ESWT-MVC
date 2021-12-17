package com.example.controller;

import com.example.dao.answer.AnswerMapper;
import com.example.dao.employee.EmployeeMapper;
import com.example.dao.grade.GradeMapper;
import com.example.dao.member.MemberMapper;
import com.example.dao.question.QuestionMapper;
import com.example.dao.session.SessionMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.GET)
public class AdminController {
    final Logger logger = LoggerFactory.getLogger(AdminController.class);


    AnswerMapper answerMapper;

    EmployeeMapper employeeMapper;

    GradeMapper gradeMapper;

    MemberMapper memberMapper;

    QuestionMapper questionMapper;

    SessionMapper sessionMapper;

    public AdminController(AnswerMapper answerMapper, EmployeeMapper employeeMapper, GradeMapper gradeMapper, MemberMapper memberMapper, QuestionMapper questionMapper, SessionMapper sessionMapper) {
        this.answerMapper = answerMapper;
        this.employeeMapper = employeeMapper;
        this.gradeMapper = gradeMapper;
        this.memberMapper = memberMapper;
        this.questionMapper = questionMapper;
        this.sessionMapper = sessionMapper;
    }

    @GetMapping("")
    public String admin(Model model,HttpServletRequest req ){
            model.addAttribute("user","user");
            HttpSession session = req.getSession();
            session.setAttribute("isLoggedIn",true);

            return "/admin/index";  }



}
