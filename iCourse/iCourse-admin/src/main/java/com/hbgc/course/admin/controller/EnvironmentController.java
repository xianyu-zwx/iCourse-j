package com.hbgc.course.admin.controller;

import com.hbgc.course.admin.entity.EnvironmentData;
import com.hbgc.course.admin.po.EnvironmentDataPO;
import com.hbgc.course.admin.service.EnvironmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class EnvironmentController {

    @Autowired
    private EnvironmentService environmentService;

    @GetMapping("/getLatestEnvironmentData")
    public EnvironmentDataPO getLatestEnvironmentData() {
        EnvironmentData latestEnvironmentData = environmentService.getLatestEnvironmentData();
        if (latestEnvironmentData != null) {
            EnvironmentDataPO environmentDataPO = new EnvironmentDataPO();
            environmentDataPO.setTemperature(latestEnvironmentData.getTemperature());
            environmentDataPO.setHumidity(latestEnvironmentData.getHumidity());
            environmentDataPO.setCo2(latestEnvironmentData.getCo2());
            environmentDataPO.setLightCondition(latestEnvironmentData.getLightCondition());
           // environmentDataPO.setSystemTime(new Date());
            return environmentDataPO;
        }
        return new EnvironmentDataPO();
    }
}