package com.dyting.common.pojo.threed;

/*
 * 该国家下每个城市的详细信息，包括（经、纬度、城市名、ip数量）
 */
public class CityInfo {
	
	private String latitude;
	
	private String longitude;
	
	private String city;
	
	private Integer ipnum;

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getIpnum() {
		return ipnum;
	}

	public void setIpnum(Integer ipnum) {
		this.ipnum = ipnum;
	}
	
}
