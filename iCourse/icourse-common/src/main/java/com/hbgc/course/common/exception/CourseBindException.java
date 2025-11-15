package com.hbgc.course.common.exception;


public class CourseBindException extends RuntimeException{

    private static final long serialVersionUID = -4137688758944857209L;

    /**
     * http状态码
     */
    private Integer httpStatusCode;

    private Object object;
}
