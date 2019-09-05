package com.entity;

/**
 * @author SL
 * @date 2019/8/26 星期一 14:48
 * guazi/com.entity/car_engine_info
 */
public class Car_engine_info {
    private int id;
    private String displacement;
    private String intake_form;
    private String cylinder_arrangement;
    private String cylinders;
    private String maximum_horsepower;
    private String fuel;
    private String fuel_label;
    private String oilsupply_mode;
    private String enviroment_standard;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDisplacement() {
        return displacement;
    }

    public void setDisplacement(String displacement) {
        this.displacement = displacement;
    }

    public String getIntake_form() {
        return intake_form;
    }

    public void setIntake_form(String intake_form) {
        this.intake_form = intake_form;
    }

    public String getCylinder_arrangement() {
        return cylinder_arrangement;
    }

    public void setCylinder_arrangement(String cylinder_arrangement) {
        this.cylinder_arrangement = cylinder_arrangement;
    }

    public String getCylinders() {
        return cylinders;
    }

    public void setCylinders(String cylinders) {
        this.cylinders = cylinders;
    }

    public String getMaximum_horsepower() {
        return maximum_horsepower;
    }

    public void setMaximum_horsepower(String maximum_horsepower) {
        this.maximum_horsepower = maximum_horsepower;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getFuel_label() {
        return fuel_label;
    }

    public void setFuel_label(String fuel_label) {
        this.fuel_label = fuel_label;
    }

    public String getOilsupply_mode() {
        return oilsupply_mode;
    }

    public void setOilsupply_mode(String oilsupply_mode) {
        this.oilsupply_mode = oilsupply_mode;
    }

    public String getEnviroment_standard() {
        return enviroment_standard;
    }

    public void setEnviroment_standard(String enviroment_standard) {
        this.enviroment_standard = enviroment_standard;
    }

    @Override
    public String toString() {
        return "car_engine_info{" +
                "id=" + id +
                ", displacement='" + displacement + '\'' +
                ", intake_form='" + intake_form + '\'' +
                ", cylinder_arrangement='" + cylinder_arrangement + '\'' +
                ", cylinders='" + cylinders + '\'' +
                ", maximum_horsepower='" + maximum_horsepower + '\'' +
                ", fuel='" + fuel + '\'' +
                ", fuel_label='" + fuel_label + '\'' +
                ", oilsupply_mode='" + oilsupply_mode + '\'' +
                ", enviroment_standard='" + enviroment_standard + '\'' +
                '}';
    }
}
