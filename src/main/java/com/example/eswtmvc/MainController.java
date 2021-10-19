package com.example.eswtmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@Controller
public class MainController {
    @RequestMapping("/")
    public String home() {
        return "index";
    }

}