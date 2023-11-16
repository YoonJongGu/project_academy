<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>수정</legend>		
		<h3>${dao_m.modify(user) == 1 ? '수정 성공' : '수정 실패' }</h3>
	</fieldset>
</section>	
</body>
</html>