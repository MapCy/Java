package com.dyting.common.pojo.threed;

import java.util.List;

/*
 * 自定义geojson格式数据,GeojsonRoot为geojson数据根节点
 */
public class ThreedGeojson {
	
	private String type;
	
	private List<Feature> features;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<Feature> getFeatures() {
		return features;
	}

	public void setFeatures(List<Feature> features) {
		this.features = features;
	}

}
