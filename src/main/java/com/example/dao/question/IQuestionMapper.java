package com.example.dao.question;

import com.example.entity.Question;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public interface IQuestionMapper {
    void saveQuestion(Question question);




    void updateQuestion(Question question);
    void deleteQuestion(Integer questionId);

    List<Question> getAllQuestions();

    Question findQuestionById(Integer quesitonId);



    Question findQuestionByTitle(String questionTitle);

    List<Question> findQuestionNonAnsweredQuestion(Integer memberId);
}
