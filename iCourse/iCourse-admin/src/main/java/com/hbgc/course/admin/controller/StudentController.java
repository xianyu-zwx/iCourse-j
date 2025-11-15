package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.entity.Student;
import com.hbgc.course.admin.service.StudentService;
//import io.swagger.models.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    /**
     * 分页查询学生列表
     */
    @ResponseBody
    @PostMapping("/getStuSimpleInfo")
    public String getStuSimpleInfo(@RequestParam("page") String page,
                                   @RequestParam("limit") String limit) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Student> studentList = studentService.findStudentByPage(pageNum, pageSize);
            Integer count = studentService.studentCount();

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", count);
            mapData.put("data", studentList);
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
     * 按姓名搜索学生
     */
    @ResponseBody
    @PostMapping("/getStuByName")
    public String getStuByName(@RequestParam("page") String page,
                               @RequestParam("limit") String limit,
                               @RequestParam("key[id]") String name) {
        try {
            Integer pageNum = Integer.parseInt(page);
            Integer pageSize = Integer.parseInt(limit);
            List<Student> studentList = studentService.getStuByName(name, pageNum, pageSize);

            Map<String, Object> mapData = new HashMap<>();
            mapData.put("code", 0);
            mapData.put("msg", "");
            mapData.put("count", studentList.size());
            mapData.put("data", studentList);
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
     * 删除学生
     */
    @ResponseBody
    @PostMapping("/delete")
    public String deleteStudent(@RequestParam("num") String num) {
        try {
            boolean result = studentService.deleteStu(num);
            return result ? "success" : "删除失败：学生不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "删除失败：" + e.getMessage();
        }
    }

    /**
     * 更新学生信息
     */
    @ResponseBody
    @PostMapping("/updateStu")
    public String updateStu(@RequestBody Student student) {
        try {
            boolean result = studentService.updateStu(student);
            return result ? "success" : "更新失败：学生不存在";
        } catch (Exception e) {
            e.printStackTrace();
            return "更新失败：";
        }
    }

    /**
     * 根据学号查询学生
     */
    @ResponseBody
    @GetMapping("/getStuByNo")
    public String getStuByNo(@RequestParam("num") String stuNo) {
        Student student = studentService.getStuByNo(stuNo);
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", "");
        mapData.put("data", student);
        return JSON.toJSONString(mapData);
    }

    /**
     * 跳转修改页面
     */
    @GetMapping("/stuModify")
    public String stuModi(@RequestParam("num") String stuNo, Model model) {
        Student student = studentService.getStuByNo(stuNo);
        model.addAttribute("student", student);
        return "stuModi";
    }

    /**
     * 跳转添加页面
     */
    @GetMapping("/stuAdd")
    public String stuAdd() {
        return "stuAdd";
    }


//    /**
//     * 添加学生
//     */
//    @ResponseBody
//    @PostMapping("/add")
//    public String addStudent(@RequestBody Student student) {
//        try {
//            boolean result = studentService.addStudent(student);
//            return result ? "success" : "添加失败：学号已存在";
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "添加失败：" + e.getMessage();
//        }
//    }
}