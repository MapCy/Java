package com.dyting.common.pojo;

import java.util.List;

/*
 * 端口和服务的数据可视化返回集
 */
public class PortOrService {

	private String category;
	
	private List<Item> item;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}
	
}
