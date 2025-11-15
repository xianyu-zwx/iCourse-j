package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.TeacherMapper;
import com.hbgc.course.admin.entity.Teacher;
import com.hbgc.course.admin.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public List<Teacher> findTeacherByPage(int page, int limit) {
        return null;
    }

    @Override
    public Long teacherCount() {
        return null;
    }

    @Override
    public boolean addTeacher(Teacher teacher) {
        return false;
    }

    @Override
    public boolean updateTeacher(Teacher teacher) {
        return false;
    }

    @Override
    public boolean deleteTeacher(int id) {
        return false;
    }

    @Override
    public List<Teacher> selectAll() {
        return null;
    }

    @Override
    public Teacher getTeacherById(int id) {
        return teacherMapper.getTeacherById(id);
    }

    @Override
    public Teacher getTeacherByNo(String num) {
        return teacherMapper.getTeacherByNo(num);
    }

    @Override
    public List<Teacher> findTeacherByName(String name, int page, int limit) {
        return null;
    }

    @Override
    public Long countTeacherByName(String name) {
        return null;
    }
}
