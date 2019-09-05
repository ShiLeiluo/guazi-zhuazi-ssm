package com.entity;

/**
 * @author SL
 * @date 2019/9/4 星期三 10:06
 * guazi/com.entity/Pic
 */
public class Pic {
    private String pic;
    private int id;

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Pic{" +
                "pic='" + pic + '\'' +
                ", id=" + id +
                '}';
    }
}
