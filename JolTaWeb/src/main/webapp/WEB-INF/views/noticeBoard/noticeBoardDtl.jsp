<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	@SuppressWarnings("unchecked")
	Map<String, String> noticeBoardDtl = (Map<String, String>)request.getAttribute("noticeBoardDtl");
%>
<html>
<link rel="stylesheet" href="/css/noticeBoard.css">
<body>
	<div class="notice_frame">
		<div class="notice_header">
			<h1><%=noticeBoardDtl.get("CBM_SUBJECT")%></h1>
		</div>
		<div class="notice_body">
			<div class="detail">
				<div class="detail_subject">
					<%=noticeBoardDtl.get("CBM_DTL_SUBJECT")%>
					<!-- PHP를 시작하다. -->
				</div>
				<div class="detail_content">
					<!-- <p>
						PHP는 Personal Home Page에서 단어의 첫머리를 딴 약자에서 유래되었습니다.
						정식 명칭은 [PHP: Hypertext Preprocessor]이며 사용자의 요청에 따라 웹에서 이용하는 HTML 등의
						하이퍼텍스트(Hypertext) 문서를 동적으로 생성하여 화면을 빠르게 만들 수 있는 것이 장점입니다.
						또한, 빠른 실행 속도와 쉽게 구현할 수 있어 회원제 시스템이나 쇼핑몰 시스템과 같은 웹 애플리케이션을
						개발할 때 자주 사용하는 언어 중 하나입니다.
					</p>
					<br/>
					<p class="title">기술적인 특징</p>
					<p>
						&nbsp;1. 서버 사이드 스크립트 언어<br/>
						&nbsp;2. 문자 코드 자동 변환<br/>
						&nbsp;3. 세션 관리의 편리성<br/>
						&nbsp;4. 각종 데이터베이스 지원<br/>
						&nbsp;5. PDF, Ming, XML, JSON 등의 지원<br/>
						&nbsp;6. 객체지향의 강화<br/>
					</p>
					<br/>
					<p class="title">테스트를 위한 환경</p>
					<p>
						&nbsp;1. XAMPP<br/>
							&nbsp;&nbsp;&nbsp;- 설치 시 초기 설정 port가 443으로 되어 있어 해당 port를 사용하는 서비스가 있는지 확인<br/>
						&nbsp;2. NetBeans<br/>
							&nbsp;&nbsp;&nbsp;- 개발도구 IDE<br/>
							&nbsp;&nbsp;&nbsp;- 설치 파일을 받아야 함.
					</p> -->
					<%=noticeBoardDtl.get("CBM_DTL_CONTENT")%>
				</div>
			</div>
		</div>
		<div class="notice_bottom">
			
		</div>
	</div>
</body>
</html>