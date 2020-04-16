package com.dyting.common.pojo.threed;

import java.util.List;

public class ThreedResult {
	
	private String country;
	
	private List<CityInfo> cityInfos;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List<CityInfo> getCityInfos() {
		return cityInfos;
	}

	public void setCityInfos(List<CityInfo> cityInfos) {
		this.cityInfos = cityInfos;
	}
	

}
