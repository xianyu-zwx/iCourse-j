package com.hbgc.course.admin.po;

import lombok.Data;

@Data
public class UserPO {

    private int id;
    private String account;
    private String password;
    private String phone;
    private int identity;
    private String identityNo;
    private String email;
    private boolean isdel;
}
