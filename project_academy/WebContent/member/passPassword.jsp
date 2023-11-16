<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
<c:if test="${method == 'GET' }">
	<form method="POST">
		<h3>비밀번호 재확인</h3>
		<input type="hidden" name="idx" value="${login.idx }">
		<p><input type="password" name="userpw" placeholder="비밀번호 재입력" required autofocus></p>
		<p><input type="submit" value="확인"></p>
	</form>
</c:if>
<c:if test="${method == 'POST' }">
	<c:if test="${dao_m.passPw(param.idx, param.userpw) == 1 }">
		<c:redirect url="mypage.jsp">
			<c:param name="idx" value="${param.idx }" />
		</c:redirect>
	</c:if>
	<c:if test="${dao_m.passPw(param.idx, param.userpw) == 0 }">
		<h3>비밀번호 오류</h3>
		<a href="passPassword.jsp"><button>돌아가기</button></a>
	</c:if>
</c:if>
</section>
</body>
</html>