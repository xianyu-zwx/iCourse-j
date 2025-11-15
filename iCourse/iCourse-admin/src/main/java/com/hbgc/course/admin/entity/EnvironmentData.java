package com.hbgc.course.admin.entity;

import lombok.Data;

@Data
public class EnvironmentData {
    private float temperature;
    private float humidity;
    private int co2;
    private String lightCondition;
}