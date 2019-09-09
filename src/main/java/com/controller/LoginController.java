package com.controller;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.entity.User;
import com.service.LoginService;
import com.util.AliyunSmsUtils;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @author SL
 * @date 2019/8/19 星期一 8:38
 * guazi/com.controller/LoginController
 */
@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;
    @RequestMapping("/verificationCode")
    @ResponseBody
    public Integer verificationCode(@RequestParam(value = "username", defaultValue = "") String username,HttpServletRequest request) {
        username=request.getParameter("username");
        try {
            Random random=new Random();
            String code="";
            for (int i=0;i<6;i++){
                code+=random.nextInt(10);
            }

            System.out.println("发送的验证码为：" + code);

            //发短信

            //SendSmsResponse response = AliyunSmsUtils.sendSms(username, code); // TODO 填写你需要测试的手机号码

            request.getSession().setAttribute("vCode",code);

//            System.out.println("短信接口返回的数据----------------");
//
//            System.out.println("Code=" + response.getCode());
//
//            System.out.println("Message=" + response.getMessage());
//
//            System.out.println("RequestId=" + response.getRequestId());
//
//            System.out.println("BizId=" + response.getBizId());
        } catch (Exception e) {
            return Msg.fail().getCode();
        }
        return Msg.success().getCode();
    }
    @RequestMapping("/adminLogin")
    @ResponseBody
    public String login(HttpServletRequest request){
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        System.out.println(username);
        System.out.println(password);
        String code=(String) request.getSession().getAttribute("vCode");
        System.out.println("vCode="+code);
        if (password.equals(code) && ((loginService.getAdmin(username))>0)){
            request.getSession().setAttribute("admin",username);
            return String.valueOf(Msg.success().getCode());
        }else {
            return String.valueOf(Msg.fail().getCode());
        }
    }
    @RequestMapping("/login")
    @ResponseBody
    public Msg adminLogin(@RequestParam(value = "password", defaultValue = "") String password,@RequestParam(value = "username", defaultValue = "") String username, HttpServletRequest request){
        password = request.getParameter("password");
        username = request.getParameter("username");
        System.out.println(username);
        System.out.println(password);
        if (loginService.getUser(username).getStatus()==1){
            return Msg.blacklist();
        }

        String code=(String) request.getSession().getAttribute("vCode");
        System.out.println("vCode="+code);
        if (password.equals(code)){
            User user=new User();
            HttpSession session =  request.getSession();
            session.setAttribute("username",username);
            System.out.println("session="+session.getAttribute("username"));
            try {
                System.out.println("loginService.getUser(username)==1="+loginService.getUser(username));
                if (loginService.getUser(username)==null){
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                    String registertime=df.format(new Date());
                    System.out.println("registertime="+registertime);
                    user.setPhonenumber(username);
                    user.setRegistertime(registertime);
                    System.out.println("loginuser="+user);
                    loginService.addUser(user);
                }
                user=loginService.getUserid(username);
                System.out.println("user="+user);
                session.setAttribute("userid",loginService.getUserid(username).getId());
                System.out.println("loginService.getUserid(username).getId()="+loginService.getUserid(username).getId());

            }catch (Exception e){

            }

            return Msg.success();
        }else {
            return Msg.fail();
        }
    }
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/";
    }

}
