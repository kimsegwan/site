package com.jolta.myweb.webMain.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.jolta.myweb.webMain.controller.WebMainController;
import com.jolta.myweb.webMain.dao.WebMainDAO;

@Service("webMainService")
public class WebMainServiceImpl implements WebMainService {

	private static final Logger logger = LoggerFactory.getLogger(WebMainController.class);
	
	@Resource(name="webMainDAO")
	private WebMainDAO webMainDAO;
	
	@Override
	public List<Map<String, Object>> selectMenuInfo(HashMap<String, String> params) throws Exception {
		return webMainDAO.selectMenuInfo(params);
	}
	
	

}
