package com.example.dao;

import com.example.entity.Member;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class MemberMapper {
    public void saveMember(Member member){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertMember", member);
        session.commit();
        session.close();
    }
    public List<Member> getMembersWhoAnswered(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Member> memberList = session.selectList("getMembersWhoAnswered");
        session.commit();
        session.close();
        return memberList;
    }
    public void saveRole(Member member){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertRole", member);
        session.commit();
        session.close();
    }

    public void updateMember(Member member){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateMember", member);
        session.commit();
        session.close();
    }

    public void deleteMember(int memberId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteMember", memberId);
        session.commit();
        session.close();
    }

    public List<Member> getAllMembers(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Member> memberList = session.selectList("getAllMembers");
        session.commit();
        session.close();
        return memberList;
    }

    public Member findMemberById(String memberId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Member member = (Member) session.selectOne("findMemberById", memberId);
        session.commit();
        session.close();
        return member;
    }
}
