<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	@SuppressWarnings("unchecked")
	List<Map<String, String>> noticeInfoList = (List<Map<String, String>>)request.getAttribute("noticeInfoList");

%>

<html>
<link rel="stylesheet" href="/css/noticeBoard.css">

<body>
	<form action="/noticeBoard/noticeBoardInsert" method="post" >
		<input type="hidden" name="gbn" id="gbn" value="insert"/>
		<div class="notice_frame">
			<div class="notice_header">
				<h1>게시판 등록</h1>
			</div>
			<div class="notice_body">
				<div style="float:left; width:100%; margin-top:15px;">
					<span style="display:block; overflow:hidden; float:left;">종류</span>
					<span style="display:block; overflow:hidden; float:left; width:80%;">
						<select name="cbmSn" id="cbmSn">
							<%for(int i=0; i<noticeInfoList.size(); i++) {%>
								<option value="<%=noticeInfoList.get(i).get("CBM_SN")%>"><%=noticeInfoList.get(i).get("CBM_SUBJECT")%></option>
							<%}%>
						</select>
					</span>
				</div>
				<div style="float:left; width:100%; margin-top:25px;">
					<span style="display:block; overflow:hidden; float:left;">제목</span>
					<span style="display:block; overflow:hidden; float:left; width:90%;">
						<input type="text" name="cbmDtlSubject" id="cbmDtlSubject" style="width:95%;"/>
					</span>
				</div>
				<div style="overflow:hidden; float:left; clear:left; width:100%; margin-top:25px;">
					<span style="display:block; overflow:hidden; float:left;">내용</span>
					<span style="display:block; overflow:hidden; float:left; width:90%;">
						<textarea name="cbmDtlContent" id="cbmDtlContent" style="width:95%; height:200px; margin-bottom:25px;"></textarea>
					</span>
				</div>
			</div>
			<div class="notice_bottom">
				<input type="submit" name="insert" id="insert" value="글등록"/>
			</div>
		</div>
	</form>
</body>
</html>