package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.GradeMapper;
import com.example.dao.MemberMapper;
import com.example.entity.Grade;
import com.example.entity.GradeTypeTotalDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("/admin/data")
public class DataController {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    AnswerMapper answerMapper;
    @Autowired
    GradeMapper gradeMapper;

    @GetMapping("/list")
    public ModelAndView listScore(ModelAndView mv){
        mv.addObject("studentScoresList",gradeMapper.studentScoresListTypeTotal());
        mv.setViewName("/admin/data/score-list");
        return mv;
    }


    @GetMapping("/edit")
    public String EditScore(Model mv, @RequestParam(value = "gradeId",required = false) Integer gradeId,RedirectAttributes req){

        if(gradeId!=null){
            req.addAttribute("gradeId",gradeId);
            return "redirect:/admin/data/result";
        }
        //get members who has answer
        mv.addAttribute("getMembersWhoAnswered",memberMapper.getMembersWhoAnswered());
        return "/admin/data/score-edit";
    }

    @GetMapping("/result")
    public ModelAndView showStudentAnswers(ModelAndView mv, @RequestParam(value = "gradeId",required = false) Integer gradeId,HttpServletRequest req){
        mv.setViewName("/admin/data/student-answers");

        mv.addObject("gradeId",gradeId);



         mv.addObject("questionList",answerMapper.findAnswerByMemberID(gradeId.toString()));

        return mv;
    }

    //append the current page param to return to same page
    @PostMapping("/saveGrade")
    public String saveGrade(@ModelAttribute("grade") Grade grade ){
        //error in the authname
        //should rather user the url

        gradeMapper.saveGrade(grade);
        System.out.println("::::::::::::::::::::::::::::::::::::::::::::::");
        return "redirect:/admin/data/result?gradeId="+grade.getMember_id();
    }

    @GetMapping("/export")
    public ModelAndView exportScore(){
        return new ModelAndView( "/admin/data/score-export","user","user");
    }

}
