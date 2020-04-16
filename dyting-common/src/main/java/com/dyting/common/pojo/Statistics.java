package com.dyting.common.pojo;

import java.util.List;

/*
 * 定义搜索结果统计集
 */
public class Statistics {
	
	private String column;
	
	private Integer number;
	
	private List<Item> item;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}

}
