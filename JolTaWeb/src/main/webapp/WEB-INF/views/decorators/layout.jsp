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
<html onclick="javascript:fn_menuClose(event);">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
		<div class="top_div">
			<div class="top_menu_box">
				<div class="top_menu" style="width:10%;"><a href="/" id="menu_top">홈</a></div>
				<%
				for(int i=0; i<menuList01.size(); i++) {
				%>
				<div class="top_menu" data-menu="main" data-menu-target="menu_<%=i%>" style="width:<%=menuList01.size() < 5 ? 20 : (100/menuList01.size())-10%>%" onclick="javascript:menuSubChange(this);">
					<a target="_top" id="menu_top"><%=menuList01.get(i).get("MENU_NM")%></a>
					<div class="top_sub_box" data-menu="menu_<%=i%>">
					<%
					for(int j=0; j<menuList02.size(); j++) {
						if(menuList01.get(i).get("MENU_SN").equals(menuList02.get(j).get("UPPER_MENU_SN"))) {
					%>
						<div class="top_sub_menu">
							<a href="<%=menuList02.get(j).get("MENU_URL")%>" <%if(menuList02.get(j).get("MENU_SN").equals("3")) {%>style="text-decoration:line-through;"<%} %>><%=menuList02.get(j).get("MENU_NM")%></a>
						</div>
					<%
						} 
					}
					%>
					</div>
				</div>
				<%} %>
			</div>
		</div>
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

function menuSubChange(obj) {
	
	var target = obj.getAttribute("data-menu-target");
	var btn = document.querySelectorAll(".top_menu");
	var arrObj = document.querySelectorAll(".top_sub_box");
	
	for(var i=0; i<btn.length; i++) {
		btn[i].style.backgroundColor = "";
		if(btn[i].getAttribute("data-menu-target") === target) {
			btn[i].style.backgroundColor = "#ededed";
		}
	}
	
	for(var i=0; i<arrObj.length; i++) {
		arrObj[i].style.display = "none";
		if(arrObj[i].getAttribute("data-menu") === target) {
			arrObj[i].style.display = "block";
		}
	}
}

function fn_menuClose(evnt) {
	console.log(evnt.target.id);
	if(evnt.target.id === "menu_top") {
		return false;
	}
	
	var btn = document.querySelectorAll(".top_menu");
	var arrObj = document.querySelectorAll(".top_sub_box");
	
	for(var i=0; i<btn.length; i++) {
		btn[i].style.backgroundColor = "";
	}
	
	for(var i=0; i<arrObj.length; i++) {
		arrObj[i].style.display = "none";
	}
}
</script>
</body>
</html>