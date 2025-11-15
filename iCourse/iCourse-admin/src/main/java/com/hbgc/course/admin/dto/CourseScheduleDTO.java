package com.hbgc.course.admin.dto;

import lombok.Data;

@Data
public class CourseScheduleDTO {

    private int id;
    private String name;
    private String type;
    private String week;
    private String day;
    private String period;
    private String grade;
    private String place;
}
