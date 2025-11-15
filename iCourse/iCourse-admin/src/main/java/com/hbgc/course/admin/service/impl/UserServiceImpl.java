package com.hbgc.course.admin.service.impl;

import com.hbgc.course.admin.dao.UserMapper;
import com.hbgc.course.admin.entity.User;
import com.hbgc.course.admin.po.UserPO;
import com.hbgc.course.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.ObjectUtils;

import java.nio.charset.StandardCharsets;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String username, String password) {
        UserPO userPO = userMapper.findUserByUsername(username);
        if (ObjectUtils.isEmpty(userPO)) {
            throw new RuntimeException("Username is incorrect.");
        }
//        String passwordSecret = DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8));
        if (!password.equals(userPO.getPassword())) {
            throw new RuntimeException("Password is incorrect.");
        }
        return new User(userPO);
    }

    @Override
    public User findUserByUsername(String username) {
        UserPO userPO = userMapper.findUserByUsername(username);
        if (ObjectUtils.isEmpty(userPO)) {
            return null;
        }
        return new User(userPO);
    }

    @Override
    public User checkUserExist(String username, String password) {
        UserPO userPO =  userMapper.findUserByAccontAndPassword(username, password);
        if (ObjectUtils.isEmpty(userPO)) {
            return null;
        }
        return new User(userPO);
    }
}
