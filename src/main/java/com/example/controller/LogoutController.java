package com.example.controller;

import com.example.entity.Member;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {

    @GetMapping("/logout")
    public String main(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }


    @GetMapping("/registration")
    public String registration(@ModelAttribute("member")Member member){
        return "component/register";
    }
}
