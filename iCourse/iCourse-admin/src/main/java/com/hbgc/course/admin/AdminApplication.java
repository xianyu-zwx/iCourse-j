package com.hbgc.course.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * Admin模块引导类
 *
 */
@SpringBootApplication
@MapperScan("com.hbgc.course.admin.dao")
public class AdminApplication
{
    public static void main( String[] args )
    {

        SpringApplication.run(AdminApplication.class, args);
    }
}
