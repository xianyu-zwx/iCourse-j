package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.Grade;
import java.util.List;

public interface GradeService {
    // 分页查询班级
    List<Grade> findGradeByPage(int page, int limit);

    // 查询班级总数
    Long gradeCount();

    // 新增班级
    boolean addGrade(Grade grade);

    // 更新班级
    boolean updateGrade(Grade grade);

    // 删除班级
    boolean deleteGrade(int id);

    // 查询所有班级
    List<Grade> selectAll();

    // 按ID查询班级
    Grade getGradeById(int id);

    List<Grade> findGradeByName(String name, Integer pageNum, Integer pageSize);

    Long countGradeByName(String name);
}