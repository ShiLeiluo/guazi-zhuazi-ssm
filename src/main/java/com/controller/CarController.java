package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.CarService;
import com.util.FileUtil;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.List;

/**
 * @author SL
 * @date 2019/8/22 星期四 9:44
 * guazi/com.controller/CarController
 */
@Controller
public class CarController {
    @Autowired
    CarService carService;
    @RequestMapping("/getCars")
    @ResponseBody
    public List<Car> getCars(String cityname){
        List<Car> list=carService.getCars(cityname);
        System.out.println("list="+list);
        return list;
    }
    @RequestMapping("/getBuyCars")
    @ResponseBody
    public Msg getBuyCars(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 12);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Car> cars=carService.getBuyCars();
        System.out.println("buypageCars="+cars);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(cars, 3);
        System.out.println("page=" + page);
        System.out.println(Msg.success().add("pageInfo", page));
        return Msg.success().add("pageInfo", page);
    }
    @RequestMapping("/getCheckedSell")
    @ResponseBody
    public Msg getCheckedSell(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Car> cars=carService.getCheckedSell();
        System.out.println("getCheckedSell="+cars);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(cars, 3);
        System.out.println("page=" + page);
        System.out.println(Msg.success().add("pageInfo", page));
        return Msg.success().add("pageInfo", page);
    }
    @RequestMapping("/detail")
    public ModelAndView detail(int id){
        Car car = carService.detail(id);
        CarInfo carInfo = carService.carinfo(id);
        Car_engine_info car_engine_info=carService.car_engine_info(id);
        Car_chassis_brake_info car_chassis_brake_info=carService.car_chassis_brake_info(id);
        Car_safety_info car_safety_info=carService.car_safety_info(id);
        Car_external_info car_external_info=carService.car_external_info(id);
        Car_internal_info car_internal_info=carService.car_internal_info(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("detail",car);
        modelAndView.addObject("carInfo",carInfo);
        modelAndView.addObject("carEngineInfo",car_engine_info);
        modelAndView.addObject("carChassisBrakeInfo",car_chassis_brake_info);
        modelAndView.addObject("carSafetyInfo",car_safety_info);
        modelAndView.addObject("carExternalInfo",car_external_info);
        modelAndView.addObject("carInternalInfo",car_internal_info);
        modelAndView.setViewName("detail");
        return modelAndView;
    }
    @RequestMapping("/sellcar")
    @ResponseBody
    public String sellcar(HttpServletRequest request,@RequestParam("file")MultipartFile file) throws FileNotFoundException, IOException {
        carService.addcar(request);
        System.out.println("controfile="+file.getSize());
        if (!file.isEmpty()) {
                carService.savePicture(file,request);//保存图片
            return String.valueOf(Msg.success().getCode());
        }
        return String.valueOf(Msg.fail().getCode());
    }
}
