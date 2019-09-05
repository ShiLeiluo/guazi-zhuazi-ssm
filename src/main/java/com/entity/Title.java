package com.entity;

/**
 * @author SL
 * @date 2019/8/20 星期二 10:32
 * guazi/com.entity/Title
 */
public class Title {
    private  String adcode;
    private String title;
    private String cityname;

    public String getAdcode() {
        return adcode;
    }

    public void setAdcode(String adcode) {
        this.adcode = adcode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }


    @Override
    public String toString() {
        return "Title{" +
                "adcode='" + adcode + '\'' +
                ", title='" + title + '\'' +
                ", cityname='" + cityname + '\'' +
                '}';
    }
}
