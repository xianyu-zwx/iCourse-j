package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.Grade;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GradeMapper {

    // 基础查询：按名称查询班级
    Grade getGradeByName(String gradeName);

    // 分页查询班级列表
    List<Grade> findGradeByPage(@Param("offset") Integer offset, @Param("limit") int limit);

    // 查询班级总数（用于分页）
    int gradeCount();

    // 新增班级
    int insertGrade(Grade grade);

    // 更新班级信息
    int updateGrade(Grade grade);

    // 删除班级（按ID）
    int deleteGrade(int id);

    // 查询所有班级（用于下拉选择等场景）
    List<Grade> selectAll();

    // 按ID查询班级（用于编辑回显）
    Grade getGradeById(int id);

    // 新增方法
    List<Grade> findGradeByName(@Param("name") String name, @Param("offset") int offset, @Param("limit") int limit);
    int countGradeByName(String name);
}
