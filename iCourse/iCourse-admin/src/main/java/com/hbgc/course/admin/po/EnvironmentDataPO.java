package com.hbgc.course.admin.po;

import lombok.Data;

@Data
public class EnvironmentDataPO {
    private float temperature;
    private float humidity;
    private int co2;
    private String lightCondition;
    private String systemTime;

}
