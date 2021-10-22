package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/audio")
public class AudioController {

    @GetMapping("/list")
    public ModelAndView listAudios(){
         return new ModelAndView( "/admin/audio/audio-list","user","user");
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

    @GetMapping("/testExample")
    public ModelAndView testExample(){
        return new ModelAndView( "/admin/audio/test-example","user","user");
    }
}
