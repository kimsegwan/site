package com.jolta.myweb.webMain.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface WebMainService {
	
	List<Map<String, Object>> selectMenuInfo(HashMap<String, String> params) throws Exception;
	
	Object access(HashMap<String, String> param) throws Exception;

}
