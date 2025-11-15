package com.hbgc.course.admin.po;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class AttendancePO {
    private int id;        //表的主键
    private String deviceId; //设备id
    private String name;   //姓名
    private String checkInTime;   //时间
    private String faceId;  //手机号


}
