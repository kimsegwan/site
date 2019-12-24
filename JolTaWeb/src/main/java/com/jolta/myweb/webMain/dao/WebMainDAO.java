package com.jolta.myweb.webMain.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jolta.myweb.common.AbstractDAO;

@Repository("webMainDAO")
public class WebMainDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMenuInfo(HashMap<String, String> params) {

		return (List<Map<String, Object>>)selectList("webmain.webMainMenuInfo", params);
	}
	
	
	
}
