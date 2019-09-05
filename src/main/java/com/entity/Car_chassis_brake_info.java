package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 14:48
 * guazi/com.entity/car_chassis_brake_info
 */
public class Car_chassis_brake_info {
    private int id;
    private String drive_mode;
    private String auto_power_type;
    private String front_suspension_type;
    private String rear_suspension_type;
    private String front_brake_type;
    private String rear_brake_type;
    private String parking_brake_type;
    private String front_wheel_size;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDrive_mode() {
        return drive_mode;
    }

    public void setDrive_mode(String drive_mode) {
        this.drive_mode = drive_mode;
    }

    public String getAuto_power_type() {
        return auto_power_type;
    }

    public void setAuto_power_type(String auto_power_type) {
        this.auto_power_type = auto_power_type;
    }

    public String getFront_suspension_type() {
        return front_suspension_type;
    }

    public void setFront_suspension_type(String front_suspension_type) {
        this.front_suspension_type = front_suspension_type;
    }

    public String getRear_suspension_type() {
        return rear_suspension_type;
    }

    public void setRear_suspension_type(String rear_suspension_type) {
        this.rear_suspension_type = rear_suspension_type;
    }

    public String getFront_brake_type() {
        return front_brake_type;
    }

    public void setFront_brake_type(String front_brake_type) {
        this.front_brake_type = front_brake_type;
    }

    public String getRear_brake_type() {
        return rear_brake_type;
    }

    public void setRear_brake_type(String rear_brake_type) {
        this.rear_brake_type = rear_brake_type;
    }

    public String getParking_brake_type() {
        return parking_brake_type;
    }

    public void setParking_brake_type(String parking_brake_type) {
        this.parking_brake_type = parking_brake_type;
    }

    public String getFront_wheel_size() {
        return front_wheel_size;
    }

    public void setFront_wheel_size(String front_wheel_size) {
        this.front_wheel_size = front_wheel_size;
    }

    @Override
    public String toString() {
        return "car_safety_info{" +
                "id=" + id +
                ", drive_mode='" + drive_mode + '\'' +
                ", auto_power_type='" + auto_power_type + '\'' +
                ", front_suspension_type='" + front_suspension_type + '\'' +
                ", rear_suspension_type='" + rear_suspension_type + '\'' +
                ", front_brake_type='" + front_brake_type + '\'' +
                ", rear_brake_type='" + rear_brake_type + '\'' +
                ", parking_brake_type='" + parking_brake_type + '\'' +
                ", front_wheel_size='" + front_wheel_size + '\'' +
                '}';
    }
}
