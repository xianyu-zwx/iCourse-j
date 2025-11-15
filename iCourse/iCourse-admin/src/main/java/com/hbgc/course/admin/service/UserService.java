package com.hbgc.course.admin.service;

import com.hbgc.course.admin.entity.User;

public interface UserService {

    User login(String username, String password);

    User findUserByUsername(String username);

    User checkUserExist(String username, String password);
}
