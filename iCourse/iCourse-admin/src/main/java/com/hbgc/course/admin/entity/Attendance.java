package com.hbgc.course.admin.entity;

import lombok.Data;


@Data
public class Attendance
{
    private int id;        //表的主键
    private String deviceId ;  //设备ID
    private int timestamp ;//时间
    private int faceId;
    private int visual_mode;
}
