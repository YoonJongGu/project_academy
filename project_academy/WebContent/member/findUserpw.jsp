<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>
<c:if test="${method == 'GET' }">
	<form method="POST">
		<p>
			<input type="radio" name="usertype" value="S" required>학생
			<input type="radio" name="usertype" value="T" required>강사
		</p>
		<p><input type="text" name="userid" placeholder="ID 입력" required></p>							
		<p><input type="text" name="username" placeholder="이름 입력" required></p>		
		<p><input type="text" name="phoneNumber" placeholder="전화번호 입력" required></p>
		<p><input type="submit" value="비밀번호 찾기"></p>
	</form>
</c:if>

<c:if test="${method == 'POST' }">
<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>찾기</legend>	
		<c:if test="${dao_m.findUserpw(user) != -1 }">		
		<c:redirect url="updateUserpw.jsp?idx=${dao_m.findUserpw(user) }" />
		</c:if>
		<c:if test="${dao_m.findUserpw(user) == -1 }">
		<h3>찾기 실패 (정보를 다시 확인 해주세요)</h3>
			<a onclick="history.back();"><button>이전으로</button></a>		
		</c:if>		
	</fieldset>
</c:if>
</section>
</body>
</html>