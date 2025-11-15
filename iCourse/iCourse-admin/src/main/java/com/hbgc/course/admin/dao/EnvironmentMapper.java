package com.hbgc.course.admin.dao;

import com.hbgc.course.admin.entity.EnvironmentData;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EnvironmentMapper {
    void insertEnvironmentData(EnvironmentData environmentData);
    EnvironmentData getLatestEnvironmentData();
}






