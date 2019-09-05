package com.service;

import com.entity.User;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/13-9:57
 */
public interface UserService {
    // 查询某个用户
    User getUserById(Integer id);
    // 查询所有用户信息
    List<User> getUsers();
    // 删除用户
    int deleteUserById(Integer id);
    // 修改
    int updateUser(User user);
    int saveUser(User user);
    void deleteBatch(List<Integer> ids);
}
