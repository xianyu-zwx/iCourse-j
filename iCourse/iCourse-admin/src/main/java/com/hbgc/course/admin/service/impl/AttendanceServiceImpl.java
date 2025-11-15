package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.AttendanceMapper;
import com.hbgc.course.admin.entity.Attendance;
import com.hbgc.course.admin.po.AttendancePO;
import com.hbgc.course.admin.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private AttendanceMapper attendanceMapper;

    @Override
    public List<AttendancePO> findAttendanceByPage(int page, int limit) {
        //计算偏移量0, 0+limit_, limit_+limit_
        Integer offset = (page - 1) * limit;
        return attendanceMapper.findAttendanceByPage(offset, limit);
    }

    @Override
    public Long attendanceCount() {
        return attendanceMapper.attendanceCount();
    }
}
