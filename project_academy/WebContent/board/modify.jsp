<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${method == 'GET' }">
	<c:set var="map" value="${dao_b.selectOne(param.idx) }" />
	<form method="POST">
		<input type="hidden" name="idx" value="${param.idx }">		
		<p><input type="text" name="title" value="${map.get('title') }" placeholder="제목 입력" required></p>		
		<p><textarea name="contents" placeholder="내용 입력" required>${map.get('contents') }</textarea></p>		
		<p><input type="submit" value="글수정"></p>		
	</form>
	<button onclick="history.back();">이전으로</button>
</c:if>
<c:if test="${method == 'POST' }">
<jsp:useBean id="user" class="board.BoardDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>게시글 수정</legend>
		<h3>${dao_b.modify(user) == 1 ? '수정 성공' : '수정 실패' }</h3>
		<a href="${cpath }/member/index.jsp"><button>홈 페이지</button></a>
	</fieldset>	
</c:if>
</section>
</body>
</html>