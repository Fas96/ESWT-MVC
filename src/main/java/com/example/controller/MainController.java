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


@Controller
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
    String processLogin(Member member,HttpServletResponse res,HttpServletRequest req) throws IOException {
        System.out.println("=========coming herereer");
        //TODO set cookie here for the login user
        // check if user can be found in db else redirect them to failed page
        HttpSession session = req.getSession();
        Member byId = memberMapper.findMemberById(member.getMember_id());

        //set Application Context when login in success
        System.out.println(member);
        System.out.println(byId);
        System.out.println("::::::::::::::::::::::::::::::::::");

        if(byId==null){
           return "redirect: /login?error=true";
        }else{
            //TODO add this question id and member id to application context when logged in
            Question question = questionMapper.findQuestionNonAnsweredQuestion(Integer.parseInt(byId.getMember_id()));
            session.setAttribute("isLoggedIn",true);
            session.setAttribute("fname",byId.getMember_name());
          return "redirect: /home";
        }

    }


}