package com.controller;

import com.entity.*;
import com.service.CarService;
import com.service.LoginService;
import com.service.PersonalCenterService;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author SL
 * @date 2019/8/27 星期二 16:39
 * guazi/com.controller/PersonalCenterController
 */
@Controller
public class PersonalCenterController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private PersonalCenterService personalCenterService;
    @Autowired
    private CarService carService;

    @RequestMapping("/personalCenter")
    public ModelAndView personalCenter(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        User user = loginService.getUser((String) request.getSession().getAttribute("username"));
        System.out.println("initpersonalCenterUser="+user);
        modelAndView.addObject("user", user);
        modelAndView.setViewName("personalCenter");
        return modelAndView;
    }

    @RequestMapping("/updateUser")
    @ResponseBody
    public int updateUser(User user) {
        System.out.println("userPersonalcenter="+user);
        if (personalCenterService.updateUser(user)>0){
            return Msg.fail().getCode();
        }
        return Msg.success().getCode();
    }
    @RequestMapping("/undoneorder")
    public ModelAndView undoneorder(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        List<UndoneOrder> undoneOrders = personalCenterService.undoneorder((Integer) request.getSession().getAttribute("userid"));
        System.out.println(undoneOrders);
        modelAndView.addObject("undoneOrders",undoneOrders);
        modelAndView.setViewName("undoneorder");
        return modelAndView;
    }
    @RequestMapping("/historyOrder")
    public ModelAndView historyOrder(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        List<UndoneOrder> undoneOrders = personalCenterService.historyOrder((Integer) request.getSession().getAttribute("userid"));
        System.out.println(undoneOrders);
        modelAndView.addObject("undoneOrders",undoneOrders);
        modelAndView.setViewName("historyOrder");
        return modelAndView;
    }
    @RequestMapping("/unchecksell")
    public ModelAndView unchecksell(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        List<Car> unchecksell=carService.getUncheckSell();
        System.out.println(unchecksell);
        modelAndView.addObject("unchecksell",unchecksell);
        modelAndView.setViewName("unchecksell");
        return modelAndView;
    }
    @RequestMapping("/confirmsell")
    public ModelAndView confirmsell(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        String phone = (String) request.getSession().getAttribute("username");
        List<UndoneOrder> confirmsell=personalCenterService.confirmsell(phone);
        System.out.println(confirmsell);
        modelAndView.addObject("confirmsell",confirmsell);
        modelAndView.setViewName("confirmsell");
        return modelAndView;
    }
    @RequestMapping("/checkedsell")
    public String checkedsell() {

        return "checkedsell";
    }
    @RequestMapping("/collection")
    public ModelAndView collection(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView();
        List<Collections> collections = personalCenterService.collection((Integer) request.getSession().getAttribute("userid"));
        System.out.println(collections);
        modelAndView.addObject("collections",collections);
        modelAndView.setViewName("collection");
        return modelAndView;
    }
    @RequestMapping("/cancelorder")
    @ResponseBody
    public int cancelorder(Integer oid){

        System.out.println("cancelorder++oid="+oid);
        if (personalCenterService.deleteundoneoreder(oid)>0){
            return 1;
        }
        return 0;
    }
    @RequestMapping("/cancelcollect")
    @ResponseBody
    public int cancelcollect(Integer cid){

        System.out.println("cancelcollect++cid="+cid);
        if (personalCenterService.deletecollection(cid)>0){
            return 1;
        }
        return 0;
    }
    @RequestMapping("/deleteunchecksell")
    @ResponseBody
    public int deleteunchecksell(Integer id){
        System.out.println("deleteunchecksell++id="+id);
        if (personalCenterService.deleteunchecksell(id)>0){
            return 1;
        }
        return 0;
    }
    @RequestMapping("/deletecheckedsell")
    @ResponseBody
    public int deletecheckedsell(Integer id){
        System.out.println("deletecheckedsell++id="+id);
        if (personalCenterService.deletecheckedsell(id)>0){
            return 1;
        }
        return 0;
    }
    @RequestMapping("/confirmstatus")
    @ResponseBody
    public int confirmstatus(int oid){
        if (personalCenterService.updateConfirm(oid)>0){
            return 1;
        }
        return 0;
    }
}
