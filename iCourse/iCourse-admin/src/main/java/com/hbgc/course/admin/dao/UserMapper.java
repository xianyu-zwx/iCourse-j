package com.hbgc.course.admin.dao;


import com.hbgc.course.admin.entity.User;
import com.hbgc.course.admin.po.UserPO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {

    UserPO findUserByUsername(String username);

    UserPO findUserByAccontAndPassword(@Param("username") String username, @Param("password") String password);
}
