package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 14:48
 * guazi/com.entity/car_external_info
 */
public class Car_external_info {
    private int id;
    private String electronic_sunroof;
    private String panoramic_sunroof;
    private String electronic_door_pull;
    private String electronic_trunk;
    private String rain_sensing_wipers;
    private String rear_wiper;
    private String power_window;
    private String electronic_rearview_mirror;
    private String rearview_mirror_heating;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getElectronic_sunroof() {
        return electronic_sunroof;
    }

    public void setElectronic_sunroof(String electronic_sunroof) {
        this.electronic_sunroof = electronic_sunroof;
    }

    public String getPanoramic_sunroof() {
        return panoramic_sunroof;
    }

    public void setPanoramic_sunroof(String panoramic_sunroof) {
        this.panoramic_sunroof = panoramic_sunroof;
    }

    public String getElectronic_door_pull() {
        return electronic_door_pull;
    }

    public void setElectronic_door_pull(String electronic_door_pull) {
        this.electronic_door_pull = electronic_door_pull;
    }

    public String getElectronic_trunk() {
        return electronic_trunk;
    }

    public void setElectronic_trunk(String electronic_trunk) {
        this.electronic_trunk = electronic_trunk;
    }

    public String getRain_sensing_wipers() {
        return rain_sensing_wipers;
    }

    public void setRain_sensing_wipers(String rain_sensing_wipers) {
        this.rain_sensing_wipers = rain_sensing_wipers;
    }

    public String getRear_wiper() {
        return rear_wiper;
    }

    public void setRear_wiper(String rear_wiper) {
        this.rear_wiper = rear_wiper;
    }

    public String getPower_window() {
        return power_window;
    }

    public void setPower_window(String power_window) {
        this.power_window = power_window;
    }

    public String getElectronic_rearview_mirror() {
        return electronic_rearview_mirror;
    }

    public void setElectronic_rearview_mirror(String electronic_rearview_mirror) {
        this.electronic_rearview_mirror = electronic_rearview_mirror;
    }

    public String getRearview_mirror_heating() {
        return rearview_mirror_heating;
    }

    public void setRearview_mirror_heating(String rearview_mirror_heating) {
        this.rearview_mirror_heating = rearview_mirror_heating;
    }

    @Override
    public String toString() {
        return "car_external_info{" +
                "id=" + id +
                ", electronic_sunroof='" + electronic_sunroof + '\'' +
                ", panoramic_sunroof='" + panoramic_sunroof + '\'' +
                ", electronic_door_pull='" + electronic_door_pull + '\'' +
                ", electronic_trunk='" + electronic_trunk + '\'' +
                ", rain_sensing_wipers='" + rain_sensing_wipers + '\'' +
                ", rear_wiper='" + rear_wiper + '\'' +
                ", power_window='" + power_window + '\'' +
                ", electronic_rearview_mirror='" + electronic_rearview_mirror + '\'' +
                ", rearview_mirror_heating='" + rearview_mirror_heating + '\'' +
                '}';
    }
}
