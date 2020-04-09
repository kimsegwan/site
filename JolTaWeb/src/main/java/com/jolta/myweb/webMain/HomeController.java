package com.jolta.myweb.webMain;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private static final String UPLOAD_PATH = "C:\\jolTaWeb\\fileUpload";
	private static final String DOWNLOAD_PATH = "C:\\jolTaWeb\\fileUpload";
	private static final String DOWNLOAD_PATH_BOARD = "C:\\jolTaWeb\\boardFile";
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "JolTaMain";
	}
	
	@RequestMapping(value="/page1")
	public String page1(Model moel) {
		
		return "page1";
	}
	
	@RequestMapping(value="/fileupload", method = RequestMethod.POST)
	public String fileUpload(HttpServletRequest request, Model model) {
	
		MultipartRequest multi = (MultipartRequest) request;
		Iterator<String> iterator = multi.getFileNames();
		MultipartFile multiFile = null;
		
		while(iterator.hasNext()) {
			
			multiFile = multi.getFile(iterator.next());
			
			if(multiFile.isEmpty() == false){
				System.out.println("name : "+multiFile.getName());
				System.out.println("filename : "+multiFile.getOriginalFilename());
				System.out.println("size : "+multiFile.getSize());
				logger.debug("------------- file start -------------");
				logger.debug("name : "+multiFile.getName());
				logger.debug("filename : "+multiFile.getOriginalFilename());
				logger.debug("size : "+multiFile.getSize());
				logger.debug("-------------- file end --------------\n");
				
				String result = saveFile(multiFile);
				
				if(result != null) {
					model.addAttribute("result", result);
				} else {
					model.addAttribute("result", "fail");
				}
			}
			
		}
		
		return "fileUploadComplete";
		
	}
	
	public String saveFile(MultipartFile file) {
		
		UUID uuid = UUID.randomUUID();
		String saveName = uuid + "_" + file.getOriginalFilename();
		
		logger.info("saveName: {}", saveName);
		
		File saveFile = new File(UPLOAD_PATH, saveName);
		
		try {
			file.transferTo(saveFile);
		} catch(IOException e) {
			e.printStackTrace();
			return null;
		}
		
		return saveName;
		
	}
	
	@RequestMapping(value="/fileUploadTest")
	public String fileUploadTest(Model model) {
		
		model.addAttribute("data-uploadto", UPLOAD_PATH);
		return "testCoding/fileUploadTest";
	}
	
	@RequestMapping(value="/fileUploadComplete")
	public String fileUploadComplete(Model model) {
		
		model.addAttribute("data-uploadto", UPLOAD_PATH);
		model.addAttribute("msg", "업로드가 완료되었습니다.");
		return "testCoding/fileUploadTest";
	}
	
	@RequestMapping(value="/downloadFile") 
	public void downloadFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 System.out.println("============================");
		String storedFileName = (String)request.getParameter("STORED_FILE_NAME"); 
		String originalFileName = (String)request.getParameter("ORIGINAL_FILE_NAME"); 
		byte fileByte[] = FileUtils.readFileToByteArray(new File(DOWNLOAD_PATH + "\\" + storedFileName));
		
		
		
		response.setContentType("application/octet-stream"); 
		response.setContentLength(fileByte.length); 
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";"); 
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		response.getOutputStream().write(fileByte); 
		response.getOutputStream().flush(); 
		response.getOutputStream().close();
		
	}
	
	@RequestMapping(value="/downloadFileNotice") 
	public void downloadFileBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 System.out.println("============================");
		String storedFileName = (String)request.getParameter("STORED_FILE_NAME");
		String originalFileName = "";
		byte fileByte[] = FileUtils.readFileToByteArray(new File(DOWNLOAD_PATH_BOARD + "\\" + storedFileName));
		
		originalFileName = "imageFile";
		
		response.setContentType("application/octet-stream"); 
		response.setContentLength(fileByte.length); 
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";"); 
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		response.getOutputStream().write(fileByte); 
		response.getOutputStream().flush(); 
		response.getOutputStream().close();
		
	}
	
}
