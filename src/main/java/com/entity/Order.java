package com.entity;

/**
 * @author SL
 * @date 2019/8/27 星期二 15:55
 * guazi/com.entity/Order
 */
public class Order {
    private int oid;
    private int orderid;
    private int orderedid;
    private String status;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getOrderedid() {
        return orderedid;
    }

    public void setOrderedid(int orderedid) {
        this.orderedid = orderedid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + oid +
                ", orderid=" + orderid +
                ", orderedid=" + orderedid +
                ", status='" + status + '\'' +
                '}';
    }
}
