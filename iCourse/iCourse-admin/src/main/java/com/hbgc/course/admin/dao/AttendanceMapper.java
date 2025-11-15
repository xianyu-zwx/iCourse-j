package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.Attendance;
import com.hbgc.course.admin.po.AttendancePO;

import com.hbgc.course.admin.entity.MqttAttendanceMessage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AttendanceMapper {

    Attendance getAttendanceById(Integer id);

    List<AttendancePO> findAttendanceByPage(Integer offset, int limit);

    long attendanceCount();

    void insertAttendance(MqttAttendanceMessage message);
}
