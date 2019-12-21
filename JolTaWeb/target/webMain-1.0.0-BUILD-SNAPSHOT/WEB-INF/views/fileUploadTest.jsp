<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

var fileList = new Array();

document.addEventListener("DOMContentLoaded", function(){
	var fileTxBox = document.getElementById("fileTxBox");
	fileTxBox.innerHTML = "<div id='noneTx' style='width:100%; text-align:center; margin-top:65px; font-size:14px; color:#888888; letter-spacing:1px;'>파일을 넣어주시오~!!</div>";	
	var cancel = false;
	var fileList = new Array();
//	var fileUploadTest = function() {
	var elts = document.getElementsByClassName("fileDropTarget");
	var tx = document.getElementById("progress");
	
	/*for(var i = 0; i < elts.length; i++) {
		var target = elts[i];
		//var url = target.getAttribute("data-uploadto");
		var url = "/fileupload";
		if(!url) continue;
		createFileUploadDropTarget(target, url);
	}
	
	function createFileUploadDropTarget(target, url) {
		var uploading = false;
		console.log(target, url);
		
		target.ondragenter = function(e) {
			console.log("드래그 진입");
			if(uploading) return;
			var types = e.dataTransfer.types;
			
			if(types && 
				((types.contains && types.contains("Files")) || 
				(types.indexOf && types.indexOf("Files") != -1))) {
				target.classList.add("wantdrop");
				return false;
				
			}
		};
		target.ondragover = function(e) {if(!uploading) return false;};
		target.ondragleave = function(e) {
			if(!uploading) target.classList.remove("wantdrop");
		};
		target.onchange = function(e) {
			
			if(uploading) return false;
			
			fileList[fileList.length] = e.target.files[0]; 
			
			return false;
			//var files = e.target.files;
			//var files = document.getElementsByClassName("fileDropTarget");
			
			if(files && files.length) {
				
				uploading = true;
				var message = "파일을 업로드 하는 중:<ul>";
				for(var i = 0; i < files.length; i++)
					message += "<li>" + files[i].name + "</li>";
				message += "</ul>";
				
				target.innerHTML = message;
				target.classList.remove("wantdrop");
				target.classList.add("uploading");
				
				var xhr = new XMLHttpRequest();
				xhr.open("POST", url);
				var body = new FormData();
				
				for(var i = 0; i < files.length; i++) body.append(i, files[i]);
				xhr.upload.onprogress = function(e) {
					if(e.lengthComputable) {
						tx.innerHTML = message + Math.round(e.loaded/e.total*100) + "% 완료";
					}
				};
				return false;
				xhr.send(body);
				
				return false;
			}
			target.classList.remove("wantdrop");
		};
		target.ondrop = function(e) {
			
			if(uploading) return false;
			
			fileList[fileList.length] = e.dataTransfer.files[0];
			return false;
			if(files && files.length) {
				
				uploading = true;
				var message = "파일을 업로드 하는 중:<ul>";
				for(var i = 0; i < files.length; i++)
					message += "<li>" + files[i].name + "</li>";
				message += "</ul>";
				
				target.innerHTML = message;
				target.classList.remove("wantdrop");
				target.classList.add("uploading");
				
				var xhr = new XMLHttpRequest();
				xhr.open("POST", url);
				var body = new FormData();
				for(var i = 0; i < files.length; i++) body.append(i, files[i]);
				
				xhr.upload.onprogress = function(e) {
					if(e.lengthComputable) {
						tx.innerHTML = message + Math.round(e.loaded/e.total*100) + "% 완료";
						if(cancel) {
							request.abort();
						}
					}
				};
				xhr.upload.onload = function(e) {
					uploading = false;
					target.classList.remove("uploading");
					target.innerHTML = "업로드할 파일을 드롭하십시오";
				};
				return false;
				xhr.send(body);
				
				return false;
			}
			target.classList.remove("wantdrop");
		}
	}*/
//	};


	var file = document.getElementById("file");
	var fileTxBox = document.getElementById("fileTxBox");
	var filePctList = new Array();
	var success = 0;
	
	file.onchange = function(e) {
		fileList[fileList.length] = e.target.files[0];
		
		if(fileList.length == 1) {
			var obj = document.getElementById("noneTx");
			fileTxBox.removeChild(obj);
			fileTxBox.appendChild(fn_transTx(e.target.files[0], fileList.length));
		} else {
			fileTxBox.appendChild(fn_transTx(e.target.files[0], fileList.length));
		}
		filePctList[fileList.length - 1] = fileTxBox.childNodes[fileList.length - 1];
	};
	
	var uploading = false;
	fileTxBox.ondragenter = function(e) {
		
		if(uploading) return;
		var types = e.dataTransfer.types;
		
		if(types && 
			((types.contains && types.contains("Files")) || 
			(types.indexOf && types.indexOf("Files") != -1))) {
			fileTxBox.classList.add("wantdrop");
			return false;
			
		}
	};
	fileTxBox.ondragover = function(e) {if(!uploading) return false;};
	fileTxBox.ondragleave = function(e) {
		if(!uploading) fileTxBox.classList.remove("wantdrop");
	};
	fileTxBox.ondrop = function(e) {
		fileList[fileList.length] = e.dataTransfer.files[0];

		if(fileList.length == 1) {
			var obj = document.getElementById("noneTx");
			fileTxBox.removeChild(obj);
			fileTxBox.appendChild(fn_transTx(e.dataTransfer.files[0], fileList.length));
		} else {
			fileTxBox.appendChild(fn_transTx(e.dataTransfer.files[0], fileList.length));
		}
		
		filePctList[fileList.length - 1] = fileTxBox.childNodes[fileList.length - 1];
		
		return false;
	};
	
	function fn_transTx(obj, idx) {
		var div = document.createElement('div');
		var span = document.createElement('span');
		var span1 = document.createElement('span');
		
		div.style.width = "98%";
		div.style.margin = "5px 0 0 5px";
		div.style.fontSize = "14px";
		div.style.border = "1px solid #eeeeee";
		span1.style.float = "right";
		
		span.appendChild(document.createTextNode(obj.name));
		div.appendChild(span);
		div.appendChild(span1);
		return div;
	}
	
	var fileUpload = document.getElementById('fileUpload');
	fileUpload.onclick = function(e) {
		
		var body;
		var xhr;
		
		for(var i = 0; i < fileList.length; i++) {
			//var filePct = document.getElementById("filePct" + i);
			
			console.log(fileTxBox.innerHTML);
			
			body = new FormData();
			
			body.append(i, fileList[i]);
			
			xhr = fn_xhr(xhr, i);
			xhr.open("POST", '/fileupload');
			
			xhr.send(body);
		}
	}
	
	
	function fn_xhr(obj, idx) {
		
		var successAt = true;
		obj = new XMLHttpRequest();
		
		obj.upload.onprogress = function(e){
			
			var pct = Math.round(e.loaded/e.total*100);
			filePctList[idx].childNodes[1].innerHTML = pct + " %";
			filePctList[idx].style.background = "linear-gradient(to left, #fff " + (100 - pct) + "%, #BCE55C " + pct + "%)";
			
			if(pct == 100 && successAt) {
				success++;
				successAt = false;
			}
			
  			if(filePctList.length == success) {
  				document.getElementById("wait_tx").style.display = "block";
  			}
		};
		
		obj.onreadystatechange = function() {
			
			if(obj.readyState === 4 && obj.status === 200) {
				var type = obj.getResponseHeader("Content-Type");
				
				if(type.match(/^text/) && success == filePctList.length) location.href="/page1"; 
			}
		};
		
		return obj;
	}
	
	
});

/*whenReady(function() {
	var elts = document.getElementByClassName("fileDropTarget");
	for(var i = 0; i < elts.length; i++) {
		var target = elts[i];
		var url = target.getAttribute("data-uploadto");
		if(!url) continue;
	}
	
	function createFileUploadDropTarget(target, url) {
		var uploading = false;
		console.log(target, url);
		target.ondragenter = function(e) {
			console.log("드래그 진입");
			if(uploading) return;
			var types = e.dataTransfer.types;
			if(types && 
				((types.contains && types.contains("Files")) || 
				(type.indexOf && types.indexOf("Files") != -1))) {
				
				target.classList.add("wantdrop");
				return false;
				
			}
		};
		target.ondragover = function(e) {if(!uploading) return false;};
		target.ondragleave = function(e) {
			if(!uploading) target.classList.remove("wantdrop");
		};
		target.ondrop = function(e) {
			if(uploading) return false;
			var files = e.dataTransfer.files;
			if(files && files.length) {
				uploading = true;
				var message = "파일을 업로드 하는 중:<ul>";
				for(var i = 0; i < files.length; i++)
					message += "<li>" + files[i].name + "</li>";
				message += "</ul>";
				
				target.innerHTML = message;
				target.classList.remove("wantdrop");
				target.classList.add("uploading");
				
				var xhr = new XMLHttpRequest();
				xhr.open("POST", url);
				var body = new FormData();
				for(var i = 0; i < files.length; i++) body.append(i, files[i]);
				xhr.upload.onprogress = function(e) {
					if(e.lengthComputable) {
						target.innerHTML = message + Math.round(e.loaded/e.total*100) + "% 완료";
					}
				};
				xhr.send(body);
				
				return false;
			}
			target.classList.remove("wantdrop");
		}
	}
});
*/

function fn_inputAccessFe() {
	var file = document.getElementById("file");
	var fileTxBox = document.getElementById("fileTxBox");
	
	file.click();
	
}

</script>
<title>Insert title here</title>
</head>
<body style="position:relative;">
<input type="file" id="file" style="display:none;"/>

<div style="width:600px; margin:100px auto;">
	<div style="width:600px; height:40px;">
		<span style="float:right; margin-top:5px;">
			<input type="image" value="파일넣기" src="/images/searchF_btn.png" style="width:60px; height:30px;" onclick="fn_inputAccessFe();"/>
		</span>
	</div>
	<div id="fileTxBox" style="width:600px; height:150px; border:2px solid #bbbbbb; border-radius:4px;"></div>
	<input type="button" id="fileUpload" value="파일 전송" onclick="fn_test();" style="width:600px; margin:10px 0 0 2px; background:#38ADC1; font-size:20px; font-weight:bold; color:white; height:50px;"/>
</div>
<div class="opacity_t" id="wait_tx" style="display:none; position:absolute; top:0; left:0; width:100%; height:100%; background-color:#999999;">
	<div style="padding:5px; width:200px; height:30px; margin:100px auto; font-size:25px; font-weight:bold; color:black; background-color:white; border-radius:5px;">기다려주세요.......</div>
</div>


<div>
	<a href="/downloadFile?STORED_FILE_NAME=money.zip&ORIGINAL_FILE_NAME=money.zip">돈1</a>&nbsp;&nbsp;/&nbsp;
	<a href="/downloadFile?STORED_FILE_NAME=money.z01&ORIGINAL_FILE_NAME=money.z01">돈2</a>&nbsp;&nbsp;/&nbsp;
	<a href="/downloadFile?STORED_FILE_NAME=money.z02&ORIGINAL_FILE_NAME=money.z02">돈3</a>
</div>
<br/>
<br/>
<br/>
<br/>
<div>
	<a href="/downloadFile?STORED_FILE_NAME=bug.zip&ORIGINAL_FILE_NAME=bug.zip">기생충1</a>&nbsp;&nbsp;/&nbsp;
	<a href="/downloadFile?STORED_FILE_NAME=bug.z01&ORIGINAL_FILE_NAME=bug.z01">기생충2</a>&nbsp;&nbsp;/&nbsp;
	<a href="/downloadFile?STORED_FILE_NAME=bug.z02&ORIGINAL_FILE_NAME=bug.z02">기생충3</a>
</div>
<br/>
<br/>
<br/>
<br/>

</body>
</html>