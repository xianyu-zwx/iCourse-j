package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface TeacherMapper {
    List<Teacher> findTeacherByPage(@Param("offset") int offset, @Param("limit") int limit);
    int teacherCount();
    int insertTeacher(Teacher teacher);
    int updateTeacher(Teacher teacher);
    int deleteTeacher(int id);
    List<Teacher> selectAll();
    Teacher getTeacherById(int id);
    Teacher getTeacherByNo(String teaNo);
    List<Teacher> findTeacherByName(@Param("name") String name, @Param("offset") int offset, @Param("limit") int limit);
    int countTeacherByName(String name);
}