package com.service.impl;


import com.entity.User;
import com.mapper.UserMapper;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/13-9:57
 */
@Service
public class UserSeriveImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getUserById(Integer id) {
        return userMapper.getUserById(id);
    }

    @Override
    public List<User> getUsers() {
        return userMapper.getUsers();
    }

    @Override
    public int deleteUserById(Integer id) {
        return userMapper.deleteUserById(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int saveUser(User user) {
        return userMapper.saveUser(user);
    }

    @Override
    public void deleteBatch(List<Integer> ids) {
        userMapper.deleteBatch(ids);
    }
}
