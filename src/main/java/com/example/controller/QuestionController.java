package com.example.controller;

import com.example.dao.QuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    QuestionMapper questionMapper;


    @GetMapping("/list")
    public ModelAndView listQuestion(){

        return new ModelAndView( "/admin/question/question-list","questionList",questionMapper.getAllQuestions());
    }

    @GetMapping("/edit")
    public ModelAndView EditQuestion(){
        return new ModelAndView( "/admin/question/question-edit","user","user");
    }

    @GetMapping("/create")
    public ModelAndView createQuestion(){
        return new ModelAndView( "/admin/question/question-create","user","user");
    }
    @RequestMapping("/delete")
    public String deleteQuestion(@RequestParam("questionId") int questionId){
        questionMapper.deleteQuestion(questionId);
        return "redirect:/question/list";
    }
    @GetMapping("/export")
    public ModelAndView exportQuestion(){
        return new ModelAndView( "/admin/question/question-export","user","user");
    }
}
