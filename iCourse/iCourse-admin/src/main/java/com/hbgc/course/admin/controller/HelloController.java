package com.hbgc.course.admin.controller;

import com.hbgc.course.admin.entity.User;
import com.hbgc.course.admin.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    private static final Logger log = LoggerFactory.getLogger(LoginAndRegisterController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("name", "Leo");
        return "hello";
    }

    @RequestMapping("view")
    public String login(Model model, String username, String password) {
        log.debug("ok");
        User user = userService.findUserByUsername("leo");
        if (user != null) {
            model.addAttribute("username", user.getUsername());
            model.addAttribute("password", user.getPassword());
            model.addAttribute("phone", user.getPhone());
            model.addAttribute("email", user.getEmail());
        }
        return "view";
    }
}
