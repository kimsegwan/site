<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>
<script type="text/javascript" src="/js/JolTaScript.js"></script>
<link rel="stylesheet" href="./css/introduce.css">
<style type="text/css">
@font-face {
	font-family: 'Yeon_Sung';
	font-style: normal;
	src: url('./css/font/Yeon_Sung/YeonSung-Regular.ttf');
}

* {
	font-family: Yeon_Sung;
}
</style>
<script type="text/javascript">

	var time = setInterval(function(){
		
		var item = document.getElementById('intro_frame');
		
		item.style.height = (parseInt(item.style.height.replace('px','')) + 10) + 'px'; 
		console.log(parseInt(item.style.height.replace('px','')));
		
		if(parseInt(item.style.height.replace('px','')) > 2000) {
			item.style.height = '100%';
			clearInterval(time);
		} 
	}, 10);

</script>

<div class="intro_frame" id="intro_frame" style="height:0px;">
	<div class="intro_title">경력소개</div>
	
	<div class="intro_box">
		<div class="intro_ymd">[2019.01.03 ~ 2019.12.31]</div>
		<div class="intro_img">
			<a href="http://school.eat.co.kr/">
				<img src="/images/carrer/school.png" />
			</a>
		</div>
		<div class="intro_content_box">
			<div><span class="s_tx_b_style">프로젝트명 </span><br/><span class="s_tx_style">사이버거래시스템 위탁운영용역</span></div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술 </span> 
				<br/>
				<span class="s_tx_style"> JAVA, JSP, HTML, CSS, JAVASCRIPT, JQUERY, ORACLE</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<span class="s_tx_br_style">- 전자조달시스템(학교급식) 고객요청 사항 협의 및 개발</span>
				<span class="s_tx_br_style">- 전자조달시스템(학교급식) 고객요청 데이터 출력</span>
				<span class="s_tx_br_style">- 전자조달시스템(학교급식) 고객요청 원인분석 및 문제해결</span>
				<span class="s_tx_br_style">- 전자조달시스템(학교급식) 서비스 유지관리</span>
			</div>
		</div>
	</div>
	

	<div class="intro_box">
		<div class="intro_ymd">[2018.06.25 ~ 2018.12.31]</div>
		<div class="intro_img">
			<a href="https://www.meatwatch.go.kr/cs/cpt/selectCnsmrMain.do">
				<img src="/images/carrer/meatwatch.png" />
			</a>
		</div>
		<div class="intro_img">
			<a href="https://meatwatch.go.kr/mobile/main.do">
				<img src="/images/carrer/meatwatch_m.png" title="스마트폰으로 접속 시 연결됨"/>
			</a>
		</div>
		<div class="intro_content_box">
			<div><span class="s_tx_b_style">프로젝트명 </span><br/><span class="s_tx_style">수입축산물 유통이력 관리시스템 인프라 구축</span></div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술 </span> 
				<br/>
				<span class="s_tx_style"> JAVA, JSP, HTML, CSS, JAVASCRIPT, JQUERY, ORACLE, EGOV</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<div class="content_box">
					<span class="color_br600">class</span> 수입축산물 <span class="color_br600">implements</span> PC시스템, 모바일웹 {<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">public ArrayList&#60;String&#62;</span> PC시스템.공무원업체관리(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					ArrayList&#60;String&#62; 기능) {<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("텍스트 등록");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("파일 등록");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("멀티 텍스트 및 이미지 첨부(생성,삭제)");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("조회,등록,수정,삭제,기타....");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">return</span> 기능;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;}<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">public ArrayList&#60;String&#62;</span> PC시스템.공통LayerPopup(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					ArrayList&#60;String&#62; 기능) {<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("텍스트 등록");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("데이터 조회");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">return</span> 기능;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;}<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">public HashMap&#60;String, ArrayList&#60;String&#62;&#62;</span> 모바일웹.전체(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					ArrayList&#60;String&#62; 기능, ArrayList&#60;String&#62; 화면) {<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HashMap&#60;String, String&#62; frame = <br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span class="color_br600">new</span>  HashMap&#60;String, ArrayList&#60;String&#62;&#62;;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;화면.add("사용자");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;화면.add("공무원");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;화면.add("영업자");<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("텍스트 등록");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("파일 등록");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("멀티 텍스트 및 이미지 첨부(생성,삭제)");<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기능.add("조회,등록,수정,삭제,기타....");<br/><br/>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;frame.put("screen", 화면);<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;frame.put("function", 화면);<br/>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_br600">return</span> frame;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;모바일웹 로그인 분기 ~ 사용자, 공무원, 영업자 시스템 개발....<br/>
					}<br/>
				</div>
				<span class="s_tx_brs_style">- PC웹사이트 공통팝업 개발 및 업무화면(등록, 수정 화면 등) 개발</span>
				<span class="s_tx_brs_style">- 모바일웹(사용자, 공무원, 영업자) 개발</span>
				<span class="s_tx_brs_style">- 모바일웹(사용자) 연계 데이터 조회</span>
				<span class="s_tx_brs_style">- 모바일웹(공무원) 로그인, 업체점검 관리 등등</span>
				<span class="s_tx_brs_style">- 모바일웹(영업자) 로그인, 축산물이력 관리 등등</span>
			</div>
		</div>
	</div>
	

	<div class="intro_box">
		<div class="intro_ymd">[2018.04.02 ~ 2018.06.19]</div>
		<div class="intro_img_none">
			<a href="javascript:;">
				<img src="/images/carrer/img002.png" class="img_none"/>
			</a>
		</div>
		<div class="intro_content_box">
			<div><span class="s_tx_b_style">프로젝트명 </span><br/><span class="s_tx_style">축산차량출입(이동)정보관리 시스템 인프라강화 및 KAHIS개선사업</span></div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술 </span> 
				<br/>
				<span class="s_tx_style"> JAVA, JSP, HTML, CSS, JAVASCRIPT, JQUERY, ORACLE, EGOV</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<span class="s_tx_br_style">- 실시간 연계데이터 조회 화면 개발</span>
				<span class="s_tx_br_style">- 기타 화면(조회, 등록, 수정) 개발</span>
			</div>
		</div>
	</div>
	
	<div class="intro_box">
		<div class="intro_ymd">축산관계자 정보 국경검역시스템 연계방법 개선사업 연장 및 유지보수</div>
	</div>

	<div class="intro_box">
		<div class="intro_ymd">[2017.06.19 ~ 2017.11.24]</div>
		<div class="intro_img_none">
			<a href="javascript:;">
				<img src="/images/carrer/img001.png" class="img_none"/>
			</a>
		</div>
		<div class="intro_content_box">
			<div><span class="s_tx_b_style">프로젝트명 </span><br/><span class="s_tx_style">축산관계자 정보 국경검역시스템 연계방법 개선사업</span></div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술 </span> 
				<br/>
				<span class="s_tx_style"> JAVA, JSP, SYBASE</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<div class="content_box">
					<span class="color-pr600">SELECT</span> 새올1.관계자명, 새올2.관계자번호<br/>
					<span class="color-pr600">FROM</span><br/>
					&nbsp;&nbsp;&nbsp;새올행정연계데이터1 <span class="color-pr600">AS</span> 새올1<br/>
					&nbsp;&nbsp;&nbsp;, 새올행정연계데이터2 <span class="color-pr600">AS</span> 새올2<br/>
					<span class="color-pr600">WHERE</span> 1=1<br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND</span> 새올1.KEY1 = 새올2.KEY1<br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND</span> 새올1.KEY2 = 새올2.KEY2 <br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND NOT EXISTS</span>(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">SELECT</span> 1<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">FROM</span> 축산관계자 <span class="color-pr600">AS</span> 축산<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">WHERE</span> 축산.고유번호 = 새올1.고유번호<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)<br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND</span> ...... 기타<br/>
					)<br/>
					<br/>
					<span class="color-pr600">SELECT</span> *<br/>
					<span class="color-pr600">FROM</span> 행정안전부 <span class="color-pr600">AS</span> 행정<br/>
					<span class="color-pr600">WHERE</span> 1=1<br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND EXISTS</span> (<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">SELECT</span> 1<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">FROM</span> 축산관계자 <span class="color-pr600">AS</span> 축산<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">WHERE</span> 행정.세대주 = 축산.관계자<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)<br/>
					&nbsp;&nbsp;&nbsp;<span class="color-pr600">AND</span> ...... 기타<br/>
					<br/>
					<br/>
					이 외 업무 쿼리 및 검증쿼리 등...
				</div>
				<span class="s_tx_br_style">- 새올행정시스템 축산관계자 연계 데이터 내부 업무 처리</span>
				<span class="s_tx_br_style">- 행정안전부 세대 연계 데이터 내부 업무 처리</span>
				<span class="s_tx_br_style">- 연계데이터 스케줄러(허드슨)로 데이터 처리</span>
				<span class="s_tx_br_style">- 데이터 마이그레이션</span>
			</div>
		</div>
	</div>
	
	<div class="intro_box">
		<div class="intro_ymd">유지보수 지원..</div>
	</div>
	
	<div class="intro_box">
		<div class="intro_ymd">[2017.02.01 ~ 2017.04.28]</div>
		<div class="intro_img_none">
			<a href="javascript:;">
				<img src="/images/carrer/img003.png" class="img_none"/>
			</a>
		</div>
		<div class="intro_content_box">
			<div><span class="s_tx_b_style">프로젝트명 </span><br/><span class="s_tx_style">국가동물방역통합시스템(KAHIS) 축산차량등록DB 분리사업</span></div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술 </span> 
				<br/>
				<span class="s_tx_style">JAVA, ORACLE, EGOV</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<span class="s_tx_br_style">- 오라클 쿼리 DBLINK 수정</span>
				<span class="s_tx_br_style">- JDBC CONNECTION 분리(SOURCE 수정)</span>
				<span class="s_tx_br_style">- CRUD문서 및 테이블정리 문서 작성</span>
			</div>
		</div>
	</div>
	
	
	<div class="intro_box">
		<div class="intro_ymd">[2016.07.01 ~ 2016.12.31]</div>
		<div class="intro_img">
			<a href="http://m.kahis.go.kr">
				<img src="/images/carrer/beePro.png" />
			</a>
		</div>
		<div class="intro_content_box">
			<div>
				<span class="s_tx_b_style">프로젝트명 </span><br/>
				<span class="s_tx_style">축산차량 GPS 상황관리시스템 구축 및 업무시스템 개선 사업</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">사용 기술</span> 
				<br/>
				<span class="s_tx_style">XFLATFORM, JAVA, JSP, JAVASCRIPT, JQUERY, HTML, CSS, ORACLE, EGOV</span>
			</div>
			<div class="tx_gap">
				<span class="s_tx_b_style">주요업무</span>
				<div class="content_box">
					<span class="color-pr600">class</span> 꿀벌질병상담 {<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">private</span> $업무시스템 = common::<span class="color-pr600">class</span>;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">public</span> $모바일웹 = common::<span class="color-pr600">class</span>;<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">public function</span> __construct( ) {<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->업무시스템->화면명 = '상담등록';<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->업무시스템->화면이동(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">array</span>('텍스트등록','멀티이미지 등록',<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'첨부이미지 보여주기') );<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->업무시스템->화면명 = '상담내용조회';<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->업무시스템->화면이동(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">array</span>('내용조회','등록 이미지 view',<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'기타') );<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면명 = '상담등록';<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면이동(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">array</span>('텍스트등록','멀티이미지 등록',<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'첨부이미지 보여주기') );<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면명 = '상담내용조회';<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면이동(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">array</span>('내용조회','등록 이미지 view',<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'기타') );<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면명 = 'GIS통계';<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->모바일웹->화면이동(<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">array</span>('상담위치정보','건수에 따른 분포도') );<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(조회,등록,수정,삭제,기타)....<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;}
					<br/>
					}
					<br/>
					<span class="color-pr600">class</span> common {
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">private</span> $화면명;<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">private</span> $기능S;<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">public function</span> 화면이동($기능s) {<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">foreach</span>($기능s <span class="color-pr600">as</span> $기능) {<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->기능S[ ] = $기능;
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
					<br/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">return</span> <span class="color_g600">$this</span>.화면명;
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;}
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;<span class="color-pr600">public function</span> 기능S초기화() {<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="color_g600">$this</span>->기능S = [ ];<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;} 
					<br/>
					}
				</div>
				<span class="s_tx_brs_style">- 꿀벌질병상담 업무시스템(내부) 개발</span>
				<span class="s_tx_brs_style">- 꿀벌질병상담 모바일웹 화면 개발</span>
				<span class="s_tx_brs_style">- 꿀벌질병상담 건수 및 분포도 GIS 표시</span>
				<span class="s_tx_brs_style">- 꿀벌질병상담 모바일웹 디자인 변경</span>
			</div>
		</div>
	</div>
	
	
	<div  class="intro_box">
		<div class="intro_ymd">[2016.06.13 입사]</div>
	</div>
	<br/>
	
</div>
</html>
