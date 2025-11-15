package com.hbgc.course.bean.model;

import lombok.Data;

@Data
public class User {

    private int id;
    private String username;
    private String password;
    private String phone;
    private int identity;
    private String identityNo;
    private String realName;
    private int age;
    private String email;
    private String photo;

//    public User(){}
//
//    public User(UserPO userPO){
//        this.id = userPO.getId();
//        this.username = userPO.getAccount();
//        this.password = userPO.getPassword();
//        this.phone = userPO.getPhone();
//        this.identity = userPO.getIdentity();
//        this.identityNo = userPO.getIdentityNo();
//        this.email = userPO.getEmail();
//    }

}
