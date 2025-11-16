package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.entity.Course;
import com.hbgc.course.admin.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    // 新增：课程管理主页面映射
    @GetMapping("/courseInfo_mf")
    public String courseInfoMain() {
        return "courseInfo_mf";
    }

    /**
     * 分页查询课程列表
     */
    @ResponseBody
    @PostMapping("/getCourseList")
    public String getCourseList(@RequestParam("page") String page,
                                @RequestParam("limit") String limit) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Course> courseList = courseService.findCourseByPage(pageNum, pageSize);
            Long count = courseService.courseCount();

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", courseList);
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
     * 按名称搜索课程
     */
    @ResponseBody
    @PostMapping("/getCourseByName")
    public String getCourseByName(@RequestParam("page") String page,
                                  @RequestParam("limit") String limit,
                                  @RequestParam("name") String name) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Course> courseList = courseService.findCourseByName(name, pageNum, pageSize);
            Long count = courseService.countCourseByName(name);

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", courseList);
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
     * 删除课程
     */
    @ResponseBody
    @PostMapping("/delete")
    public String deleteCourse(@RequestParam("id") int id) {
        try {
            boolean result = courseService.deleteCourse(id);
            return result ? "success" : "删除失败：课程不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "删除失败：" + e.getMessage();
        }
    }

    /**
     * 更新课程信息
     */
    @ResponseBody
    @PostMapping("/update")
    public String updateCourse(@RequestBody Course course) {
        try {
            boolean result = courseService.updateCourse(course);
            return result ? "success" : "更新失败：课程不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "更新失败：" + e.getMessage();
        }
    }

    /**
     * 添加课程
     */
    @ResponseBody
    @PostMapping("/add")
    public String addCourse(@RequestBody Course course) {
        try {
            boolean result = courseService.addCourse(course);
            return result ? "success" : "添加失败：课程名称已存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "添加失败：" + e.getMessage();
        }
    }

    /**
     * 根据ID查询课程
     */
    @ResponseBody
    @GetMapping("/getCourseById")
    public String getCourseById(@RequestParam("id") int id) {
        Course course = courseService.getCourseById(id);
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", "");
        mapData.put("data", course);
        return JSON.toJSONString(mapData);
    }

    /**
     * 跳转修改页面
     */
    @GetMapping("/toCourseEdit")
    public String toCourseEdit(@RequestParam("id") int id, Model model) {
        Course course = courseService.getCourseById(id);
        model.addAttribute("course", course);
        return "course_edit";
    }

    /**
     * 跳转添加页面
     */
    @GetMapping("/toCourseAdd")
    public String toCourseAdd() {
        return "course_add";
    }

    /**
     * 跳转课程列表页面
     */
    @GetMapping("/toCourseList")
    public String toCourseList() {
        return "course_list";
    }
}