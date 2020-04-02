package com.jolta.myweb.noticeBoard.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jolta.myweb.noticeBoard.service.NoticeBoardService;

@Controller
public class NoticeBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeBoardController.class);
	
	@Resource(name="noticeBoardService")
	private NoticeBoardService noticeBoardService;
	
	@RequestMapping(value="/noticeBoard/PHP")
	public String noticeBoardPHP(Model model, HttpServletRequest req) {
		
		HashMap<String, String> params = new HashMap<String, String>();
		
		params.put("cbmSn", "1");
		
		try {
			
			Map<String, String> noticeInfo = noticeBoardService.selectPHPMstrInfo(params);
			List<Map<String, String>> noticeBoardList = noticeBoardService.selectNoticeBoardList(params);
			
			model.addAttribute("noticeInfo", noticeInfo);
			model.addAttribute("noticeBoardList", noticeBoardList);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "noticeBoard/board_PHP";
	}
	
	@RequestMapping(value="/noticeBoard/noticeBoardInsert")
	public String noticeBoardInsert(Model model, @RequestParam HashMap<String, String> params, HttpServletRequest req) {
		
		try {
			Map<String, String> noticeInfo = noticeBoardService.selectPHPMstrInfo(params);
			
			if("insert".equals((String)params.get("gbn"))) {
				
				Object result = noticeBoardService.noticeBoardInsert(params);
				
				System.out.println(" result : " + result);
			}
			
			model.addAttribute("noticeInfo", noticeInfo);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "/noticeBoard/noticeBoardInsert";
	}
	
	@RequestMapping(value="/noticeBoard/noticeBoardDtl")
	public String noticeBoardDtl(Model model, @RequestParam HashMap<String, String> params, HttpServletRequest req) {
		
		try {
			
			Map<String, String> noticeBoardDtl = noticeBoardService.noticeBoardDtl(params);
			
			model.addAttribute("noticeBoardDtl", noticeBoardDtl);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "/noticeBoard/noticeBoardDtl"; 
	}
	
}
