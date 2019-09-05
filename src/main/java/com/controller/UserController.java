package com.controller;

import com.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.UserService;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author SL
 * @date 2019/8/13-10:01
 */

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/users")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 2);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.getUsers();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        System.out.println("page="+page);
        System.out.println(Msg.success().add("pageInfo",page));
        return  Msg.success().add("pageInfo",page);

    }
    @RequestMapping("/add")
    @ResponseBody
    public Msg saveUser(User user) {

        if (userService.saveUser(user) > 0) {
          return   Msg.success();
        } else {
         return Msg.fail();
        }

    }
    @RequestMapping("/delete")
    @ResponseBody
    public Msg delete(Integer id){
        if (userService.deleteUserById(id) > 0) {
            return   Msg.success();
        } else {
            return Msg.fail();
        }
    }
    @RequestMapping("/edit")
    @ResponseBody
    public Msg edit(Integer id){
        User user=userService.getUserById(id);
        if (user!=null) {
          return   Msg.success().add("user",user);
        } else {
            return Msg.fail();
        }
    }

    @RequestMapping("/update")
    @ResponseBody
    public Msg edit(User user){
        System.out.println("update"+user);
        if (userService.updateUser(user)>0) {
            return   Msg.success().add("user",user);
        } else {
            return Msg.fail();
        }
    }

    //批量删除
    @RequestMapping("/batchDelete")
    @ResponseBody
    public Msg batchDelete(String ids){
      //批量删除
        List<Integer> del_ids = new ArrayList<>();
        String[] str_ids = ids.split("-");
        //组装id的集合
        for (String string : str_ids) {
            del_ids.add(Integer.parseInt(string));
        }
        userService.deleteBatch(del_ids);
       return  Msg.success();
    }
}
