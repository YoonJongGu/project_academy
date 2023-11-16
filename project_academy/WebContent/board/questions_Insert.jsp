<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${method == 'GET' }">
	<form method="POST">		
		<input type="hidden" name="boardType" value="Q">
		<input type="hidden" name="member_idx" value="${login.idx }">
		<p><input type="text" name="title" placeholder="제목 입력" required></p>		
		<p><textarea name="contents" placeholder="내용 입력" required></textarea></p>		
		<p><input type="submit" value="글쓰기"></p>
	</form>
</c:if>

<c:if test="${method == 'POST' }">
<jsp:useBean id="user" class="board.BoardDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>추가</legend>		
		<h3>${dao_b.insert(user) == 1 ? '추가 성공' : '추가 실패' }</h3>
		<button onclick="location.href='questions.jsp'">목록으로</button>
	</fieldset>
</c:if>
</section>
</body>
</html>