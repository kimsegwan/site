<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

<style type="text/css">
.screen_box {
	width:60%;
	margin:0 auto;
	overflow:hidden;
}

.screen {
	border:1px solid #999999;
	float:left;
	width:200px;;
	height:250px;
	margin:3px;
	border-radius:2px;
	-moz-box-shadow: 1px 3px 3px rgba(.5,.6,.8,.2);
	-webkit-box-shadow: 1px 3px 3px rgba(.5,.6,.8,.2);
	box-shadow: 1px 3px 3px rgba(.5,.6,.8,.2);
}

.screen img {
	border-bottom:1px solid #cccccc;
}

.screen:hover {
	cursor:pointer;
}

.screen_box .contents {
	font-size:12px;
	text-align:center;
}

.screen_box .contents div {
	padding-top:5px;
}

.screen_box .title {
	font-weight:bold;
}

.color_red_400 {
	color:#FF3636;
}
</style>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<div class="main_content">
	<div class="text_box">
		<p>조급해 하지마 마지막은 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;언제나 우리를 기다리고 있으니까</p><br/>
		<p style="float:right;">욕심내지마 욕심을 내면 오히려<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 마이너스가 될테니까</p>
	</div>
	<div class="road">
		<span id="runrun"></span>
	</div>
	<div class="screen_box">
		<div class="screen" onclick="javascript:screenMove('http://jolta.iptime.org:8086');">
			<div>
				<img src="/images/laravel/laravel.png" style="width:100%;height:180px;"/>
			</div>
			<div class="contents">
				<div class="title">Laravel 화면</div>
				<div>Laravel php</div>
				<div class="color_red_400">보류중..</div>
			</div>
		</div>
		
		<div class="screen" onclick="javascript:screenMove('/developmentScreen/vue/main');">
			<div>
				<img src="/images/vue/vue_node.png" style="width:100%;height:180px;"/>
			</div>
			<div class="contents">
				<div class="title">메인 화면</div>
				<div>Vue.js, Node.js</div>
				<div class="color_red_400">진행중..</div>
			</div>
		</div>
		
	</div>
</div>
<script type="text/javascript">
	
	var obj = document.querySelector('#runrun');
	var resultValue = 0.1;
	obj.style.right = '-70px';
	var time = setInterval(function() {
		
		if((Number(window.innerWidth, 0) + 30) <= Number(obj.style.right.replace('px', ''), 0)) {
			obj.style.right = '-70px';
		}
		
		if(obj.style.backgroundPosition === 'left center') {
			obj.style.backgroundPosition = 'right center';
		} else {
			obj.style.backgroundPosition = 'left center';
		}
		
		obj.style.right = (Number(obj.style.right.replace('px', ''), 0) + 10) + 'px'; 
		
	}, 500);
	
	var timeText = setInterval(function() {
		var text = document.querySelector('.text_box');
		
		if(Number(text.style.opacity) < 0) {
			resultValue = 0.1;
		}
		
		if(Number(text.style.opacity) > 0.8) {
			resultValue = -0.1;
		}
		
		text.style.opacity = Number(text.style.opacity) + Number(resultValue);
		
	}, 200);
	
	function screenMove(str) {
		//location.href=str;
		window.open(str);
	}
</script>
</html>
