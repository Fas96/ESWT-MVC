package com.example.dao.answer;

import com.example.entity.Answer;

import java.util.List;

public interface IAnswerMapper {
    void saveAnswer(Answer answer);

    void updateAnswer(Answer answer);

    void deleteAnswer(int answerId);

    List<Answer> getAllAnswers();

    List<Answer> getAllAnswerAudioFiles(String [] typeArr);


    List<Answer> findAnswerByMemberID(String MemberID);

    //    public List<String> findAnswerByMemberIDquestion_id(String MemberID);
    Answer findAnswerById(int answerId);
}
