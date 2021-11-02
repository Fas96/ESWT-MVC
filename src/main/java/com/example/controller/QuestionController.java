package com.example.controller;

import com.example.dao.QuestionMapper;
import com.example.entity.Question;
import com.example.util.FileUploadUtil;
import com.example.util.PropertiesLoad;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.awt.*;
import java.io.IOException;
import java.util.Objects;
import java.util.Properties;
import java.util.logging.Logger;

@Slf4j
@Controller
@RequestMapping("/question")
public class QuestionController {
    public final String imageUploadDir="C:\\Users\\User\\Desktop\\ESWTMVC\\src\\main\\webapp\\WEB-INF\\resources\\question-images\\";
    // TODO: 2021-10-25 SET AS ENV PROPERTY
    @Autowired
    QuestionMapper questionMapper;
//    PropertiesLoad propertiesLoad=new PropertiesLoad();

    Logger logger=Logger.getLogger(String.valueOf(QuestionMapper.class));


    @PostMapping(value = "/save" )
    public String saveEmployee(Question question , @RequestParam("image1") MultipartFile question_media,@RequestParam("image2") MultipartFile question_second) throws IOException {
        String question_media_name="";
        String question_second_name="";

        if(!question_media.isEmpty() || !question_second.isEmpty() ){
            question_media_name= StringUtils.cleanPath(Objects.requireNonNull(question_media.getOriginalFilename()));
            question_second_name= StringUtils.cleanPath(Objects.requireNonNull(question_second.getOriginalFilename()));
            question.setQuestion_media(question_media_name);
            question.setQuestion_second(question_second_name);
        }


        if(question.getId() == null){
            questionMapper.saveQuestion(question);
        }else{
            questionMapper.updateQuestion(question);
        }

        if(!question_media.isEmpty() || !question_second.isEmpty() ){

            Question savedQuestion = questionMapper.findQuestionByTitle(question.getQuestion_title());


            System.out.println("=======================");
            System.out.println( Objects.requireNonNull(PropertiesLoad.loadLocalStrings()).getProperty("imageUploadDir"));
            System.out.println("=============checking the property created==========");

            String uploadDir= Objects.requireNonNull(PropertiesLoad.loadLocalStrings()).getProperty("imageUploadDir") +savedQuestion.getId();
            //clean-> delete old files in directory before saving file to directory
            //FileUploadUtil.clearDir(uploadDir);
//             String uploadDir, String fileName, MultipartFile multipartFile
            if(savedQuestion.getQuestion_media().length()>1){
                FileUploadUtil.saveFile(uploadDir,question_media_name,question_media);}
            if(savedQuestion.getQuestion_second().length()>1){
                FileUploadUtil.saveFile(uploadDir,question_second_name,question_second);
            }
        }

        return "redirect:/question/list";
    }

    @GetMapping("/list")
    public ModelAndView listQuestion(){

        return new ModelAndView( "/admin/question/question-list","questionList",questionMapper.getAllQuestions());
    }

    @GetMapping("/edit")
    public ModelAndView EditQuestion(@RequestParam("questionId") int questionId){
        //clear directory on question deleted
        String uploadDir=imageUploadDir+questionId;
        FileUploadUtil.clearDir(uploadDir);

        Question question = questionMapper.findQuestionById(questionId);


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
