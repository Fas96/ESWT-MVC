package com.example.dao;

import com.example.entity.Question;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class QuestionMapper {
    public void saveQuestion(Question question){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertQuestion", question);
        session.commit();
        session.close();
    }

    public void updateQuestion(Question question){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateQuestion", question);
        session.commit();
        session.close();
    }

    public void deleteQuestion(int questionId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteQuestion", questionId);
        session.commit();
        session.close();
    }

    public List<Question> getAllQuestions(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Question> questionList = session.selectList("getAllQuestions");
        session.commit();
        session.close();
        return questionList;
    }

    public Question findQuestionById(int quesitonId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Question question = (Question) session.selectOne("findQuestionById", quesitonId);
        session.commit();
        session.close();
        return question;
    }
}
