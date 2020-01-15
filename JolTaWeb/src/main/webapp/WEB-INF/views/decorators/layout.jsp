<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html>
<!-- <html  onmousemove="fn_mouseMove(event);"> -->
<%
List<Map<String, Object>> menuList01 = (List<Map<String, Object>>)request.getAttribute("menuList01");
List<Map<String, Object>> menuList02 = (List<Map<String, Object>>)request.getAttribute("menuList02");
List<Map<String, Object>> menuList03 = (List<Map<String, Object>>)request.getAttribute("menuList03");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/images/favicon.ico" rel="icon" type="image/x-icon" />
<link rel="stylesheet" href="./css/JolTaStyle.css">
	<!-- header -->
	<decorator:head></decorator:head>
</head>
<body>
	<!-- <div id="leftLayout" onmousedown="fn_tagMove(this, event);" onmouseup="fn_tagMoveNone(this, event);">
		<div>
			<ul>
				<li></li>
				<li>메뉴1</li>
				<li>메뉴2</li>
				<li>메뉴3</li>
				<li>메뉴4</li>
				<li>메뉴5</li>
			</ul>
		</div>
	</div> -->
	<!-- UI Object -->
	<div id="header">
		<div class="top_div" style="background-color:#77E56F;">
			<div class="top_menu_box">
				<%
				for(int i=0; i<menuList01.size(); i++) {
				%>
				<div class="top_menu" style="width:<%=100/menuList01.size()%>%"><%=menuList01.get(i).get("MENU_NM")%></div>
				<%} %>
			</div>
		</div>
		<div style="border:1px solid black; width:70%; margin:0 auto; height:250px;"></div>
	</div>
		
	<!-- container -->
	<div id="container">
		<decorator:body></decorator:body>
		<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	<div id="footer">
		<div class="footer_info_box">
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- //footer -->
	
	<!-- //UI Object -->
<script type="text/javascript">
var moveAt = 'N';
var pointX = 0;
var pointY = 0;
var tagPointX = 0;
var tagPointY = 0;
function fn_tagMove(obj, event) {
	moveAt = 'Y';
	pointX = event.pageX;
	pointY = event.pageY;
	tagPointX = obj.offsetLeft;
	tagPointY = obj.offsetTop;
}

function fn_tagMoveNone(obj, event) {
	moveAt = 'N';
}

function fn_mouseMove(event) {
	var obj = document.getElementById('leftLayout');
	//obj.offsetLeft
	if(moveAt == 'Y') {
		obj.style.left = (tagPointX + (event.pageX - pointX)) + 'px';
		obj.style.top = (tagPointY + (event.pageY - pointY)) + 'px';
		//console.log(pointY + '          ' + event.pageY + '    ' + pointX + '            ' + event.pageX);
	}
}

function changeId() {	
	var tag = document.getElementById("leftLayout");
	if(tag.hasChildNodes()) {
		var children = tag.childNodes;
		for(var i=0; i<children.length; i++) {
			if(children[i].nodeName != '#text') {
				//children[i].id = "asdfsadaaf";
				children[i].setAttribute('id','asdfsdf');
			}
		}
	}
}
</script>
</body>
</html>