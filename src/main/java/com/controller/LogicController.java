package com.controller;

import com.entity.Collect;
import com.entity.Order;
import com.service.LogicService;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author SL
 * @date 2019/8/27 星期二 8:41
 * guazi/com.controller/LogicController
 */
@Controller
public class LogicController {
    @Autowired
    private LogicService logicService;
    @RequestMapping("/order")
    @ResponseBody
    public int order(Order order){
        try {
            if (logicService.addOrder(order)>0){
                return 1;
            }
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail().getCode();
        }
        return Msg.success().getCode();
    }
    @RequestMapping("/collect")
    @ResponseBody
    public int collect(Collect collect){
        try {
            if (logicService.addCollect(collect)>0){
                return 1;
            }
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail().getCode();
        }
        return Msg.success().getCode();
    }
}
