package com.entity;

/**
 * @author SL
 * @date 2019/9/4 星期三 20:40
 * guazi/com.entity/Admin
 */
public class Admin {
    private  int id;
    private String username;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                '}';
    }
}
