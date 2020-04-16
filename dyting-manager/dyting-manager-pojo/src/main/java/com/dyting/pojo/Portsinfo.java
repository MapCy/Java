package com.dyting.pojo;

import java.util.Date;

public class Portsinfo {
    private Integer idIp;

    private Integer port;

    private String types;

    private Integer isIcs;

    private String service;

    private Date buildDate;

    private String banner;
    
    //多表查询
    private Ipsinfo ipsinfo;
    private IpBaseInfo ipBaseInfo;
     
	public Ipsinfo getIpsinfo() {
		return ipsinfo;
	}

	public void setIpsinfo(Ipsinfo ipsinfo) {
		this.ipsinfo = ipsinfo;
	}

	public IpBaseInfo getIpBaseInfo() {
		return ipBaseInfo;
	}

	public void setIpBaseInfo(IpBaseInfo ipBaseInfo) {
		this.ipBaseInfo = ipBaseInfo;
	}

	public Integer getIdIp() {
        return idIp;
    }

    public void setIdIp(Integer idIp) {
        this.idIp = idIp;
    }

    public Integer getPort() {
        return port;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types == null ? null : types.trim();
    }

    public Integer getIsIcs() {
        return isIcs;
    }

    public void setIsIcs(Integer isIcs) {
        this.isIcs = isIcs;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service == null ? null : service.trim();
    }

    public Date getBuildDate() {
        return buildDate;
    }

    public void setBuildDate(Date buildDate) {
        this.buildDate = buildDate;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner == null ? null : banner.trim();
    }
}