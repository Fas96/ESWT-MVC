package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Answer;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mock")
public class MockTest {
    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    AnswerMapper answerMapper;

    @GetMapping("/testExample")
    public ModelAndView testExample(ModelAndView model){

            model.addObject("answer",new Answer());
        List<Question> questions = questionMapper.findQuestionNonAnsweredQuestion(22);


        //setting the display questions based on size
        if(questions.size()>0) {model.addObject("displayQuestion",questions.get(0));}else {model.addObject("displayQuestion",null);}

        model.setViewName("/admin/audio/test-example");

            return model;
    }

    @PostMapping(value = "/save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String saveAnswer(Answer save,@RequestBody(required = false) MultiValueMap<String, String> formData ){

        if(formData!=null){
            System.out.println("-:::::::::::::::::::::::::::::::::::::------------------------");
            for (Map.Entry<String, List<String>> entry : formData.entrySet()) {
                System.out.println(entry.getKey()+"::::::::::::::"+entry.getValue());
            }

            System.out.println("-------:::::::::::::::::::::-----");
        }
        answerMapper.saveAnswer(save);
        return "redirect:/mock/testExample";
    }

//    @RequestMapping(value="/create", method=RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
//    public String createRole(@RequestBody MultiValueMap<String, String> formData){
//        // your code goes here
//
//
//        return "redirect:/mock/testExample";
//    }
}
