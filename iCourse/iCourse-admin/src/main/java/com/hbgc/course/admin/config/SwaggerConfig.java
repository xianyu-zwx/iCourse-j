package com.hbgc.course.admin.config;

import com.hbgc.course.admin.utils.Constants;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket allDocket(){
        return new Docket(DocumentationType.OAS_30)
                .groupName("所有")
                .select()
                .apis(RequestHandlerSelectors.basePackage(Constants.CONTROLLER_PACKAGE))
                .paths(PathSelectors.any())
                .build();
    }

    @Bean
    public Docket studentDocket(){
        return new DocketGenerator()
                .title("学生信息管理 API")
                .description("学生数据配置")
                .groupName("学生管理")
                .path("/course/student/**")
                .build();
    }

    @Bean
    public Docket teacherDocket(){
        return new DocketGenerator()
                .title("教师信息管理 API")
                .description("教师数据配置")
                .groupName("教师管理")
                .path("/course/teacher/**")
                .build();
    }

    @Bean
    public Docket courseDocket(){
        return new DocketGenerator()
                .title("课程信息管理 API")
                .description("课程数据配置")
                .groupName("课程管理")
                .path("/course/course/**")
                .build();
    }

    @Bean
    public Docket gradeDocket(){
        return new DocketGenerator()
                .title("班级信息管理 API")
                .description("班级数据配置")
                .groupName("班级管理")
                .path("/course/grade/**")
                .build();
    }
}
