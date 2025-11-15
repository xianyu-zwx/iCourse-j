package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.entity.CourseSchedule;
import com.hbgc.course.admin.po.CourseSchedulePO;
import com.hbgc.course.admin.service.CourseScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/schedule")
public class CourseScheduleController {

    @Autowired
    private CourseScheduleService scheduleService;

    /**
     * 分页查询课程安排列表
     */
    @ResponseBody
    @PostMapping("/getScheduleList")
    public String getScheduleList(@RequestParam("page") String page,
                                  @RequestParam("limit") String limit) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<CourseSchedulePO> scheduleList = scheduleService.findScheduleByPage(pageNum, pageSize);
            Long count = scheduleService.scheduleCount();

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", scheduleList);
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
     * 按课程名称搜索课程安排
     */
    @ResponseBody
    @PostMapping("/getScheduleByCourseName")
    public String getScheduleByCourseName(@RequestParam("page") String page,
                                          @RequestParam("limit") String limit,
                                          @RequestParam("name") String name) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<CourseSchedulePO> scheduleList = scheduleService.findScheduleByCourseName(name, pageNum, pageSize);
            Long count = scheduleService.countScheduleByCourseName(name);

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", scheduleList);
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
     * 删除课程安排
     */
    @ResponseBody
    @PostMapping("/delete")
    public String deleteSchedule(@RequestParam("id") int id) {
        try {
            boolean result = scheduleService.deleteSchedule(id);
            return result ? "success" : "删除失败：课程安排不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "删除失败：" + e.getMessage();
        }
    }

    /**
     * 更新课程安排
     */
    @ResponseBody
    @PostMapping("/update")
    public String updateSchedule(@RequestBody CourseSchedule schedule) {
        try {
            boolean result = scheduleService.updateSchedule(schedule);
            return result ? "success" : "更新失败：课程安排不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "更新失败：" + e.getMessage();
        }
    }

    /**
     * 添加课程安排
     */
    @ResponseBody
    @PostMapping("/add")
    public String addSchedule(@RequestBody CourseSchedule schedule) {
        try {
            boolean result = scheduleService.addSchedule(schedule);
            return result ? "success" : "添加失败";
        } catch (Exception e) {
            e.printStackTrace();
            return "添加失败：" + e.getMessage();
        }
    }

    /**
     * 跳转课程安排列表页面
     */
    @GetMapping("/toScheduleList")
    public String toScheduleList() {
        return "schedule_list";
    }

    /**
     * 跳转添加页面
     */
    @GetMapping("/toScheduleAdd")
    public String toScheduleAdd() {
        return "schedule_add";
    }

    /**
     * 跳转修改页面
     */
    @GetMapping("/toScheduleEdit")
    public String toScheduleEdit(@RequestParam("id") int id, Model model) {
        CourseSchedulePO schedule = scheduleService.getScheduleById(id);
        model.addAttribute("schedule", schedule);
        return "schedule_edit";
    }
}