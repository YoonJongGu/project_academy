<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
	<fieldset>
		<legend>수강신청</legend>
		<h3>${dao_e.insert(param.member_idx, param.timetable_idx) == 1 ? '신청 성공' : '신청 실패' }</h3>
		<a href="myenrolmentlist.jsp?idx=${login.idx }"><button>목록으로</button></a>
	</fieldset>
</section>
</body>
</html>