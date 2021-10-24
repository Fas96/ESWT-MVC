package com.example.controller;

import com.example.dao.QuestionMapper;
import com.example.entity.Employee;
import com.example.entity.Question;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.Objects;
import java.util.logging.Logger;

@Slf4j
@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    QuestionMapper questionMapper;
    Logger logger;


    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String saveEmployee(Question question,@RequestParam("question_media") MultipartFile multipartFile){
        System.out.println(question);
//        if(!multipartFile.isEmpty()){
//            System.out.println("======================MultipartFile===============================");
//            System.out.println(StringUtils.cleanPath(Objects.requireNonNull(multipartFile.getOriginalFilename())));
//             System.out.println("=====================================================");
//        }
//
//         if(!multipartFile.isEmpty()){
//             String fileName= StringUtils.cleanPath(Objects.requireNonNull(multipartFile.getOriginalFilename()));
//             question.setQuestion_media(fileName);
//         }else{
//             question.setQuestion_media("FAILED");
//         }

        if(question.getId() == null){
            questionMapper.saveQuestion(question);
        }else{
            questionMapper.updateQuestion(question);
        }

        return "redirect:/question/list";
    }

    @GetMapping("/list")
    public ModelAndView listQuestion(){

        return new ModelAndView( "/admin/question/question-list","questionList",questionMapper.getAllQuestions());
    }

    @GetMapping("/edit")
    public ModelAndView EditQuestion(@RequestParam("questionId") int questionId){
        Question question = questionMapper.findQuestionById(questionId);
        System.out.println("debug the edit object");
        System.out.println(question);
        System.out.println("=======================================================");

        return new ModelAndView( "/admin/question/question-edit","question",question);
    }

    @GetMapping("/create")
    public ModelAndView createQuestion(){
        return new ModelAndView( "/admin/question/question-create","question",new Question());
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
