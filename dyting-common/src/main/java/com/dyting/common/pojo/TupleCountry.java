package com.dyting.common.pojo;

/*
 * 元国家：每个国家的经纬度范围
 */
public class TupleCountry {

	private String country;
	
	private double minlat;
	
	private double maxlat;
	
	private double minlon;
	
	private double maxlon;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public double getMinlat() {
		return minlat;
	}

	public void setMinlat(double minlat) {
		this.minlat = minlat;
	}

	public double getMaxlat() {
		return maxlat;
	}

	public void setMaxlat(double maxlat) {
		this.maxlat = maxlat;
	}

	public double getMinlon() {
		return minlon;
	}

	public void setMinlon(double minlon) {
		this.minlon = minlon;
	}

	public double getMaxlon() {
		return maxlon;
	}

	public void setMaxlon(double maxlon) {
		this.maxlon = maxlon;
	}

}
