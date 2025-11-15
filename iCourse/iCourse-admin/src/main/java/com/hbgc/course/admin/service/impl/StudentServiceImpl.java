package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.StudentMapper;
import com.hbgc.course.admin.entity.Student;
import com.hbgc.course.admin.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> findStudentByPage(int page, int limit) {
        int offset = (page - 1) * limit;
        return studentMapper.findStudentByPage(offset, limit);
    }

    @Override
    public int studentCount() {
        return studentMapper.studentCount();
    }

    @Override
    public List<Student> getStuByName(String name, int page, int limit) {
        int offset = (page - 1) * limit;
        return studentMapper.findStuByName(name, offset, limit);
    }

    @Override
    public Student getStuByNo(String num) {
        return studentMapper.getStudentByNo(num);
    }

    @Override
    public Student getStudentById(int id) {
        return studentMapper.getStudentById(id);
    }

    @Override
    public Student getStudentByNo(String num) {
        return studentMapper.getStudentByNo(num);
    }

    @Override
    public boolean deleteStudent(int stuNo) {
        return studentMapper.deleteStudent(stuNo) > 0;
    }

    @Override
    public boolean updateStu(Student student) {
        // 先校验学生是否存在
        Student existing = studentMapper.getStudentByNo(student.getStuNo());
        if (existing == null) {
            return false;
        }
        return studentMapper.updateStu(student) > 0;
    }

    @Override
    public boolean addStudent(Student student) {
        // 校验学号是否已存在
        if (studentMapper.getStudentByNo(student.getStuNo()) != null) {
            return false;
        }
        return studentMapper.insertStudent(student) > 0;
    }

    public boolean deleteStu(String num) {
        try {
            int stuNo = Integer.parseInt(num);
            return studentMapper.deleteStudent(stuNo) > 0;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}