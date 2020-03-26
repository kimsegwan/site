<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<div class="main_content">
	<div>
		<span id="runrun"></span>
	</div>
</div>
<script type="text/javascript">
	var obj = document.querySelector('#runrun');
	
	var time = setInterval(function() {
		console.log(obj.style.backgroundPosition);
		if(obj.style.backgroundPosition === 'left center') {
			obj.style.backgroundPosition = 'right center';
		} else {
			obj.style.backgroundPosition = 'left center';
		}
	}, 500);
</script>
</html>
