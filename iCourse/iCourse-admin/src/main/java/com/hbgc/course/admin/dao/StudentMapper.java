package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StudentMapper {

    // 查询单个学生
    Student getStudentById(int id);

    Student getStudentByNo(String num);

    // 分页查询
    List<Student> findStudentByPage(@Param("offset") Integer offset, @Param("limit") int limit);

    List<Student> findStuByName(@Param("name") String name, @Param("offset") int offset, @Param("limit") int limit);

    List<Student> getStuSimpleInfo();

    int studentCount();

    // 操作方法
    int deleteStudent(@Param("stuNo") int stuNo);

    int updateStu(Student student);


    int insertStudent(Student student);
}