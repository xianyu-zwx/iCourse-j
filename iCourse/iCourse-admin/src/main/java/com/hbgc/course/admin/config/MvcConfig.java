package com.hbgc.course.admin.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

//    @Override
//    public void addViewControllers(ViewControllerRegistry registry) {
//        WebMvcConfigurer.super.addViewControllers(registry);
//        registry.addViewController("/loginPage").setViewName("login");
//        registry.addViewController("/index").setViewName("index");
//        registry.addViewController("/adminIndex").setViewName("adminIndex");
//        registry.addViewController("/stuInfo_mf").setViewName("stuInfo_mf");
//        registry.addViewController("/welcome").setViewName("welcome");
//        registry.addViewController("/stuInfo").setViewName("stuInfo");
//        registry.addViewController("/stuAdd").setViewName("stuAdd");
//    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        WebMvcConfigurer.super.addViewControllers(registry);
        registry.addViewController("/loginPage").setViewName("login");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/dashboard").setViewName("dashboard");
        registry.addViewController("/adminIndex").setViewName("adminIndex");
        registry.addViewController("/stuInfo_mf").setViewName("stuInfo_mf");
        registry.addViewController("/welcome").setViewName("dashboard");
        registry.addViewController("/attendance").setViewName("attendance_record");
        registry.addViewController("/stuInfo").setViewName("stuInfo");
        registry.addViewController("/stuAdd").setViewName("stuAdd");
        registry
                .addViewController("/grade/toGradeList").setViewName("grade_list");
        registry
                .addViewController("/grade/toGradeAdd").setViewName("grade_add");
        registry
                .addViewController("/grade/toGradeEdit").setViewName("grade_edit");
        // 教师管理
        registry.addViewController("/teacher/toTeacherList").setViewName("teacher_list");
        registry.addViewController("/teacher/toTeacherAdd").setViewName("teacher_add");
        registry.addViewController("/teacher/toTeacherEdit").setViewName("teacher_edit");

        // 课程管理
        registry.addViewController("/course/toCourseList").setViewName("course_list");
        registry.addViewController("/course/toCourseAdd").setViewName("course_add");
        registry.addViewController("/course/toCourseEdit").setViewName("course_edit");

        // 课程安排
        registry.addViewController("/schedule/toScheduleList").setViewName("schedule_list");
        registry.addViewController("/schedule/toScheduleAdd").setViewName("schedule_add");
        registry.addViewController("/schedule/toScheduleEdit").setViewName("schedule_edit");
    }
}
