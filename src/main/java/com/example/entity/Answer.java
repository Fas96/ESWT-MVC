package com.example.entity;

public class Answer {
    private Integer id;
    private Integer question_id;
    private String question_type;
    private Integer member_id;
    private String text_res;
    private String media_res;

    @Override
    public String toString() {
        return "Answer{" +
                "id=" + id +
                ", question_id=" + question_id +
                ", question_type='" + question_type + '\'' +
                ", member_id=" + member_id +
                ", text_res='" + text_res + '\'' +
                ", media_res='" + media_res + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(Integer question_id) {
        this.question_id = question_id;
    }

    public String getQuestion_type() {
        return question_type;
    }

    public void setQuestion_type(String question_type) {
        this.question_type = question_type;
    }

    public Integer getMember_id() {
        return member_id;
    }

    public void setMember_id(Integer member_id) {
        this.member_id = member_id;
    }

    public String getText_res() {
        return text_res;
    }

    public void setText_res(String text_res) {
        this.text_res = text_res;
    }

    public String getMedia_res() {
        return media_res;
    }

    public void setMedia_res(String media_res) {
        this.media_res = media_res;
    }
}
