<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${method == 'GET' }">
	<form method="POST">
		<p><input type="hidden" name="idx" value="${param.idx }"></p>					
		<p><input type="text" name="userpw" placeholder="수정할 비밀번호 입력" required></p>			
		<p><input type="submit" value="수정"></p>
	</form>
</c:if>

<c:if test="${method == 'POST' }">
	<fieldset>
		<legend>비밀번호</legend>
		<h3>${dao_m.updateUserpw(param.idx, param.userpw) == 1 ? '수정 성공' : '수정 실패' }</h3>
	</fieldset>
</c:if>
</section>
</body>
</html>