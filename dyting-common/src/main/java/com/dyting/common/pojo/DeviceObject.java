package com.dyting.common.pojo;

/*
 * 该对象用于文件导出
 */
public class DeviceObject {
	private Long id;
	
	private String device_ip;
	
	private Integer device_port;
	
	private String isIcs;
	
	private String types;
	
	private String banner;
    
	private String build_time;
	
	private String regname;
	
	private String city;
	
	private String latitude;
	
	private String longitude;
	
	private String banner_detail;
    
	private String country_code;
    
	private String service_code;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDevice_ip() {
		return device_ip;
	}

	public void setDevice_ip(String device_ip) {
		this.device_ip = device_ip;
	}

	public Integer getDevice_port() {
		return device_port;
	}

	public void setDevice_port(Integer device_port) {
		this.device_port = device_port;
	}

	public String getIsIcs() {
		return isIcs;
	}

	public void setIsIcs(String isIcs) {
		this.isIcs = isIcs;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getBanner() {
		return banner;
	}

	public void setBanner(String banner) {
		this.banner = banner;
	}

	public String getBuild_time() {
		return build_time;
	}

	public void setBuild_time(String build_time) {
		this.build_time = build_time;
	}

	public String getRegname() {
		return regname;
	}

	public void setRegname(String regname) {
		this.regname = regname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

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

	public String getBanner_detail() {
		return banner_detail;
	}

	public void setBanner_detail(String banner_detail) {
		this.banner_detail = banner_detail;
	}

	public String getCountry_code() {
		return country_code;
	}

	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}

	public String getService_code() {
		return service_code;
	}

	public void setService_code(String service_code) {
		this.service_code = service_code;
	}
	
}
