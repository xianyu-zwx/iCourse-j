package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.Course;
import com.hbgc.course.admin.po.CoursePO;
import com.hbgc.course.admin.po.CourseSchedulePO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CourseMapper {

    int batchInsertCourseSchedule(List<CourseSchedulePO> courseSchedulePOList);

    CoursePO getCourseByName(String courseName);

    // 补充方法
    List<Course> findCourseByPage(@Param("offset") int offset, @Param("limit") int limit);
    int courseCount();
    int insertCourse(Course course);
    int updateCourse(Course course);
    int deleteCourse(int id);
    Course getCourseById(int id);
    List<Course> findCourseByName(@Param("name") String name, @Param("offset") int offset, @Param("limit") int limit);
    int countCourseByName(String name);
}
