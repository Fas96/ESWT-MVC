package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Answer;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/mock")
public class MockTest {
    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    AnswerMapper answerMapper;

    @GetMapping("/testExample")
    public ModelAndView testExample(@RequestParam( value = "questionId", required=false) Integer questionId, ModelAndView model){

            model.addObject("answer",new Answer());

//          model.addObject("questions",questionMapper.getAllQuestions());
            model.setViewName("/admin/audio/test-example");

            return model;
    }

    @PostMapping("/save")
    public String saveAnswer(Answer save){
        answerMapper.saveAnswer(save);
        return "redirect:/mock/testExample";
    }




}
