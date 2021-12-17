package com.example.dao.grade;

import com.example.dao.grade.IGradeMapper;
import com.example.entity.Grade;
import com.example.entity.GradeTypeTotalDao;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class GradeMapper implements IGradeMapper {
    public void saveGrade(Grade grade){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertGrade", grade);
        session.commit();
        session.close();
    }

    public void updateGrade(Grade grade){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateAnswer", grade);
        session.commit();
        session.close();
    }

    public void deleteGrade(int gradeId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteGrade", gradeId);
        session.commit();
        session.close();
    }

    public List<Map> studentScoresListTypeTotal(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Map> gradeScoreTypeList = session.selectList("studentScoresListTypeTotal");
        session.commit();
        session.close();
        return gradeScoreTypeList;
    }
    public List<Grade> getAllGrades(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Grade> gradesList = session.selectList("getAllGrades");
        session.commit();
        session.close();
        return gradesList;
    }

    public Grade findGradeById(int gradeId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Grade grade = (Grade) session.selectOne("findGradeById",gradeId);
        session.commit();
        session.close();
        return grade;
    }
}
