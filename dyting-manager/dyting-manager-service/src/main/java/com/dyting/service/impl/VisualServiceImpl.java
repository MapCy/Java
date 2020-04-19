package com.dyting.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyting.common.pojo.Item;
import com.dyting.common.pojo.PortOrService;
import com.dyting.common.pojo.threed.CityInfo;
import com.dyting.common.pojo.threed.CountryInfo;
import com.dyting.common.pojo.threed.Feature;
import com.dyting.common.pojo.threed.Geometry;
import com.dyting.common.pojo.threed.ThreedGeojson;
import com.dyting.mapper.IpBaseInfoMapper;
import com.dyting.mapper.PortsinfoMapper;
import com.dyting.pojo.IpBaseInfo;
import com.dyting.pojo.IpBaseInfoExample;
import com.dyting.pojo.IpBaseInfoExample.Criteria;
import com.dyting.service.VisualService;

/*
 * 数据可视化Service
 */
@Service
public class VisualServiceImpl implements VisualService {

	@Autowired
	private PortsinfoMapper mapper;
	
	@Autowired
	private IpBaseInfoMapper ipbaseinfoMapper;
	
	@Override
	public List<PortOrService> getVisual(String categroy) {
		
		List<PortOrService> visualMaps = new ArrayList<>();
		
		//端口port
		List<Item> itemList = getCategroyMap(categroy);
		if (itemList != null) {
			PortOrService vmap = new PortOrService();
			vmap.setCategory(categroy);
			vmap.setItem(itemList);
			visualMaps.add(vmap);
			return visualMaps;
		}
		
		return null;
	}

	
	@Override
	public List<Item> getCategroyMap(String categroy) {
		List<Item> items = new ArrayList<>();
		List<String> portList = new ArrayList<String>();
		
		portList = mapper.vmselectColumn(categroy);
		int num;
		if (portList != null && portList.size() > 0) {
			for(int i = 0; i < portList.size(); i++){
				//统计每个categroy(端口/服务)对应的数量
				num = mapper.vmcount(categroy, portList.get(i));
				
				Item t = new Item();
				t.setName(portList.get(i));
				t.setValue(num);
				items.add(t);
			}
			//根据各categroy(端口/服务)使用数量进行排序（降序），取前6
			Collections.sort(items, new Comparator<Item>() {

				@Override
				public int compare(Item o1, Item o2) {
					return o2.getValue() - o1.getValue();
				}
			});
			
			//取前6
			return items.subList(0, 6);
		}else {
			return null;
		}
	}


	@Override
	public ThreedGeojson selectFromIbi(String country) {
		List<CountryInfo> countryInfos = new ArrayList<>();
		List<CityInfo> cityInfos = new ArrayList<>(); 
		
		List<Feature> features = new ArrayList<>();
		
		List<ThreedGeojson> thGeojsons = new ArrayList<>();

		//当前端点击某个具体的国家时，才统计每个国家下的各城市ip数量
		if (country != null) {
			cityInfos = ipbaseinfoMapper.selectByCountry(country); //取出该国家下的每个城市信息
			if (cityInfos.size() < 0 && cityInfos == null) {
				return null;
			}
			for(int i = 0; i < cityInfos.size(); i++){
				//得到单个city对象
				CityInfo city = cityInfos.get(i);
				
				//[1]补全Property
				Item item = new Item();
				item.setName(city.getCity());
				item.setValue(Integer.parseInt(city.getIpnum()));
			    
				//[2]补全geometry，且经度在前，纬度在后
				Geometry geometry = new Geometry();
				float[] point = new float[2];
				point[0] = Float.parseFloat(city.getLongitude());
				point[1] = Float.parseFloat(city.getLatitude());
				geometry.setType("Point"); //点要素Point
				geometry.setCoordinates(point);
				
				//组装Feature
				Feature feature = new Feature();
				feature.setType("Feature"); //geojson固定格式
				feature.setProperties(item);
				feature.setGeometry(geometry);
				
				features.add(feature);
			}
		}else {
			countryInfos = ipbaseinfoMapper.selectCountry();
			for(int i = 0; i < countryInfos.size(); i++){
				//得到单个IpBaseInfo类型的country对象
				CountryInfo countryInfo = countryInfos.get(i);
				
				//[1]补全Property
				Item item = new Item();
				item.setName(countryInfo.getCountry());
				item.setValue(Integer.parseInt(countryInfo.getIpnum()));
			    
				//[2]补全geometry，且经度在前，纬度在后
				Geometry geometry = new Geometry();
				float[] point = new float[2];
				point[0] = Float.parseFloat(countryInfo.getLongitude());
				point[1] = Float.parseFloat(countryInfo.getLatitude());
				geometry.setType("Point"); //点要素Point
				geometry.setCoordinates(point);
				
				//组装Feature
				Feature feature = new Feature();
				feature.setType("Feature"); //geojson固定格式
				feature.setProperties(item);
				feature.setGeometry(geometry);
				
				features.add(feature);
			}
		}
		ThreedGeojson geo = new ThreedGeojson();
		geo.setType("FeatureCollection");
		geo.setFeatures(features);
		return geo;
	}

	

}
