package com.entity;

/**
 * @author SL
 * @date 2019/8/22 星期四 9:16
 * guazi/com.entity/Car
 */
public class Car {
    private int id;
    private String pic;
    private String name;
    private String cartime;
    private String nowprice;
    private String orprice;
    private String cityname;
    private String phone;
    private int age;
    private String mile;
    private String demage;
    private String cspeed;
    private String status;

    public Car(int id, String pic, String name, String cartime, String nowprice, String orprice, String cityname, String phone, int age, String mile, String demage, String cspeed, String status) {
        this.id = id;
        this.pic = pic;
        this.name = name;
        this.cartime = cartime;
        this.nowprice = nowprice;
        this.orprice = orprice;
        this.cityname = cityname;
        this.phone = phone;
        this.age = age;
        this.mile = mile;
        this.demage = demage;
        this.cspeed = cspeed;
        this.status = status;
    }

    public Car(String name, String cartime, String nowprice, String orprice, String cityname, String phone, int age, String mile, String demage, String cspeed) {
        this.name = name;
        this.cartime = cartime;
        this.nowprice = nowprice;
        this.orprice = orprice;
        this.cityname = cityname;
        this.phone = phone;
        this.age = age;
        this.mile = mile;
        this.demage = demage;
        this.cspeed = cspeed;
    }

    public Car(int id, String pic, String name, String nowprice, String cityname, String phone, String status) {
        this.id = id;
        this.pic = pic;
        this.name = name;
        this.nowprice = nowprice;
        this.cityname = cityname;
        this.phone = phone;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCartime() {
        return cartime;
    }

    public void setCartime(String cartime) {
        this.cartime = cartime;
    }

    public String getNowprice() {
        return nowprice;
    }

    public void setNowprice(String nowprice) {
        this.nowprice = nowprice;
    }

    public String getOrprice() {
        return orprice;
    }

    public void setOrprice(String orprice) {
        this.orprice = orprice;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMile() {
        return mile;
    }

    public void setMile(String mile) {
        this.mile = mile;
    }

    public String getDemage() {
        return demage;
    }

    public void setDemage(String demage) {
        this.demage = demage;
    }

    public String getCspeed() {
        return cspeed;
    }

    public void setCspeed(String cspeed) {
        this.cspeed = cspeed;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", pic='" + pic + '\'' +
                ", name='" + name + '\'' +
                ", cartime='" + cartime + '\'' +
                ", nowprice='" + nowprice + '\'' +
                ", orprice='" + orprice + '\'' +
                ", cityname='" + cityname + '\'' +
                ", phone='" + phone + '\'' +
                ", age=" + age +
                ", mile='" + mile + '\'' +
                ", demage='" + demage + '\'' +
                ", cspeed='" + cspeed + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
