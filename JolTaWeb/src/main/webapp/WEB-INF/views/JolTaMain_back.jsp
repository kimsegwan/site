<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<style type="text/css">

.artBox{
	border:1px solid black;
	height:300px;
	margin-top:50px;
	padding:10px;
}

</style>
<script type="text/javascript">

function fn_fileUpload() {
	
	var file = document.getElementById("uploadFile");
	var form = document.getElementById("actionForm");
	var frontDiv = document.getElementById("frontDiv");
	
	if(file.value == "") {
		alert("파일을 올리시오~!@");
		return;
	}
	
	frontDiv.style.display = "block";
	
	form.submit();
	
}

function fn_fileSel() {
	
	var file = document.getElementById("uploadFile");
	file.click();
}

function get(url, callback) {
	var request = new XMLHttpRequest();
	request.open("GET", url, false);
	request.onreadystatechange = function() {
		if(request.readyState === 4 && request.status === 200) {
			var type = request.getResponseHeader("Content-Type");
			
			if(type.indexOf("xml") != -1 && request.responseXML)
				callback(request.responseXML);
			else if(type === "application/json")
				callback(JSON.parse(request.responseText));
			else
				callback(request.responseText);
		}
	};
	
	request.send(null);
	
	var tx = request.getResponseHeader("Content-Type");
	alert(tx);
	
}

function getAlert(tx) {
	alert(tx);
}


function encodeFormData(data) {
	if(!data) return "";
	var pairs = [];
	for(var name in data) {
		if(!data.hasOwnProperty(name)) continue;
		if(typeof data[name] === "function") continue;
		var value = data[name].toString();
		name = encodeURIComponent(name.replace(" ","+"));
		value = encodeURIComponent(value.replace(" " + "+"));
		pairs.push(name + "=" + value);
	}
	
	return pairs.join('&');
}

function getData(url, data, callback) {
	var request = new XMLHttpRequest();
	request.open("GET", url + "?" + encodeFormData(data));
	request.onreadystatechange = function() {
		if(request.readyState === 4 && callback) callback(request);
	};
	request.send(null);
}

function fn_test() {
	var form = document.getElementById('form1');
	
	//getData('/page1', form, getAlert);
	postJSON('/page1', form, getAlert);
}

function postJSON(url, data, callback) {
	var request = new XMLHttpRequest();
	request.open("POST", url);
	request.onreadystatechange = function() {
		if(request.readyState === 4 && callback) callback;
	};
	request.setRequestHeader("Content-Type", "application/json");
	request.send(JSON.stringify(data));
}

/*whenReady(function() {
	alert("open");
	var elts = document.getElementByTagName("input");
	for(var i = 0; i < elts.length; i++) {
		var input = elts[i];
		if(input.type !== "file") continue;
		var url = input.getAttribute("data-uploadto");
		if(!url) continue;
		
		input.addEventListener("change", function() {
			var file = this.files[0];
			if(!file) return;
			var xhr = new XMLHttpRequest();
			xhr.open("POST", url);
			xhr.send(file);
		}, false);
	}
});*/

function postFormData(url, data, callback) {
	if(typeof FormData === "undefined")
		throw new Error("FormData is not implemented");
	
	var request = new XMLHttpRequest();
	request.open("POST", url);
	request.onreadystatechange = function() {
		if(request.readyState === 4 && callback)
			callback(request);
	};
	var formdata = new FormData();
	for(var name in data) {
		if(!data.hasOwnProperty(name)) continue;
		var value = data[name];
		if(typeof value === "function") continue;
		formdata.append(name, value);
	}
	request.send(formdata);
}

</script>
	<title>Home</title>
</head>
<body id="bodyId">
<div id="frontDiv" style="display:none; width:100%; position:absolute; height:100%; background:gray; top:0; left:0; opacity:0.8;">
	<div style="width:490px; height:100px; font-size:35px; margin:0 auto; margin-top:280px; color:white;">입에 발가락 넣고 기다리자....</div>
</div>
<div class="artBox">
	자~! 이제 파일선택을 누르고 해당 파일을 선택합니다.<br/><br/>
	그리고 파일등록을 하믄 된다!!<br/><br/>
	파일은 하나씩만 보낼수 있지... 여러개는 귀찮아서..<br/><br/>
	파일전송을 누르면 아마도 브라우저 하단에 얼마나 진행이 됫는지 나올꺼야<br/><br/>
	안나오믄 위에 탭에서 빙글빙글 돌고 있으면 기다리믄 되는거여~!<br/><br/>
</div>

<form id="actionForm" action="/fileupload" method="post" enctype="multipart/form-data" style="margin-top:20px;">
	<input type="file" name="uploadfile" id="uploadFile" style="border:1px solid black; width:500px;"/>
	<input type="button" value="이걸눌러서 파일을 보내~!" onclick="fn_fileUpload();" style="border-radius:5px; background:#ffa7a7; height:50px; font-weight:bold; color:brown;"/>
</form>
<input type="button" value="테스트버튼" onclick="fn_test();"/>
<form method="POST" id="form1" name="form1">
	<input type="text" id="tx1" name="tx1" value="text01"/>
	<input type="text" id="tx2" name="tx2" value="text02"/>
	<input type="text" id="tx3" name="tx3" value="text03"/>
</form>

<div style="margin-top:30px;">
	<input type="button" value="파일업로드 테스트화면 이동" onclick="javascript:location.href='/fileUploadTest'"/>
</div>
</body>
</html>
