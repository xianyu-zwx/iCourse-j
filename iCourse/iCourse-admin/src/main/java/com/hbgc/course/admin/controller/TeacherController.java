package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.entity.Teacher;
import com.hbgc.course.admin.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    // 新增：教师管理主页面映射
    @GetMapping("/teacherInfo_mf")
    public String teacherInfoMain() {
        return "teacherInfo_mf";
    }

    /**
     * 分页查询教师列表
     */
    @ResponseBody
    @PostMapping("/getTeacherList")
    public String getTeacherList(@RequestParam("page") String page,
                                 @RequestParam("limit") String limit) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Teacher> teacherList = teacherService.findTeacherByPage(pageNum, pageSize);
            Long count = teacherService.teacherCount();

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", teacherList);
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
     * 按姓名搜索教师
     */
    @ResponseBody
    @PostMapping("/getTeacherByName")
    public String getTeacherByName(@RequestParam("page") String page,
                                   @RequestParam("limit") String limit,
                                   @RequestParam("name") String name) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Teacher> teacherList = teacherService.findTeacherByName(name, pageNum, pageSize);
            Long count = teacherService.countTeacherByName(name);

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", teacherList);
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
     * 删除教师
     */
    @ResponseBody
    @PostMapping("/delete")
    public String deleteTeacher(@RequestParam("id") int id) {
        try {
            boolean result = teacherService.deleteTeacher(id);
            return result ? "success" : "删除失败：教师不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "删除失败：" + e.getMessage();
        }
    }

    /**
     * 更新教师信息
     */
    @ResponseBody
    @PostMapping("/update")
    public String updateTeacher(@RequestBody Teacher teacher) {
        try {
            boolean result = teacherService.updateTeacher(teacher);
            return result ? "success" : "更新失败：教师不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "更新失败：" + e.getMessage();
        }
    }

    /**
     * 添加教师
     */
    @ResponseBody
    @PostMapping("/add")
    public String addTeacher(@RequestBody Teacher teacher) {
        try {
            boolean result = teacherService.addTeacher(teacher);
            return result ? "success" : "添加失败：工号已存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "添加失败：" + e.getMessage();
        }
    }

    /**
     * 根据ID查询教师
     */
    @ResponseBody
    @GetMapping("/getTeacherById")
    public String getTeacherById(@RequestParam("id") int id) {
        Teacher teacher = teacherService.getTeacherById(id);
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", "");
        mapData.put("data", teacher);
        return JSON.toJSONString(mapData);
    }

    /**
     * 跳转修改页面
     */
    @GetMapping("/toTeacherEdit")
    public String toTeacherEdit(@RequestParam("id") int id, Model model) {
        Teacher teacher = teacherService.getTeacherById(id);
        model.addAttribute("teacher", teacher);
        return "teacher_edit";
    }

    /**
     * 跳转添加页面
     */
    @GetMapping("/toTeacherAdd")
    public String toTeacherAdd() {
        return "teacher_add";
    }

    /**
     * 跳转教师列表页面
     */
    @GetMapping("/toTeacherList")
    public String toTeacherList() {
        return "teacher_list";
    }
}