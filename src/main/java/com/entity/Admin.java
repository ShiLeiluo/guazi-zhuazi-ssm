package com.entity;

/**
 * @author SL
 * @date 2019/9/4 星期三 20:40
 * guazi/com.entity/Admin
 */
public class Admin {
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "username='" + username + '\'' +
                '}';
    }
}
