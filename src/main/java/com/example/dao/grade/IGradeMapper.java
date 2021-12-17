package com.example.dao.grade;

import com.example.entity.Grade;

import java.util.List;
import java.util.Map;

public interface IGradeMapper {
    void saveGrade(Grade grade);

   void updateGrade(Grade grade);
   void deleteGrade(int gradeId);

   List<Map> studentScoresListTypeTotal();
   List<Grade> getAllGrades();

    Grade findGradeById(int gradeId);
}
