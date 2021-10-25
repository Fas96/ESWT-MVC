package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.QuestionMapper;
import com.example.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/audio")
public class AudioController {
    @Autowired
    AnswerMapper answerMapper;
    @Autowired
    QuestionMapper questionMapper;

    @GetMapping("/list")
    public ModelAndView listAudios(){
        String[] fileTypeArr={"'SPEAKING'","'READING'"};
         return new ModelAndView( "/admin/audio/audio-list","answersWithAudio",answerMapper
                 .getAllAnswerAudioFiles(fileTypeArr));
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
