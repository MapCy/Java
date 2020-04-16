package com.dyting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dyting.common.pojo.DytingResult;
import com.dyting.common.pojo.Statistics;
import com.dyting.pojo.Portsinfo;
import com.dyting.service.SearchService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/*
 * 搜索Controller
 */
@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "/search")
	public String selectByCondition(HttpServletRequest request,
			@RequestParam(required = true, defaultValue = "1") Integer pageNo) {
		
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		//System.out.println("参数==========>>>>"+key+"--"+val);
		
		List<Portsinfo> list = null;
		PageHelper.startPage(pageNo, 10); // 分页查询
		
		list = searchService.dytingSearch(key, val);

		if (list != null && list.size() > 0) {
			PageInfo page = new PageInfo(list);
			request.setAttribute("page", page);
			request.setAttribute("key", key);
			request.setAttribute("val", val);
			return "search_result";
		}
		return "error";
	}
	
	
	@RequestMapping(value = "/statistics")
	@ResponseBody
	public DytingResult getStatistics(HttpServletRequest request){
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		
		List<Statistics> list = searchService.getStatistics(key, val);
		if (list != null && list.size() > 0) {
			//request.setAttribute("statistics", list);
			return DytingResult.ok(list);
		}
		return DytingResult.ok();
	}

}
