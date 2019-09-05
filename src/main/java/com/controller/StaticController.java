package com.controller;

import com.entity.Title;
import com.service.TitleService;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author SL
 * @date 2019/8/16 星期五 16:09
 * guazi/com.controller/StaticController
 */
@Controller
public class StaticController {
    @Autowired
    TitleService titleService;
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/buy")
    public String buy(){
        return "buy";
    }
    @RequestMapping("/sell")
    public String sell(){
        return "sell";
    }
    @RequestMapping("/serve")
    public String serve(){
        return "serve";
    }
    @RequestMapping("/financial")
    public String financial(){
        return "financial";
    }
    @RequestMapping("/admin")
    public String admin(HttpServletRequest request){
        if (request.getSession().getAttribute("admin").toString().isEmpty()){
            return "index";
        }else {
            return "admin";
        }
    }
    @RequestMapping("/title")
    @ResponseBody
    public Msg title(String adcode,String cityname,HttpServletRequest request){
        String context;
        request.getSession().setAttribute("cityname",cityname);

        Title title= titleService.getTitleByAdcode(adcode);

        if (title.getTitle()==null){
            context="【南昌二手车】南昌二手车市场_个人二手车转让-瓜子二手车直卖网";
        }else {
            context=title.getTitle();
        }
        HttpSession session=request.getSession();
        session.setAttribute("title",context);
        return Msg.success();
    }
    @RequestMapping("/selectcity")
    @ResponseBody
    public Msg selectcity(String cityname,HttpServletRequest request){
        String context;
        request.getSession().setAttribute("cityname",cityname);
        Title title= titleService.getTitleByCityname(cityname);
        System.out.println(title);
        if (title.getTitle()==null){
            context="【南昌二手车】南昌二手车市场_个人二手车转让-瓜子二手车直卖网";
        }else {
            context=title.getTitle();
        }
        HttpSession session=request.getSession();
        session.setAttribute("title",context);
        return Msg.success();
    }
}
