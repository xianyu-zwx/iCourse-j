package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.Student;
import java.util.List;

public interface StudentService {

    // 分页查询
    List<Student> findStudentByPage(int page, int limit);

    // 总条数
    int studentCount();

    // 按姓名查询
    List<Student> getStuByName(String name, int page, int limit);

    // 按学号查询
    Student getStuByNo(String num);

    // 按ID查询
    Student getStudentById(int id);

    // 按学号查询（兼容）
    Student getStudentByNo(String num);

    // 删除学生
    boolean deleteStudent(int stuNo);

    // 更新学生
    boolean updateStu(Student student);

    // 添加学生（新增方法）
    boolean addStudent(Student student);

    // 字符串学号删除（兼容）
    boolean deleteStu(String num);
}