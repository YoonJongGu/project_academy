<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<fieldset>
		<legend>수강삭제</legend>
		<h3>${dao_e.delete(param.idx) == 1 ? '삭제 성공' : '삭제 실패' }</h3>
		<a href="myenrolmentlist.jsp?idx=${login.idx }"><button>목록으로</button></a>
	</fieldset>
</section>
</body>
</html>