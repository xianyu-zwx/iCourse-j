package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.Course;

import java.util.List;
import java.util.Map;

public interface CourseService {

    List<Course> findCourseByPage(int page, int limit);
    Long courseCount();
    boolean addCourse(Course course);
    boolean updateCourse(Course course);
    boolean deleteCourse(int id);
    List<Course> selectAll();
    Course getCourseById(int id);
    Course getCourseByName(String name);
    List<Course> findCourseByName(String name, int page, int limit);
    Long countCourseByName(String name);
    Map<String, Integer> parseSchedule(Map schedule);

}
