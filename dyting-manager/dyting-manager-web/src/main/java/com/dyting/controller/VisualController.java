package com.dyting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dyting.common.pojo.DytingResult;
import com.dyting.common.pojo.PortOrService;
import com.dyting.common.pojo.threed.ThreedGeojson;
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
	public ThreedGeojson selectByCountry(HttpServletRequest request){
		String lat = request.getParameter("latitude");
		String lon = request.getParameter("longitude");
		System.out.println("---------->"+lat+","+lon);
		return visualService.selectFromIbi(lat,lon);
	}
}
