package com.jolta.myweb.noticeBoard.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface NoticeBoardService {
	
	Map<String, String> selectNoticeBoardMstrInfo(HashMap<String, String> params) throws Exception;
	
	List<Map<String, String>> selectNoticeBoardMstrInfoList(HashMap<String, String> params) throws Exception;
	
	Object noticeBoardInsert(HashMap<String, String> params) throws Exception;
	
	List<Map<String, String>> selectNoticeBoardList(HashMap<String, String> params) throws Exception;
	
	Map<String, String> noticeBoardDtl(HashMap<String, String> params) throws Exception; 

}
