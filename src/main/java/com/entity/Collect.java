package com.entity;

/**
 * @author SL
 * @date 2019/8/29 星期四 8:30
 * guazi/com.entity/Collect
 */
public class Collect {
    private int cid;
    private int collectid;
    private int collectedid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCollectid() {
        return collectid;
    }

    public void setCollectid(int collectid) {
        this.collectid = collectid;
    }

    public int getCollectedid() {
        return collectedid;
    }

    public void setCollectedid(int collectedid) {
        this.collectedid = collectedid;
    }

    @Override
    public String toString() {
        return "Collect{" +
                "cid=" + cid +
                ", collectid=" + collectid +
                ", collectedid=" + collectedid +
                '}';
    }
}
