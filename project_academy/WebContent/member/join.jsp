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
		<p><input type="password" name="userpw" placeholder="PW 입력" required></p>		
		<p><input type="text" name="username" placeholder="이름 입력" required></p>
		<p><input type="date" name="birthDate" required></p>		
		<p>
			<input type="radio" name="gender" value="남" required>남
			<input type="radio" name="gender" value="여" required>여
		</p>
		<p><input type="email" name="email" placeholder="이메일 입력(선택)"></p>
		<p><input type="tel" pattern="(010)-\d{3,4}-\d{4}" name="phoneNumber" placeholder="전화번호 입력  010-0000-0000" required></p>
		<p><input type="submit" value="가입"></p>
	</form>
</c:if>

<c:if test="${method == 'POST' }">
<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user" />
	<fieldset>
		<legend>회원가입</legend>		
		<h3>${dao_m.insert(user) == 1 ? '가입 성공' : '가입 실패(ID 중복)' }</h3>
		<a href="login.jsp"><button>로그인</button></a>
		<a onclick="history.back();"><button>이전으로</button></a>
	</fieldset>
</c:if>
</section>
</body>
</html>