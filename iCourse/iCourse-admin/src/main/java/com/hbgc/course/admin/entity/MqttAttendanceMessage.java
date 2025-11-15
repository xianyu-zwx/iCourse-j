package com.hbgc.course.admin.entity;

import lombok.Data;

@Data
public class MqttAttendanceMessage {
    private String deviceId;
    private int faceId;
    private int timestamp;
    private String visualMode;
}