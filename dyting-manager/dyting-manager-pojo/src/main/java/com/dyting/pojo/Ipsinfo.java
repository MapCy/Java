package com.dyting.pojo;

import java.util.Date;

public class Ipsinfo {
    private Integer id;

    private String ip;

    private Date updateT;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public Date getUpdateT() {
        return updateT;
    }

    public void setUpdateT(Date updateT) {
        this.updateT = updateT;
    }
}