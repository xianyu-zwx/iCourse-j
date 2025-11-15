package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.Teacher;
import java.util.List;

public interface TeacherService {
    List<Teacher> findTeacherByPage(int page, int limit);
    Long teacherCount();
    boolean addTeacher(Teacher teacher);
    boolean updateTeacher(Teacher teacher);
    boolean deleteTeacher(int id);
    List<Teacher> selectAll();
    Teacher getTeacherById(int id);
    Teacher getTeacherByNo(String teaNo);
    List<Teacher> findTeacherByName(String name, int page, int limit);
    Long countTeacherByName(String name);
}