<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*, timetable.*, enrolment.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="dao_m" value="${MemberDAO.getInstance() }" />
<c:set var="dao_b" value="${BoardDAO.getInstance() }" />
<c:set var="dao_t" value="${TimeTableDAO.getInstance() }" />
<c:set var="dao_e" value="${EnrolmentDAO.getInstance() }" />
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="method" value="${pageContext.request.method }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {
		text-decoration: none;
		color: black;
	}
	header > div {
		background-color: #dadada;
		height: 120px;
		padding: 30px 20px;
		position: relative;
		margin-bottom: 20px;
	}
	header > div > p {
		position: absolute;
		top: 35px;
		right: 240px;
		font-size: 20px;
		font-weight: 200;		
	}
	header > div > a:nth-child(2) > button {
		text-align: center;
		position: absolute;
		top: 50px;
		right: 30px;
		width: 80px;
		height: 40px;
	}
	header > div > .mypage > button {
		text-align: center;
		position: absolute;
		top: 50px;
		right: 125px;
		width: 100px;
		height: 40px;		
	}
	.hidden {
		display: none;
	}
	header > nav {
		display: flex;
		justify-content: space-around;
		align-items: center;
		width: 1200px;
		height: 100px;
		margin: auto;
		background-color: black;
		border-radius: 10px; 
		font-size: 20px;
	}
	header > nav > div > a {
		color: white;
		cursor: pointer;
	}
	section {
		width: 1000px;
		margin: 30px auto;
		text-align: center;	
	}
	section > div > a {
		margin: auto 10px;
	}
	section input[type=text],
	section input[type=password],
	section input[type=email],
	section input[type=date],
	section input[type=tel],
	section input[type=submit] {
		width: 400px;
		height: 40px;
		border: 2px solid #ddd;
		font-size: 15px;
		margin: auto;
	}
	section input[type=submit] {
		cursor: pointer;
	}
	section > button {
		width: 400px;
		height: 40px;
		border: 2px solid #ddd;
		font-size: 15px;
		margin: auto;
		cursor: pointer;
	}
	section > a > button {
		width: 400px;
		height: 40px;
		border: 2px solid #ddd;
		font-size: 15px;
		margin: 10px auto;
		cursor: pointer;
	}
	table {		
		margin: 20px auto;
		border: 2px solid black;
		border-collapse: collapse;
		width: 100%;	
	}
	table > thead {
		background-color: #ddd;
	}
	td, th {
		border: 1px solid grey;
		padding: 10px;
	}
	.timetable {
		margin: 20px auto;
		border: 2px solid black;
		border-collapse: collapse;
	}
	.timetable th {
		border: 1px solid grey;
		padding: 10px;
		width: 150px;
	}
	.timetable td {
		border: 1px solid grey;
		padding: 10px;
		width: 150px;
		height: 120px;
	}
	.timetable span {
		font-size: 20px;
		font-style: italic;
	}
	.items:hover {
		cursor: pointer;
		background-color: #f8f9fa;
	}
	textarea {
		width: 400px;
		height: 300px;
		border: 2px solid #ddd;
		font-size: 15px;
	}
	fieldset button {
		width: 400px;
		height: 40px;
		border: 2px solid #ddd;
		font-size: 15px;
		margin: auto;
		cursor: pointer;
	}
	.w-100 {
		width: 100%;
	}
</style>
</head>
<script>
	function getCookie(name) {
		var cookie = document.cookie;
		
		if(document.cookie != "") {
			var cookie_array = cookie.split("; ");
			for(var index in cookie_array) {
				var cookie_name = cookie_array[index].split("=");
				
				if(cookie_name[0] == "popupYN") {
					return cookie_name[1];
				}
			}
		}
		return ;
	}
	function pop_open() {
		var cookieCheck = getCookie("popupYN");
		if(cookieCheck != "N") {
			var popupX = (document.body.offsetWidth / 2) - (1800 / 2);
			var popupY= (window.screen.height / 2) - (700 / 2);
			window.open("${cpath }/popup.jsp", "p", "width=1800, height=700, left=" + popupX + ", top=" + popupY);	
		}		
	}
	function isLogin_Notice() {
		var login = "${login }";
		if(login == "") {
			alert("로그인 후 사용하실 수 있습니다")
			location.href="${cpath }/member/login.jsp";
		}
		else {
			location.href="${cpath }/board/notice.jsp"
		}		
	}
	function isLogin_Questions() {
		var login = "${login }";
		if(login == "") {
			alert("로그인 후 사용하실 수 있습니다")
			location.href="${cpath }/member/login.jsp";
		}
		else {
			location.href="${cpath }/board/questions.jsp"
		}		
	}
	function isLogin_FAQ() {
		var login = "${login }";
		if(login == "") {
			alert("로그인 후 사용하실 수 있습니다")
			location.href="${cpath }/member/login.jsp";
		}
		else {
			location.href="${cpath }/board/faq.jsp"
		}		
	}
	function isLogin_Timetable() {
		var login = "${login }";
		if(login == "") {
			alert("로그인 후 사용하실 수 있습니다")
			location.href="${cpath }/member/login.jsp";
		}
		else {
			location.href="${cpath }/timetable/timetable.jsp";
		}	
	}
</script>
<body onload="pop_open();">

<header>
	<div>
		<h1><a href="${cpath }/member/index.jsp">학원 관리 프로그램</a></h1>
		<a href="${cpath }/member/${not empty login ? 'logout.jsp' : 'login.jsp' }"><button>${not empty login ? '로그아웃' : '로그인'}</button></a>
		<a href="${cpath }/member/passPassword.jsp" class="${not empty login ? 'mypage' : 'hidden'}"><button>${not empty login ? '마이페이지' : ''}</button></a>
		<p><strong>${not empty login ? login.username : ''}</strong>${not empty login ? ' 님 반갑습니다' : ''}</p>		
	</div>	
	
	
	<nav>
		<div class="${login.usertype == 'A' ? 'show' : 'hidden' }"><a href="${cpath }/member/list.jsp">목록</a></div>
		<div class="${login.usertype == 'A' ? 'show' : 'hidden' }"><a href="${cpath }/member/statistics.jsp">통계</a></div>	
		<div><a onclick="isLogin_Notice();">공지사항</a></div>
		<div class="${login.usertype != 'A' ? 'show' : 'hidden' }"><a onclick="isLogin_Questions();">질문사항</a></div>
		<div><a onclick="isLogin_FAQ();">FAQ</a></div>
		<div><a onclick="isLogin_Timetable();">시간표</a></div>
		<c:if test="${login.usertype == 'S' }">
		<div><a href="${cpath }/enrolment/enrolment.jsp">수강신청</a></div>
		<div><a href="${cpath }/enrolment/myenrolmentlist.jsp">나의 수강신청 목록</a></div>
		</c:if>
	</nav>	
</header>