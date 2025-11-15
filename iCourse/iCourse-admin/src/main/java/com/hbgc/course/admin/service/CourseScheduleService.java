package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.CourseSchedule;
import com.hbgc.course.admin.po.CourseSchedulePO;
import java.util.List;

public interface CourseScheduleService {
    List<CourseSchedulePO> findScheduleByPage(int page, int limit);
    Long scheduleCount();
    boolean addSchedule(CourseSchedule schedule);
    boolean updateSchedule(CourseSchedule schedule);
    boolean deleteSchedule(int id);
    List<CourseSchedulePO> selectAll();
    CourseSchedulePO getScheduleById(int id);
    List<CourseSchedulePO> findScheduleByCourseName(String name, int page, int limit);
    Long countScheduleByCourseName(String name);
}