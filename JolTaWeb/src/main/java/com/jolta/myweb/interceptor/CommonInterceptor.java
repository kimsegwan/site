package com.jolta.myweb.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jolta.myweb.webMain.service.WebMainService;

public class CommonInterceptor extends HandlerInterceptorAdapter {

	private Log log = LogFactory.getLog(CommonInterceptor.class);
	
	@Resource(name="webMainService")
	private WebMainService webMainService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(log.isDebugEnabled()) {
			log.debug(" =============  START  ============ ");
			log.debug(" Request URI \t: " + request.getRequestURI());
		}
		
		HashMap<String, String> params = new HashMap<String, String>();
		
		try {
			params.put("menuNo", "MD01");
			List<Map<String, Object>> menuList01 = webMainService.selectMenuInfo(params);
			params.put("menuNo", "MD02");
			List<Map<String, Object>> menuList02 = webMainService.selectMenuInfo(params);
			params.put("menuNo", "MD03");
			List<Map<String, Object>> menuList03 = webMainService.selectMenuInfo(params);
			
			request.setAttribute("menuList01", menuList01);
			request.setAttribute("menuList02", menuList02);
			request.setAttribute("menuList03", menuList03);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if(log.isDebugEnabled()) {
			log.debug(" =============  END  ============ ");
		}
		
		super.postHandle(request, response, handler, modelAndView);
	}

	
}
