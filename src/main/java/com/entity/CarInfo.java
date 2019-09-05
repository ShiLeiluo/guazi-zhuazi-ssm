package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 11:26
 * guazi/com.entity/CarInfo
 */
public class CarInfo {
    private int id;
    private String fname;
    private String level;
    private String engine;
    private String gearbox;
    private String bodyStructure;
    private String size;
    private int maximumspeed;
    private String cargoVolume;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getGearbox() {
        return gearbox;
    }

    public void setGearbox(String gearbox) {
        this.gearbox = gearbox;
    }

    public String getBodyStructure() {
        return bodyStructure;
    }

    public void setBodyStructure(String bodyStructure) {
        this.bodyStructure = bodyStructure;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getMaximumspeed() {
        return maximumspeed;
    }

    public void setMaximumspeed(int maximumspeed) {
        this.maximumspeed = maximumspeed;
    }

    public String getCargoVolume() {
        return cargoVolume;
    }

    public void setCargoVolume(String cargoVolume) {
        this.cargoVolume = cargoVolume;
    }

    @Override
    public String toString() {
        return "CarInfo{" +
                "id=" + id +
                ", fname='" + fname + '\'' +
                ", level='" + level + '\'' +
                ", engine='" + engine + '\'' +
                ", gearbox='" + gearbox + '\'' +
                ", bodyStructure='" + bodyStructure + '\'' +
                ", size='" + size + '\'' +
                ", maximumspeed=" + maximumspeed +
                ", cargoVolume='" + cargoVolume + '\'' +
                '}';
    }
}
