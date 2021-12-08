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
public class MockTest {
    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    ApplicationContext context;

    @Autowired
    AnswerMapper answerMapper;

    @GetMapping(value = {"/admin/mock/testExample","/exams/startExams"})
    public ModelAndView testExample(ModelAndView model, HttpServletRequest req){

        model.addObject("answer",new Answer());

        String authname = SecurityContextHolder.getContext().getAuthentication().getName();

        System.out.println(authname);
        List<Question> questions = questionMapper.findQuestionNonAnsweredQuestion(Integer.parseInt(authname));
        req.setAttribute("member_id",Integer.parseInt(authname));


        //setting the display questions based on size
        if(questions.size()>0) {model.addObject("displayQuestion",questions.get(0));}else {model.addObject("displayQuestion",null);}


        String servletPath = req.getServletPath();

        System.out.println("--------------------");

        System.out.println(servletPath);
        System.out.println("--------------------");
        if(servletPath.equals("/exams/startExams")){
            model.setViewName("/component/test-page");
        }else{
            model.setViewName("/admin/audio/test-example");
        }



        return model;
    }

//    @PostMapping(value = "/save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    @PostMapping(value ={ "/admin/mock/save","/student/main/test"})
    public String saveAnswer(Answer answer,@RequestBody(required = false) MultiValueMap<String, String> formData,HttpServletRequest req ){
        System.out.println("-----------------------");
        System.out.println(answer.getQuestion_type());
        System.out.println("----------------------");
        answerMapper.saveAnswer(answer);

        String servletPath = req.getServletPath();

        System.out.println("--------------------");
        System.out.println(servletPath);
        if( servletPath.equals("/student/main/test")){
            return "redirect:/exams/startExams";
        }else{
            return "redirect:/admin/mock/testExample";
        }
    }
    @GetMapping("/exams/start")
    public String showExam(){
        return "/component/exam-start";
    }

}
