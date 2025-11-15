package com.hbgc.course.admin.controller;

import com.alibaba.fastjson.JSON;
import com.hbgc.course.admin.po.AttendancePO;
import com.hbgc.course.admin.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;


    @ResponseBody
    @RequestMapping(path="/list",method= RequestMethod.POST)
    public String getAttendanceListByPage(String page, String limit) {
        Integer page_ = Integer.parseInt(page);
        Integer limit_ = Integer.parseInt(limit);
        List<AttendancePO> attendanceList = attendanceService.findAttendanceByPage(page_, limit_);

        Long count = attendanceService.attendanceCount();
        //code, msg, count, data
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", "");
        mapData.put("count", count);
        mapData.put("data", attendanceList);
        //转换json串返回
        return JSON.toJSONString(mapData);

    }
}
