package com.jolta.myweb.webMain.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jolta.myweb.webMain.service.WebMainService;

@Controller
public class WebMainController {
	
	private static final Logger logger = LoggerFactory.getLogger(WebMainController.class);
	
	@Resource(name="webMainService")
	private WebMainService webMainService;
	
	@RequestMapping(value="/myIntoroduce")
	public String myIntoroduce(Model model, HttpServletRequest req) {
		
		return "introduce/myIntroduce";
	}
	
	@RequestMapping(value="/carrerIntroduction")
	public String carrerIntroduction(Model model, HttpServletRequest req) {
		
		return "introduce/carrerIntroduction";
	}
	
	@RequestMapping(value="/accessInfo")
	public String accessController(Model model, HttpServletRequest req) {
		
		HashMap<String, String> params = new HashMap<String, String>();
		Object result = null;
		
		params.put("latitude", req.getParameter("latitude"));
		params.put("longitude", req.getParameter("longitude"));
		params.put("regrIp", req.getRemoteAddr());
		params.put("url", req.getHeader("referer"));
		params.put("remark", req.getParameter("remark"));
		
		try {
			System.out.println("====================");
			System.out.println("====================");
			System.out.println("IP : " + req.getRemoteAddr());
			System.out.println("192.168".indexOf(req.getRemoteAddr().toString()));
			System.out.println(req.getRemoteAddr().indexOf("192.168"));
			System.out.println("====================");
			System.out.println("====================");
			if(!"0:0:0:0:0:0:0:1".equals(req.getRemoteAddr()) && !"192.168.0.1".equals(req.getRemoteAddr()) && req.getRemoteAddr().indexOf("192.168") < 0) {
				result = webMainService.access(params);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "JolTaMain";
	}
	
	@RequestMapping(value="/developmentScreen/vue/main")
	public String developmentScreenVue(Model model) {
		
		
		return "/developmentScreen/vue/main";
	}
}
