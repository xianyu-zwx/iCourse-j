package com.hbgc.course.admin.po;

import lombok.Data;

@Data
public class CourseSchedulePO {

    private int id;
    private int gradeId;
    private int courseId;
    private int week;
    private int day;
    private String period;

    public void setName(String name) {
    }

    public void setType(String type) {
    }

    public void setPlace(String place) {
    }
}
