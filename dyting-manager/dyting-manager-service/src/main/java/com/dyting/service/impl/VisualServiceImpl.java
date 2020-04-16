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
import com.dyting.common.pojo.threed.ThreedResult;
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
	public List<ThreedResult> selectFromIbi(String country) {
		List<IpBaseInfo> countryList = new ArrayList<>();
		List<CityInfo> cityInfos = new ArrayList<>();
		
		List<ThreedResult> threedResults = new ArrayList<>();
		
		//取出所有国家
		countryList = ipbaseinfoMapper.selectDistinctCountry();
		if (countryList.size() < 0 || countryList == null) {
			return null;
		}
		//当前端点击某个具体的国家时，才统计每个国家下的各城市ip数量
		if (country != null) {
			cityInfos = ipbaseinfoMapper.selectByCountry(country);
			ThreedResult tResult = new ThreedResult();
			tResult.setCountry(country);
			tResult.setCityInfos(cityInfos);
			threedResults.add(tResult);
		}else {
			for(int i = 0; i < countryList.size(); i++){
				ThreedResult tResult = new ThreedResult();
				tResult.setCountry(countryList.get(i).getCountry());
				tResult.setCityInfos(null);
				threedResults.add(tResult);
			}
		}
		
		return threedResults;
	}

	

}
