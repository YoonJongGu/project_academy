<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
<c:if test="${method == 'GET' }">
	<c:set var="dto" value="${dao_m.selectOne(param.idx) }" />
	<form method="POST" action="modify.jsp">
			<input type="hidden" name="idx" value=${dto.idx }>
			<p>
				<input type="radio" name="usertype" value="A" ${dto.usertype == 'A' ? 'checked' : '' } required>관리자
				<input type="radio" name="usertype" value="S" ${dto.usertype == 'S' ? 'checked' : '' } required>학생
				<input type="radio" name="usertype" value="T" ${dto.usertype == 'T' ? 'checked' : '' } required >강사
			</p>		
			<p><input type="text" name="userid"  value="${dto.userid }" readonly></p>
			<p><input type="password" name="userpw"  value="${dto.userpw}" placeholder="비밀번호 입력" required></p>	
			<p><input type="text" name="username" value="${dto.username }" placeholder="이름 입력" required></p>
			<p><input type="date" name="birthDate" value="${dto.birthDate }" required></p>
			<p>
				<input type="radio" name="gender" value="남" ${dto.gender == '남' ? 'checked' : '' } required>남
				<input type="radio" name="gender" value="여" ${dto.gender == '여' ? 'checked' : '' } required>여
			</p>
			<p><input type="email" name="email" value="${dto.email }" placeholder="이메일 입력(선택)"></p>
			<p><input type="tel" pattern="(010)-\d{3,4}-\d{4}" name="phoneNumber" placeholder="전화번호 입력  010-0000-0000" value="${dto.phoneNumber }" required></p>
			<p>
				<input type="submit" value="회원 수정">				
			</p>
	</form>
	<button onclick="delBtn();">회원 탈퇴</button>
</c:if>
</section>
<script>
	function delBtn() {
		if(confirm('정말 삭제하시겠습니까?')) {
			location.href='delete.jsp?idx=${login.idx }';
		}
		else {
			location.href='mypage.jsp?idx=${login.idx }';
		}
	}
</script>
</body>
</html>