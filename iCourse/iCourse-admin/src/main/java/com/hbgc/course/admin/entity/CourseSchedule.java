package com.hbgc.course.admin.entity;

import com.hbgc.course.admin.dto.CourseScheduleDTO;
import com.hbgc.course.admin.utils.Toolkit;
import lombok.Data;

import java.util.List;

@Data
public class CourseSchedule {

    private int id;
    private String name;
    private String type;
    private List<Integer> weekList;
    private List<Integer> dayList;
    private List<String> periodList;
    private List<String> gradeList;
    private String place;

    public void parseScheduleDTO(CourseScheduleDTO courseScheduleDTO) {
        this.setId(courseScheduleDTO.getId());
        this.setPlace(courseScheduleDTO.getPlace());
        this.setType(courseScheduleDTO.getType());
        this.setName(courseScheduleDTO.getName());
        this.createDayList(courseScheduleDTO.getDay());
        this.createWeekList(courseScheduleDTO.getWeek());
        this.createPeriodList(courseScheduleDTO.getPeriod());
        this.createGradeList(courseScheduleDTO.getGrade());
    }

    public void createDayList(String dayStr){
        dayList = Toolkit.createIntegerList(dayStr);
    }

    public void createWeekList(String weekStr){
        weekList = Toolkit.createIntegerList(weekStr);
    }

    public void createPeriodList(String periodStr){
        periodList = Toolkit.createStringList(periodStr);
    }

    public void createGradeList(String gradeStr){
        gradeList = Toolkit.createStringList(gradeStr);
    }


}
