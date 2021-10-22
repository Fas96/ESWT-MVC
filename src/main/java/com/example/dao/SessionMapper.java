package com.example.dao;

import com.example.entity.Question;
import com.example.entity.Session;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class SessionMapper {

    public void saveSession(Session sessionItem){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertQuestion", sessionItem);
        session.commit();
        session.close();
    }

    public void updateSession(Session sessionItem){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateQuestion", sessionItem);
        session.commit();
        session.close();
    }

    public void deleteSession(int sessionId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteQuestion", sessionId);
        session.commit();
        session.close();
    }

    public List<Session> getAllSessions(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Session> sessionsList = session.selectList("getAllSessions");
        session.commit();
        session.close();
        return sessionsList;
    }

    public Session findSessionById(int sessionId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Session sessionItem = (Session) session.selectOne("findSessionById", sessionId);
        session.commit();
        session.close();
        return sessionItem;
    }
}
