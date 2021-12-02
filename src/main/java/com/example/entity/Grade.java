package com.example.entity;

import lombok.*;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Grade {
    private Integer id;
    private Integer question_id;
    private String member_id;
    private String question_type;
    private Integer session_id ;
    private Integer answer_taskCompletion;
    private Integer answer_fluency ;
    private Integer answer_coherence;
    private Integer answer_pronounciation ;
    private Integer answer_languageUse ;
    private Integer answer_grammar ;
    private Integer score;
    private Integer isMarked ;
    private String answer_memo;

    private Integer Logic ;
    private Integer Mechnics  ;
    private Integer Content ;




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

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getQuestion_type() {
        return question_type;
    }

    public void setQuestion_type(String question_type) {
        this.question_type = question_type;
    }

    public Integer getSession_id() {
        return session_id;
    }

    public void setSession_id(Integer session_id) {
        this.session_id = session_id;
    }

    public Integer getAnswer_taskCompletion() {
        return answer_taskCompletion;
    }

    public void setAnswer_taskCompletion(Integer answer_taskCompletion) {
        this.answer_taskCompletion = answer_taskCompletion;
    }

    public Integer getAnswer_fluency() {
        return answer_fluency;
    }

    public void setAnswer_fluency(Integer answer_fluency) {
        this.answer_fluency = answer_fluency;
    }

    public Integer getAnswer_coherence() {
        return answer_coherence;
    }

    public void setAnswer_coherence(Integer answer_coherence) {
        this.answer_coherence = answer_coherence;
    }

    public Integer getAnswer_pronounciation() {
        return answer_pronounciation;
    }

    public void setAnswer_pronounciation(Integer answer_pronounciation) {
        this.answer_pronounciation = answer_pronounciation;
    }

    public Integer getAnswer_languageUse() {
        return answer_languageUse;
    }

    public void setAnswer_languageUse(Integer answer_languageUse) {
        this.answer_languageUse = answer_languageUse;
    }

    public Integer getAnswer_grammar() {
        return answer_grammar;
    }

    public void setAnswer_grammar(Integer answer_grammar) {
        this.answer_grammar = answer_grammar;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getIsMarked() {
        return isMarked;
    }

    public void setIsMarked(Integer isMarked) {
        this.isMarked = isMarked;
    }

    public String getAnswer_memo() {
        return answer_memo;
    }

    public void setAnswer_memo(String answer_memo) {
        this.answer_memo = answer_memo;
    }
}
