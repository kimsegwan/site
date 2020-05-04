<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<style type="text/css">
.main_container {
	
}

.contents_container {

}

.header_container {
	
	
}

.top_ {
	text-align:center;
	font-size:50px;
	font-weight:bold;
	/* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#f0f9ff+0,f0f9ff+17,cbebff+55,a1dbff+100 */
	background: rgb(240,249,255); /* Old browsers */
	background: -moz-linear-gradient(top,  rgb(240,249,255) 0%, rgb(240,249,255) 17%, rgb(203,235,255) 55%, rgb(161,219,255) 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top,  rgb(240,249,255) 0%,rgb(240,249,255) 17%,rgb(203,235,255) 55%,rgb(161,219,255) 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom,  rgb(240,249,255) 0%,rgb(240,249,255) 17%,rgb(203,235,255) 55%,rgb(161,219,255) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f0f9ff', endColorstr='#a1dbff',GradientType=0 ); /* IE6-9 */
}

.header {
	width:920px;
	overflow:hidden;
	margin:20px auto;
	padding:10px;
}

.header_left {
	width:70%;
	height:220px;
	overflow:hidden;
	float:left;
	background-image:url('/images/vue/vue_main.png');
	background-size:100% 250px;
	background-repeat:no-repeat;
	opacity:0.7;
	border-radius:5px;
}

.header_center {
	float:left;
}

.search_bar {
	border:4px solid #513243;
	width:170px;
}

.header_right span {
	font-size:18px;
	font-weight:bold;
	color:#ab998a;
}

.search_bar input {
	width:82%;
	height:91%;
	border:none;
	font-weight:bold;
	font-size:16px;
	padding:3px 0 2px 5px;
	color:#888888;
}

.search_bar img {
	float:right;
	width:10%;
	padding:4px;
}

.header_right {
	float:right;
	overflow:hidden;
}

.header_right .login {
	width:100%;
}

.header_right .login button {
	width:100%;
	font-size:15px;
	font-weight:bold;
}

.login_container {
	margin-top:30px;
}

.login_container table {
	width:100%;
	border-collapse: collapse;
}

.login_container table tr {
	border:1px inset #999999;
}

.login_container table tr:last-child {
	border-bottom:none;
}

.login_container table input {
	border:none;
	padding:3px;
}

.body {
	border:1px solid black;
	width:920px;
	margin:0 auto;
	overflow:hidden;
	
}
</style>

<body>
	<div class="main_container">
		<div class="contents_container">
			<div class="header_container" id="app">
				<div class="top_">{{ header_text }}</div>
				<div class="header">
					<div class="header_left">
						
					</div>
					<div class="header_center">
						
					</div>
					<div class="header_right">
						<div class="search_bar">
							<input type="text" placeholder="검색어"/>
							<a href="javascript:">
								<img src="/images/magnifyingGlass.png"/>
							</a>
						</div>
						<br/>
						
						<div class="login_container">
							<span>로그인</span>
							<table>
								<tr>
									<td>
										<input type="text" placeholder="아이디"/>
									</td>
								<tr/>
								<tr>
									<td>
										<input type="text" placeholder="비밀번호"/>
									</td>
								<tr/>
							</table>
							<div class="login">
								<button>로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="body">
				<div class="">
					
				</div>
			</div>
			
			<div class="footer">
				footer
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

function Point(){
	
	return 'function';
};

Point.prototype.r = function() {
	
	return 'aa';
}

var abs = new Point();

var top = new Vue({
	el : '#app',
	data : {
		header_text : 'Vue와 node를 이용한 개발 중....',
		empty_text : '' 
	}
	
});

</script>
</html>