package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/data")
public class DataController {

    @Autowired
    MemberMapper memberMapper;

    @GetMapping("/list")
    public ModelAndView listScore(){
        return new ModelAndView( "/admin/data/score-list","user","user");
    }

    @GetMapping("/edit")
    public ModelAndView EditScore(ModelAndView mv){
        mv.setViewName("/admin/data/score-edit");
        //get members who has answer
        System.out.println(memberMapper.getMembersWhoAnswered());
        System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
        mv.addObject("getMembersWhoAnswered",memberMapper.getMembersWhoAnswered());
        return mv;
    }

    @GetMapping("/export")
    public ModelAndView exportScore(){
        return new ModelAndView( "/admin/data/score-export","user","user");
    }

}
