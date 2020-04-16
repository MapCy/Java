package com.dyting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * 页面跳转控制器
 */
@Controller
public class PageController {
	
	@RequestMapping("/index")
	public String indexPage(){
		return "index";
	}
	
	@RequestMapping("/handBook")
	public String handBook(){
		return "handbook";
	}
	
	@RequestMapping("/visualMap")
	public String visualMap(){
		return "visual_map";
	}
}