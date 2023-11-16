<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<fieldset>
		<legend>삭제</legend>
		<h3>${dao_m.delete(param.idx) == 1 ? '삭제성공':'삭제실패' }</h3>
		<c:redirect url="logout.jsp" />
	</fieldset>
</section>
</body>
</html>