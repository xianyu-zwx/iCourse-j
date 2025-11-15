package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.GradeMapper;
import com.hbgc.course.admin.entity.Grade;
import com.hbgc.course.admin.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GradeServiceImpl implements GradeService {

    @Autowired
    private GradeMapper gradeMapper;

    @Override
    public List<Grade> findGradeByPage(int page, int limit) {
        int offset = (page - 1) * limit;  // 计算分页偏移量
        return gradeMapper.findGradeByPage(offset, limit);
    }

    @Override
    public Long gradeCount() {
        return (long) gradeMapper.gradeCount();  // 转换为Long类型（与前端分页参数匹配）
    }

    @Override
    public boolean addGrade(Grade grade) {
        // 校验班级名称是否已存在
        if (gradeMapper.getGradeByName(grade.getName()) != null) {
            return false;  // 名称重复，新增失败
        }
        return gradeMapper.insertGrade(grade) > 0;
    }

    @Override
    public boolean updateGrade(Grade grade) {
        return gradeMapper.updateGrade(grade) > 0;
    }

    @Override
    public boolean deleteGrade(int id) {
        return gradeMapper.deleteGrade(id) > 0;
    }

    @Override
    public List<Grade> selectAll() {
        return gradeMapper.selectAll();
    }

    @Override
    public Grade getGradeById(int id) {
        return gradeMapper.getGradeById(id);
    }

    @Override
    public List<Grade> findGradeByName(String name, Integer pageNum, Integer pageSize) {
        return null;
    }

    @Override
    public Long countGradeByName(String name) {
        return null;
    }
}