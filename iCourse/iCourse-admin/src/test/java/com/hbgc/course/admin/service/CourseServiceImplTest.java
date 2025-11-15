package com.hbgc.course.admin.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hbgc.course.admin.service.impl.CourseServiceImpl;
import org.junit.Test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;

public class CourseServiceImplTest {

    @Test
    public void testParseSchedule(){
        CourseService courseService = new CourseServiceImpl();
        String schedule = "[{\"name\": \"云计算技术\",\"type\":1,\"week\": \"1-12\",\"day\": \"2\",\"period\":\"5-6\",\"grade\":\"24gbs物联1\",\"place\": \"工2-B504\"},"
                + "{\"name\":  \"云计算技术\",\"type\":  2,\"week\":  \"1-5,10-16\",\"day\": \"4\",\"period\": \"3-4,5-6\",\"grade\":  \"24gbs物联1\", \"place\":  \"工2-B504\"}]";
//        int ret = courseService.parseSchedule(schedule);
//        System.out.println(ret);
    }

    @Test
    public void testParseSchedule1(){
        CourseService courseService = new CourseServiceImpl();
        String schedule = "[{\"name\": \"云计算技术\",\"type\":1,\"week\": \"1-12\",\"day\": \"2\",\"period\":\"5-6\",\"grade\":\"24gbs物联1\",\"place\": \"工2-B504\"}]";
//        int ret = courseService.parseSchedule(schedule);
//        System.out.println(ret);
    }

    @Test
    public void testParseSchedule2(){
        CourseService courseService = new CourseServiceImpl();
        String schedule = "[{\"name\": \"云计算技术\",\"type\":1,\"week\": \"1-12\",\"day\": \"2\",\"period\":\"5-6\",\"grade\":\"24gbs物联1\",\"place\": \"工2-B504\"}]";
//        int ret = courseService.parseSchedule(schedule);
//        System.out.println(ret);


    }

    @Test
    public void testParseSchedule3(){
        CourseService courseService = new CourseServiceImpl();
        String schedule = "[{\"name\": \"云计算技术\",\"type\":1,\"week\": \"1-12\",\"day\": \"2\",\"period\":\"5-6\",\"grade\":\"24gbs物联1\",\"place\": \"工2-B504\"}]";
//        int ret = courseService.parseSchedule(schedule);
//        System.out.println(ret);
        String fileName = "F:\\course_schedule.json";
        String jsonContent = parseJson(fileName);
//        Map<String, Integer> map = courseService.parseSchedule(jsonContent);
    }

    private String parseJson(String fileName) {

        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            String line;
            StringBuilder sb = new StringBuilder();
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            String jsonContent = sb.toString();
            return jsonContent;
            // 将 JSON 字符串转换为 JSON 对象
//            return JSON.parseObject(jsonContent);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
