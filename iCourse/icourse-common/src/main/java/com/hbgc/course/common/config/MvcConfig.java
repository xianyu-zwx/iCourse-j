package com.hbgc.course.common.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        WebMvcConfigurer.super.addViewControllers(registry);
        registry.addViewController("/loginPage").setViewName("login");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/adminIndex").setViewName("adminIndex");
        registry.addViewController("/stuInfo_mf").setViewName("stuInfo_mf");
        registry.addViewController("/welcome").setViewName("welcome");
        registry.addViewController("/stuInfo").setViewName("stuInfo");
        registry.addViewController("/stuAdd").setViewName("stuAdd");
    }
}
