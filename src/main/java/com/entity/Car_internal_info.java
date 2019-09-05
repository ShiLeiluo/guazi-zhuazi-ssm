package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 14:49
 * guazi/com.entity/car_internal_info
 */
public class Car_internal_info {
    private int id;
    private String mf_steering_wheel;
    private String dlcc;
    private String automatic_air_con;
    private String manual_air_con;
    private String gps;
    private String parking_redar;
    private String reverse_video;
    private String leather_seat;
    private String seat_heating;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMf_steering_wheel() {
        return mf_steering_wheel;
    }

    public void setMf_steering_wheel(String mf_steering_wheel) {
        this.mf_steering_wheel = mf_steering_wheel;
    }

    public String getDlcc() {
        return dlcc;
    }

    public void setDlcc(String dlcc) {
        this.dlcc = dlcc;
    }

    public String getAutomatic_air_con() {
        return automatic_air_con;
    }

    public void setAutomatic_air_con(String automatic_air_con) {
        this.automatic_air_con = automatic_air_con;
    }

    public String getManual_air_con() {
        return manual_air_con;
    }

    public void setManual_air_con(String manual_air_con) {
        this.manual_air_con = manual_air_con;
    }

    public String getGps() {
        return gps;
    }

    public void setGps(String gps) {
        this.gps = gps;
    }

    public String getParking_redar() {
        return parking_redar;
    }

    public void setParking_redar(String parking_redar) {
        this.parking_redar = parking_redar;
    }

    public String getReverse_video() {
        return reverse_video;
    }

    public void setReverse_video(String reverse_video) {
        this.reverse_video = reverse_video;
    }

    public String getLeather_seat() {
        return leather_seat;
    }

    public void setLeather_seat(String leather_seat) {
        this.leather_seat = leather_seat;
    }

    public String getSeat_heating() {
        return seat_heating;
    }

    public void setSeat_heating(String seat_heating) {
        this.seat_heating = seat_heating;
    }

    @Override
    public String toString() {
        return "car_internal_info{" +
                "id=" + id +
                ", mf_steering_wheel='" + mf_steering_wheel + '\'' +
                ", dlcc='" + dlcc + '\'' +
                ", automatic_air_con='" + automatic_air_con + '\'' +
                ", manual_air_con='" + manual_air_con + '\'' +
                ", gps='" + gps + '\'' +
                ", parking_redar='" + parking_redar + '\'' +
                ", reverse_video='" + reverse_video + '\'' +
                ", leather_seat='" + leather_seat + '\'' +
                ", seat_heating='" + seat_heating + '\'' +
                '}';
    }
}
