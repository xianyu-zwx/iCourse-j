package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.CourseScheduleMapper;
import com.hbgc.course.admin.entity.CourseSchedule;
import com.hbgc.course.admin.po.CourseSchedulePO;
import com.hbgc.course.admin.service.CourseScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CourseScheduleServiceImpl implements CourseScheduleService {

    @Autowired
    private CourseScheduleMapper scheduleMapper;

    @Override
    public List<CourseSchedulePO> findScheduleByPage(int page, int limit) {
        int offset = (page - 1) * limit;
        return scheduleMapper.findScheduleByPage(offset, limit);
    }

    @Override
    public Long scheduleCount() {
        return (long) scheduleMapper.scheduleCount();
    }

    @Override
    public boolean addSchedule(CourseSchedule schedule) {
        // 转换为PO对象并保存
        CourseSchedulePO po = convertToPO(schedule);
        return scheduleMapper.insertSchedule(po) > 0;
    }

    @Override
    public boolean updateSchedule(CourseSchedule schedule) {
        CourseSchedulePO po = convertToPO(schedule);
        return scheduleMapper.updateSchedule(po) > 0;
    }

    @Override
    public boolean deleteSchedule(int id) {
        return scheduleMapper.deleteSchedule(id) > 0;
    }

    @Override
    public List<CourseSchedulePO> selectAll() {
        return scheduleMapper.selectAll();
    }

    @Override
    public CourseSchedulePO getScheduleById(int id) {
        return scheduleMapper.getScheduleById(id);
    }

    @Override
    public List<CourseSchedulePO> findScheduleByCourseName(String name, int page, int limit) {
        int offset = (page - 1) * limit;
        return scheduleMapper.findScheduleByCourseName(name, offset, limit);
    }

    @Override
    public Long countScheduleByCourseName(String name) {
        return (long) scheduleMapper.countScheduleByCourseName(name);
    }

    // 转换方法：将实体类转换为PO
    private CourseSchedulePO convertToPO(CourseSchedule schedule) {
        // 实现转换逻辑
        CourseSchedulePO po = new CourseSchedulePO();
        po.setId(schedule.getId());
        po.setName(schedule.getName());
        po.setType(schedule.getType());
        po.setPlace(schedule.getPlace());
        // 设置其他属性...
        return po;
    }
}