<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	@SuppressWarnings("unchecked")
	Map<String, String> noticeInfo = (Map<String, String>)request.getAttribute("noticeInfo");
	@SuppressWarnings("unchecked")
	List<Map<String, String>> noticeBoardList = (List<Map<String, String>>)request.getAttribute("noticeBoardList");
%>
<html>
<link rel="stylesheet" href="/css/noticeBoard.css">
<script type="text/javascript">

function fn_noticeBoardS() {	
	location.href="/noticeBoard/noticeBoardInsert?cbmSn=1";
}

function fn_boardDtl(sn) {
	
	var form = document.querySelector("#sel_form");
	var input = document.querySelector("#cbmDtlSn");
	
	input.value = sn;
	
	form.submit();
	
}

</script>
<body>
	<form action="/noticeBoard/noticeBoardDtl" method="post" name="sel_form" id="sel_form">
		<input hidden="hidden" name="cbmSn" id="cbmSn" value="<%=noticeInfo.get("CBM_SN")%>" />
		<input hidden="hidden" name="cbmDtlSn" id="cbmDtlSn" value="" />
		<div class="notice_frame">
			<div class="notice_header">
				<h1><%=noticeInfo.get("CBM_SUBJECT")%></h1>
			</div>
			<div class="notice_body">
				<div>
					<%for(int i=0; i<noticeBoardList.size(); i++) {%>
					<div class="notice_box" onclick="javascript:fn_boardDtl('<%=noticeBoardList.get(i).get("CBM_DTL_SN")%>');">
						<div class="subject"><%=noticeBoardList.get(i).get("CBM_DTL_SUBJECT")%></div>
						<div class="other">등록자 : <%=noticeBoardList.get(i).get("REGR_ID")%> | 등록일 : <%=noticeBoardList.get(i).get("REGR_DT")%></div>
						<div class="content"><%=noticeBoardList.get(i).get("CBM_DTL_CONTENT").replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "")%></div>
					</div>
					<%}%>
				</div>
			</div>
			<div class="notice_bottom">
			<%if("admin".equals(request.getAttribute("admin"))) { %>
				<input type="button" name="move" value="글등록" onclick="javascript:fn_noticeBoardS();"/>
			<%} %>
			</div>
		</div>
	</form>
</body>
</html>