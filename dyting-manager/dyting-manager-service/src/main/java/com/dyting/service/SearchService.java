package com.dyting.service;

import java.util.List;

import com.dyting.common.pojo.Statistics;
import com.dyting.pojo.Portsinfo;

/*
 * @搜索引擎部分
 * 【说明】
 * 		搜索格式：“关键字key:值value”
 * 	关键字包括：service/port/country/city/time...
 * 	值取对应类型
 * 	如：service:modbus
 * 	   port:22
 */
public interface SearchService {
	
	//搜索
	public List<Portsinfo> dytingSearch(String key, String val);
	
	//搜索结果统计
    public List<Statistics> getStatistics(String key,String val);

}
