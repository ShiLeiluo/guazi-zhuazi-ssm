package com.service;

import com.entity.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/**
 * @author SL
 * @date 2019/8/22 星期四 9:41
 * guazi/com.service/CarService
 */
public interface CarService {
    List<Car> getCars(String cityname);
    Car detail(int id);
    CarInfo carinfo(int id);
    Car_engine_info car_engine_info(int id);
    Car_chassis_brake_info car_chassis_brake_info(int id);
    Car_safety_info car_safety_info(int id);
    Car_external_info car_external_info(int id);
    Car_internal_info car_internal_info(int id);
    List<Car> getBuyCars();
    public void savePicture(MultipartFile file, HttpServletRequest request) throws IOException, FileNotFoundException;
    void addcar(HttpServletRequest request);
    List<Car> getUncheckSell();
    List<Car> getCheckedSell();
}
