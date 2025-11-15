package com.hbgc.course.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.hbgc.course.admin.dao.CourseMapper;
import com.hbgc.course.admin.dao.GradeMapper;
import com.hbgc.course.admin.dto.CourseScheduleDTO;
import com.hbgc.course.admin.entity.Course;
import com.hbgc.course.admin.entity.CourseSchedule;
import com.hbgc.course.admin.entity.Grade;
import com.hbgc.course.admin.po.CoursePO;
import com.hbgc.course.admin.po.CourseSchedulePO;
import com.hbgc.course.admin.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private GradeMapper gradeMapper;

    @Override
    public Map<String, Integer> parseSchedule(Map schedule) {
        Map<String, Integer> resultMap = new HashMap<>();
//        Map<String, List<JSONObject>> jsonObjectMap = JSON.parseObject(schedule, Map.class);
        Map<String, List<Map>> jsonObjectMap = schedule;
        for (Map.Entry<String, List<Map>> entry : jsonObjectMap.entrySet()) {
            String courseName = entry.getKey();
            List<Map> jsonObjectList = entry.getValue();
            int ret = parseSingleSchedule(courseName, jsonObjectList);
            resultMap.put(courseName, ret);
        }

        return resultMap;
    }

    @Override
    public List<Course> findCourseByPage(int page, int limit) {
        return null;
    }

    @Override
    public Long courseCount() {
        return null;
    }

    @Override
    public boolean addCourse(Course course) {
        return false;
    }

    @Override
    public boolean updateCourse(Course course) {
        return false;
    }

    @Override
    public boolean deleteCourse(int id) {
        return false;
    }

    @Override
    public List<Course> selectAll() {
        return null;
    }

    @Override
    public Course getCourseById(int id) {
        return null;
    }

    @Override
    public Course getCourseByName(String name) {
        return null;
    }

    @Override
    public List<Course> findCourseByName(String name, int page, int limit) {
        return null;
    }

    @Override
    public Long countCourseByName(String name) {
        return null;
    }

    private CoursePO getCourse(String courseName) {
        if (courseMapper != null) {
            return courseMapper.getCourseByName(courseName);
        }
//        throw new RuntimeException("Course Not Found");
//        return null;
        CoursePO course = new CoursePO();
        course.setName(courseName);
        if (courseName.equals("云计算技术")){
            course.setId(1);
        } else if (courseName.equals("信息化系统开发与应用")) {
            course.setId(2);
        } else if (courseName.equals("Excel VBA编程与应用")) {
            course.setId(3);
        }
        return course;
    }

    private Grade getGrade(String gradeName) {
        if (gradeMapper != null) {
            return gradeMapper.getGradeByName(gradeName);
        }
        Grade grade = new Grade();
        grade.setName(gradeName);
        if (gradeName.equals("22gb 物联1")){
            grade.setId(5);
        } else if (gradeName.equals("22gb物联2")) {
            grade.setId(6);
        } else if (gradeName.equals("23gbs物联1")) {
            grade.setId(1);
        } else if (gradeName.equals("23gbs物联2")) {
            grade.setId(2);
        } else if (gradeName.equals("24gbs物联1")) {
            grade.setId(7);
        } else if (gradeName.equals("24gbs物联2")) {
            grade.setId(8);
        } else if (gradeName.equals("VBA编程1")) {
            grade.setId(9);
        }
        return grade;
    }

    private int parseSingleSchedule(String courseName, List<Map> jsonObjectList) {
        List<CourseScheduleDTO> courseDTOList = new ArrayList<>();
        for (Map map : jsonObjectList){
            JSONObject jsonObject = new JSONObject(map);
            CourseScheduleDTO courseDTO = jsonObject.toJavaObject(CourseScheduleDTO.class);
            courseDTOList.add(courseDTO);
        }

        CoursePO course = getCourse(courseName);
        List<CourseSchedulePO> courseSchedulePOList = new ArrayList<>();
        List<CourseSchedule> courseScheduleList = createCourseList(courseDTOList);
        for (CourseSchedule courseSchedule : courseScheduleList){
            for (String gradeName : courseSchedule.getGradeList()) {
                Grade grade = getGrade(gradeName);
                for (Integer week: courseSchedule.getWeekList()){
                    for(Integer day: courseSchedule.getDayList()){
                        for(String period: courseSchedule.getPeriodList()){
                            CourseSchedulePO courseSchedulePO = new CourseSchedulePO();
                            courseSchedulePO.setGradeId(grade.getId());
                            courseSchedulePO.setCourseId(course.getId());
                            courseSchedulePO.setWeek(week);
                            courseSchedulePO.setDay(day);
                            courseSchedulePO.setPeriod(period);
                            courseSchedulePOList.add(courseSchedulePO);
                        }
                    }
                }
            }
        }

        if (!courseSchedulePOList.isEmpty()) {
            return courseMapper.batchInsertCourseSchedule(courseSchedulePOList);
        }
        return 0;
    }

    private List<CourseSchedule> createCourseList(List<CourseScheduleDTO> courseDTOList){
        List<CourseSchedule> courseList = new ArrayList<>();
        for (CourseScheduleDTO courseScheduleDTO : courseDTOList){
            CourseSchedule courseSchedule = new CourseSchedule();
            courseSchedule.parseScheduleDTO(courseScheduleDTO);
            courseList.add(courseSchedule);
        }
        return courseList;
    }
}
