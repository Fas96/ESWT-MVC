package com.example.controller;

import com.example.dao.EmployeeMapper;
import com.example.dao.MemberMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Member;
import com.example.entity.Question;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.reactive.WebFluxProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;


@Controller
@SessionAttributes({"fname","member_id"})
public class    MainController {
    //TODO
    //Use application context to set user id in question page
    @Autowired
    private ApplicationContext appContext;

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    MemberMapper memberMapper;

    @RequestMapping("/home")
    public String home(HttpServletRequest req) {
            return "index";
    }


    @GetMapping({"/login","/"})
    public String login(@ModelAttribute("member")Member member   ){return "component/login-component";}

    private String getCookieValue(HttpServletRequest req, String cookieName) {
        if(req.getCookies()!=null){
        return Arrays.stream(req.getCookies())
                .filter(c -> c.getName().equals(cookieName))
                .findFirst()
                .map(Cookie::getValue)
                .orElse(null);}
        return null;
    }

    @PostMapping("/processRegister")
    String processRegister(Member member){
        return "redirect: /home";
    }

    @PostMapping("/processLogin")

    String processLogin(Member member, HttpServletRequest req) throws IOException {

        HttpSession session = req.getSession();
        Member byId = memberMapper.findMemberById(member.getMember_id());



        if(byId==null){
           return "redirect: /login?error=true";
        }else{

            session.setAttribute("isLoggedIn",true);
            session.setAttribute("fname",byId.getMember_name());
            session.setAttribute("member_id",Integer.parseInt(byId.getMember_id()));
          return "redirect: /home";
        }

    }


}