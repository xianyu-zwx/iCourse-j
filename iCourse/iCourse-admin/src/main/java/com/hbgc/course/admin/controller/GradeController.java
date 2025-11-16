package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.entity.Grade;
import com.hbgc.course.admin.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/grade")
public class GradeController {

    @Autowired
    private GradeService gradeService;

    // 新增：班级管理主页面映射
    @GetMapping("/classInfo_mf")
    public String classInfoMain() {
        return "classInfo_mf";
    }

    /**
     * 分页查询班级列表
     */
    @ResponseBody
    @PostMapping("/getGradeList")
    public String getGradeList(@RequestParam("page") String page,
                               @RequestParam("limit") String limit) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Grade> gradeList = gradeService.findGradeByPage(pageNum, pageSize);
            Long count = gradeService.gradeCount();

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", gradeList);
            return JSON.toJSONString(mapData);
        } catch (Exception e) {
            e.printStackTrace();
            Map<String, Object> errorMap = new HashMap<>();
            errorMap.put("code", 1);
            errorMap.put("msg", "查询失败：" + e.getMessage());
            return JSON.toJSONString(errorMap);
        }
    }

    /**
     * 按名称搜索班级
     */
    @ResponseBody
    @PostMapping("/getGradeByName")
    public String getGradeByName(@RequestParam("page") String page,
                                 @RequestParam("limit") String limit,
                                 @RequestParam("name") String name) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            // 这里需要在GradeService中实现按名称分页查询的方法
            List<Grade> gradeList = gradeService.findGradeByName(name, pageNum, pageSize);
            Long count = gradeService.countGradeByName(name);

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", gradeList);
            return JSON.toJSONString(mapData);
        } catch (Exception e) {
            e.printStackTrace();
            Map<String, Object> errorMap = new HashMap<>();
            errorMap.put("code", 1);
            errorMap.put("msg", "搜索失败：" + e.getMessage());
            return JSON.toJSONString(errorMap);
        }
    }

    /**
     * 删除班级
     */
    @ResponseBody
    @PostMapping("/delete")
    public String deleteGrade(int id) {
        return gradeService.deleteGrade(id) ? "success" : "fail";
    }

    /**
     * 更新班级信息
     */
    @ResponseBody
    @PostMapping("/update")
    public String updateGrade(@RequestBody Grade grade) {
        try {
            boolean result = gradeService.updateGrade(grade);
            return result ? "success" : "更新失败：班级不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "更新失败：" + e.getMessage();
        }
    }

    /**
     * 添加班级
     */
    @ResponseBody
    @PostMapping("/add")
    public String addGrade(@RequestBody Grade grade) {
        try {
            boolean result = gradeService.addGrade(grade);
            return result ? "success" : "添加失败：班级名称已存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "添加失败：" + e.getMessage();
        }
    }

    /**
     * 根据ID查询班级
     */
    @ResponseBody
    @GetMapping("/getGradeById")
    public String getGradeById(@RequestParam("id") int id) {
        Grade grade = gradeService.getGradeById(id);
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", "");
        mapData.put("data", grade);
        return JSON.toJSONString(mapData);
    }

    /**
     * 跳转修改页面
     */
    @GetMapping("/toGradeEdit")
    public String toGradeEdit(@RequestParam("id") int id, Model model) {
        Grade grade = gradeService.getGradeById(id);
        model.addAttribute("grade", grade);
        return "grade_edit";
    }

    /**
     * 跳转添加页面
     */
    @GetMapping("/toGradeAdd")
    public String toGradeAdd() {
        return "grade_add";
    }

    /**
     * 跳转班级列表页面
     */
    @GetMapping("/toGradeList")
    public String toGradeList() {
        return "grade_list";
    }
}