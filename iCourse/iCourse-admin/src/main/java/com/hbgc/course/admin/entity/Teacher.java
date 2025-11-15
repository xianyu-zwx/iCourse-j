package com.hbgc.course.admin.entity;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Teacher {
    private int id;               // 教师ID（主键）
    private String teaNo;         // 教师工号
    private String name;          // 教师姓名
    private int age;              // 教师年龄
    private String sex;           // 性别（男/女）
    private String department;    // 所属系部
    private String college;       // 所属学院
    private String phone;         // 联系电话
    private String qq;            // QQ号
    private String qualification; // 职称（如：讲师、教授）
    private String photo;         // 照片存储路径

    public Teacher(){
    }

    public Teacher(int id) {
        this.id = id;
    }
}
