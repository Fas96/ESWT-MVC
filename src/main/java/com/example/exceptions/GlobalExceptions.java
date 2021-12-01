package com.example.exceptions;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

public class GlobalExceptions extends RuntimeException{
    //can only be found in request Mappings
    // error pages cannot access this
    @ModelAttribute("appName")
    public String appName(){
        return "FasChannell";
    }

//    @ExceptionHandler(UserNotFoundException.class)
//    public  String handleUserNotFoundException(UserNotFoundException e, Model model){
//        model.addAttribute("msg",e.getMessage());
//        return "error";
//    }

    @ExceptionHandler(Exception.class)
    public ModelAndView handleGeneralException(Exception ex, ModelAndView model){
//        model.addAttribute("msg",e.getMessage());
        model.setViewName("component/error");
        model.addObject("code", ex.getCause().getStackTrace());
        model.addObject("msg", ex.getMessage());
        return model;
    }
}
