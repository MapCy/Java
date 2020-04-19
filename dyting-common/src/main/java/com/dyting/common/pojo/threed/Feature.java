package com.dyting.common.pojo.threed;

import com.dyting.common.pojo.Item;

public class Feature {

	public String type;
	
	public Item properties;
	
	public Geometry geometry;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Item getProperties() {
		return properties;
	}

	public void setProperties(Item properties) {
		this.properties = properties;
	}

	public Geometry getGeometry() {
		return geometry;
	}

	public void setGeometry(Geometry geometry) {
		this.geometry = geometry;
	}
	
}
