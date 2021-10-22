package com.example.dao;

import com.example.entity.Answer;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class AnswerMapper {

    public void saveAnswer(Answer answer){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertAnswer", answer);
        session.commit();
        session.close();
    }

    public void updateAnswer(Answer answer){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateAnswer", answer);
        session.commit();
        session.close();
    }

    public void deleteAnswer(int answerId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteAnswer", answerId);
        session.commit();
        session.close();
    }

    public List<Answer> getAllAnswers(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Answer> answersList = session.selectList("getAllAnswers");
        session.commit();
        session.close();
        return answersList;
    }

    public Answer findAnswerById(int answerId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Answer answer = (Answer) session.selectOne("findAnswerById", answerId);
        session.commit();
        session.close();
        return answer;
    }
}
