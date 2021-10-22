package com.example.entity;

import java.util.Date;

public class Session {
    private Integer id;
    private Integer session_year ;
    private String session_title ;
    private Date session_startDate ;
    private Date session_endDate;

    @Override
    public String toString() {
        return "Session{" +
                "id=" + id +
                 
                ", session_year=" + session_year +
                ", session_title='" + session_title + '\'' +
                ", session_startDate=" + session_startDate +
                ", session_endDate=" + session_endDate +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Integer getSession_year() {
        return session_year;
    }

    public void setSession_year(Integer session_year) {
        this.session_year = session_year;
    }

    public String getSession_title() {
        return session_title;
    }

    public void setSession_title(String session_title) {
        this.session_title = session_title;
    }

    public Date getSession_startDate() {
        return session_startDate;
    }

    public void setSession_startDate(Date session_startDate) {
        this.session_startDate = session_startDate;
    }

    public Date getSession_endDate() {
        return session_endDate;
    }

    public void setSession_endDate(Date session_endDate) {
        this.session_endDate = session_endDate;
    }
}
