package com.entity;

/**
 * @author SL
 * @date 2019/8/30 星期五 10:58
 * guazi/com.entity/Collection
 */
public class Collections {
    private int cid;
    private int collectedid;
    private String name;
    private String nowprice;
    private String phone;
    private String cityname;
    private String status;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCollectedid() {
        return collectedid;
    }

    public void setCollectedid(int collectedid) {
        this.collectedid = collectedid;
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
        return "Collections{" +
                "cid=" + cid +
                ", collectedid=" + collectedid +
                ", name='" + name + '\'' +
                ", nowprice='" + nowprice + '\'' +
                ", phone='" + phone + '\'' +
                ", cityname='" + cityname + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
