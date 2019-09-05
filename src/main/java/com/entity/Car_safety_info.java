package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 14:49
 * guazi/com.entity/car_safety_info
 */
public class Car_safety_info {
    private int id;
    private String front_airbag;
    private String head_airbag;
    private String child_seat_int;
    private String tpms;
    private String car_lock;
    private String abs;
    private String usc;
    private String pss;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFront_airbag() {
        return front_airbag;
    }

    public void setFront_airbag(String front_airbag) {
        this.front_airbag = front_airbag;
    }

    public String getHead_airbag() {
        return head_airbag;
    }

    public void setHead_airbag(String head_airbag) {
        this.head_airbag = head_airbag;
    }

    public String getChild_seat_int() {
        return child_seat_int;
    }

    public void setChild_seat_int(String child_seat_int) {
        this.child_seat_int = child_seat_int;
    }

    public String getTpms() {
        return tpms;
    }

    public void setTpms(String tpms) {
        this.tpms = tpms;
    }

    public String getCar_lock() {
        return car_lock;
    }

    public void setCar_lock(String car_lock) {
        this.car_lock = car_lock;
    }

    public String getAbs() {
        return abs;
    }

    public void setAbs(String abs) {
        this.abs = abs;
    }

    public String getUsc() {
        return usc;
    }

    public void setUsc(String usc) {
        this.usc = usc;
    }

    public String getPss() {
        return pss;
    }

    public void setPss(String pss) {
        this.pss = pss;
    }

    @Override
    public String toString() {
        return "car_safety_info{" +
                "id=" + id +
                ", front_airbag='" + front_airbag + '\'' +
                ", head_airbag='" + head_airbag + '\'' +
                ", child_seat_int='" + child_seat_int + '\'' +
                ", tpms='" + tpms + '\'' +
                ", car_lock='" + car_lock + '\'' +
                ", abs='" + abs + '\'' +
                ", usc='" + usc + '\'' +
                ", pss='" + pss + '\'' +
                '}';
    }
}
