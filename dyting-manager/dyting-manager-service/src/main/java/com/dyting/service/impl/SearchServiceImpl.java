package com.dyting.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyting.common.pojo.Item;
import com.dyting.common.pojo.Statistics;
import com.dyting.mapper.PortsinfoMapper;
import com.dyting.pojo.Portsinfo;
import com.dyting.service.SearchService;

/*
 * 搜索服务Service
 */
@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private PortsinfoMapper portMapper;

	@Override
	public List<Portsinfo> dytingSearch(String key, String val) {
		List<Portsinfo> result = new ArrayList<>();
		result = portMapper.selectByMutiTable(key, val);
		if (result != null && result.size() > 0) {
			return result;
		}
		return null;
	}

	@Override
	public List<Statistics> getStatistics(String key,String val) {
		/*
		 * 统计结果集分为列和项：column、item
		 * 列数量的查询用不重复统计
		 * 项数量的查询用重复统计
		 */
		//定义list
		List<Statistics> statList = new ArrayList<>();
		
		
		//暂且先写死
		String[] column = {"country","port","service"};
		int colNum;
		int itemNum;
		for (String c : column) {
			List<Item> itemList = new ArrayList<>(); //用来存储该列下所有项的具体信息key-value
			List<String> per = new ArrayList<>();//用来存储该列下的所有项
			Statistics s = new Statistics();
			
			//当搜索的关键字key与列名column相同时，该列数量即为1,同时需特殊处理
			if (key.equals(c)) {
				colNum = 1;
				
				Item t = new Item();
				t.setName(val);
				t.setValue(1);
				itemList.add(t);
				
				s.setColumn(key);
				s.setNumber(colNum);
				s.setItem(itemList);
			}else {
				colNum = portMapper.nonrepeatCount(key, val, c);//统计每一列的数量
				//展开往下查
				per = portMapper.selectEveryItem(key, val, c);//该列下对应的项
				for(int i = 0; i < per.size(); i++){
					itemNum = portMapper.repeatCount(key, val, c, per.get(i)); //统计每一项的数量
					Item t = new Item();
					t.setName(per.get(i));
					t.setValue(itemNum);
					itemList.add(t);
				}
				
				//根据Value对itemList降序排列，需实现Comparator接口
				Collections.sort(itemList, new Comparator<Item>() {
					@Override
					public int compare(Item o1, Item o2) {
						return o2.getValue() - o1.getValue(); //降序
					}
				});
				
				s.setColumn(c);
				s.setNumber(colNum);
				s.setItem(itemList);
			}
			statList.add(s);
		}

		return statList;
	}
	
}
