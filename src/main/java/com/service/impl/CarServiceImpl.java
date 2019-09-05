package com.service.impl;

import com.entity.*;
import com.mapper.CarMapper;
import com.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.List;
import java.util.Random;

/**
 * @author SL
 * @date 2019/8/22 星期四 9:42
 * guazi/com.service.impl/CarServiceImpl
 */
@Service
public class CarServiceImpl implements CarService {
    @Autowired
    private CarMapper carMapper;

    @Override
    public List<Car> getCars(String cityname) {
        return carMapper.getCars(cityname);
    }

    @Override
    public Car detail(int id) {
        return carMapper.detail(id);
    }

    @Override
    public CarInfo carinfo(int id) {
        return carMapper.carinfo(id);
    }

    @Override
    public Car_engine_info car_engine_info(int id) {
        return carMapper.car_engine_info(id);
    }

    @Override
    public Car_chassis_brake_info car_chassis_brake_info(int id) {
        return carMapper.car_chassis_brake_info(id);
    }

    @Override
    public Car_safety_info car_safety_info(int id) {
        return carMapper.car_safety_info(id);
    }

    @Override
    public Car_external_info car_external_info(int id) {
        return carMapper.car_external_info(id);
    }

    @Override
    public Car_internal_info car_internal_info(int id) {
        return carMapper.car_internal_info(id);
    }

    @Override
    public List<Car> getBuyCars() {
        return carMapper.getBuyCars();
    }


    @Override
    public void savePicture(MultipartFile file, HttpServletRequest request) throws IOException, FileNotFoundException {
        String ImagePath ="D:\\upload";
        try {
            int result=carMapper.getId().getId();
            System.out.println("carservice_id="+result);
            File targetfile = new File(ImagePath,result+file.getOriginalFilename());
            InputStream ins = file.getInputStream();
            FileOutputStream fos = new FileOutputStream(targetfile);

            byte b[] = new byte[1024];
            int temp = 0;

            while((temp = ins.read(b)) != -1){
                fos.write(b, 0, temp);
            }

            Pic pic=new Pic();

            pic.setId(result);
            pic.setPic("file/"+targetfile.getName());
            carMapper.insertPic(pic);
            fos.close();
            ins.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void addcar(HttpServletRequest request) {
        String name = request.getParameter("name");
        System.out.println("name:"+name);
        String cartime =request.getParameter("cartime");
        System.out.println("cartime："+cartime);
        String nowprice = request.getParameter("nowprice");
        System.out.println("nowprice："+nowprice);
        String orprice = request.getParameter("orprice");
        System.out.println("orprice："+orprice);
        String cityname = request.getParameter("cityname");
        System.out.println("cityname："+cityname);
        String phone = request.getParameter("phone");
        System.out.println("phone："+phone);
        Integer age =Integer.parseInt(request.getParameter("age"));
        System.out.println("age："+age);
        String mile = request.getParameter("mile");
        System.out.println("mile："+mile);
        String demage = request.getParameter("demage");
        System.out.println("demage："+demage);
        String cspeed = request.getParameter("cspeed");
        System.out.println("cspeed："+cspeed);
        Car car=new Car(name,cartime,nowprice,orprice,cityname,phone,age,mile,demage,cspeed);
        try {
            carMapper.addCar(car);
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public List<Car> getUncheckSell() {
        return carMapper.getUncheckSell();
    }

    @Override
    public List<Car> getCheckedSell() {
        return carMapper.getCheckedSell();
    }
}
