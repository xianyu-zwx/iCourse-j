package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.CourseSchedule;
import com.hbgc.course.admin.po.CourseSchedulePO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface CourseScheduleMapper {
    List<CourseSchedulePO> findScheduleByPage(@Param("offset") int offset, @Param("limit") int limit);
    int scheduleCount();
    int insertSchedule(CourseSchedulePO schedule);
    int updateSchedule(CourseSchedulePO schedule);
    int deleteSchedule(int id);
    List<CourseSchedulePO> selectAll();
    CourseSchedulePO getScheduleById(int id);
    List<CourseSchedulePO> findScheduleByCourseName(@Param("name") String name, @Param("offset") int offset, @Param("limit") int limit);
    int countScheduleByCourseName(String name);
    int batchInsertCourseSchedule(List<CourseSchedulePO> courseSchedulePOList);
}