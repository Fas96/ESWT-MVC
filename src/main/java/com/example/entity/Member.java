package com.example.entity;

public class Member {
    private Integer id;
    private String member_id;
    private String  member_password  ;
    private String member_name  ;
    private Boolean member_isRestricted;
    private Boolean member_isAdmin ;


    @Override
    public String toString() {
        return "Member{" +
                "member_id='" + member_id + '\'' +
                ", member_password='" + member_password + '\'' +
                ", member_name='" + member_name + '\'' +
                ", member_isRestricted=" + member_isRestricted +
                ", member_isAdmin=" + member_isAdmin +
                '}';
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_password() {
        return member_password;
    }

    public void setMember_password(String member_password) {
        this.member_password = member_password;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public Boolean getMember_isRestricted() {
        return member_isRestricted;
    }

    public void setMember_isRestricted(Boolean member_isRestricted) {
        this.member_isRestricted = member_isRestricted;
    }

    public Boolean getMember_isAdmin() {
        return member_isAdmin;
    }

    public void setMember_isAdmin(Boolean member_isAdmin) {
        this.member_isAdmin = member_isAdmin;
    }
}
