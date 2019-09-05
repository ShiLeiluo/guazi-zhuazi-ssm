package com.mapper;

import com.entity.Admin;
import com.entity.User;

import java.util.Date;

/**
 * @author SL
 * @date 2019/8/27 星期二 8:56
 * guazi/com.mapper/LoginMapper
 */
public interface LoginMapper {
    void addUser(User user);
    User getUserid(String username);
    User getUser(String username);
    Admin getAdmin(String username);
}
