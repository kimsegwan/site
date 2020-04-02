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
						<div class="content"><%=noticeBoardList.get(i).get("CBM_DTL_CONTENT")%></div>
					</div>
					<%}%>
				</div>
				<div class="table_box">
					<table>
						<thead>
							<colgroup>
								<col width="10%">
								<col width="70%">
								<col width="20%">
							</colgroup>
							<tr>
								<th>순번</th>
								<th>글제목</th>
								<th>작성자</th>
							</tr>
						</thead>
					<%for(int i=0; i<noticeBoardList.size(); i++) {%>
						<tr>
							<td><%=noticeBoardList.size() - i%></td>
							<td><%=noticeBoardList.get(i).get("CBM_DTL_SUBJECT")%></td>
							<td><%=noticeBoardList.get(i).get("REGR_ID")%></td>
						</tr>
					<%}%>
					</table>
				</div>
			</div>
			<div class="notice_bottom">
				<input type="button" name="move" value="글등록" onclick="javascript:fn_noticeBoardS();"/>
			</div>
		</div>
	</form>
</body>
</html>