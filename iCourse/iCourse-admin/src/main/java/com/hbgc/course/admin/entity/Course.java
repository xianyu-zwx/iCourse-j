package com.hbgc.course.admin.entity;

import com.hbgc.course.admin.po.CoursePO;
import lombok.Data;

@Data
public class Course {
    private int id;
    private String name;
    private int credit;
    private String code;
    private Teacher teacher;

    public void init(CoursePO coursePO) {
        this.id = coursePO.getId();
        this.name = coursePO.getName();
        this.credit = coursePO.getCredit();
        this.code = coursePO.getCode();
        this.teacher = new Teacher(coursePO.getTeacher());
    }
}
