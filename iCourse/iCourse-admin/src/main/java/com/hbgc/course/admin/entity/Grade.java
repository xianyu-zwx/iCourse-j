package com.hbgc.course.admin.entity;

import lombok.Data;

@Data
public class Grade {
    private int id;               // 班级ID（主键）
    private String name;          // 班级名称（如：23gb物联1）
    private String major;         // 专业（如：物联网工程）
    private String department;    // 系部（如：电气与电子工程系）
    private String college;       // 学院（如：湖北工业大学工程技术学院）
    private String monitor;       // 班长姓名
    private String learningCommittee;  // 学习委员姓名

    // 注意：数据库字段与实体类映射需保持一致，参考数据库表t_grade结构
}