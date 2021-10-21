package com.example.controller;

import com.example.dao.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.GET)
public class AdminController {
    @Autowired
    MemberMapper  memberMapper;
    @GetMapping("")
    public ModelAndView admin(){
        return new ModelAndView( "/admin/index","user","user");
    }
}
