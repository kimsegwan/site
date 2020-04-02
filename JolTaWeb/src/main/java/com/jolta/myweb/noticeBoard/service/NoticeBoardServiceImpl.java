package com.jolta.myweb.noticeBoard.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.jolta.myweb.noticeBoard.controller.NoticeBoardController;
import com.jolta.myweb.noticeBoard.dao.NoticeBoardDAO;

@Service("noticeBoardService")
public class NoticeBoardServiceImpl implements NoticeBoardService {

	private static final Logger logger = LoggerFactory.getLogger(NoticeBoardController.class);
	
	@Resource(name="noticeBoardDAO")
	private NoticeBoardDAO noticeBoardDAO;
	
	@Override
	public Map<String, String> selectPHPMstrInfo(HashMap<String, String> params) throws Exception {
		return noticeBoardDAO.selectPHPMstrInfo(params);
	}
	
	@Override
	public Object noticeBoardInsert(HashMap<String, String> params) {
		return noticeBoardDAO.noticeBoardInsert(params);
	}
	
	@Override
	public List<Map<String, String>> selectNoticeBoardList(HashMap<String, String> params) {
		return noticeBoardDAO.selectNoticeBoardList(params);
	}
	
	@Override
	public Map<String, String> noticeBoardDtl(HashMap<String, String> params) {
		return noticeBoardDAO.noticeBoardDtl(params);
	}

}
