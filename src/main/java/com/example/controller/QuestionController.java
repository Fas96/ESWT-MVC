package com.example.controller;

import com.example.dao.QuestionMapper;
import com.example.entity.Question;
import com.example.util.FileUploadUtil;
import com.example.util.PropertiesLoad;
import com.example.util.WebUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.Properties;
import java.util.logging.Logger;

@Slf4j
@Controller
@RequestMapping("/admin/question")
public class QuestionController {
    @Autowired
    ServletContext context;
    @Autowired
    WebUtils webUtils;

    public final String imageUploadDir="C:\\Users\\User\\Desktop\\ESWTMVC\\src\\main\\webapp\\WEB-INF\\resources\\question-images\\";
    // TODO: 2021-10-25 SET AS ENV PROPERTY
    @Autowired
    QuestionMapper questionMapper;
//    PropertiesLoad propertiesLoad=new PropertiesLoad();

    Logger logger=Logger.getLogger(String.valueOf(QuestionMapper.class));

//    C:\WebProject\2021\ESWT\ESWTMVC\target\ESWTMVC-1.0-SNAPSHOT\WEB-INF\resources\images\speaking.jpg
    @PostMapping("/save" )
    public String saveEmployee(Question question  ) throws IOException {

        MultipartFile questionMultipartFile = question.getMedia1();
        MultipartFile questionMultipartFileSecond = question.getMedia2();



        if((questionMultipartFile!=null || !questionMultipartFile.isEmpty())
                && (questionMultipartFile.getOriginalFilename().toUpperCase().endsWith(".JPG")||questionMultipartFile.getOriginalFilename().toUpperCase().endsWith(".PNG"))){
            String fileName=context.getRealPath("/")+"\\WEB-INF\\resources\\images\\"+questionMultipartFile.getOriginalFilename();
            question.setQuestion_media(questionMultipartFile.getOriginalFilename());
            //transfer into the server folder
            //check if file exist
            System.out.println(fileName);
            System.out.println(":::::::::::::::::::::::filename:::::::::::::::::");
            if((new File(fileName).exists())){
                //delete file first
                (new File(fileName)).delete();
                System.out.println("we deleted::::::"+fileName);
            }
//            System.out.println(fileName);
            questionMultipartFile.transferTo(new File(fileName));
        }
        if((questionMultipartFileSecond!=null || !questionMultipartFileSecond.isEmpty())
                && (questionMultipartFileSecond.getOriginalFilename().toUpperCase().endsWith(".JPG")||questionMultipartFileSecond.getOriginalFilename().toUpperCase().endsWith(".PNG"))){
            String fileName=context.getRealPath("/")+"WEB-INF\\resources\\images\\"+questionMultipartFileSecond.getOriginalFilename();
            question.setQuestion_second(questionMultipartFileSecond.getOriginalFilename());
            //transfer into the server folder
            //check if file exist

            System.out.println(fileName);
            System.out.println(":::::::::::::::::::::::filename:::::::::::::::::");
            if((new File(fileName).exists())){
                //delete file first
                (new File(fileName)).delete();
                System.out.println("we deleted::::::"+fileName);
            }
//            System.out.println(fileName);
            questionMultipartFileSecond.transferTo(new File(fileName));
        }


        if(question.getId() == null){
            questionMapper.saveQuestion(question);
        }else{
            questionMapper.updateQuestion(question);
        }


        return "redirect:/admin/question/list";
    }

    @GetMapping("/list")
    public ModelAndView listQuestion(){
        System.out.println(webUtils.getClientIp());

        return new ModelAndView( "/admin/question/question-list","questionList",questionMapper.getAllQuestions());
    }

    @GetMapping("/edit")
    public ModelAndView EditQuestion(@RequestParam("questionId") int questionId){
//        clear directory on question deleted
        String uploadDir=imageUploadDir+questionId;
        FileUploadUtil.clearDir(uploadDir);

        Question question = questionMapper.findQuestionById(questionId);


        return new ModelAndView( "/admin/question/question-edit","question",question);
    }

    @GetMapping("/create")
    public String createQuestion(@ModelAttribute("question") Question question){
        return "/admin/question/question-create" ;
    }
    @RequestMapping("/delete")
    public String deleteQuestion(@RequestParam("questionId") int questionId){
        questionMapper.deleteQuestion(questionId);
        return "redirect:/admin/question/list";
    }
    @GetMapping("/export")
    public ModelAndView exportQuestion(){
        return new ModelAndView( "/admin/question/question-export","user","user");
    }
}
