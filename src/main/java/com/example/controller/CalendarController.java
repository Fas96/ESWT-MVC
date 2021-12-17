package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class CalendarController {

    @GetMapping("/calendar")
    public String showCalendar() {
        return "/admin/calendar/index";
    }
}
