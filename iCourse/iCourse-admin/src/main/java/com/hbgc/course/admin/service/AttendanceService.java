package com.hbgc.course.admin.service;

import com.hbgc.course.admin.po.AttendancePO;

import java.util.List;

public interface AttendanceService {

    List<AttendancePO> findAttendanceByPage(int page, int limit);

    Long attendanceCount();
}
