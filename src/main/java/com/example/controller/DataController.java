package com.example.controller;

import com.example.dao.AnswerMapper;
import com.example.dao.GradeMapper;
import com.example.dao.MemberMapper;
import com.example.entity.Grade;
import com.example.entity.GradeTypeTotalDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import java.util.stream.IntStream;

@Controller
@RequestMapping("/admin/data")
public class DataController {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    AnswerMapper answerMapper;
    @Autowired
    GradeMapper gradeMapper;

    @GetMapping("/list")
    public ModelAndView listScore(ModelAndView mv){

        System.out.println("------------checking the received data-----------");

        List<GradeTypeTotalDao> listGrade= new ArrayList<>();

        for (Map map : gradeMapper.studentScoresListTypeTotal()) {
            GradeTypeTotalDao typeTotalDao= new GradeTypeTotalDao(Integer.parseInt((String) map.get("member_id")),(String) map.get("member_name"),0,0,0,0,0,new Date());
            String[] scores = map.get("SCORES").toString().split(",");
            for (String score : scores) {
               String removingBrackets=score.replaceAll("\\[","").replaceAll("\\]","");
               if(removingBrackets.split("=")[0].equals("WRITING")){
                   typeTotalDao.setWriting(Integer.parseInt(removingBrackets.split("=")[1]));
               }
                if(removingBrackets.split("=")[0].equals("LISTENING")){
                    typeTotalDao.setListening(Integer.parseInt(removingBrackets.split("=")[1]));
                }
                if(removingBrackets.split("=")[0].equals("READING")){
                    typeTotalDao.setReading(Integer.parseInt(removingBrackets.split("=")[1]));
                }
                if(removingBrackets.split("=")[0].equals("SPEAKING")){
                    typeTotalDao.setSpeaking(Integer.parseInt(removingBrackets.split("=")[1]));
                }
            }
            typeTotalDao.setTotalScore(typeTotalDao.getListening()+ typeTotalDao.getReading()+ typeTotalDao.getSpeaking()+ typeTotalDao.getWriting());

            listGrade.add(typeTotalDao);
        }
        System.out.println(listGrade);


        mv.addObject("studentScoresList",listGrade);
        mv.setViewName("/admin/data/score-list");
        return mv;
    }

    public   int[][] splitArray(int[] inputArray, int chunkSize) {
        return IntStream.iterate(0, i -> i + chunkSize)
                .limit((int) Math.ceil((double) inputArray.length / chunkSize))
                .mapToObj(j -> Arrays.copyOfRange(inputArray, j, Math.min(inputArray.length, j + chunkSize)))
                .toArray(int[][]::new);
    }

    @GetMapping("/edit")
    public String EditScore(Model mv, @RequestParam(value = "gradeId",required = false) Integer gradeId,RedirectAttributes req){

        if(gradeId!=null){
            req.addAttribute("gradeId",gradeId);
            return "redirect:/admin/data/result";
        }
        //get members who has answer
        mv.addAttribute("getMembersWhoAnswered",memberMapper.getMembersWhoAnswered());
        return "/admin/data/score-edit";
    }

    @GetMapping("/result")
    public ModelAndView showStudentAnswers(ModelAndView mv, @RequestParam(value = "gradeId",required = false) Integer gradeId,HttpServletRequest req){
        mv.setViewName("/admin/data/student-answers");

        mv.addObject("gradeId",gradeId);



         mv.addObject("questionList",answerMapper.findAnswerByMemberID(gradeId.toString()));

        return mv;
    }

    //append the current page param to return to same page
    @PostMapping("/saveGrade")
    public String saveGrade(@ModelAttribute("grade") Grade grade ){
        //error in the authname
        //should rather user the url

        gradeMapper.saveGrade(grade);
        System.out.println("::::::::::::::::::::::::::::::::::::::::::::::");
        return "redirect:/admin/data/result?gradeId="+grade.getMember_id();
    }

    @GetMapping("/export")
    public ModelAndView exportScore(){
        return new ModelAndView( "/admin/data/score-export","user","user");
    }

}
