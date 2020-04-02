package com.jolta.myweb.noticeBoard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jolta.myweb.common.AbstractDAO;

@Repository("noticeBoardDAO")
public class NoticeBoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, String> selectPHPMstrInfo(HashMap<String, String> params) {

		return (Map<String, String>) selectOne("noticeBoard.selectPHPMstrInfo", params);
	}
	
	public Object noticeBoardInsert(HashMap<String, String> params) {
		
		return insert("noticeBoard.noticeBoardInsert", params);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, String>> selectNoticeBoardList(HashMap<String, String> params) {
		return selectList("noticeBoard.selectNoticeBoardList", params);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, String> noticeBoardDtl(HashMap<String, String> params) {
		return (Map<String, String>)selectOne("noticeBoard.selectNoticeBoardList", params);
	}
	
}
