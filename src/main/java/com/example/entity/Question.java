package com.example.entity;

import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;
@ToString
public class Question {
    private Integer id;
    private String question_type;
    private String question_title;
    private String question_content  ;
    private String question_media  ;
    private String question_second ;
    private Integer question_prepTime  ;
    private Integer question_resTime  ;
    private String question_memo  ;
    private Integer question_sessionId  ;
    private Integer quetion_orderNo ;

    private MultipartFile media1;
    private MultipartFile media2;


    public MultipartFile getMedia1() {
        return media1;
    }

    public void setMedia1(MultipartFile media1) {
        this.media1 = media1;
    }

    public MultipartFile getMedia2() {
        return media2;
    }

    public void setMedia2(MultipartFile media2) {
        this.media2 = media2;
    }

    public Question() {
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuestion_type() {
        return question_type;
    }

    public void setQuestion_type(String question_type) {
        this.question_type = question_type;
    }

    public String getQuestion_title() {
        return question_title;
    }

    public void setQuestion_title(String question_title) {
        this.question_title = question_title;
    }

    public String getQuestion_content() {
        return question_content;
    }

    public void setQuestion_content(String question_content) {
        this.question_content = question_content;
    }

    public String getQuestion_media() {
        return question_media;
    }

    public void setQuestion_media(String question_media) {
        this.question_media = question_media;
    }

    public String getQuestion_second() {
        return question_second;
    }

    public void setQuestion_second(String question_second) {
        this.question_second = question_second;
    }

    public Integer getQuestion_prepTime() {
        return question_prepTime;
    }

    public void setQuestion_prepTime(Integer question_prepTime) {
        this.question_prepTime = question_prepTime;
    }

    public Integer getQuestion_resTime() {
        return question_resTime;
    }

    public void setQuestion_resTime(Integer question_resTime) {
        this.question_resTime = question_resTime;
    }

    public String getQuestion_memo() {
        return question_memo;
    }

    public void setQuestion_memo(String question_memo) {
        this.question_memo = question_memo;
    }

    public Integer getQuestion_sessionId() {
        return question_sessionId;
    }

    public void setQuestion_sessionId(Integer question_sessionId) {
        this.question_sessionId = question_sessionId;
    }

    public Integer getQuetion_orderNo() {
        return quetion_orderNo;
    }

    public void setQuetion_orderNo(Integer quetion_orderNo) {
        this.quetion_orderNo = quetion_orderNo;
    }
}
