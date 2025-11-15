package com.hbgc.course.admin.entity;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Student
{
    private int id;        //表的主键
    private String stuNo;  //学号
    private String name;   //姓名
    private int age;       //年龄
    private String gender; //性别
    private String grade;  //班级
    private String qq;     //QQ号
    private String photo;  //照片
    private String faceId; //人脸ID
    private String deviceId; //设备ID
    private String timestamp;//时间戳
}
