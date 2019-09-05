package com.mapper;

import com.entity.*;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/22 星期四 9:20
 * guazi/com.mapper/carMapper
 */
public interface CarMapper {
    List<Car> getCars(String cityname);
    Car detail(int id);
    CarInfo carinfo(int id);
    Car_engine_info car_engine_info(int id);
    Car_chassis_brake_info car_chassis_brake_info(int id);
    Car_safety_info car_safety_info(int id);
    Car_external_info car_external_info(int id);
    Car_internal_info car_internal_info(int id);
    List<Car> getBuyCars();
    void addCar(Car car);
    Car getId();
    void insertPic(Pic pic);
    List<Car> getUncheckSell();
    List<Car> getCheckedSell();
}
