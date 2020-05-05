package com.dyting.service;

import java.util.List;

import com.dyting.common.pojo.Item;
import com.dyting.common.pojo.PortOrService;
import com.dyting.common.pojo.threed.ThreedGeojson;

/*
 * 数据可视化部分
 */
public interface VisualService {
	
	/*
	 * 可视化接口
	 * @Table portsinfo
	 * @Param categroy: 可取port、service
	 */
	public List<PortOrService> getVisual(String categroy);
	
	/*
	 * 查询接口，封装供getVisual()函数使用
	 * @Param categroy: 可取port、service
	 * 函数返回Item型List
	 */
	public List<Item> getCategroyMap(String categroy);
	
	/*
	 * 3D数据展示查询接口,geojson格式数据
	 * @Table ip_base_info 缩写 IBI
	 * @Param country
	 */
	public ThreedGeojson selectFromIbi(String lat, String lon);

}
