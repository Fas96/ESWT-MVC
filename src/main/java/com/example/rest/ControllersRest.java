package com.example.rest;

import com.example.dao.QuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllersRest {
    @Autowired
    QuestionMapper questionMapper;

    @GetMapping("/question/checktitle")
    public String checkQuestionExist(@RequestParam("question_title") String question_title){

        return (questionMapper.findQuestionByTitle(question_title)!=null)?"EXIST":"NOT EXIST";
    }

    @GetMapping("/question/checkuser")
    public String checkQuestionIDExist(@RequestParam("questionId") int questionId){
        return (questionMapper.findQuestionById(questionId)!=null)?"EXIST":"NOT EXIST";
    }
}
