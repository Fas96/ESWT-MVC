package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Answer;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin/mock")
public class MockTest {
    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    ApplicationContext context;

    @Autowired
    AnswerMapper answerMapper;

    @GetMapping("/testExample")
    public ModelAndView testExample(ModelAndView model, HttpServletRequest req){

        model.addObject("answer",new Answer());
        System.out.println("-----------------testExample----------------");
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String authname = SecurityContextHolder.getContext().getAuthentication().getName();

        List<Question> questions = questionMapper.findQuestionNonAnsweredQuestion(Integer.parseInt(authname));
        req.setAttribute("member_id",Integer.parseInt(authname));
        System.out.println(questions);
        System.out.println("------------questions above-----------");

        //setting the display questions based on size
        if(questions.size()>0) {model.addObject("displayQuestion",questions.get(0));}else {model.addObject("displayQuestion",null);}

        model.setViewName("/admin/audio/test-example");

            return model;
    }

    @PostMapping(value = "/save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String saveAnswer(Answer save,@RequestBody(required = false) MultiValueMap<String, String> formData ){

        answerMapper.saveAnswer(save);
        return "redirect:/admin/mock/testExample";
    }

}
