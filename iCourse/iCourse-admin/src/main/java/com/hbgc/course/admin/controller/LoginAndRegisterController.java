package com.hbgc.course.admin.controller;

import com.hbgc.course.admin.entity.Student;
import com.hbgc.course.admin.entity.Teacher;
import com.hbgc.course.admin.entity.User;
import com.hbgc.course.admin.service.StudentService;
import com.hbgc.course.admin.service.TeacherService;
import com.hbgc.course.admin.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class LoginAndRegisterController {

    private static final Logger log = LoggerFactory.getLogger(LoginAndRegisterController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherService teacherService;

    @ResponseBody
//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    @RequestMapping(value = "/login")
    @PostMapping("/login")
    public String login(String username, String psw, HttpSession session) {
        log.debug("本次登录用户名：{}", username);
        log.debug("本次登录密码：{}", psw);

        try {
            User user = userService.login(username, psw);
            int identityType = user.getIdentity();
            if (identityType == 0) {
                session.setAttribute("user", user);
                return "success";
            } else if (identityType == 1) {
                Teacher teacher = teacherService.getTeacherByNo(user.getIdentityNo());
                user.setRealName(teacher.getName());
                user.setAge(teacher.getAge());
                user.setPhoto(teacher.getPhoto());
                session.setAttribute("user", user);
                return "success";
            } else if (identityType == 2) {
                Student student = studentService.getStudentByNo(user.getIdentityNo());
                user.setRealName(student.getName());
                user.setAge(student.getAge());
                user.setPhoto(student.getPhoto());
                session.setAttribute("user", user);
                return "success";
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        return "fail";
    }

}
