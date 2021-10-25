package com.example.controller;

import com.example.dao.QuestionMapper;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/mock")
public class MockTest {
    @Autowired
    QuestionMapper questionMapper;

    @GetMapping("/testExample")
    public ModelAndView testExample(@RequestParam( value = "questionId", required=false) Integer questionId, ModelAndView model){
        String base = System.getProperty("catalina.home") + File.separator + "bin";
        System.out.println(base);

        System.out.println("=====================base====================");
        model.addObject("baseDir",base);
        System.out.println(questionId);
        if(questionId==null){
            System.out.println("===========id is not provided===========");
            model.addObject("displayQuestion", questionMapper.findQuestionById((Integer)1));
        }else {
            model.addObject("displayQuestion", questionMapper.findQuestionById(questionId));
        }

        model.addObject("questions",questionMapper.getAllQuestions());


//        model.addObject("questions",questionMapper.getAllQuestions());
        model.setViewName("/admin/audio/test-example");

        return model;
    }




}
