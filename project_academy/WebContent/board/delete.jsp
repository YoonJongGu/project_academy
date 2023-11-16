<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<fieldset>
		<legend>게시글 삭제</legend>
		<h3>${dao_b.delete(param.idx) == 1 ? '삭제 성공' : '삭제 실패'}</h3>
		<a href="${cpath }/member/index.jsp"><button>홈 페이지</button></a>
	</fieldset>
</section>
</body>
</html>