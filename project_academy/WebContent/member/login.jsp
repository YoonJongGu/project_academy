<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${method == 'GET' }">
	<form method="POST">
		<p>
			<input type="radio" name="usertype" value="A" required>관리자
			<input type="radio" name="usertype" value="S" required>학생
			<input type="radio" name="usertype" value="T" required>강사
		</p>		
		<p><input type="text" name="userid" placeholder="ID 입력" required></p>
		<p><input type="password" name="userpw" placeholder="PW 입력" required></p>
		<p><input type="submit" value="로그인"></p>
	</form>
	<div>
		<a href="${cpath }/member/join.jsp">회원가입</a>|
		<a href="${cpath }/member/findUserid.jsp">아이디 찾기</a>|
		<a href="${cpath }/member/findUserpw.jsp">비밀번호 찾기</a>
	</div>
</c:if>

<c:if test="${method == 'POST' }">
<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>로그인</legend>		
		<c:if test="${not empty dao_m.login(user) }">
		<c:set var="login" value="${dao_m.login(user) }" scope="session" />
		<c:redirect url="index.jsp" />
		</c:if>
		<c:if test="${empty dao_m.login(user) }">
		<h3>로그인 실패</h3>
		<a href="login.jsp"><button>이전으로</button></a>		
		</c:if>
	</fieldset>
</c:if>
</section>

</body>
</html>