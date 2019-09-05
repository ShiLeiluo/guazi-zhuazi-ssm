package com.entity;

import java.util.Date;

/**
 * @author SL
 * @date 2019/8/16 星期五 15:32
 * guazi/com.entity/User
 */
public class User {
    private Integer id;
    private String username;
    private String realname;
    private String sex;
    private int age;
    private String phonenumber;
    private String email;
    private String registertime;

    public User(){}
    public User(Integer id, String username, String phonenumber) {
        this.id = id;
        this.username = username;
        this.phonenumber = phonenumber;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", realname='" + realname + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", phonenumber='" + phonenumber + '\'' +
                ", email='" + email + '\'' +
                ", registertime='" + registertime + '\'' +
                '}';
    }
}

