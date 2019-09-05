package com.entity;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/30 星期五 9:38
 * guazi/com.entity/UndoneOrder
 */
public class UndoneOrder {
    private int oid;
    private int orderedid;
    private String name;
    private String nowprice;
    private String phone;
    private String cityname;
    private String status;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getOrderedid() {
        return orderedid;
    }

    public void setOrderedid(int orderedid) {
        this.orderedid = orderedid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNowprice() {
        return nowprice;
    }

    public void setNowprice(String nowprice) {
        this.nowprice = nowprice;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UndoneOrder{" +
                "orderid=" + oid +
                ", orderedid=" + orderedid +
                ", name='" + name + '\'' +
                ", nowprice='" + nowprice + '\'' +
                ", phone='" + phone + '\'' +
                ", cityname='" + cityname + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
