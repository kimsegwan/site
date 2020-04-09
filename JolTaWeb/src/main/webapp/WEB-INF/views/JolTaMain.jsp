<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<div class="main_content">
	<div><span class="sub_name">내가 사는 세상</span></div>
	<div class="road">
		<span id="runrun"></span>
	</div>
</div>
<script type="text/javascript">
	var obj = document.querySelector('#runrun');
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
</script>
</html>
