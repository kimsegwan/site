<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.div1 {
	width:100%;
}

.div2 {
	width:400px;
	height:400px;
	margin:0 auto;
	margin-top:200px;
}

.span1 {
	width:400px;
	height:200px;
	font-size:25px;
	line-height:200px;
	margin-top:90px;
	border:2px solid green;
	border-radius:10px;
	background-color:green;
	color:white;
	padding:0 15px;
	font-weight:bold;
}

.rebutton {
	width:100%;
	margin: auto;
	margin-top:20px;
	border-radius:10px;
	background-color:gray;
	height:50px;
	font-size:20px;
	font-weight:bold;
	color:white;
	margin-left:15px;
}

</style>
<script type="text/javascript">

function fn_rePage(){
	
	location.href="/"
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="div1">
		<div class="div2">
			<div class="span1">완료!! 파일 자~알 받았다!! 꺼억~!</div>
			<input type="button" class="rebutton" id="reBtn" value="하나 더?" onclick="fn_rePage();">
		</div>
	</div>
</body>
</html>