package com.example.dao;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class AnswerMapperTest {

    Calculator aaa=new Calculator();
    @Test
    void addTwoNumbers(){
        //given
        int a=10;
        int b=20;

        //when
        int result=aaa.add(a,b);

        //then

        int expected=30;
        assertThat(result).isEqualTo(expected);
    }
    @Test
    void saveAnswer() {
    }

    @Test
    void updateAnswer() {
    }

    @Test
    void deleteAnswer() {
    }

    @Test
    void getAllAnswers() {
    }

    @Test
    void getAllAnswerAudioFiles() {
    }

    @Test
    void findAnswerByMemberID() {
    }

    @Test
    void findAnswerById() {
    }

    private class Calculator{
        public Calculator() {
        }

        int add(int a, int b){
            return a+b;
        }
    }
}