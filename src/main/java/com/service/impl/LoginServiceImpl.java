package com.service.impl;

import com.entity.Admin;
import com.entity.User;
import com.mapper.LoginMapper;
import com.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author SL
 * @date 2019/8/27 星期二 9:02
 * guazi/com.service.impl/LoginServiceImpl
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
    @Override
    public void addUser(User user) {
        loginMapper.addUser(user);
    }

    @Override
    public User getUserid(String username) {
        return loginMapper.getUserid(username);
    }

    @Override
    public User getUser(String username) {
        return loginMapper.getUser(username);
    }

    @Override
    public int getAdmin(String username) {
        Admin admin=loginMapper.getAdmin(username);
        System.out.println("admin="+admin);
        if (loginMapper.getAdmin(username)!=null){
            return 1;
        }
        return 0;
    }
}
