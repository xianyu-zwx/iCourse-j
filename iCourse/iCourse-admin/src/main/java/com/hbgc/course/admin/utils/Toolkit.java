package com.hbgc.course.admin.utils;

import com.alibaba.fastjson.JSON;

import java.util.*;
import java.util.regex.Pattern;

public class Toolkit {

    private static final Pattern RANGE_PATTERN = Pattern.compile("(\\d+)-(\\d+)");

    public static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        return strNum.matches("-?\\d+(\\.\\d+)?");
    }

    public static int[] parseNumberRange(String rangeStr) {
        java.util.regex.Matcher matcher = RANGE_PATTERN.matcher(rangeStr);
        if (matcher.matches()) {
            int lowerBound = Integer.parseInt(matcher.group(1));
            int upperBound = Integer.parseInt(matcher.group(2));
            return new int[]{lowerBound, upperBound};
        }
        throw new RuntimeException("The format of String is not correct.");
    }

    public static String createResult(int resultCode) {
        return Toolkit.createResult(resultCode, "");
    }

    public static String createResult(int resultCode, String message) {
        Map<String, Object> mapData = new HashMap<>();
        mapData.put("code", 0);
        mapData.put("msg", message);
        if (resultCode > 0) {
            mapData.put("ret", "success");
        } else {
            mapData.put("ret", "fail");
        }
        //转换json串返回
        return JSON.toJSONString(mapData);
    }

    public static List<Integer> createIntegerList(String str){
        List<Integer> integerList = new ArrayList<>();
        String[] subStrArray = str.split(",");
        for (String subStr : subStrArray) {
            subStr = subStr.trim();
            if (isNumeric(subStr)){
                integerList.add(Integer.parseInt(subStr));
            } else{
                try {
                    int[] rangeBounds = parseNumberRange(subStr);
                    for (int i=rangeBounds[0];i<=rangeBounds[1];i++){
                        integerList.add(i);
                    }
                }
                catch (Exception e){
                    e.printStackTrace(); // 输入的字符串格式不正确"
                }
            }
        }
//        Integer[] integerArray = Arrays.stream(strArray)
//                .map(Integer::valueOf)
//                .toArray(Integer[]::new);
//        List<Integer> integerList = new ArrayList<>(Arrays.asList(integerArray));
        return integerList;
    }

    public static List<String> createStringList(String str){
        String[] strArray = str.split(",");
        List<String> strList = Arrays.asList(strArray);
        return strList;
    }
}
