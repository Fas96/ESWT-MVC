package com.example.controller;

import com.example.dao.answer.AnswerMapper;
import com.example.dao.question.QuestionMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/audio")
public class AudioController {

    AnswerMapper answerMapper;

    QuestionMapper questionMapper;

    public AudioController(AnswerMapper answerMapper, QuestionMapper questionMapper) {
        this.answerMapper = answerMapper;
        this.questionMapper = questionMapper;
    }

    @GetMapping("/list")
    public ModelAndView listAudios(ModelAndView mv){
        String[] fileTypeArr={"'SPEAKING'","'READING'"};
        mv.setViewName("/admin/audio/audio-list");


        mv.addObject("answersWithAudio",answerMapper.getAllAnswerAudioFiles(fileTypeArr));
//        mv.addObject("", )
         return mv;
    }

    @GetMapping("/edit")
    public ModelAndView EditAudio(){
        return new ModelAndView( "/admin/audio/audio-edit","user","user");
    }

    @GetMapping("/export")
    public ModelAndView exportAudios(){
        return new ModelAndView( "/admin/audio/audio-export","user","user");
    }
    @GetMapping("/test")
    public ModelAndView testAudios(){
        return new ModelAndView( "/admin/audio/audio-test","user","user");
    }




}
