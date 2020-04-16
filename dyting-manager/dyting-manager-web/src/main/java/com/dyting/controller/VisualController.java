package com.dyting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dyting.common.pojo.DytingResult;
import com.dyting.common.pojo.PortOrService;
import com.dyting.common.pojo.threed.ThreedResult;
import com.dyting.service.VisualService;

/*
 * 数据可视化Controller
 */
@Controller
@RequestMapping(value = "/map")
public class VisualController {

	@Autowired
	private VisualService visualService;
	
	@RequestMapping(value = "/port")
	@ResponseBody
	public DytingResult getPortVisual(){
		List<PortOrService> list = visualService.getVisual("port");
		if (list != null && list.size() > 0) {
			return DytingResult.ok(list);
		}
		return DytingResult.ok();
	}
	
	@RequestMapping(value = "/service")
	@ResponseBody
	public DytingResult getServiceVisual(){
		List<PortOrService> list = visualService.getVisual("service");
		if (list != null && list.size() > 0) {
			return DytingResult.ok(list);
		}
		return DytingResult.ok();
	}
	
	@RequestMapping(value = "/threed")
	@ResponseBody
	public DytingResult selectByCountry(){
		List<ThreedResult> list = visualService.selectFromIbi("China");
		if (list != null && list.size() > 0) {
			return DytingResult.ok(list);
		}
		return DytingResult.ok();
	}
}
