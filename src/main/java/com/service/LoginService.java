package com.service;

import com.entity.User;

import java.util.Date;

/**
 * @author SL
 * @date 2019/8/27 星期二 9:02
 * guazi/com.service/LoginService
 */
public interface LoginService {
    void addUser(User user);
    User getUserid(String username);
    User getUser(String username);
    int getAdmin(String username);
}
