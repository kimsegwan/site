<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<div class="main_content">
	<div class="text_box">
		<p>조급해 하지마 마지막은 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;언제나 우리를 기다리고 있으니까</p><br/>
		<p style="float:right;">욕심내지마 욕심을 내면 오히려<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 마이너스가 될테니까</p>
	</div>
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
