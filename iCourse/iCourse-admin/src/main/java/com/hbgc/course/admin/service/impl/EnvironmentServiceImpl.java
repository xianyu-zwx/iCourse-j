package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.EnvironmentMapper;
import com.hbgc.course.admin.entity.EnvironmentData;
import com.hbgc.course.admin.service.EnvironmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EnvironmentServiceImpl implements EnvironmentService {

    @Autowired
    private EnvironmentMapper environmentMapper;

    @Override
    public EnvironmentData getLatestEnvironmentData() {
        return environmentMapper.getLatestEnvironmentData();
    }
}